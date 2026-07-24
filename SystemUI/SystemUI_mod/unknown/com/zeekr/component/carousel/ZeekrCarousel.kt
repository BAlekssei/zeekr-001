package com.zeekr.component.carousel

import android.content.Context
import android.content.res.ColorStateList
import android.graphics.Canvas
import android.util.AttributeSet
import android.view.View
import com.google.android.material.shape.CornerFamily
import com.google.android.material.shape.MaterialShapeDrawable
import com.google.android.material.shape.ShapeAppearanceModel
import com.zeekr.component.R
import com.zeekr.component.constant.NO_ITEM_SELECT
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.measureSpecBySize
import com.zeekr.component.extention.sizeWhenExactly
import com.zeekr.component.extention.themeColorStateList

class ZeekrCarousel @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : View(context, attrs) {

  private val selectDrawable = MaterialShapeDrawable()
  private val onSelectDrawable = MaterialShapeDrawable()
  private val onSelectDrawableHeight = 6.dp
  private val onSelectDrawableWidth = 6.dp
  private val selectDrawableHeight = 6.dp
  private val selectDrawableWidth = 16.dp
  private val drawableCornerSize = 100.dp
  private val drawablePadding = 10.dp
  private val carouselHeight = 10.dp
  private var carouselWidth = 104.dp
  private var count: Int
  private var selectCurrentPosition = 0
  private var movePosition = 0f

  private var carouselCountSize = onSelectDrawableHeight + drawablePadding

  var selectIndex = NO_ITEM_SELECT
    private set(value) {
      val target = 0.coerceAtLeast(value).coerceAtMost(count - 1)
      if (field == NO_ITEM_SELECT) {
        movePosition = value.toFloat()
        requestLayout()
        invalidate()
      }
      field = target
    }

  init {
    val attributes = context.resources.obtainAttributes(attrs, R.styleable.ZeekrCarousel)
    count = attributes.getInteger(R.styleable.ZeekrCarousel_carousel_count, 5)

    attributes.recycle()
    carouselWidth = selectDrawableWidth + (count - 1) * carouselCountSize
    with(selectDrawable) {
      shapeAppearanceModel = ShapeAppearanceModel.builder()
        .setAllCorners(CornerFamily.ROUNDED, drawableCornerSize.toFloat()).build()
      fillColor =
        context.themeColorStateList(com.google.android.material.R.attr.colorSecondary)
    }

    with(onSelectDrawable) {
      shapeAppearanceModel = ShapeAppearanceModel.builder()
        .setAllCorners(CornerFamily.ROUNDED, drawableCornerSize.toFloat()).build()
      fillColor =
        context.themeColorStateList(com.zeekr.theme.R.attr.colorCarousel)
    }
    selectDrawable.setBounds(0, 0, selectDrawableWidth, selectDrawableHeight)
    onSelectDrawable.setBounds(0, 0, onSelectDrawableWidth, onSelectDrawableHeight)
  }

  override fun onDraw(canvas: Canvas) {
    super.onDraw(canvas)

    canvas.save()
    (0 until count).forEach { index ->
      val drawable =
        selectDrawable.takeIf { selectCurrentPosition == index } ?: onSelectDrawable
      drawable.draw(canvas)
      val drawableWidth = selectDrawableWidth.takeIf { selectCurrentPosition == index }
        ?: onSelectDrawableWidth
      canvas.translate(drawablePadding.toFloat() + drawableWidth, 0.toFloat())
    }
    canvas.restore()
  }

  override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
    carouselWidth = widthMeasureSpec.sizeWhenExactly(carouselWidth)
    super.onMeasure(carouselWidth.measureSpecBySize(), carouselHeight.measureSpecBySize())
  }

  override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
    super.onLayout(changed, left, top, right, bottom)
  }

  fun setIndex(index: Int) {
    selectCurrentPosition = index
    invalidate()
  }

  fun getIndex(): Int {
    return selectCurrentPosition
  }

  fun themeApply() {
    selectDrawable.fillColor =
      context.themeColorStateList(com.google.android.material.R.attr.colorSecondary)
    onSelectDrawable.fillColor =
      context.themeColorStateList(com.zeekr.theme.R.attr.colorCarousel)
    invalidate()
  }

  fun onSelectBackground(stateList: ColorStateList) {
    onSelectDrawable.fillColor = stateList
    invalidate()
  }

  fun setCount(itemCount: Int) {
    count = itemCount
    carouselWidth = selectDrawableWidth + (count - 1) * carouselCountSize
    requestLayout()
    invalidate()
  }
}
