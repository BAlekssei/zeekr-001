package com.zeekr.component.slider

import android.animation.ValueAnimator
import android.annotation.SuppressLint
import android.content.Context
import android.content.res.ColorStateList
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.ColorFilter
import android.graphics.Paint
import android.graphics.Rect
import android.graphics.drawable.Drawable
import android.util.AttributeSet
import android.view.MotionEvent
import android.view.SoundEffectConstants
import android.view.View
import android.view.ViewConfiguration
import android.view.ViewGroup
import android.view.animation.LinearInterpolator
import androidx.annotation.ColorRes
import androidx.annotation.DrawableRes
import com.airbnb.lottie.LottieDrawable
import com.airbnb.lottie.LottieProperty
import com.airbnb.lottie.SimpleColorFilter
import com.airbnb.lottie.model.KeyPath
import com.airbnb.lottie.value.LottieValueCallback
import com.google.android.material.shape.CornerFamily
import com.google.android.material.shape.MaterialShapeDrawable
import com.google.android.material.shape.ShapeAppearanceModel
import com.zeekr.component.R
import com.zeekr.component.colors.primary
import com.zeekr.component.extention.dimensionFromAttribute
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.getDrawableOrNull
import com.zeekr.component.extention.logDebug
import com.zeekr.component.extention.measureSpecBySize
import com.zeekr.component.extention.sizeWhenExactly
import com.zeekr.component.extention.themeColor
import com.zeekr.component.extention.themeColorSelectId
import com.zeekr.component.extention.themeColorStateList
import com.zeekr.component.toggle.MOVE_TO_SELECT_ITEM_DURATION
import com.zeekr.lottie.brightnessDrawable
import kotlin.math.abs
import kotlin.math.max
import kotlin.math.min

open class ZeekrSquareSlider @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : View(context, attrs) {

  // 滑块宽度和高度
  private var totalWidth = 800.dp
  private var totalHeight = 86.dp

  // 刻度线的高度和宽度
  private val rulingHeight = 18.dp
  private val rulingWidth = 4.dp
  private var rulingGap = 24.dp

  // 活动轨道的绘制相关
  private val activeTrackDrawable = MaterialShapeDrawable()
  private var activeTrackPadding = 6.dp
  private var activeTrackCornerSize = 4.dp

  private val trackDrawable = MaterialShapeDrawable()
  private var trackCornerSize = 8.dp

  // 轨道的绘制相关
  private var verticalPadding = 0.dp
  private var trackWidth: Int = 0

  // 触摸相关
  private var touchX = 0f
  private var sliderProgress: Float = 0.0f
  private val onSelectPaint = Paint()
  private var rilingColorId = 0
  private val textPaint = Paint()
  private val textRect = Rect()

  // 左侧图标相关
  private var leftDrawable: Drawable?
  private var leftIcon: Int = 0
  private var iconSize = 40.dp
  private var leftIconLeftMargin = 20.dp

  // // 左侧文字
  private var leftText: String = ""
  private var leftTextSize: Int = 0
  private var leftTextColor: Int = Color.BLACK
  private var leftTextMargin: Int = 10.dp
  private var leftTextStartPosition: Int = 0

  private var step = 0.dp
  private val shouldDisplayText: Boolean
  private var unitLimit: Boolean
  private var valueRange: IntRange
  private var rulingSumWidth = 0
  private var rulingCount = 0
  private var onSliderTouchListener: ZeekrOnSliderTouchListener? = null
  private var brightnessDrawable: LottieDrawable? = null
  private var shouldDrawAgain: Boolean = false
  private var isBrightnessShow: Boolean = false
  private var translationAnimation: ValueAnimator? = null

  // 是否绘制刻度线，默认false
  private var rulingShow: Boolean
  private var unitShow: Boolean
  private val leftBrightSide = 48.dp

  // 右侧进度数文本
  private var rightText = ""

  // 是否显示右侧进度文字
  private var showRightText: Boolean = false

