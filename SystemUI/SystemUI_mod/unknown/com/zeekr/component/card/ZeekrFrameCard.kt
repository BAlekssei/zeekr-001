package com.zeekr.component.card

import android.content.Context
import android.graphics.Canvas
import android.graphics.drawable.Drawable
import android.util.AttributeSet
import android.widget.FrameLayout
import androidx.annotation.AttrRes
import com.google.android.material.shape.CornerFamily
import com.google.android.material.shape.MaterialShapeDrawable
import com.google.android.material.shape.ShapeAppearanceModel
import com.zeekr.component.R
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.getDrawableOrNull
import com.zeekr.component.extention.themeColorStateList

class ZeekrFrameCard @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null,
) : FrameLayout(context, attrs) {
  private val shapeDrawable = MaterialShapeDrawable()
  private var shadowDrawable: Drawable = context.getDrawableOrNull(R.drawable.shadow_cardview)!!
  private var bgColor = com.zeekr.theme.R.attr.colorFrameCard

  init {
    setWillNotDraw(false)
    with(shapeDrawable) {
      shapeAppearanceModel = ShapeAppearanceModel.builder()
        .setAllCorners(CornerFamily.ROUNDED, 6.toFloat()).build()
      fillColor = context.themeColorStateList(bgColor)
    }
  }

  override fun onDraw(canvas: Canvas) {
    super.onDraw(canvas)
    shadowDrawable.setBounds(0.dp, 0.dp, measuredWidth, measuredHeight)
    shadowDrawable.draw(canvas)
    shapeDrawable.setBounds(0, 0, measuredWidth, measuredHeight)
    shapeDrawable.draw(canvas)
  }

  fun setBgColor(@AttrRes colorId: Int) {
    bgColor = colorId
    shapeDrawable.fillColor = context.themeColorStateList(bgColor)
    invalidate()
  }

  fun setCornerSize(corner: Int) {
    shapeDrawable.shapeAppearanceModel = ShapeAppearanceModel.builder()
      .setAllCorners(CornerFamily.ROUNDED, corner.toFloat()).build()
    invalidate()
  }

  internal fun themeApply() {
    shapeDrawable.fillColor = context.themeColorStateList(bgColor)
    invalidate()
  }
}
