package com.zeekr.component.spinner

import android.animation.ValueAnimator
import android.content.Context
import android.content.res.Configuration
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.Rect
import android.graphics.drawable.Drawable
import android.util.AttributeSet
import android.view.LayoutInflater
import android.view.View
import android.view.animation.AccelerateInterpolator
import android.view.animation.DecelerateInterpolator
import androidx.annotation.DrawableRes
import androidx.core.view.updateLayoutParams
import com.google.android.material.shape.MaterialShapeDrawable
import com.zeekr.component.R
import com.zeekr.component.colors.colorInputBackground
import com.zeekr.component.colors.createColorStateList
import com.zeekr.component.colors.primary
import com.zeekr.component.databinding.ZeekrSpinnerIconBinding
import com.zeekr.component.databinding.ZeekrSpinnerTextBinding
import com.zeekr.component.dialog.ZeekrDialogAction
import com.zeekr.component.dialog.ZeekrDialogCreate
import com.zeekr.component.dialog.common.DIALOG_ANIMATE_DOWN
import com.zeekr.component.dialog.common.DialogParam
import com.zeekr.component.extention.clickWithTrigger
import com.zeekr.component.extention.dimensionFromAttribute
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.getDrawableOrNull
import com.zeekr.component.extention.logDebug
import com.zeekr.component.extention.measureSpecBySize
import com.zeekr.component.extention.sizeWhenExactly
import com.zeekr.component.extention.themeColor
import com.zeekr.component.extention.themeColorStateList
import com.zeekr.component.segement.ZeekrMultiTextSegment.Companion.DEF_DURATION
import com.zeekr.component.segement.ZeekrMultiTextSegment.Companion.DEF_FACTOR

