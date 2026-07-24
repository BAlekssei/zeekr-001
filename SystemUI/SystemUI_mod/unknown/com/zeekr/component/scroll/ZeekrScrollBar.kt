package com.zeekr.component.scroll

import android.animation.Animator
import android.animation.ObjectAnimator
import android.annotation.SuppressLint
import android.content.Context
import android.graphics.Canvas
import android.graphics.drawable.Drawable
import android.util.AttributeSet
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.core.content.ContextCompat
import androidx.core.widget.doAfterTextChanged
import com.zeekr.component.R
import com.zeekr.component.extention.dp
import com.zeekr.component.webview.ZeekrWebView

class ZeekrScrollBar @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null) : View(context, attrs) {
  private var mVerticalThumbHeight: Int = 0
  private val mVerticalThumbWidth: Int = 3.dp
  private var mVerticalThumbTop: Int = 0
  private var mThumbDrawable: Drawable = ContextCompat.getDrawable(context, R.drawable.zeekr_scrollbar_drawable)!!
  private var mTrackDrawable: Drawable? = null
  private var animator: Animator? = null

  override fun onDraw(canvas: Canvas?) {
    super.onDraw(canvas)
    if (canvas == null) {
      return
    }
    val top = mVerticalThumbTop
    val bottom = mVerticalThumbTop + mVerticalThumbHeight

    mTrackDrawable?.setBounds(0, 0, mVerticalThumbWidth, measuredHeight)
    mTrackDrawable?.draw(canvas)

    mThumbDrawable.setBounds(0, top, mVerticalThumbWidth, bottom)
    mThumbDrawable.draw(canvas)
  }

  @SuppressLint("NewApi")
  fun attachScrollView(scrollView: ViewGroup) {
    scrollView.setOnScrollChangeListener { _, _, _, _, _ ->
      calculate(scrollView)
    }

    val child = scrollView.getChildAt(0)
    if (child is TextView) {
      child.doAfterTextChanged {
        calculate(scrollView)
      }
    }
    post {
      calculate(scrollView)
    }
  }

  private fun calculate(scrollView: ViewGroup) {
    val visibleHeight = scrollView.measuredHeight
    if (visibleHeight == 0) {
      return
    }
    val contentHeight =
      if (scrollView is ZeekrWebView) scrollView.computeVerticalScrollRange() else scrollView.getChildAt(0)?.height
        ?: 0
    val division = contentHeight / visibleHeight

    mVerticalThumbHeight = when (division) {
      in 1..3 -> 80.dp
      in 4..12 -> 80.dp - (division - 3) * 56 / 9
      else -> 24.dp
    }

    if (contentHeight <= visibleHeight) {
      visibility = INVISIBLE
      return
    } else {
      visibility = VISIBLE
    }
    val scrollY = scrollView.scrollY
    mVerticalThumbTop =
      (measuredHeight - mVerticalThumbHeight) * scrollY / (contentHeight - visibleHeight)
    showNow()
    invalidate()
  }

  private val dismissRunnable = Runnable {
    if (isShown) {
      animator = ObjectAnimator.ofFloat(this, "alpha", alpha, 0f).setDuration(DEFDURATION)
      animator?.start()
    }
  }

  private fun showNow() {
    animator?.let {
      it.end()
      it.cancel()
    }
    alpha = 1f
    postDelayDismissRunnable()
  }

  private fun postDelayDismissRunnable() {
    removeCallbacks(dismissRunnable)
    postDelayed(dismissRunnable, DEFDELAYMILLIS)
  }

  companion object {
    private const val DEFDURATION = 500L
    private const val DEFDELAYMILLIS = 1000L
  }
}
