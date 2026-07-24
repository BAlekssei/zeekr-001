package com.zeekr.component.loading

import android.animation.ValueAnimator
import android.content.Context
import android.content.res.Configuration
import android.graphics.Canvas
import android.graphics.ColorFilter
import android.graphics.PixelFormat
import android.graphics.Rect
import android.graphics.drawable.Drawable
import android.view.animation.Animation
import android.view.animation.LinearInterpolator
import androidx.appcompat.content.res.AppCompatResources
import com.zeekr.component.R

class ZeekrCircleLoading(private val context: Context) :
  Drawable() {

  private var mGroupRotation = 0f
  private val mBounds = Rect()
  var colorReverse: Boolean = false

  private val isNight: Boolean
    get() = (context.resources.configuration.uiMode and Configuration.UI_MODE_NIGHT_MASK) == Configuration.UI_MODE_NIGHT_YES

  private val useNightDrawable: Boolean
    get() = (isNight && !colorReverse) || (!isNight && colorReverse)

  private val lightDrawable = AppCompatResources.getDrawable(context, R.drawable.ic_circle_loading)!!.mutate()
  private val nightDrawable = AppCompatResources.getDrawable(context, R.drawable.ic_circle_loading_night)!!.mutate()
  private val circleDrawable: Drawable
    get() = if (useNightDrawable) nightDrawable else lightDrawable

  private val mRenderAnimator: ValueAnimator by lazy {
    ValueAnimator.ofFloat(0.0f, 1.0f).apply {
      repeatCount = Animation.INFINITE
      repeatMode = ValueAnimator.RESTART
      duration = ANIMATION_DURATION
      interpolator = LinearInterpolator()
      addUpdateListener {
        val value = it.animatedValue as Float
        computeRender(value)
        invalidateSelf()
      }
    }
  }

  override fun draw(canvas: Canvas) {
    val saveCount = canvas.save()

    canvas.rotate(mGroupRotation, mBounds.centerX().toFloat(), mBounds.centerY().toFloat())
    circleDrawable.bounds = mBounds
    circleDrawable.draw(canvas)
    canvas.restoreToCount(saveCount)
  }

  override fun setAlpha(alpha: Int) {
  }

  override fun setColorFilter(colorFilter: ColorFilter?) {
  }

  override fun onBoundsChange(bounds: Rect) {
    super.onBoundsChange(bounds)
    mBounds.set(bounds)
  }

  @Deprecated(
    "Deprecated in Java",
    ReplaceWith("PixelFormat.TRANSLUCENT", "android.graphics.PixelFormat")
  )
  override fun getOpacity(): Int {
    return PixelFormat.TRANSLUCENT
  }

  fun startAnimator() {
    if (mRenderAnimator.isRunning) {
      return
    }
    mRenderAnimator.start()
  }

  fun releaseAnimator() {
    computeRender(0F)
    invalidateSelf()
    mRenderAnimator.cancel()
  }

  fun stopAnimator() {
    if (mRenderAnimator.isRunning) {
      mRenderAnimator.cancel()
    }
  }

  private fun computeRender(renderProgress: Float) {
    mGroupRotation = 360 * renderProgress
  }

  companion object {
    private const val ANIMATION_DURATION: Long = 1333
  }
}