class ZeekrSpinner @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null,
) : View(context, attrs) {

  private var itemListener: ((Int) -> Unit)? = null

  private var downOrUp: Boolean
  private val arrowDrawable: Drawable
  private val iconLists = mutableListOf<Int>()
  private val contentList = mutableListOf<String>()
  private val iconPadding = 32.dp
  private var textPadding = 0.dp
  private val backgroundDrawable = MaterialShapeDrawable()
  private val textPaint: Paint = Paint()
  private val textRect = Rect()
  private var selectIndex: Int = 0
  private val itemHeight = 80.dp
  private var spinnerWidth = 430.dp
  private var spinnerHeight = 80.dp
  private var arrowDrawableSize = 18.dp
  private var arrowAnimation: ValueAnimator? = null
  private var showAndDismiss = false
  private var onDialogAction: ZeekrDialogAction? = null
  private var isShowing: Boolean = true

  init {
    val attributes = context.obtainStyledAttributes(attrs, R.styleable.ZeekrSpinner)
    downOrUp = attributes.getBoolean(R.styleable.ZeekrSpinner_arrowDownUp, true)

    arrowDrawable = context.getDrawableOrNull(R.drawable.zeekr_spinner_expand)!!
    val itemTextSize =
      context.dimensionFromAttribute(com.google.android.material.R.attr.textAppearanceLabelLarge)

    with(backgroundDrawable) {
      shapeAppearanceModel = com.google.android.material.shape.ShapeAppearanceModel.builder()
        .setAllCorners(com.google.android.material.shape.CornerFamily.ROUNDED, 8.toFloat())
        .build()
      fillColor = context.themeColorStateList(com.zeekr.theme.R.attr.colorInputBackground)
    }

    textPaint.run {
      isAntiAlias = true
      isDither = true
      textSize = itemTextSize.toFloat()
      textAlign = Paint.Align.CENTER
      style = Paint.Style.FILL_AND_STROKE
    }

    attributes.recycle()
    this.clickWithTrigger {
      if (isShowing) show() else hide()
    }
  }

  override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
    spinnerWidth = widthMeasureSpec.sizeWhenExactly(spinnerWidth)
    spinnerHeight = heightMeasureSpec.sizeWhenExactly(spinnerHeight)
    super.onMeasure(
      spinnerWidth.measureSpecBySize(), spinnerHeight.measureSpecBySize()
    )
  }

  override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
    super.onLayout(changed, left, top, right, bottom)
    backgroundDrawable.setBounds(
      0, 0, measuredWidth, spinnerHeight
    )

    arrowDrawable.setBounds(0, 0, arrowDrawable.intrinsicWidth, arrowDrawable.intrinsicHeight)
  }

  override fun onDraw(canvas: Canvas) {
    super.onDraw(canvas)

    backgroundDrawable.draw(canvas)

    textPaint.getTextBounds(
      contentList[selectIndex], 0, contentList[selectIndex].length, textRect
    )
    textPaint.color = context.themeColor(com.google.android.material.R.attr.colorPrimary)
    canvas.drawText(
      contentList[selectIndex],
      textPadding.toFloat() + textRect.width() / 2,
      spinnerHeight / 2.toFloat() - textRect.centerY().toFloat(),
      textPaint
    )

    if (iconLists.size > 0) {
      canvas.save()
      val icon = context.getDrawableOrNull(iconLists[selectIndex])!!
      icon.setBounds(0, 0, icon.intrinsicWidth, icon.intrinsicHeight)
      icon.setTint(context.themeColor(com.google.android.material.R.attr.colorPrimary))
      canvas.translate(
        iconPadding.toFloat(), ((spinnerHeight / 2) - icon.intrinsicHeight / 2).toFloat()
      )
      icon.draw(canvas)
      canvas.restore()
    }

    canvas.save()
    canvas.translate(
      measuredWidth - 56.dp.toFloat(), ((spinnerHeight / 2) - arrowDrawableSize / 2).toFloat()
    )
    arrowDrawable.draw(canvas)
    canvas.restore()
  }

  fun setListener(listener: (Int) -> Unit) {
    this.itemListener = listener
  }

  fun submitData(
    nameList: List<String>,
    @DrawableRes iconList: List<Int>? = null,
    defaultIndex: Int = 0
  ) {
    selectIndex = defaultIndex
    textPadding = 24.dp.takeIf { iconList == null } ?: 64.dp
    contentList.clear()
    contentList.addAll(nameList)
    if (iconList != null) {
      iconLists.clear()
      iconLists.addAll(iconList)
    }
    contentDescription = contentList.getOrNull(selectIndex) ?: ""
    invalidate()
  }

  fun setPosition(position: Int) {
    selectIndex = position
    contentDescription = contentList.getOrNull(selectIndex) ?: ""
    invalidate()
  }

  private fun arrowAnimation(startOrEnd: Boolean) {
    val start = if (startOrEnd) 0 else 10000.dp
    val end = if (startOrEnd) 10000.dp else 0
    arrowAnimation = ValueAnimator.ofInt(start, end).apply {
      addUpdateListener {
        arrowDrawable.mutate().level = it.animatedValue as Int
        invalidate()
      }
      duration = DEF_DURATION
      start()
    }
  }

  private fun onDropDialog() {
    val screenLocation = IntArray(2)
    val animateStyle = DIALOG_ANIMATE_DOWN
    showAndDismiss = true
    isShowing = true
    getLocationOnScreen(screenLocation)
    val screenY = screenLocation[1] + 12.dp
    logDebug("screenLocation[1]  =  ${screenLocation[1]}   screenY  =  $screenY ")
    arrowAnimation(showAndDismiss)
    onDialogAction = ZeekrDialogCreate(context).show {
      speciallySize()
      dialogParam(
        DialogParam(
          isTouchThrough = true,
          hasShadowBg = false,
          animationStyle = animateStyle,
          positionX = screenLocation[0],
          positionY = screenY,
          animationDuration = 300,
          showInterpolator = DecelerateInterpolator(DEF_FACTOR),
          dismissInterpolator = AccelerateInterpolator(DEF_FACTOR)
        )
      )
      mergeLayout {
        if (iconLists.size > 0) {
          ZeekrSpinnerIconBinding.inflate(LayoutInflater.from(context), it, true).apply {
            showAndDismiss = false
            menu.updateLayoutParams { width = this@ZeekrSpinner.measuredWidth - 24.dp }
            menu.submitData(contentList, iconLists)
            menu.setSelectDrawableColor(com.zeekr.theme.R.attr.colorSpinnerItemColor)
            menu.setOnSelectTextColor(com.google.android.material.R.attr.colorPrimary)
            menu.commonItemSet(selectIndex)
            menu.setSelectIndexListener {
              selectIndex = it
              contentDescription = contentList.getOrNull(selectIndex) ?: ""
              itemListener?.invoke(it)
              postDelayed({
                this@ZeekrSpinner.invalidate()
              }, 300L)
              dialogAction.dismiss()
              isShowing = true
              arrowAnimation(showAndDismiss)
            }
          }
        } else {
          ZeekrSpinnerTextBinding.inflate(LayoutInflater.from(context), it, true).apply {
            showAndDismiss = false
            menu.updateLayoutParams { width = this@ZeekrSpinner.measuredWidth - 24.dp }
            menu.itemHeight = this@ZeekrSpinner.measuredHeight
            menu.submitContent(contentList)
            menu.setSelectDrawableColor(com.zeekr.theme.R.attr.colorSpinnerItemColor)
            menu.setOnSelectTextColor(com.google.android.material.R.attr.colorPrimary)
            menu.commonItemSet(selectIndex)
            menu.setSelectIndexListener {
              selectIndex = it
              contentDescription = contentList.getOrNull(selectIndex) ?: ""
              itemListener?.invoke(it)
              postDelayed({
                this@ZeekrSpinner.invalidate()
              }, 300L)
              dialogAction.dismiss()
              isShowing = true
              arrowAnimation(showAndDismiss)
            }
          }
        }
        isShowing = true
      }
      dismissBeforeOnListener {
        isShowing = false
        arrowAnimation(false)
        onDialogAction = null
      }
      dismissOnListener {
        isShowing = true
      }
    }
  }

  fun show() {
    onDropDialog()
  }

  fun hide() {
    onDialogAction?.dismiss()
    isShowing = true
  }

  override fun onConfigurationChanged(newConfig: Configuration?) {
    super.onConfigurationChanged(newConfig)
    arrowAnimation(false)
  }

  fun themApply() {
    backgroundDrawable.fillColor = createColorStateList(colorInputBackground)
    textPaint.color = primary
    arrowDrawable.setTintList(createColorStateList(primary))
    invalidate()
  }
}
