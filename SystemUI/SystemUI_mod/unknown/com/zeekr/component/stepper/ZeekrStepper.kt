package com.zeekr.component.stepper

import android.annotation.SuppressLint
import android.content.Context
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.Rect
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
import com.zeekr.component.extention.getDrawableOrNull
import com.zeekr.component.extention.logDebug
import com.zeekr.component.extention.measureSpecBySize
import com.zeekr.component.extention.sizeWhenExactly
import com.zeekr.component.extention.themeColor
import com.zeekr.component.extention.themeColorStateId
import com.zeekr.component.extention.themeColorStateList

class ZeekrStepper @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : View(context, attrs) {

  private var numberListener: ((Int) -> Unit)? = null
  private var unitText = ""
  private val radioSize = 6.dp
  private val iconMargin = 12.dp
  private val drawableBackgroundSide = 58.dp
  private val verticalPadding = 17.dp
  private val drawablePadding = 0.dp
  private val minusBackground = MaterialShapeDrawable()
  private val plusBackground = MaterialShapeDrawable()
  private val backgroundSize = 56.dp
  private var stepperMinus: Drawable
  private var stepperPlus: Drawable
  private val minusRect: Rect
  private var minusHotspotRect = Rect()
  private val plusRect: Rect
  private val textRect = Rect()
  private val unitRect = Rect()
  private val textPaint = Paint()
  private val unitPaint = Paint()
  private val textPadding: Int
    get() = 0.takeUnless { unitText.isNotEmpty() } ?: 18
  private var plusHotspotRect = Rect()
  private val verticalHotspotPadding = 12.dp
  private val horizontalHotspotPadding = 36.dp
  private val normalDrawableColor =
    context.themeColor(com.google.android.material.R.attr.colorPrimary)
  private val disabledDrawableColor = themeColorStateId(com.zeekr.theme.R.color.primary_20)
  var maxNumber: Int
  var minNumber: Int
  var textStepLength: Int = 1

  private var stepperHeight = 56.dp + drawablePadding * 2
  private var stepperWidth = 197.dp

  var number: Int = 0
    set(value) {
      if (value < minNumber || value > maxNumber) {
        throw NoSuchElementException("number $value is not in range ($minNumber ~ $maxNumber) ")
      }
      when (value) {
        minNumber -> {
          minusDrawableEnable(false)
        }

        maxNumber -> {
          plusDrawableEnable(false)
        }

        else -> {
          when (field) {
            minNumber -> {
              minusDrawableEnable(true)
            }

            maxNumber -> {
              plusDrawableEnable(true)
            }
          }
        }
      }
      field = value
      invalidate()
    }

  init {
    val attributes = context.obtainStyledAttributes(attrs, R.styleable.ZeekrStepper)
    maxNumber = attributes.getInteger(R.styleable.ZeekrStepper_zeekr_text_max, 99)
    minNumber = attributes.getInteger(R.styleable.ZeekrStepper_zeekr_text_min, 0)
    textStepLength = attributes.getInteger(R.styleable.ZeekrStepper_zeekr_text_step_length, 1)

    attributes.recycle()

    stepperMinus = context.getDrawableOrNull(R.drawable.ic_stepper_stroke)!!
    stepperMinus.setBounds(0, 0, 32, 32)
    stepperPlus = context.getDrawableOrNull(R.drawable.ic_stepper_add)!!
    stepperPlus.setBounds(0, 0, 32, 32)

    number = minNumber

    minusRect = Rect(
      horizontalHotspotPadding,
      verticalHotspotPadding + verticalPadding,
      drawableBackgroundSide + horizontalHotspotPadding,
      drawableBackgroundSide + verticalHotspotPadding + verticalPadding
    )
    plusRect = Rect(
      stepperWidth - drawableBackgroundSide - horizontalHotspotPadding,
      verticalHotspotPadding + verticalPadding,
      stepperWidth - horizontalHotspotPadding,
      drawableBackgroundSide + verticalHotspotPadding + verticalPadding
    )

    with(minusBackground) {
      shapeAppearanceModel = ShapeAppearanceModel.builder()
        .setAllCorners(CornerFamily.ROUNDED, radioSize.toFloat()).build()
      fillColor = context.themeColorStateList(com.zeekr.theme.R.attr.colorOutlineBackground)
    }

    with(plusBackground) {
      shapeAppearanceModel = ShapeAppearanceModel.builder()
        .setAllCorners(CornerFamily.ROUNDED, radioSize.toFloat()).build()
      fillColor = context.themeColorStateList(com.zeekr.theme.R.attr.colorOutlineBackground)
    }

    val itemTextSize =
      context.dimensionFromAttribute(com.google.android.material.R.attr.textAppearanceBodyMedium)

    textPaint.run {
      color = context.themeColor(com.airbnb.lottie.R.attr.colorPrimary)
      isAntiAlias = true
      textSize = itemTextSize.toFloat()
      textAlign = Paint.Align.CENTER
      style = Paint.Style.FILL_AND_STROKE
    }

    unitPaint.run {
      color = context.themeColor(com.airbnb.lottie.R.attr.colorPrimary)
      isAntiAlias = true
      textSize = itemTextSize.toFloat()
      textAlign = Paint.Align.CENTER
      style = Paint.Style.FILL_AND_STROKE
    }

    setOnClickListener {}
  }

