package com.zeekr.component.slider

import android.animation.ValueAnimator
import android.annotation.SuppressLint
import android.content.Context
import android.content.res.ColorStateList
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.Point
import android.graphics.Rect
import android.graphics.Typeface
import android.graphics.drawable.Drawable
import android.util.AttributeSet
import android.util.Log
import android.view.MotionEvent
import android.view.View
import android.view.ViewConfiguration
import android.view.ViewGroup
import android.view.animation.DecelerateInterpolator
import androidx.core.view.ViewCompat
import com.airbnb.lottie.LottieDrawable
import com.google.android.material.shape.CornerFamily
import com.google.android.material.shape.MaterialShapeDrawable
import com.google.android.material.shape.ShapeAppearanceModel
import com.zeekr.component.R
import com.zeekr.component.extention.dimensionFromAttribute
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.dpf
import com.zeekr.component.extention.getDrawableOrNull
import com.zeekr.component.extention.getViewRect
import com.zeekr.component.extention.logDebug
import com.zeekr.component.extention.themeColor
import com.zeekr.component.extention.themeColorStateList
import com.zeekr.component.ripple.fetchScreenPoint
import com.zeekr.component.ripple.viewRippleRect
import com.zeekr.component.toggle.MOVE_TO_SELECT_ITEM_DURATION
import com.zeekr.lottie.brightnessDrawable
import kotlin.math.abs
import kotlin.math.max
import kotlin.math.min

class ZeekrBrightnessSlider @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : View(context, attrs) {

  private val trackSidePadding: Int
  private var trackWidth: Int = 0
  private var trackHeight: Int = 16.dp
  private var sliderHeight: Int
  private val thumbRadius: Int
  private val thumbInnerRadius: Int
    get() = thumbRadius - 2.dp
  private var valueRange: IntRange
  private var sliderProgress: Float = 0.5f
  private var lastEvent: MotionEvent? = null
  private var touchDownX = 0f
  private var thumbIsPressed = false
  private var scaledTouchSlop = 0
  private val leftMargin = 80.dp
  private val rightMargin = 30.dpf

  private val defaultThumbDrawable = MaterialShapeDrawable()
  private val defaultThumbInnerDrawable = MaterialShapeDrawable()
  private var thumbShadowDrawable: Drawable
  private var touchListener: SliderTouchListener? = null
  private var onSliderTouchListener: ZeekrOnSliderTouchListener? = null
  private var progressListener: SliderProgressListener? = null
  private var translationAnimation: ValueAnimator? = null
  private var screenLocationPoint: Point = Point(0, 0)
  private var brightnessDrawable: LottieDrawable? = null
  private var shouldDrawAgain: Boolean = false
  private val textRect = Rect()
  private var mTextPaint: Paint = Paint()

  val isTouch: Boolean
    get() = thumbIsPressed

  private val activeTrackPaint: Paint = Paint().apply {
    style = Paint.Style.STROKE
    strokeCap = Paint.Cap.ROUND
    color = context.themeColor(com.google.android.material.R.attr.colorSecondary)
  }

  private val inactiveTrackPaint: Paint = Paint().apply {
    style = Paint.Style.STROKE
    strokeCap = Paint.Cap.ROUND
    color = context.themeColor(com.zeekr.theme.R.attr.colorSliderInactive)
  }

  var progressValue: Int = 0
    get() = fetchProgressValue()
    private set(value) {
      field = value
      val index = value - valueRange.first
      val result = index.toFloat() / valueRange.length()
      logger("progressValue   value: $value   index: $index  result: $result")
      sliderProgress = result
      invalidate()
      logger("progressValue   progress: $sliderProgress ")
    }

