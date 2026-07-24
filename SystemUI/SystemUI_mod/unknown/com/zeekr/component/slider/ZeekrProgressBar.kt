package com.zeekr.component.slider

import android.annotation.SuppressLint
import android.content.Context
import android.content.res.ColorStateList
import android.graphics.Canvas
import android.graphics.drawable.Drawable
import android.util.AttributeSet
import android.view.MotionEvent
import android.view.View
import com.google.android.material.shape.CornerFamily
import com.google.android.material.shape.MaterialShapeDrawable
import com.google.android.material.shape.ShapeAppearanceModel
import com.zeekr.component.R
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.logDebug
import com.zeekr.component.extention.measureSpecBySize
import com.zeekr.component.extention.sizeWhenExactly
import com.zeekr.component.extention.themeColorStateList

class ZeekrProgressBar @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : View(context, attrs) {

  private var progressBarHeight = 40.dp
  private val trackHeight = 8.dp
  private val thumbCornerSize = 4.dp
  private val trackCornerSize = 4.dp
  private var valueRange: IntRange
  private val thumbRadius = 20.dp
  private val thumbInnerRadius: Int
    get() = thumbRadius - 2
  private val trackSidePadding = thumbRadius
  private var trackWidth = 808.dp
//  private var progressBarWidth = trackWidth + trackSidePadding * 2
  private var touchX = 0f
  private var progressListener: ((Int) -> Unit)? = null
  private val onTrackDrawable = MaterialShapeDrawable()
  private val trackDrawable = MaterialShapeDrawable()
  private val defaultThumbDrawable = MaterialShapeDrawable()
  private val defaultThumbInnerDrawable = MaterialShapeDrawable()
  private val startPosition = trackSidePadding
  private var onSliderTouchListener: ZeekrOnSliderTouchListener? = null
  var flagDrawable: Drawable? = null
  var flagProgressList: List<Int> = emptyList()
  private var thumbIsPressed = false
  val isTouch: Boolean
    get() = thumbIsPressed

  private val selectPositionX
    get() = touchX.toInt().coerceAtLeast(startPosition).coerceAtMost(startPosition + trackWidth)

  private val progress: Float
    get() = (selectPositionX - startPosition).toFloat() / trackWidth

  // 记录实际值
  private var progressValueOnly = 0

  var progressValue: Int = 0
    get() = fetchProgressValue()
    set(value) {
      field = value
      progressValueOnly = value
      val index = value - valueRange.first
      val result = index.toFloat() / valueRange.length()
      touchX = startPosition + trackWidth * result
      logDebug("progressValue   value: $value   index: $index  result: $result")
      invalidate()
    }

  init {

    val attributes = context.resources.obtainAttributes(attrs, R.styleable.ZeekrSliderStyle)

    val valueFrom = attributes.getInteger(R.styleable.ZeekrSliderStyle_zeekrSliderValueFrom, 0)
    val valueTo = attributes.getInteger(R.styleable.ZeekrSliderStyle_zeekrSliderValueTo, 100)

    attributes.recycle()

    valueRange = IntRange(valueFrom, valueTo)

    onTrackDrawable.setBounds(
      trackSidePadding, 0, trackWidth + trackSidePadding, trackHeight
    )

    trackDrawable.setBounds(
      0, 0, touchX.toInt() + trackSidePadding, trackHeight
    )

    with(onTrackDrawable) {
      shapeAppearanceModel = ShapeAppearanceModel.builder()
        .setAllCorners(CornerFamily.ROUNDED, trackCornerSize.toFloat()).build()
      fillColor = context.themeColorStateList(com.zeekr.theme.R.attr.colorSliderInactive)
    }

    with(trackDrawable) {
      shapeAppearanceModel = ShapeAppearanceModel.builder()
        .setAllCorners(CornerFamily.ROUNDED, thumbCornerSize.toFloat()).build()
      fillColor =
        context.themeColorStateList(com.google.android.material.R.attr.colorSecondary)
    }

    with(defaultThumbDrawable) {
      shapeAppearanceModel = ShapeAppearanceModel.builder()
        .setAllCorners(CornerFamily.ROUNDED, thumbRadius.toFloat()).build()
      fillColor =
        context.themeColorStateList(com.google.android.material.R.attr.colorSecondary)
      setBounds(0, 0, thumbRadius * 2, thumbRadius * 2)
    }

    with(defaultThumbInnerDrawable) {
      shapeAppearanceModel = ShapeAppearanceModel.builder()
        .setAllCorners(CornerFamily.ROUNDED, thumbInnerRadius.toFloat()).build()
      fillColor = context.themeColorStateList(com.zeekr.theme.R.attr.colorAlwaysWhite)
      setBounds(0, 0, thumbInnerRadius * 2, thumbInnerRadius * 2)
    }

    isClickable = true
  }

  fun progressListener(listener: ((Int) -> Unit)) {
    progressListener = listener
  }