  fun setUnit(unit: String) {
    unitText = unit
    invalidate()
  }

  fun setNumberListener(listener: (Int) -> Unit) {
    this.numberListener = listener
  }

  override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
    stepperWidth = widthMeasureSpec.sizeWhenExactly(stepperWidth)
    stepperHeight = heightMeasureSpec.sizeWhenExactly(stepperHeight)
    super.onMeasure(stepperWidth.measureSpecBySize(), stepperHeight.measureSpecBySize())
  }

  override fun setEnabled(enabled: Boolean) {
    super.setEnabled(enabled)
    alpha = 1f.takeIf { isEnabled } ?: 0.4f
  }

  override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
    super.onLayout(changed, left, top, right, bottom)
  }

  override fun onDraw(canvas: Canvas) {
    super.onDraw(canvas)

    minusHotspotRect.left = 0
    minusHotspotRect.top = 0
    minusHotspotRect.right = drawableBackgroundSide
    minusHotspotRect.bottom = stepperHeight

    plusHotspotRect.left = stepperWidth - drawableBackgroundSide
    plusHotspotRect.top = 0
    plusHotspotRect.right = stepperWidth
    plusHotspotRect.bottom = stepperHeight

    minusBackground.setBounds(0, 0, backgroundSize, backgroundSize)
    plusBackground.setBounds(0, 0, backgroundSize, backgroundSize)

    canvas.save()
    canvas.translate(
      0f, drawablePadding.toFloat()
    )
    minusBackground.draw(canvas)
    canvas.restore()

    canvas.save()
    canvas.translate(
      measuredWidth - backgroundSize.toFloat(), drawablePadding.toFloat()
    )
    plusBackground.draw(canvas)
    canvas.restore()

    stepperMinus.setBounds(0, 0, 32, 32)
    canvas.save()
    canvas.translate(
      iconMargin.toFloat(), iconMargin + drawablePadding.toFloat()
    )
    stepperMinus.draw(canvas)
    canvas.restore()

    stepperPlus.setBounds(0, 0, 32, 32)
    canvas.save()
    canvas.translate(
      measuredWidth - backgroundSize + 12.5f, iconMargin + drawablePadding.toFloat()
    )
    stepperPlus.draw(canvas)
    canvas.restore()

    textPaint.getTextBounds(number.toString(), 0, number.toString().length, textRect)
    canvas.drawText(
      number.toString(),
      measuredWidth / 2f - textPadding,
      measuredHeight / 2 - textRect.centerY().toFloat(),
      textPaint
    )

    if (unitText.isNotEmpty()) {
      unitPaint.getTextBounds(unitText, 0, unitText.length, unitRect)
      canvas.drawText(
        unitText,
        stepperWidth / 2.toFloat() + textPadding,
        measuredHeight / 2 - unitRect.centerY().toFloat(),
        unitPaint
      )
    }
  }

  override fun performClick(): Boolean {
    return super.performClick()
  }

  @SuppressLint("ClickableViewAccessibility")
  override fun onTouchEvent(event: MotionEvent): Boolean {
    if (!isEnabled) {
      return super.onTouchEvent(event)
    }
    when (event.actionMasked) {

      MotionEvent.ACTION_UP -> {

        logDebug("event.x: ${event.x}  event.y: ${event.y}   ")
        when {
          minusHotspotRect.contains(
            event.x.toInt(), event.y.toInt()
          ) && number > minNumber -> {
            when (number) {
              minNumber + 1 -> {
                minusDrawableEnable(false)
              }

              maxNumber -> {
                plusDrawableEnable(true)
              }
            }
            number -= textStepLength
            numberListener?.invoke(number)
            invalidate()
          }

          plusHotspotRect.contains(
            event.x.toInt(), event.y.toInt()
          ) && number < maxNumber -> {

            when (number) {
              minNumber -> minusDrawableEnable(true)
              maxNumber - 1 -> plusDrawableEnable(false)
            }
            number += textStepLength
            numberListener?.invoke(number)
            invalidate()
          }

          else -> {}
        }
      }
    }
    return super.onTouchEvent(event)
  }

  private fun plusDrawableEnable(enabled: Boolean) {
    stepperPlus.setTint(normalDrawableColor.takeIf { enabled } ?: disabledDrawableColor)
  }

  private fun minusDrawableEnable(enabled: Boolean) {
    stepperMinus.setTint(normalDrawableColor.takeIf { enabled } ?: disabledDrawableColor)
  }

  private fun textPaintEnable(enabled: Boolean) {
    textPaint.color = normalDrawableColor.takeIf { enabled } ?: disabledDrawableColor
  }

  private fun unitTextPaintEnable(enabled: Boolean) {
    unitPaint.color = normalDrawableColor.takeIf { enabled } ?: disabledDrawableColor
  }

  internal fun themeApply() {
    stepperMinus = context.getDrawableOrNull(R.drawable.ic_stepper_stroke)!!
    stepperPlus = context.getDrawableOrNull(R.drawable.ic_stepper_add)!!
    plusBackground.fillColor =
      context.themeColorStateList(com.google.android.material.R.attr.colorSecondaryContainer)
    minusBackground.fillColor =
      context.themeColorStateList(com.google.android.material.R.attr.colorSecondaryContainer)
    textPaint.color = context.themeColor(com.google.android.material.R.attr.colorPrimary)
    invalidate()
  }
}
