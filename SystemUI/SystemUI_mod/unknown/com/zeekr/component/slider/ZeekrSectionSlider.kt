package com.zeekr.component.slider

import android.animation.ValueAnimator
import android.annotation.SuppressLint
import android.content.Context
import android.content.res.ColorStateList
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Paint
import android.graphics.PorterDuff
import android.graphics.PorterDuffXfermode
import android.graphics.drawable.Drawable
import android.util.AttributeSet
import android.view.MotionEvent
import android.view.VelocityTracker
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
import com.zeekr.component.extention.dpf
import com.zeekr.component.extention.getDrawableOrNull
import com.zeekr.component.extention.logDebug
import com.zeekr.component.extention.logInfo
import com.zeekr.component.extention.themeColor
import com.zeekr.component.extention.themeColorStateList
import com.zeekr.component.toggle.MOVE_TO_SELECT_ITEM_DURATION
import kotlin.math.abs
import kotlin.math.max
import kotlin.math.min

@SuppressLint("ClickableViewAccessibility")
class ZeekrSectionSlider @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : View(context, attrs) {

  private val trackSidePadding: Int
  private var trackWidth: Int = 0
  private var trackHeight: Int = 16.dp
  private var sliderHeight: Int
  private val thumbRadius: Int
  private var valueRange: IntRange
  var visibleRange: IntRange
  private var sliderProgress: Float = 0f
  private var lastEvent: MotionEvent? = null
  private var touchDownX = 0f
  private var thumbIsPressed = false
  private var scaledTouchSlop = 0

  private val defaultThumbDrawable = MaterialShapeDrawable()
  private val thumbShadowDrawable: Drawable
  private var touchListener: SliderTouchListener? = null
  private var onSliderTouchListener: ZeekrOnSliderTouchListener? = null
  private var progressListener: SliderProgressListener? = null
  private var translationAnimation: ValueAnimator? = null
  private var totalSelection: Int
  private var hideThumb = true
  private var velocityTracker: VelocityTracker? = null
/*  private val rippleDrawable = context.getRippleDrawable().apply {
    setBounds(0, 0, 108.dp, 108.dp)
  }*/

  val isTouch: Boolean
    get() = thumbIsPressed

  private val activeTrackPaint: Paint = Paint().apply {
    style = Paint.Style.STROKE
    strokeCap = Paint.Cap.ROUND
    isAntiAlias = true
    isDither = true
    color = context.themeColor(com.google.android.material.R.attr.colorSecondary)
  }

  private val inactiveTrackPaint: Paint = Paint().apply {
    style = Paint.Style.STROKE
    strokeCap = Paint.Cap.ROUND
    isAntiAlias = true
    isDither = true
    color = context.themeColor(com.zeekr.theme.R.attr.colorSliderInactive)
  }

  private val clearPaint = Paint().apply {
    xfermode = PorterDuffXfermode(PorterDuff.Mode.CLEAR)
    strokeCap = Paint.Cap.SQUARE
    strokeWidth = trackHeight.toFloat()
    color = Color.TRANSPARENT
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
      // logger("progressValue   progress: $sliderProgress ")
    }

  init {
    val attributes = context.resources.obtainAttributes(attrs, R.styleable.ZeekrSliderStyle)

    thumbRadius = attributes.getDimensionPixelSize(
      R.styleable.ZeekrSliderStyle_zeekrSliderThumbRadius,
      24.dp
    )
    trackSidePadding = attributes.getDimensionPixelSize(
      R.styleable.ZeekrSliderStyle_zeekrSliderSidePadding,
      4.dp
    )
    trackHeight = attributes.getDimensionPixelSize(
      R.styleable.ZeekrSliderStyle_zeekrSliderTrackThickness,
      6.dp
    )
    // val activeColor = attributes.getColor(R.styleable.ZeekrSliderStyle_zeekrSliderActiveColor, context.themeColor(com.google.android.material.R.attr.colorSecondary))
    // val inactiveColor = attributes.getColor(R.styleable.ZeekrSliderStyle_zeekrSliderInActiveColor, context.themeColor(com.zeekr.theme.R.attr.colorSliderInactive))
    //   activeTrackPaint.color = activeColor
    activeTrackPaint.strokeWidth = trackHeight.toFloat()
    //   inactiveTrackPaint.color = inactiveColor
    inactiveTrackPaint.strokeWidth = trackHeight.toFloat()
    clearPaint.strokeWidth = trackHeight.toFloat()

    totalSelection = attributes.getInteger(
      R.styleable.ZeekrSliderStyle_zeekrSliderSelection,
      ZEEKR_SELECTION_SLIDER_DEFAULT_NUMBER
    )
    hideThumb = attributes.getBoolean(R.styleable.ZeekrSliderStyle_zeekrSliderHideThumb, true)
    valueRange = IntRange(0, totalSelection)
    visibleRange = IntRange(0, totalSelection)

    attributes.recycle()
    ViewCompat.setImportantForAccessibility(this, ViewCompat.IMPORTANT_FOR_ACCESSIBILITY_YES)

    with(defaultThumbDrawable) {
      shapeAppearanceModel =
        ShapeAppearanceModel.builder()
          .setAllCorners(CornerFamily.ROUNDED, thumbRadius.toFloat()).build()
      fillColor =
        context.themeColorStateList(com.zeekr.theme.R.attr.colorAlwaysWhite)
      strokeColor =
        context.themeColorStateList(com.google.android.material.R.attr.colorSecondary)
      strokeWidth = 1.dpf
      setBounds(0, 0, thumbRadius * 2, thumbRadius * 2)
    }

    thumbShadowDrawable =
      context.getDrawableOrNull(R.drawable.shadow_circle_100)?.mutate()!!.apply {
        setBounds(0, 0, (thumbRadius * 2 * 1.56).toInt(), (thumbRadius * 2 * 1.56).toInt())
      }

    sliderHeight = (thumbRadius * 2 * 1.56).toInt()

    scaledTouchSlop = ViewConfiguration.get(context).scaledTouchSlop

    setLayerType(LAYER_TYPE_SOFTWARE, null)
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
    defaultThumbDrawable.strokeColor = thumbStrokeColor
    invalidate()
  }

