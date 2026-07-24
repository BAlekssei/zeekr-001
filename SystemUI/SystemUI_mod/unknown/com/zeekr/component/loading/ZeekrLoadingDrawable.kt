package com.zeekr.component.loading

import android.animation.ValueAnimator
import android.content.Context
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.ColorFilter
import android.graphics.Paint
import android.graphics.PixelFormat
import android.graphics.Rect
import android.graphics.RectF
import android.graphics.SweepGradient
import android.graphics.drawable.Drawable
import android.view.animation.Animation
import android.view.animation.Interpolator
import android.view.animation.LinearInterpolator
import androidx.core.animation.addListener
import androidx.interpolator.view.animation.FastOutSlowInInterpolator
import com.zeekr.component.R
import com.zeekr.component.extention.themeColor
import com.zeekr.component.extention.themeColorSelectId
import kotlin.math.ceil

class ZeekrLoadingDrawable(context: Context) : Drawable() {

  private val mTempBounds = RectF()
  private val mBounds = Rect()
  private val mCenterRadius = DEFAULT_CENTER_RADIUS
  private val mStrokeWidth = DEFAULT_STROKE_WIDTH
  private val mStrokeInset: Float
    get() = (DEFAULT_SIZE / 2.0f - mCenterRadius).coerceAtLeast(ceil((mStrokeWidth / 2.0f).toDouble()).toFloat())
  private val materialInterpolator: Interpolator = FastOutSlowInInterpolator()
  private var mRotationCount = 0f
  private var mGroupRotation = 0f

  private var mEndDegrees = 0f
  private var mStartDegrees = 0f
  private var mSwipeDegrees = 0f
  private var mOriginEndDegrees = 0f
  private var mOriginStartDegrees = 0f
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
      addListener(onRepeat = {
        mOriginEndDegrees = mEndDegrees
        mOriginStartDegrees = mEndDegrees
        mStartDegrees = mEndDegrees
        mRotationCount = (mRotationCount + 1) % NUM_POINTS
      }, onStart = {
          mRotationCount = 0f
        })
    }
  }

  private val mPaint = Paint().apply {
    isAntiAlias = true
    strokeWidth = mStrokeWidth
    style = Paint.Style.STROKE
    strokeCap = Paint.Cap.ROUND
    shader = SweepGradient(
      0f, 0f,
      intArrayOf(
        context.themeColor(com.google.android.material.R.attr.colorPrimary),
        context.themeColorSelectId(com.zeekr.theme.R.color.primary_4),
        Color.RED,
        Color.YELLOW,
      ),
      null
    )
  }

  override fun draw(canvas: Canvas) {
    val saveCount = canvas.save()

    mTempBounds.set(mBounds)
    mTempBounds.inset(mStrokeInset, mStrokeInset)

    canvas.rotate(mGroupRotation, mTempBounds.centerX(), mTempBounds.centerY())

    if (mSwipeDegrees != 0f) {
      canvas.drawArc(mTempBounds, mStartDegrees, mSwipeDegrees, false, mPaint)
    }

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

  private fun computeRender(renderProgress: Float) {

    if (renderProgress <= START_TRIM_DURATION_OFFSET) {
      val startTrimProgress =
        renderProgress / START_TRIM_DURATION_OFFSET
      mStartDegrees = mOriginStartDegrees + MAX_SWIPE_DEGREES * materialInterpolator.getInterpolation(startTrimProgress)
    }

    if (renderProgress > START_TRIM_DURATION_OFFSET) {
      val endTrimProgress =
        (
          (renderProgress - START_TRIM_DURATION_OFFSET) /
            (END_TRIM_DURATION_OFFSET - START_TRIM_DURATION_OFFSET)
          )
      mEndDegrees = mOriginEndDegrees + MAX_SWIPE_DEGREES * materialInterpolator.getInterpolation(endTrimProgress)
    }
    if (Math.abs(mEndDegrees - mStartDegrees) > 0) {
      mSwipeDegrees = mEndDegrees - mStartDegrees
    }
    mGroupRotation =
      (
        FULL_GROUP_ROTATION / NUM_POINTS * renderProgress +
          FULL_GROUP_ROTATION * (mRotationCount / NUM_POINTS)
        )
  }

  fun setPaintColor(color: Int) {
    mPaint.color = color
  }

  fun startAnimator() {
    if (mRenderAnimator.isRunning) {
      return
    }
    mOriginEndDegrees = 0f
    mOriginStartDegrees = 0f

    mEndDegrees = 0f
    mStartDegrees = 0f
    mRenderAnimator.start()
  }

  fun stopAnimator() {
    mRenderAnimator.cancel()
  }

  companion object {
    private const val DEFAULT_CENTER_RADIUS = 12.5f
    private const val DEFAULT_STROKE_WIDTH = 3f
    private const val DEFAULT_SIZE = 56.0f
    private const val DEGREE_360 = 360
    private const val NUM_POINTS = 5

    private const val MAX_SWIPE_DEGREES = 0.8f * DEGREE_360
    private const val FULL_GROUP_ROTATION = 3.0f * DEGREE_360

    private const val END_TRIM_DURATION_OFFSET = 1.0f
    private const val START_TRIM_DURATION_OFFSET = 0.5f

    private const val ANIMATION_DURATION: Long = 1333
  }
}
