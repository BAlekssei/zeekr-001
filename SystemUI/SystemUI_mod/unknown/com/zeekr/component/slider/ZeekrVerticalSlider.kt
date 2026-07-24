package com.zeekr.component.slider

import android.animation.ValueAnimator
import android.annotation.SuppressLint
import android.content.Context
import android.content.res.ColorStateList
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.Point
import android.graphics.Rect
import android.graphics.drawable.Drawable
import android.util.AttributeSet
import android.util.Log
import android.view.MotionEvent
import android.view.View
import android.view.ViewConfiguration
import android.view.ViewGroup
import android.view.animation.DecelerateInterpolator
import androidx.core.view.ViewCompat
import com.google.android.material.shape.CornerFamily
import com.google.android.material.shape.MaterialShapeDrawable
import com.google.android.material.shape.ShapeAppearanceModel
import com.zeekr.component.R
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.getDrawableOrNull
import com.zeekr.component.extention.getViewRect
import com.zeekr.component.extention.logDebug
import com.zeekr.component.extention.themeColor
import com.zeekr.component.extention.themeColorStateList
import com.zeekr.component.ripple.fetchScreenPoint
import com.zeekr.component.ripple.viewRippleRect
import com.zeekr.component.toggle.MOVE_TO_SELECT_ITEM_DURATION
import kotlin.math.abs
import kotlin.math.max
import kotlin.math.min

class ZeekrVerticalSlider @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : View(context, attrs) {

  private val trackSidePadding: Int
  private var trackWidth: Int = 0
  private var trackHeight: Int = 0
  private var sliderWidth: Int
  private val thumbRadius: Int
  private val thumbInnerRadius: Int
    get() = thumbRadius - 2.dp
  private var valueRange: IntRange
  private var sliderProgress: Float = 0.5f
  private val verticalProgress: Float
    get() = 1 - sliderProgress
  private var lastEvent: MotionEvent? = null
  private var touchDownY = 0f
  private var thumbIsPressed = false
  private var scaledTouchSlop = 0
  private var isShowBall = true

  private val defaultThumbDrawable = MaterialShapeDrawable()
  private val defaultThumbInnerDrawable = MaterialShapeDrawable()
  private var thumbShadowDrawable: Drawable
  private var touchListener: SliderTouchListener? = null
  private var onSliderTouchListener: ZeekrOnSliderTouchListener? = null
  private var progressListener: SliderProgressListener? = null
  private var translationAnimation: ValueAnimator? = null
  private var screenLocationPoint: Point = Point(0, 0)

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
    get() = valueRange.getValue(sliderProgress)
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
    isShowBall = attributes.getBoolean(R.styleable.ZeekrSliderStyle_zeekrSliderIsShowBall, true)
    thumbRadius = attributes.getDimensionPixelSize(
      R.styleable.ZeekrSliderStyle_zeekrSliderThumbRadius,
      20.dp
    )
    trackSidePadding = attributes.getDimensionPixelSize(
      R.styleable.ZeekrSliderStyle_zeekrSliderSidePadding,
      16.dp
    )
    trackWidth = attributes.getDimensionPixelSize(
      R.styleable.ZeekrSliderStyle_zeekrSliderTrackThickness,
      6.dp
    )
    //   val activeColor = attributes.getColor(R.styleable.ZeekrSliderStyle_zeekrSliderActiveColor, context.themeColor(com.google.android.material.R.attr.colorSecondary))
    //   val inactiveColor = attributes.getColor(R.styleable.ZeekrSliderStyle_zeekrSliderInActiveColor, context.themeColor(com.zeekr.theme.R.attr.colorSliderInactive))
    //  activeTrackPaint.color = activeColor
    activeTrackPaint.strokeWidth = trackWidth.toFloat()
    //  inactiveTrackPaint.color = inactiveColor
    inactiveTrackPaint.strokeWidth = trackWidth.toFloat()
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

    thumbShadowDrawable =
      context.getDrawableOrNull(R.drawable.shadow_slider)?.mutate()!!.apply {
        setBounds(0, 0, (thumbRadius * 2 * 1.65).toInt(), (thumbRadius * 2 * 1.65).toInt())
      }