  fun setOnTrackColor(onTrackColor: ColorStateList) {
    onTrackDrawable.fillColor = onTrackColor
    invalidate()
  }

  fun setTrackColor(trackColor: ColorStateList) {
    trackDrawable.fillColor = trackColor
    invalidate()
  }

  fun setDefaultThumbColor(defaultThumbColor: ColorStateList) {
    defaultThumbDrawable.fillColor = defaultThumbColor
    invalidate()
  }

  fun setDefaultThumbInnerDrawable(defaultThumbInnerColor: ColorStateList) {
    defaultThumbInnerDrawable.fillColor = defaultThumbInnerColor
    invalidate()
  }

  private fun onStartTrackingTouch() {
    onSliderTouchListener?.onStartTrackingTouch()
  }

  private fun onStopTrackingTouch() {
    onSliderTouchListener?.onStopTrackingTouch()
  }

  fun onSliderTouchListener(listener: ZeekrOnSliderTouchListener) {
    onSliderTouchListener = listener
  }

  override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
    progressBarHeight = heightMeasureSpec.sizeWhenExactly(progressBarHeight)
    super.onMeasure(widthMeasureSpec, progressBarHeight.measureSpecBySize())
    trackWidth = measuredWidth - trackSidePadding * 2
    onTrackDrawable.setBounds(
      trackSidePadding, 0, trackWidth + trackSidePadding, trackHeight
    )
  }

  override fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {
    super.onSizeChanged(w, h, oldw, oldh)
    progressValue = progressValueOnly
  }

  override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
    super.onLayout(changed, left, top, right, bottom)
  }

  override fun onDraw(canvas: Canvas) {
    super.onDraw(canvas)

    canvas.save()
    canvas.translate(0f, (measuredHeight - trackHeight) / 2.toFloat())
    onTrackDrawable.draw(canvas)
    canvas.restore()

    canvas.save()
    canvas.translate(0f, (measuredHeight - trackHeight) / 2.toFloat())
    trackDrawable.setBounds(trackSidePadding, 0, selectPositionX, trackHeight)
    trackDrawable.draw(canvas)
    canvas.restore()

    canvas.save()
    canvas.translate(
      selectPositionX.toFloat() - thumbRadius, 0f
    )
    defaultThumbDrawable.draw(canvas)
    canvas.restore()

    canvas.save()
    canvas.translate(selectPositionX.toFloat() + 2 - trackSidePadding, 2f)
    defaultThumbInnerDrawable.draw(canvas)
    canvas.restore()

    if (flagProgressList.isNotEmpty()) {
      flagDrawable?.let {
        it.setBounds(0, 0, it.intrinsicWidth, it.intrinsicHeight)
        List(flagProgressList.size) { index ->
          canvas.save()
          val value = flagProgressList[index]
          canvas.translate(
            startPosition + (trackWidth * value.toFloat()) / 100,
            (measuredHeight - it.intrinsicHeight).toFloat() / 2
          )
          it.draw(canvas)
          canvas.restore()
        }
      }
    }
  }

  private fun snapTouchPosition() {
    progressListener?.invoke(progressValue)
  }

  private fun fetchProgressValue(): Int {
    val value = valueRange.getValue(progress)
    logDebug(" fetchProgressValue: $value    sliderProgress: $progress")
    return value
  }

  @SuppressLint("ClickableViewAccessibility")
  override fun onTouchEvent(event: MotionEvent): Boolean {

    when (event.actionMasked) {
      MotionEvent.ACTION_DOWN -> {
        touchX = event.x
        logDebug("DOWN  ${event.x}")
        thumbIsPressed = true
        snapTouchPosition()
        parent.requestDisallowInterceptTouchEvent(true)
        invalidate()
        onStartTrackingTouch()
      }
      MotionEvent.ACTION_MOVE -> {
        touchX = event.x
        logDebug("MOVE  ${event.x}")
        snapTouchPosition()
        parent.requestDisallowInterceptTouchEvent(true)
        invalidate()
        onStartTrackingTouch()
      }
      MotionEvent.ACTION_CANCEL,
      MotionEvent.ACTION_UP -> {
        logDebug("UP  ${event.x}")
        thumbIsPressed = false
        parent.requestDisallowInterceptTouchEvent(false)
        onStopTrackingTouch()
      }
    }
    return super.onTouchEvent(event)
  }

  fun setValueRange(valueRange: IntRange) {
    this.valueRange = valueRange
  }

  fun themeApply() {
    onTrackDrawable.fillColor =
      context.themeColorStateList(com.zeekr.theme.R.attr.colorSliderInactive)
    trackDrawable.fillColor =
      context.themeColorStateList(com.google.android.material.R.attr.colorSecondary)
    defaultThumbDrawable.fillColor =
      context.themeColorStateList(com.google.android.material.R.attr.colorSurfaceVariant)
  }
}