  private var brightnessColor: Int = 0
  private val cancelNotTouch: Boolean
  private val rightGap: Int
    get() = 104.dp.takeIf { shouldDisplayText } ?: 0

  private val leftGap: Int
    get() = 80.dp.takeIf { leftDrawable != null || isBrightnessShow } ?: 24

  private var touchListener: (SliderTouchListener)? = null
  private var progressListener: ((Int) -> Unit)? = null
  private var lastEvent: MotionEvent? = null
  private var thumbIsPressed = false
  private var scaledTouchSlop = 0

  var progressValue: Int = 0
    get() = fetchProgressValue()
    set(value) {
      logDebug("ZeekrHorizontalSlider setValue:  $value")
      if (!valueRange.contains(value)) {
        return
      }
      field = value
      val index = value - valueRange.first
      val result = index.toFloat() / valueRange.length()
      sliderProgress = result
      invalidate()
    }

  init {
    val attributes = context.obtainStyledAttributes(attrs, R.styleable.ZeekrSquareSlider)
    verticalPadding = attributes.getInteger(R.styleable.ZeekrSquareSlider_sliderVerticalPadding, 0.dp)
    leftIcon = attributes.getResourceId(R.styleable.ZeekrSquareSlider_sliderLeftIcon, 0)
    iconSize = attributes.getInteger(R.styleable.ZeekrSquareSlider_sliderLeftIconSize, 40.dp)
    leftIconLeftMargin =
      attributes.getInteger(R.styleable.ZeekrSquareSlider_sliderLeftIconLeftMargin, 20.dp)

    // 左侧文字、大小、颜色属性
    leftText = attributes.getString(R.styleable.ZeekrSquareSlider_sliderLeftText) ?: ""
    leftTextSize = attributes.getInteger(R.styleable.ZeekrSquareSlider_sliderLeftTextSize, 14)
    leftTextColor =
      attributes.getColor(R.styleable.ZeekrSquareSlider_sliderLeftTextColor, Color.BLACK)
    leftTextMargin =
      attributes.getInteger(R.styleable.ZeekrSquareSlider_sliderLeftTextMargin, 20.dp)

    // 滑块padding 两个圆角
    activeTrackPadding =
      attributes.getInteger(R.styleable.ZeekrSquareSlider_sliderActiveTrackPadding, 0)
    activeTrackCornerSize =
      attributes.getInteger(R.styleable.ZeekrSquareSlider_sliderActiveTrackCornerSize, 0)
    trackCornerSize =
      attributes.getInteger(R.styleable.ZeekrSquareSlider_sliderTrackCornerSize, 0)

    val valueFrom = attributes.getInteger(R.styleable.ZeekrSquareSlider_sliderValueFrom, 0)
    val valueTo = attributes.getInteger(R.styleable.ZeekrSquareSlider_sliderValueTo, 100)
    totalWidth = attributes.getInteger(R.styleable.ZeekrSquareSlider_sliderTotalWidth, 800.dp)
    rulingShow = attributes.getBoolean(R.styleable.ZeekrSquareSlider_sliderRulingShow, false)
    unitShow = attributes.getBoolean(R.styleable.ZeekrSquareSlider_sliderIsShowUnit, true)
    unitLimit = attributes.getBoolean(R.styleable.ZeekrSquareSlider_sliderUnitLimit, false)
    rulingCount = attributes.getInteger(R.styleable.ZeekrSquareSlider_sliderRulingCount, 0)
    step = attributes.getInteger(R.styleable.ZeekrSquareSlider_sliderStep, valueTo)
    showRightText =
      attributes.getBoolean(R.styleable.ZeekrSquareSlider_sliderDisplayRightText, false)
    isBrightnessShow =
      attributes.getBoolean(R.styleable.ZeekrSquareSlider_sliderBrightnessShow, false)

    valueRange = IntRange(valueFrom, valueTo)
    shouldDisplayText =
      attributes.getBoolean(R.styleable.ZeekrSquareSlider_sliderDisplayRightText, false)
    cancelNotTouch = attributes.getBoolean(R.styleable.ZeekrSquareSlider_cancelNotTouch, false)
    leftDrawable = context.getDrawableOrNull(leftIcon)
    leftDrawable?.setTint(primary)
    attributes.recycle()

    val itemTextSize =
      context.dimensionFromAttribute(com.google.android.material.R.attr.textAppearanceLabelMedium)

    textPaint.run {
      color = context.themeColor(com.google.android.material.R.attr.colorPrimary)
      isAntiAlias = true
      textSize = itemTextSize.toFloat()
      textAlign = Paint.Align.CENTER
      style = Paint.Style.FILL_AND_STROKE
    }

    onSelectPaint.run {
      color = context.themeColor(com.zeekr.theme.R.attr.colorRuling)
      style = Paint.Style.STROKE
      strokeCap = Paint.Cap.ROUND
      strokeWidth = rulingWidth.toFloat()
    }

    with(trackDrawable) {
      shapeAppearanceModel = ShapeAppearanceModel.builder()
        .setAllCorners(CornerFamily.ROUNDED, trackCornerSize.toFloat()).build()
      fillColor =
        context.themeColorStateList(com.google.android.material.R.attr.colorSecondaryContainer)
    }

    with(activeTrackDrawable) {
      shapeAppearanceModel = ShapeAppearanceModel.builder()
        .setAllCorners(CornerFamily.ROUNDED, activeTrackCornerSize.toFloat()).build()
      fillColor =
        context.themeColorStateList(com.google.android.material.R.attr.colorSurfaceInverse)
    }

    if (isBrightnessShow) {
      context.brightnessDrawable {
        brightnessDrawable = it.apply { setBounds(0, 0, leftBrightSide, leftBrightSide) }
        if (brightnessColor != 0) {
          brightnessDrawable?.brightnessColorFilter(brightnessColor)
          invalidate()
        } else if (shouldDrawAgain) {
          invalidate()
        }
      }
    }
    isClickable = true
    scaledTouchSlop = ViewConfiguration.get(context).scaledTouchSlop
  }