    sliderWidth = (thumbRadius * 2 * 1.65).toInt()

    scaledTouchSlop = ViewConfiguration.get(context).scaledTouchSlop
  }

  fun setActiveColor(color: Int) {
    activeTrackPaint.color = color
    invalidate()
  }

  fun setShowBall(isShow: Boolean) {
    isShowBall = isShow
    invalidate()
  }

  fun setInactiveColor(color: Int) {
    inactiveTrackPaint.color = color
    invalidate()
  }

  fun valueRange(valueRange: IntRange) {
    this.valueRange = valueRange
  }

  fun setThumbStrokeColor(thumbStrokeColor: ColorStateList) {
    defaultThumbDrawable.fillColor = thumbStrokeColor
    invalidate()
  }

  fun setThumbFillColor(thumbFillColor: ColorStateList) {
    defaultThumbInnerDrawable.fillColor = thumbFillColor
    invalidate()
  }

  override fun setEnabled(enabled: Boolean) {
    super.setEnabled(enabled)
    alpha = 0.4f.takeIf { !enabled } ?: 1f
    setLayerType(if (enabled) LAYER_TYPE_NONE else LAYER_TYPE_HARDWARE, null)
  }

  override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
    super.onMeasure(
      MeasureSpec.makeMeasureSpec(
        sliderWidth,
        MeasureSpec.EXACTLY
      ),
      heightMeasureSpec
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
    trackHeight = max(h - trackSidePadding * 2, 0)
    // sliderExpandViewTouch()
  }

  override fun onDraw(canvas: Canvas) {
    super.onDraw(canvas)

    val centerX: Int = sliderWidth / 2

    drawInactiveTrack(canvas, trackHeight, centerX)

    drawActiveTrack(canvas, trackHeight, centerX)
    if (isShowBall) {
      drawThumbs(canvas, trackHeight, centerX)
      drawInnerThumbs(canvas, trackHeight, centerX)
    }
    // drawShadowIcon(canvas, trackHeight, centerX)
  }

  @SuppressLint("ClickableViewAccessibility")
  override fun onTouchEvent(event: MotionEvent): Boolean {
    if (!isEnabled) {
      return false
    }
    val y = event.y
    var touchPosition = (y - trackSidePadding) / trackHeight
    touchPosition = max(0f, touchPosition)
    touchPosition = min(1f, touchPosition)

    when (event.actionMasked) {
      MotionEvent.ACTION_DOWN -> {
        touchDownY = y

        if (!isInHorizontalScrollingContainer()) {
          parent.requestDisallowInterceptTouchEvent(true)
          requestFocus()
          translationAnimation?.cancel()
          thumbIsPressed = true
          snapTouchPosition(touchPosition)
          invalidate()
          onStartTrackingTouch()
        } else {
          snapTouchPosition(touchPosition)
          invalidate()
        }
      }

      MotionEvent.ACTION_MOVE -> {
        if (!thumbIsPressed) {
          if (isInHorizontalScrollingContainer() && abs(y - touchDownY) < scaledTouchSlop) {
            return false
          }
          parent.requestDisallowInterceptTouchEvent(true)
          translationAnimation?.cancel()
          onStartTrackingTouch()
        }
        thumbIsPressed = true
        snapTouchPosition(touchPosition)
        invalidate()
      }

      MotionEvent.ACTION_CANCEL,
      MotionEvent.ACTION_UP -> {
        thumbIsPressed = false
        if (lastEvent != null && lastEvent?.actionMasked == MotionEvent.ACTION_DOWN && abs(
            lastEvent!!.y - event.y
          ) <= scaledTouchSlop && abs(lastEvent!!.x - event.x) <= scaledTouchSlop
        ) {
          onStartTrackingTouch()
        }
        //  progressListener?.invoke(progressValue)
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

  private fun drawInactiveTrack(canvas: Canvas, height: Int, centerX: Int) {
    val trackBottom: Float = trackSidePadding + verticalProgress * height
    val trackTop: Float = trackSidePadding.toFloat()
    canvas.drawLine(
      centerX.toFloat(),
      trackTop,
      centerX.toFloat(),
      trackBottom,
      inactiveTrackPaint
    )
  }

  private fun drawActiveTrack(canvas: Canvas, height: Int, centerX: Int) {
    val trackTop: Float = trackSidePadding + verticalProgress * height
    canvas.drawLine(
      centerX.toFloat(),
      trackTop,
      centerX.toFloat(),
      (trackSidePadding + height).toFloat(),
      activeTrackPaint
    )
  }

  private fun drawThumbs(canvas: Canvas, height: Int, centerX: Int) {
    drawThumbDrawable(canvas, height, centerX, defaultThumbDrawable)
  }

  private fun drawInnerThumbs(canvas: Canvas, height: Int, centerX: Int) {
    drawThumbDrawable(canvas, height, centerX, defaultThumbInnerDrawable)
  }

  private fun drawThumbDrawable(
    canvas: Canvas,
    height: Int,
    centerX: Int,
    thumbDrawable: Drawable
  ) {
    canvas.save()
    canvas.translate(
      centerX - thumbDrawable.bounds.width() / 2f,
      trackSidePadding +
        (verticalProgress * height).toInt() -
        thumbDrawable.bounds.height() / 2f

    )
    thumbDrawable.draw(canvas)

    canvas.restore()
  }

  private fun drawShadowIcon(canvas: Canvas, height: Int, centerX: Int) {
    canvas.save()
    canvas.translate(
      centerX - thumbShadowDrawable.bounds.width() / 2f,
      trackSidePadding +
        (verticalProgress * height).toInt() -
        defaultThumbDrawable.bounds.height() * 0.63f

    )
    thumbShadowDrawable.draw(canvas)

    canvas.restore()
  }

  /**
   * If this returns true, we can't start dragging the Slider immediately when we receive a [ ][MotionEvent.ACTION_DOWN]. Instead, we must wait for a [MotionEvent.ACTION_MOVE]. Copied
   * and modified from hidden method of [View] isInScrollingContainer.
   *
   * @return true if any of this View's parents is a scrolling View and can scroll vertically.
   */
  private fun isInHorizontalScrollingContainer(): Boolean {
    var p = parent
    while (p is ViewGroup) {
      val parent = p
      val canScrollHorizontally =
        parent.canScrollHorizontally(1) || parent.canScrollHorizontally(-1)
      if (canScrollHorizontally && parent.shouldDelayChildPressedState()) {
        return true
      }
      p = p.getParent()
    }
    return false
  }

  private fun snapTouchPosition(progress: Float) {
    sliderProgress = 1 - progress
    progressListener?.invoke(progressValue)
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
    if (!valueRange.contains(value)) {
      return
    }
    progressValue = value
  }

  fun voiceSetProgressValue(value: Int) {
    if (!valueRange.contains(value)) {
      return
    }
    progressValue = value
    val index = value - valueRange.first
    val positionTo = index.toFloat() / valueRange.length()
    val centerX = sliderWidth / 2
    val centerY: Int = trackSidePadding +
      ((1 - positionTo) * width).toInt()
    screenLocationPoint = fetchScreenPoint(screenLocationPoint)
    viewRippleRect(
      Rect(centerX - 54.dp, centerY - 54.dp, centerX + 54.dp, centerY + 54.dp),
      screenLocationPoint
    )
  }

  fun singleSetProgressValue(value: Int) {
    if (!valueRange.contains(value)) {
      return
    }
    progressValue = value
  }

  internal fun themeApply() {
    activeTrackPaint.color =
      context.themeColor(com.google.android.material.R.attr.colorSecondary)
    inactiveTrackPaint.color = context.themeColor(com.zeekr.theme.R.attr.colorSliderInactive)
    defaultThumbDrawable.fillColor =
      context.themeColorStateList(com.google.android.material.R.attr.colorSecondary)
    defaultThumbInnerDrawable.fillColor =
      context.themeColorStateList(com.zeekr.theme.R.attr.colorAlwaysWhite)
    thumbShadowDrawable =
      context.getDrawableOrNull(R.drawable.shadow_slider)?.mutate()!!.apply {
        setBounds(0, 0, (thumbRadius * 2 * 1.65).toInt(), (thumbRadius * 2 * 1.65).toInt())
      }
    invalidate()
  }

  private fun logger(message: String) {
    Log.i("ZeekrSlider", message)
  }
}
