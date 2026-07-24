package com.zeekr.component.list

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.PixelFormat
import android.graphics.Rect
import android.graphics.drawable.Drawable
import android.util.AttributeSet
import android.widget.FrameLayout
import androidx.core.content.res.ResourcesCompat
import com.zeekr.component.R

class ZeekrPhoneItemView @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : FrameLayout(
  context, attrs
) {

  private lateinit var shadowRect: Rect
  private val shadowPaint = Paint()
  private val shadowDrawable: Drawable by lazy {
    ResourcesCompat.getDrawable(resources, R.drawable.shadow_list, context.theme)?.mutate()!!
  }

  override fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {
    super.onSizeChanged(w, h, oldw, oldh)
    // shadowRect = Rect(0 - 5.dp, 0 , measuredWidth + 1.dp, measuredHeight + 10.dp )
    shadowRect = Rect(0, 0, measuredWidth, measuredHeight)
  }

  private fun drawableToBitmap(drawable: Drawable, w: Int, h: Int): Bitmap {
    val config: Bitmap.Config =
      if (drawable.opacity != PixelFormat.OPAQUE) Bitmap.Config.ARGB_8888 else Bitmap.Config.RGB_565
    val bitmap = Bitmap.createBitmap(w, h, config)
    val canvas = Canvas(bitmap)
    drawable.setBounds(0, 0, w, h)
    drawable.draw(canvas)
    return bitmap
  }

  override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
    super.onMeasure(widthMeasureSpec, heightMeasureSpec)
  }

  override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
    super.onLayout(changed, left, top, right, bottom)
  }

  override fun onDraw(canvas: Canvas) {
    super.onDraw(canvas)

    val bitmap = drawableToBitmap(shadowDrawable, measuredWidth, measuredHeight)
    canvas.drawBitmap(bitmap, shadowRect, shadowRect, shadowPaint)
  }
}
