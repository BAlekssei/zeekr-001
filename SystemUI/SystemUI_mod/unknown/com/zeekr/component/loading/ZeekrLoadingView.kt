package com.zeekr.component.loading

import android.content.Context
import android.graphics.Canvas
import android.util.AttributeSet
import android.view.View
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.sizeWhenExactly

class ZeekrLoadingView @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : View(context, attrs) {

  private var loadingDrawableSide = 56.dp
  private var isLoading = false

  // 定义一个记录是否开启循环刷新的标志
  private var isLooper = false

  // 定义一个是否开启自动播放的标志
  private var isAutoPlay = true

  private val loadingDrawable: ZeekrCircleLoading by lazy {
    ZeekrCircleLoading(context).apply {
      setBounds(
        0, 0,
        measuredWidth.coerceAtLeast(loadingDrawableSide),
        measuredHeight.coerceAtLeast(loadingDrawableSide)
      )
    }
  }

  override fun onAttachedToWindow() {
    super.onAttachedToWindow()

    // 如果自动播放的话就开始播放动画
    if (isAutoPlay) {
      startAnimator()
    }
  }

  override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
    loadingDrawableSide = widthMeasureSpec.sizeWhenExactly(loadingDrawableSide)
    super.onMeasure(
      widthMeasureSpec, heightMeasureSpec
    )
  }

  override fun onDraw(canvas: Canvas) {
    super.onDraw(canvas)

    loadingDrawable.setBounds(0, 0, loadingDrawableSide, loadingDrawableSide)
    loadingDrawable.draw(canvas)
  }

  private fun refreshLoading() {
    if (!isLooper) return
    postDelayed({
      invalidate()
      refreshLoading()
    }, TIMER_VALUE)
  }

  fun isAutoPlay(isAuto: Boolean) {
    isAutoPlay = isAuto
  }

  fun startAnimator() {
    if (!isLooper) {
      isLooper = true
      refreshLoading()
    }

    if (!isLoading) {
      isLoading = true
      loadingDrawable.startAnimator()
    }
  }

  fun stopAnimator() {
    isLooper = false
    isLoading = false
    loadingDrawable.stopAnimator()
  }
  fun releaseAnimator() {
    isLoading = false
    isLooper = false
    loadingDrawable.releaseAnimator()
  }

  override fun onDetachedFromWindow() {
    releaseAnimator()
    super.onDetachedFromWindow()
  }

  companion object {
    private const val TIMER_VALUE = 60L
  }
}
