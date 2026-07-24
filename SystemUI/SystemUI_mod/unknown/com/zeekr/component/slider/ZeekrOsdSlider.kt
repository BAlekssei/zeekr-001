package com.zeekr.component.slider

import android.annotation.SuppressLint
import android.content.Context
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.drawable.Drawable
import android.util.AttributeSet
import android.view.MotionEvent
import android.view.View
import com.google.android.material.shape.CornerFamily
import com.google.android.material.shape.MaterialShapeDrawable
import com.google.android.material.shape.ShapeAppearanceModel
import com.zeekr.component.R
import com.zeekr.component.extention.dimensionFromAttribute
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.dpf
import com.zeekr.component.extention.getDrawableOrNull
import com.zeekr.component.extention.logDebug
import com.zeekr.component.extention.measureSpecBySize
import com.zeekr.component.extention.themeColor
import com.zeekr.component.extention.themeColorStateList

class ZeekrOsdSlider @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : View(context, attrs) {
  private val sliderWidth = 560.dp
  private var sliderHeight = 124.dp
  private val trackDrawable = MaterialShapeDrawable()
  private var trackWidth = 496.dp
  private var trackHeight = 6.dp
  private val inActiveDrawable = MaterialShapeDrawable()
  private val inActiveCornerSize = 8.dp
  private val inActiveHeight: Int
    get() = trackHeight
  private val trackPadding = 32.dp
  private val trackPaddingTop = 82.dp
  private val trackCornerSize = 24.dp
  private val tipPaint = Paint()
  var tipText: String
  var tipDrawable: Drawable?
  private val tipDrawablePaddingTop = 24.dp
  private val tipDrawablePaddingRight = 32.dp
  private var valueRange: IntRange
  private var touchX = 0f

  var progressValue: Int = 0
    get() = fetchProgressValue()
    set(value) {
      field = value
      val index = value - valueRange.first
      val result = index.toFloat() / valueRange.length()
      touchX = trackWidth * result + trackPadding
      invalidate()
    }

  private val startPosition = trackPadding

  private val selectPositionX
    get() = touchX.toInt().coerceAtLeast(startPosition)
      .coerceAtMost(startPosition + trackWidth)

  private val progress: Float
    get() = (selectPositionX - startPosition).toFloat() / trackWidth

  init {

    setOnClickListener {
    }

    val attributes = context.resources.obtainAttributes(attrs, R.styleable.ZeekrOsdSlider)
    val iconResourceId = attributes.getResourceId(R.styleable.ZeekrOsdSlider_tipIcon, 0)

    val valueFrom = attributes.getInteger(R.styleable.ZeekrOsdSlider_valueFrom, 0)
    val valueTo = attributes.getInteger(R.styleable.ZeekrOsdSlider_valueTo, 100)
    tipText = attributes.getString(R.styleable.ZeekrOsdSlider_tipText).toString()
    valueRange = IntRange(valueFrom, valueTo)
    tipDrawable = context.getDrawableOrNull(iconResourceId)
    tipDrawable?.setBounds(0, 0, 28, 28)
    tipDrawable?.setTint(context.themeColor(com.google.android.material.R.attr.colorPrimary))

    val tipTextSize =
      context.dimensionFromAttribute(com.google.android.material.R.attr.textAppearanceDisplayMedium)

    attributes.recycle()

    with(trackDrawable) {
      shapeAppearanceModel = ShapeAppearanceModel.builder()
        .setAllCorners(CornerFamily.ROUNDED, trackCornerSize.toFloat()).build()
      fillColor =
        context.themeColorStateList(com.zeekr.theme.R.attr.colorOsdTrack)
      setBounds(0, 0, trackWidth, trackHeight)
    }
    with(inActiveDrawable) {
      shapeAppearanceModel = ShapeAppearanceModel.builder()
        .setAllCorners(CornerFamily.ROUNDED, inActiveCornerSize.toFloat()).build()
      fillColor =
        context.themeColorStateList(com.google.android.material.R.attr.colorSecondary)
    }

    tipPaint.apply {
      color = context.themeColor(com.google.android.material.R.attr.colorPrimary)
      isAntiAlias = true
      textAlign = Paint.Align.CENTER
      style = Paint.Style.FILL_AND_STROKE
      textSize = tipTextSize.toFloat()
    }
  }

  private fun fetchProgressValue(): Int {
    val value = valueRange.getValue(progress)
    logDebug(" fetchProgressValue: $value    sliderProgress: $progress")
    return value
  }

  override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
    super.onLayout(changed, left, top, right, bottom)
  }

  override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
    super.onMeasure(sliderWidth.measureSpecBySize(), sliderHeight.measureSpecBySize())
  }

  override fun onDraw(canvas: Canvas) {
    super.onDraw(canvas)

    canvas.save()
    canvas.translate(tipDrawablePaddingRight.toFloat(), tipDrawablePaddingTop.toFloat())
    tipDrawable?.draw(canvas)
    canvas.restore()

    canvas.save()
    canvas.translate(104f, tipDrawablePaddingTop.toFloat())
    canvas.drawText(tipText, 0f, tipDrawablePaddingTop.toFloat() + 1.5.toFloat().dpf, tipPaint)
    canvas.restore()

    canvas.save()
    canvas.translate(trackPadding.toFloat(), trackPaddingTop.toFloat())
    trackDrawable.draw(canvas)
    canvas.restore()

    canvas.save()
    canvas.translate(trackPadding.toFloat(), trackPaddingTop.toFloat())
    inActiveDrawable.setBounds(
      0,
      0,
      selectPositionX - trackPadding,
      inActiveHeight
    )
    inActiveDrawable.draw(canvas)
    canvas.restore()
  }

  @SuppressLint("ClickableViewAccessibility")
  override fun onTouchEvent(event: MotionEvent): Boolean {
    when (event.actionMasked) {
      MotionEvent.ACTION_DOWN -> {
        parent.requestDisallowInterceptTouchEvent(true)
      }

      MotionEvent.ACTION_MOVE -> {
        parent.requestDisallowInterceptTouchEvent(true)
      }

      MotionEvent.ACTION_CANCEL,
      MotionEvent.ACTION_UP -> {
        parent.requestDisallowInterceptTouchEvent(false)
      }
    }
    return super.onTouchEvent(event)
  }

  internal fun themeApply() {
    trackDrawable.fillColor = context.themeColorStateList(com.zeekr.theme.R.attr.colorOsdTrack)
    inActiveDrawable.fillColor =
      context.themeColorStateList(com.google.android.material.R.attr.colorSecondary)
    tipPaint.color = context.themeColor(com.google.android.material.R.attr.colorPrimary)
    tipDrawable?.setTint(context.themeColor(com.google.android.material.R.attr.colorPrimary))
    invalidate()
  }
}