  override fun setEnabled(enabled: Boolean) {
    super.setEnabled(enabled)
    // setLayerType(if (enabled) LAYER_TYPE_NONE else LAYER_TYPE_HARDWARE, null)
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

  override fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {
    super.onSizeChanged(w, h, oldw, oldh)

    // Update the visible track width.
    trackWidth = max(w - trackSidePadding * 2, 0)
    logDebug(" trackWidth: $trackWidth  w:$w  ")
  }

  override fun onDraw(canvas: Canvas) {
    super.onDraw(canvas)

    val centerY: Int = sliderHeight / 2

    drawInactiveTrack(canvas, trackWidth, centerY)
    drawActiveTrack(canvas, trackWidth, centerY)

    val paddingSection = 3.dpf
    val singleWidth =
      (measuredWidth - ((totalSelection - 2) * 2 + 2) * paddingSection) / totalSelection
    1.until(totalSelection).forEach {
      // logDebug(" it: $it  singleWidth:$singleWidth  ")
      val singleLeft = singleWidth * it + (2 * it - 1) * paddingSection - paddingSection
      val singleRight = singleWidth * it + (2 * it - 1) * paddingSection + paddingSection
      canvas.drawLine(
        singleLeft,
        centerY.toFloat(),
        singleRight,
        centerY.toFloat(),
        clearPaint
      )
    }

    // drawShadowDrawable(canvas, trackWidth, centerY, rippleDrawable)
    if (!hideThumb) {
      drawThumbs(canvas, trackWidth, centerY)
      drawShadowIcon(canvas, trackWidth, centerY)
    }
  }

  @SuppressLint("ClickableViewAccessibility")
  override fun onTouchEvent(event: MotionEvent): Boolean {
    if (!isEnabled) {
      logInfo("onTouchEvent $isEnabled")
      return false
    }
    val x = event.x
    var touchPosition = (x - trackSidePadding) / trackWidth
    // logDebug("onTouchEvent  x: $x    touchPosition: $touchPosition")
    touchPosition = max((visibleRange.first + 1).toFloat() / totalSelection, touchPosition)
    touchPosition = min(visibleRange.last.toFloat() / totalSelection, touchPosition)
    // logDebug(" onTouchEvent actionMasked: ${event.actionMasked}  touchPosition: $touchPosition ")
    when (event.actionMasked) {
      MotionEvent.ACTION_DOWN -> {
        touchDownX = x

        if (velocityTracker == null) {
          velocityTracker = VelocityTracker.obtain()
        }
        velocityTracker?.addMovement(event)
        // If we're inside a vertical scrolling container,
        // we should start dragging in ACTION_MOVE
        if (!isInVerticalScrollingContainer()) {
          parent.requestDisallowInterceptTouchEvent(true)
          translationAnimation?.cancel()
          requestFocus()
          thumbIsPressed = true
          onStartTrackingTouch()
        }

        snapAdjustTouchPosition(touchPosition)
        invalidate()
      }
      MotionEvent.ACTION_MOVE -> {
        if (!thumbIsPressed) {

          // Check if we're trying to scroll vertically instead of dragging this Slider
          if (isInVerticalScrollingContainer() && abs(x - touchDownX) < scaledTouchSlop) {
            logInfo("thumbIsPressed: false  ==== $x - $touchDownX $scaledTouchSlop")
            return false
          }
          translationAnimation?.cancel()
          parent.requestDisallowInterceptTouchEvent(true)
          onStartTrackingTouch()
        }
        velocityTracker?.addMovement(event)
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
        // snapTouchPosition(touchPosition)
        velocityTracker?.let {
          it.computeCurrentVelocity(1000)
          val xVelocity = it.xVelocity
          logDebug(" velocityTracker    xVelocity: $xVelocity  ")
         /* if (xVelocity < -1000 && touchPosition * totalSelection < 2f &&
            touchDownX - event.x > 3f / totalSelection
          ) {
            snapTouchPosition(0f)
          } else {
          }*/
          it.recycle()
        }
        progressListener?.invoke(progressValue)
        velocityTracker = null
        onStopTrackingTouch()
        invalidate()
        // adjustValuePosition()
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
    if (progressValue == 0) {
      return
    }
    val right = trackSidePadding + progressValue * width * 1f / totalSelection
    val left: Float = trackSidePadding.toFloat()
    val rightActor = (right - trackSidePadding).takeUnless { progressValue <= 1 } ?: (right - 2.dp)
    canvas.drawLine(left, centerY.toFloat(), rightActor, centerY.toFloat(), activeTrackPaint)
  }

  private fun drawInactiveTrack(canvas: Canvas, width: Int, centerY: Int) {
    val right: Float = trackSidePadding + progressValue * width * 1f / totalSelection
    val rightActor = right.takeUnless { progressValue <= 1 } ?: (right - 2.dp)
    if (right < trackSidePadding + width) {
      canvas.drawLine(
        rightActor,
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

  private fun drawShadowDrawable(
    canvas: Canvas,
    width: Int,
    centerY: Int,
    shadowDrawable: Drawable
  ) {
    canvas.save()
    canvas.translate(
      trackSidePadding +
        (sliderProgress * width).toInt() -
        shadowDrawable.bounds.width() / 2f,
      centerY - shadowDrawable.bounds.height() / 2f
    )
    shadowDrawable.draw(canvas)

    canvas.restore()
  }

  private fun drawShadowIcon(canvas: Canvas, width: Int, centerY: Int) {
    canvas.save()
    canvas.translate(
      trackSidePadding +
        (sliderProgress * width).toInt() -
        thumbShadowDrawable.bounds.width() / 2f,
      centerY - defaultThumbDrawable.bounds.height() * 0.6f
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
  private fun isInVerticalScrollingContainer(): Boolean {
    var p = parent
    while (p is ViewGroup) {
      val parent = p
      val canScrollVertically =
        parent.canScrollVertically(1) || parent.canScrollVertically(-1)
      if (canScrollVertically && parent.shouldDelayChildPressedState()) {
        logInfo("isInVerticalScrollingContainer: true")
        return true
      }
      p = p.getParent()
    }
    logInfo("isInVerticalScrollingContainer: false")
    return false
  }

  private fun snapTouchPosition(progress: Float) {
    logger(" snapTouchPosition: $progress  $progressValue")
    sliderProgress = progress
    if (abs(sliderProgress - (progressValue * 1f / totalSelection))
      < 0.01
    ) {
      progressListener?.invoke(progressValue)
    }
  }

  private fun snapAdjustTouchPosition(progress: Float) {
    logger(" snapTouchPosition: $progress  $progressValue")
    sliderProgress = progress
    sliderProgress = progressValue * 1f / totalSelection
    progressListener?.invoke(progressValue)
  }

  private fun adjustValuePosition() {
    // setAnimateToProgress(progressValue)
    sliderProgress = progressValue * 1f / totalSelection
  }

  private fun fetchProgressValue(): Int {
    val slideValue = sliderProgress * totalSelection
    val value = when {
      slideValue < 0.5f -> 0
      sliderProgress == 1f -> totalSelection
      else -> (slideValue + .8f).toInt()
    }
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
    logInfo("commonSetProgressValue: $value")
    progressValue = value
  }

  fun setSliderSelection(selection: Int) {
    logInfo("setSliderSelection: $selection")

    totalSelection = selection
    valueRange = IntRange(0, totalSelection)
    visibleRange = IntRange(0, totalSelection)
    invalidate()
  }

  fun voiceSetProgressValue(value: Int) {
    setAnimateToProgress(value)
    // rippleDrawable.start()
  }

  fun singleSetProgressValue(value: Int) {
    logInfo("singleSetProgressValue: $value")
    progressValue = value
  }

  internal fun themeApply() {
    activeTrackPaint.color =
      context.themeColor(com.google.android.material.R.attr.colorSecondary)
    inactiveTrackPaint.color = context.themeColor(com.zeekr.theme.R.attr.colorSliderInactive)
    invalidate()
  }

  private fun logger(message: String) {
    logDebug(message)
  }

  companion object {
    private const val ZEEKR_SELECTION_SLIDER_DEFAULT_NUMBER = 7
  }
}