  init {
    val attributes = context.resources.obtainAttributes(attrs, R.styleable.ZeekrSliderStyle)

    thumbRadius = attributes.getDimensionPixelSize(R.styleable.ZeekrSliderStyle_zeekrSliderThumbRadius, 20.dp)
    val padding = attributes.getDimensionPixelSize(
      R.styleable.ZeekrSliderStyle_zeekrSliderSidePadding,
      16.dp
    )
    trackSidePadding = max(padding, thumbRadius) + leftMargin
    trackHeight = attributes.getDimensionPixelSize(R.styleable.ZeekrSliderStyle_zeekrSliderTrackThickness, 6.dp)

    activeTrackPaint.strokeWidth = trackHeight.toFloat()
    inactiveTrackPaint.strokeWidth = trackHeight.toFloat()
    val valueFrom = attributes.getInteger(R.styleable.ZeekrSliderStyle_zeekrSliderValueFrom, 0)
    val valueTo = attributes.getInteger(R.styleable.ZeekrSliderStyle_zeekrSliderValueTo, 100)
    valueRange = IntRange(valueFrom, valueTo)

    attributes.recycle()
    ViewCompat.setImportantForAccessibility(this, ViewCompat.IMPORTANT_FOR_ACCESSIBILITY_YES)

    with(defaultThumbDrawable) {
      shapeAppearanceModel =
        ShapeAppearanceModel.builder()
          .setAllCorners(CornerFamily.ROUNDED, thumbRadius.toFloat()).build()
      fillColor =
        context.themeColorStateList(com.google.android.material.R.attr.colorSecondary)
      setBounds(0, 0, thumbRadius * 2, thumbRadius * 2)
    }
    with(defaultThumbInnerDrawable) {
      shapeAppearanceModel =
        ShapeAppearanceModel.builder()
          .setAllCorners(CornerFamily.ROUNDED, thumbInnerRadius.toFloat()).build()
      fillColor =
        context.themeColorStateList(com.zeekr.theme.R.attr.colorAlwaysWhite)
      setBounds(0, 0, thumbInnerRadius * 2, thumbInnerRadius * 2)
    }

    thumbShadowDrawable = context.getDrawableOrNull(R.drawable.shadow_slider)?.mutate()!!.apply {
      // setBounds(0, (thumbRadius * 2 * 0.3).toInt(), (thumbRadius * 2 * 1.05).toInt(), (thumbRadius * 2 * 1.05).toInt())
    }

    context.brightnessDrawable {
      brightnessDrawable = it.apply { setBounds(0, 0, (thumbRadius * 2 * 1.25).toInt(), (thumbRadius * 2 * 1.25).toInt()) }
      if (shouldDrawAgain) {
        invalidate()
      }
    }

    val itemTextSize =
      context.dimensionFromAttribute(com.google.android.material.R.attr.textAppearanceDisplayMedium)
    mTextPaint.run {
      isAntiAlias = true
      textSize = itemTextSize.toFloat()
      textAlign = Paint.Align.CENTER
      style = Paint.Style.FILL_AND_STROKE
      typeface = Typeface.DEFAULT_BOLD
      color = context.themeColor(com.google.android.material.R.attr.colorPrimary)
    }

    sliderHeight = (thumbRadius * 2 * 1.65).toInt()

    scaledTouchSlop = ViewConfiguration.get(context).scaledTouchSlop
  }

  fun setActiveColor(color: Int) {
    activeTrackPaint.color = color
    invalidate()
  }

  fun setInactiveColor(color: Int) {
    inactiveTrackPaint.color = color
    invalidate()
  }

  fun setThumbStrokeColor(thumbStrokeColor: ColorStateList) {
    defaultThumbDrawable.fillColor = thumbStrokeColor
    invalidate()
  }

  fun setThumbFillColor(thumbFillColor: ColorStateList) {
    defaultThumbInnerDrawable.fillColor = thumbFillColor
    invalidate()
  }

  fun setValueRange(valueRange: IntRange) {
    this.valueRange = valueRange
  }

  override fun setEnabled(enabled: Boolean) {
    super.setEnabled(enabled)
    setLayerType(if (enabled) LAYER_TYPE_NONE else LAYER_TYPE_HARDWARE, null)
  }