  fun setTrackColor(trackColor: ColorStateList) {
    trackDrawable.fillColor = trackColor
    invalidate()
  }

  fun setActiveTrackColor(thumbColor: ColorStateList) {
    activeTrackDrawable.fillColor = thumbColor
    invalidate()
  }

  fun setBrightnessColor(color: Int) {
    brightnessColor = color
    brightnessDrawable?.brightnessColorFilter(color)
    invalidate()
  }

  private fun LottieDrawable.brightnessColorFilter(color: Int) {
    val filter = SimpleColorFilter(color)
    val keyPath = KeyPath("**")
    val callback = LottieValueCallback<ColorFilter>(filter)
    addValueCallback(keyPath, LottieProperty.COLOR_FILTER, callback)
  }

  fun setRulingShow(show: Boolean) {
    rulingShow = show
    invalidate()
  }

  fun setValueRange(valueRange: IntRange) {
    this.valueRange = valueRange
    step = valueRange.last
    invalidate()
  }

  fun setRilingColor(@ColorRes color: Int) {
    rilingColorId = context.themeColorSelectId(color)
    onSelectPaint.color = context.themeColorSelectId(color)
    invalidate()
  }

  fun setLeftIcon(@DrawableRes icon: Int, targetIconSize: Int = iconSize) {
    leftIcon = icon
    iconSize = targetIconSize
    leftDrawable = context.getDrawableOrNull(icon)
    leftDrawable?.setBounds(0, 0, targetIconSize, targetIconSize)
    invalidate()
  }

//  fun setBrightnessAuto(isAuto: Boolean) {
//    isBrightnessAuto = isAuto
//    if (isBrightnessAuto) {
//      context.brightnessAutoDrawable {
//        brightnessDrawable = it.apply { setBounds(0, 0, leftBrightSide, leftBrightSide) }
//        invalidate()
//      }
//    } else {
//      context.brightnessDrawable {
//        brightnessDrawable = it.apply { setBounds(0, 0, leftBrightSide, leftBrightSide) }
//        invalidate()
//      }
//    }
//  }

