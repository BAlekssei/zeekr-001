package com.zeekr.component.ripple

import android.content.Context
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.RadialGradient
import android.graphics.RectF
import android.graphics.Shader
import android.os.Build
import android.util.AttributeSet
import android.util.Log
import android.view.View
import androidx.annotation.RequiresApi
import com.zeekr.component.extention.dpf
import com.zeekr.component.extention.getViewRect
import com.zeekr.component.extention.themeColor

@RequiresApi(Build.VERSION_CODES.M)
internal class ZeekrRipple @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : View(context, attrs) {

  private val ringWidth = 4.dpf
  private val ringWidth2 = 5.dpf
  private val rectFArray = listOf(RectF(), RectF(), RectF())
  private val radiusArray = listOf(22.dpf, 31.dpf, 40.dpf)
  private val lightGradientColor =
    context.resources.getColor(com.zeekr.theme.R.color.ripple_0, context.theme)
  private val darkGradientColor =
    context.themeColor(com.zeekr.theme.R.attr.colorRippleVoice)
  private val paint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
    isAntiAlias = true
    setWillNotDraw(false)
    style = Paint.Style.STROKE
    strokeWidth = ringWidth
  }

  private val radialGradient: RadialGradient by lazy {
    RadialGradient(
      rectFArray[0].centerX(),
      rectFArray[0].centerY(),
      radiusArray[0] + ringWidth / 2,
      intArrayOf(darkGradientColor, lightGradientColor),
      floatArrayOf(0.3f, 1f),
      Shader.TileMode.MIRROR
    )
  }

  private val radialGradient2: RadialGradient by lazy {
    RadialGradient(
      rectFArray[1].centerX(),
      rectFArray[1].centerY(),
      radiusArray[1] + ringWidth / 2,
      intArrayOf(darkGradientColor, lightGradientColor),
      floatArrayOf(0f, 1f),
      Shader.TileMode.MIRROR
    )
  }
  private val radialGradient3: RadialGradient by lazy {
    RadialGradient(
      rectFArray[2].centerX(),
      rectFArray[2].centerY(),
      radiusArray[2] + ringWidth2 / 2,
      intArrayOf(darkGradientColor, lightGradientColor),
      floatArrayOf(0.5f, 1f),
      Shader.TileMode.MIRROR
    )
  }

  override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
    super.onLayout(changed, left, top, right, bottom)

    val viewCenterX = measuredWidth / 2
    val viewCenterY = measuredHeight / 2

    rectFArray[0].set(
      viewCenterX - radiusArray[0],
      viewCenterY - radiusArray[0],
      viewCenterX + radiusArray[0],
      viewCenterY + radiusArray[0]
    )

    rectFArray[1].set(
      viewCenterX - radiusArray[1],
      viewCenterY - radiusArray[1],
      viewCenterX + radiusArray[1],
      viewCenterY + radiusArray[1]
    )

    rectFArray[2].set(
      viewCenterX - radiusArray[2],
      viewCenterY - radiusArray[2],
      viewCenterX + radiusArray[2],
      viewCenterY + radiusArray[2]
    )

    val viewRect = getViewRect()
    Log.i("TAG", "onLayout: viewRect:  $viewRect  ")
    Log.i("TAG", "onLayout: rectFArray[0]:  ${rectFArray[0]}   ")
    Log.i("TAG", "onLayout: rectFArray[1]:  ${rectFArray[1]}   ")
    Log.i("TAG", "onLayout: rectFArray[2]:  ${rectFArray[2]}   ")
  }

  override fun onDraw(canvas: Canvas) {
    super.onDraw(canvas)

    paint.shader = radialGradient
    canvas.drawArc(rectFArray[0], 360f, 360f, false, paint)

    paint.shader = radialGradient2
    canvas.drawArc(rectFArray[1], 360f, 360f, false, paint)
    canvas.drawArc(rectFArray[1], 360f, 360f, false, paint)
    canvas.drawArc(rectFArray[1], 360f, 360f, false, paint)

    paint.strokeWidth = ringWidth2
    paint.shader = radialGradient3
    canvas.drawArc(rectFArray[2], 360f, 360f, false, paint)
  }
}