  override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
    super.onMeasure(
      widthMeasureSpec,
      MeasureSpec.makeMeasureSpec(
        sliderHeight,
        MeasureSpec.EXACTLY
      )
    )
  }

  override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
    super.onLayout(changed, left, top, right, bottom)
  }

  override fun onWindowFocusChanged(hasWindowFocus: Boolean) {
    super.onWindowFocusChanged(hasWindowFocus)
    screenLocationPoint = fetchScreenPoint(screenLocationPoint)
    logDebug("slider  onWindowFocusChanged :$hasWindowFocus   point:$screenLocationPoint rect:${getViewRect()}")
  }

  override fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {
    super.onSizeChanged(w, h, oldw, oldh)

    // Update the visible track width.
    trackWidth = max(w - trackSidePadding * 2, 0)
  }

  override fun onDraw(canvas: Canvas) {
    super.onDraw(canvas)

    val centerY: Int = sliderHeight / 2

    drawInactiveTrack(canvas, trackWidth, centerY)
    drawActiveTrack(canvas, trackWidth, centerY)

    drawThumbs(canvas, trackWidth, centerY)
    drawInnerThumbs(canvas, trackWidth, centerY)

    shouldDrawAgain = brightnessDrawable == null
    brightnessDrawable?.frame = progressValue
    canvas.save()
    canvas.translate(15.dpf, 10.dpf)
    brightnessDrawable?.draw(canvas)
    canvas.restore()

    val displayText = "$progressValue%"
    mTextPaint.getTextBounds(displayText, 0, displayText.length, textRect)
    canvas.drawText(
      displayText,
      measuredWidth - rightMargin,
      measuredHeight / 2 - textRect.centerY().toFloat(),
      mTextPaint
    )
  }

  @SuppressLint("ClickableViewAccessibility")
  override fun onTouchEvent(event: MotionEvent): Boolean {
    if (!isEnabled) {
      return false
    }
    val x = event.x
    var touchPosition = (x - trackSidePadding) / trackWidth
    touchPosition = max(0f, touchPosition)
    touchPosition = min(1f, touchPosition)
    logger(" onTouchEvent actionMasked: ${event.actionMasked} ")
    when (event.actionMasked) {
      MotionEvent.ACTION_DOWN -> {
        touchDownX = x

        // If we're inside a vertical scrolling container,
        // we should start dragging in ACTION_MOVE
        if (!isInVerticalScrollingContainer()) {
          parent.requestDisallowInterceptTouchEvent(true)
          translationAnimation?.cancel()
          requestFocus()
          thumbIsPressed = true
          snapTouchPosition(touchPosition)
          invalidate()
          onStartTrackingTouch()
        }
      }
      MotionEvent.ACTION_MOVE -> {
        if (!thumbIsPressed) {
          // Check if we're trying to scroll vertically instead of dragging this Slider
          if (isInVerticalScrollingContainer() && abs(x - touchDownX) < scaledTouchSlop) {
            return false
          }
          translationAnimation?.cancel()
          parent.requestDisallowInterceptTouchEvent(true)
          onStartTrackingTouch()
        }
        thumbIsPressed = true
        snapTouchPosition(touchPosition)
        invalidate()
      }
      MotionEvent.ACTION_CANCEL,
      MotionEvent.ACTION_UP -> {
        thumbIsPressed = false
        // We need to handle a tap if the last event was down at the same point.
        if (lastEvent != null && lastEvent?.actionMasked == MotionEvent.ACTION_DOWN && abs(
            lastEvent!!.x - event.x
          ) <= scaledTouchSlop && abs(lastEvent!!.y - event.y) <= scaledTouchSlop
        ) {
          onStartTrackingTouch()
        }
        snapTouchPosition(touchPosition)
        onStopTrackingTouch()
        invalidate()
      }
      else -> {}
    }

    // Set if the thumb is pressed. This will cause the ripple to be drawn.
    isPressed = thumbIsPressed
    touchListener?.invoke(event)
    lastEvent = MotionEvent.obtain(event)
    return true
  }

  private fun drawActiveTrack(canvas: Canvas, width: Int, centerY: Int) {
    val right: Float = trackSidePadding + sliderProgress * width
    val left: Float = trackSidePadding.toFloat()
    canvas.drawLine(left, centerY.toFloat(), right, centerY.toFloat(), activeTrackPaint)
  }

  private fun drawInactiveTrack(canvas: Canvas, width: Int, centerY: Int) {
    val right: Float = trackSidePadding + sliderProgress * width
    if (right < trackSidePadding + width) {
      canvas.drawLine(
        right,
        centerY.toFloat(),
        (trackSidePadding + width).toFloat(),
        centerY.toFloat(),
        inactiveTrackPaint
      )
    }
  }

  private fun drawThumbs(canvas: Canvas, width: Int, centerY: Int) {
    drawThumbDrawable(canvas, width, centerY, defaultThumbDrawable)
  }

  private fun drawInnerThumbs(canvas: Canvas, width: Int, centerY: Int) {
    drawThumbDrawable(canvas, width, centerY, defaultThumbInnerDrawable)
  }

  private fun drawThumbDrawable(
    canvas: Canvas,
    width: Int,
    centerY: Int,
    thumbDrawable: Drawable
  ) {
    canvas.save()
    canvas.translate(
      trackSidePadding +
        (sliderProgress * width).toInt() -
        thumbDrawable.bounds.width() / 2f,
      centerY - thumbDrawable.bounds.height() / 2f
    )
    thumbDrawable.draw(canvas)

    canvas.restore()
  }

  /**
   * If this returns true, we can't start dragging the Slider immediately when we receive a [ ][MotionEvent.ACTION_DOWN]. Instead, we must wait for a [MotionEvent.ACTION_MOVE]. Copied
   * and modified from hidden method of [View] isInScrollingContainer.
   *
   * @return true if any of this View's parents is a scrolling View and can scroll vertically.
   */
  private fun isInVerticalScrollingContainer(): Boolean {
    var p = parent
    while (p is ViewGroup) {
      val parent = p
      val canScrollVertically =
        parent.canScrollVertically(1) || parent.canScrollVertically(-1)
      if (canScrollVertically && parent.shouldDelayChildPressedState()) {
        return true
      }
      p = p.getParent()
    }
    return false
  }

  private fun snapTouchPosition(progress: Float) {
    logger(" snapTouchPosition: $progress  $progressValue")
    sliderProgress = progress
    progressListener?.invoke(progressValue)
  }

  private fun fetchProgressValue(): Int {
    val value = valueRange.getValue(sliderProgress)
    logger(" fetchProgressValue: $value    sliderProgress: $sliderProgress")
    return value
  }

  private fun onStartTrackingTouch() {
    onSliderTouchListener?.onStartTrackingTouch()
  }

  private fun onStopTrackingTouch() {
    onSliderTouchListener?.onStopTrackingTouch()
  }

  fun progressListener(listener: SliderProgressListener) {
    progressListener = listener
  }

  fun touchListener(listener: SliderTouchListener) {
    touchListener = listener
  }

  fun onSliderTouchListener(listener: ZeekrOnSliderTouchListener) {
    onSliderTouchListener = listener
  }

  @JvmOverloads
  fun setAnimateToProgress(value: Int, animatorDuration: Long = MOVE_TO_SELECT_ITEM_DURATION) {
    if (!valueRange.contains(value)) {
      return
    }

    val index = value - valueRange.first
    val positionTo = index.toFloat() / valueRange.length()
    val positionFrom = sliderProgress
    translationAnimation = ValueAnimator.ofFloat(positionFrom, positionTo).apply {
      addUpdateListener {
        sliderProgress = it.animatedValue as Float
        invalidate()
        progressListener?.invoke(progressValue)
      }
      duration = animatorDuration
      interpolator = DecelerateInterpolator(3f)
      start()
    }
  }

  fun commonSetProgressValue(value: Int) {
    if (valueRange.contains(value)) {
      progressValue = value
    }
  }

  fun voiceSetProgressValue(value: Int) {
    if (!valueRange.contains(value)) {
      return
    }
    setAnimateToProgress(value)
    val index = value - valueRange.first
    val positionTo = index.toFloat() / valueRange.length()
    val centerX = trackSidePadding +
      (positionTo * trackWidth).toInt()
    val centerY: Int = sliderHeight / 2
    logDebug("voiceSetProgressValue value: $value  positionTo: $positionTo  centerX:$centerX  ")

    screenLocationPoint = fetchScreenPoint(screenLocationPoint)
    viewRippleRect(Rect(centerX - 54.dp, centerY - 54.dp, centerX + 54.dp, centerY + 54.dp), screenLocationPoint)
  }

  fun singleSetProgressValue(value: Int) {
    if (!valueRange.contains(value)) {
      return
    }
    progressValue = value
  }

  internal fun themeApply() {
    activeTrackPaint.color = context.themeColor(com.google.android.material.R.attr.colorSecondary)
    inactiveTrackPaint.color = context.themeColor(com.zeekr.theme.R.attr.colorSliderInactive)
    defaultThumbDrawable.fillColor = context.themeColorStateList(com.google.android.material.R.attr.colorSecondary)
    defaultThumbInnerDrawable.fillColor = context.themeColorStateList(com.zeekr.theme.R.attr.colorAlwaysWhite)
    mTextPaint.color = context.themeColor(com.google.android.material.R.attr.colorPrimary)
    thumbShadowDrawable = context.getDrawableOrNull(R.drawable.shadow_slider)?.mutate()!!.apply {
      setBounds(0, 0, (thumbRadius * 2 * 1.65).toInt(), (thumbRadius * 2 * 1.65).toInt())
    }
    context.brightnessDrawable {
      brightnessDrawable = it.apply { setBounds(0, 0, (thumbRadius * 2 * 1.65).toInt(), (thumbRadius * 2 * 1.65).toInt()) }
      invalidate()
    }
    invalidate()
  }

  private fun logger(message: String) {
    Log.i("ZeekrSlider", "$id    $message ")
  }
}