  fun setStep(stepValue: Int) {
    step = stepValue
    invalidate()
  }

  fun setRightText(text: String) {
    rightText = text
    invalidate()
  }

  private fun fetchProgressValue(): Int {
    return if (step == valueRange.last) {
      valueRange.getValue(sliderProgress)
    } else {
      valueRange.getValue(sliderProgress) / (valueRange.last / (valueRange.last / step)) * (valueRange.last / (valueRange.last / step))
    }
  }

  override fun getAccessibilityClassName(): CharSequence {
    return "Slider"
  }

  override fun setEnabled(enabled: Boolean) {
    super.setEnabled(enabled)
    alpha = 0.4f.takeIf { !enabled } ?: 1f
  }

  override fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {
    super.onSizeChanged(w, h, oldw, oldh)
    trackWidth = max(w - activeTrackPadding * 2, 0)
  }

  override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
    totalWidth = widthMeasureSpec.sizeWhenExactly(totalWidth)
    val sliderHeight =
      heightMeasureSpec.sizeWhenExactly(totalHeight + verticalPadding * 2)
    totalHeight = sliderHeight - verticalPadding * 2

    super.onMeasure(
      totalWidth.measureSpecBySize(), sliderHeight.measureSpecBySize()
    )
  }

  override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
    super.onLayout(changed, left, top, right, bottom)

    if (!showRightText) {
      if (shouldDisplayText || leftDrawable != null) {
        rulingSumWidth = measuredWidth - rightGap - leftGap
        rulingCount = rulingSumWidth / (rulingGap)
      } else {
        rulingSumWidth = measuredWidth - leftGap
        rulingCount = rulingSumWidth / (leftGap)
      }
    }

    trackDrawable.setBounds(
      0, verticalPadding, measuredWidth, measuredHeight - verticalPadding
    )

    leftDrawable?.setBounds(0, 0, iconSize, iconSize)

    // 计算左侧文字的右边界位置
    leftTextStartPosition = leftIconLeftMargin + iconSize + leftTextMargin
  }

  override fun onDraw(canvas: Canvas) {
    super.onDraw(canvas)
    trackDrawable.draw(canvas)

    canvas.save()

    if (rulingShow) {
      repeat(rulingCount) {
        val ruling = measuredWidth / (rulingCount)
        val lineY = (measuredHeight - rulingHeight).toFloat() / 2
        if (it > 0) {
          canvas.drawLine(
            rulingGap * it + leftGap.toFloat(),
            lineY,
            rulingGap * it + leftGap.toFloat(),
            lineY + rulingHeight,
            onSelectPaint
          )
        }
      }
    }
    canvas.restore()
    drawActiveTrackDrawable(canvas, trackWidth)

    if (leftDrawable != null) {
      canvas.save()
      canvas.translate(
        leftIconLeftMargin.toFloat(), (measuredHeight - iconSize) / 2.toFloat()
      )
      leftDrawable?.draw(canvas)
      canvas.restore()
    }

    // 绘制左侧文字
    if (leftText.isNotEmpty()) {
      textPaint.color = leftTextColor
      textPaint.textSize = leftTextSize.toFloat()

      // 计算文字的宽度
      val textWidth = textPaint.measureText(leftText)

      // 计算文字的基线位置
      val fontMetrics: Paint.FontMetrics = textPaint.fontMetrics
      val baseline: Float =
        (measuredHeight / 2 - (fontMetrics.descent + fontMetrics.ascent) / 2)

      canvas.drawText(
        leftText,
        leftTextStartPosition.toFloat() + textWidth / 2,
        baseline,
        textPaint
      )
    }

    if (isBrightnessShow) {
      shouldDrawAgain = brightnessDrawable == null
      brightnessDrawable?.frame = (100 * sliderProgress).toInt()
      canvas.save()
      canvas.translate(
        leftIconLeftMargin.toFloat(), (measuredHeight - leftBrightSide) / 2.toFloat()
      )
      brightnessDrawable?.draw(canvas)
      canvas.restore()
    }

    if (shouldDisplayText) {
      if (unitShow) {
        if (unitLimit) {
          drawProgressValue(canvas, "°")
        } else {
          drawProgressValue(canvas, "%")
        }
      } else {
        drawProgressValue(canvas, "")
      }
    }

    if (showRightText) {
      drawRightText(canvas)
    }
  }

  @SuppressLint("ClickableViewAccessibility")
  override fun onTouchEvent(event: MotionEvent): Boolean {
    if (!isEnabled) {
      return false
    }
    touchListener?.invoke(event)
    val x = event.x

    var touchPosition = (x - activeTrackPadding) / trackWidth
    touchPosition = max(0f, touchPosition)
    touchPosition = min(1f, touchPosition)
    when (event.actionMasked) {
      MotionEvent.ACTION_DOWN -> {
        this.playSoundEffect(SoundEffectConstants.CLICK)
        logDebug("onTouchEvent : ACTION_DOWN  x:${event.x}  y: ${event.y} ")
        touchX = x
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
          if (isInVerticalScrollingContainer() && abs(x - touchX) < scaledTouchSlop) {
            return false
          }
          translationAnimation?.cancel()
          parent.requestDisallowInterceptTouchEvent(true)
          onStartTrackingTouch()
        }
        thumbIsPressed = true
        snapTouchPosition(touchPosition)
        if (progressValue >= 1) {
          leftDrawable = context.getDrawableOrNull(leftIcon)
          leftDrawable?.setTint(primary)
          leftDrawable?.setBounds(0, 0, iconSize, iconSize)
        }
        invalidate()
      }

      MotionEvent.ACTION_UP, MotionEvent.ACTION_CANCEL -> {
        logDebug("onTouchEvent : action:${event.actionMasked}  x:${event.x}  y: ${event.y} ")
        if (event.actionMasked == MotionEvent.ACTION_CANCEL && isInVerticalScrollingContainer() && !thumbIsPressed) {
          return super.onTouchEvent(event)
        } else if (event.actionMasked == MotionEvent.ACTION_CANCEL && thumbIsPressed && cancelNotTouch) {
          parent.requestDisallowInterceptTouchEvent(false)
          thumbIsPressed = false
          return super.onTouchEvent(event)
        }
        thumbIsPressed = false
        if (lastEvent != null) {
          val bb = abs(lastEvent!!.y - event.y) <= scaledTouchSlop
          val aa = abs(lastEvent!!.x - event.x) <= scaledTouchSlop
          val isBoolean = lastEvent?.actionMasked == MotionEvent.ACTION_DOWN && aa && bb
          if (isBoolean) {
            onStartTrackingTouch()
          }
        }
        snapTouchPosition(touchPosition)
        val index = progressValue - valueRange.first
        sliderProgress = index.toFloat() / valueRange.length()
        onStopTrackingTouch()
        invalidate()
        parent.requestDisallowInterceptTouchEvent(false)
      }
    }
    isPressed = thumbIsPressed
    lastEvent = MotionEvent.obtain(event)
    return super.onTouchEvent(event)
  }

  private fun drawActiveTrackDrawable(canvas: Canvas, width: Int) {
    val right: Float = activeTrackPadding + sliderProgress * width
    activeTrackDrawable.setBounds(
      activeTrackPadding,
      activeTrackPadding + verticalPadding,
      right.toInt(),
      measuredHeight - activeTrackPadding - verticalPadding
    )
    activeTrackDrawable.draw(canvas)
  }

  private fun drawProgressValue(canvas: Canvas, unit: String) {
    val text = "$progressValue" + unit
    textPaint.getTextBounds(text, 0, text.length, textRect)
    canvas.save()
    canvas.translate(measuredWidth - rulingGap * 2.toFloat(), measuredHeight / 2.toFloat())
    canvas.drawText(text, 0f, -textRect.centerY().toFloat(), textPaint)
    canvas.restore()
  }

  private fun drawRightText(canvas: Canvas) {
    textPaint.getTextBounds(rightText, 0, rightText.length, textRect)
    canvas.save()
    canvas.translate(
      measuredWidth - rulingGap - textRect.width().toFloat(), measuredHeight / 2.toFloat()
    )
    canvas.drawText(rightText, 0f, -textRect.centerY().toFloat(), textPaint)
    canvas.restore()
  }

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

  fun setUnitLimit(isShow: Boolean) {
    unitLimit = isShow
    invalidate()
  }

  fun unitIsShow(isShow: Boolean) {
    unitShow = isShow
    invalidate()
  }

  @JvmOverloads
  fun setAnimateToProgress(
    value: Int,
    animatorDuration: Long = MOVE_TO_SELECT_ITEM_DURATION,
    isValueInvoke: Boolean = true
  ) {
    if (!valueRange.contains(value)) {
      return
    }

    // val index = value - valueRange.first
    //  val positionTo = index.toFloat() / valueRange.length()
    translationAnimation?.cancel()
    val positionFrom = progressValue
    translationAnimation = ValueAnimator.ofInt(positionFrom, value).apply {
      addUpdateListener {
        progressValue = it.animatedValue as Int
        invalidate()
        if (isValueInvoke) {
          progressListener?.invoke(progressValue)
        }
      }
      duration = animatorDuration
      interpolator = LinearInterpolator()
      start()
    }
  }

  private fun snapTouchPosition(progress: Float) {
    val lastProgressValue = progressValue
    sliderProgress = progress
    logDebug(" snapTouchPosition: $progress     $progressValue")
    if (lastProgressValue != progressValue) {
      progressListener?.invoke(progressValue)
    }
  }

  fun setProgressListener(listener: (Int) -> Unit) {
    progressListener = listener
  }

  fun setTouchListener(listener: SliderTouchListener) {
    touchListener = listener
  }

  fun onSliderTouchListener(listener: ZeekrOnSliderTouchListener) {
    onSliderTouchListener = listener
  }

  private fun onStartTrackingTouch() {
    onSliderTouchListener?.onStartTrackingTouch()
  }

  private fun onStopTrackingTouch() {
    onSliderTouchListener?.onStopTrackingTouch()
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
  }

  fun singleSetProgressValue(value: Int) {
    if (!valueRange.contains(value)) {
      return
    }
    progressValue = value
  }

  fun setLeftText(
    text: String = leftText,
    textSize: Int = leftTextSize,
    textColor: Int = leftTextColor,
    textMargin: Int = leftTextMargin
  ) {
    leftText = text
    leftTextSize = textSize
    leftTextColor = textColor
    leftTextMargin = textMargin
    invalidate()
  }

//  internal fun themeApply() {
//    textPaint.color = primary
//    leftDrawable?.setTint(primary)
//    onSelectPaint.color = colorRuling.takeIf { rilingColorId == 0 } ?: rilingColorId
//    trackDrawable.fillColor = ColorStateList.valueOf(secondaryContainer)
//
//    activeTrackDrawable.fillColor = ColorStateList.valueOf(surfaceInverse)
//
//    if (isBrightnessShow) {
//      if (isBrightnessAuto) {
//        context.brightnessAutoDrawable {
//          brightnessDrawable =
//            it.apply { setBounds(0, 0, leftBrightSide, leftBrightSide) }
//          invalidate()
//        }
//      } else {
//        context.brightnessDrawable {
//          brightnessDrawable =
//            it.apply { setBounds(0, 0, leftBrightSide, leftBrightSide) }
//          invalidate()
//        }
//      }
//    }
//    invalidate()
//  }
}
