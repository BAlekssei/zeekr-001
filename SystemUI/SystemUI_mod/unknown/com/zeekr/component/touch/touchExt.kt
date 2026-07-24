package com.zeekr.component.touch

import android.graphics.Rect
import android.view.TouchDelegate
import android.view.View
import android.view.ViewGroup
import com.zeekr.component.extention.dp

internal fun View.expandViewTouch() {
  val expandWidth = ((96.dp - measuredWidth).coerceAtLeast(0)) / 2
  val expandHeight = ((96.dp - measuredHeight).coerceAtLeast(0)) / 2
  // logDebug("expandViewTouch measuredWidth: $measuredWidth measuredHeight:$measuredHeight expandWidth:$expandWidth  expandHeight: $expandHeight   ")
  expandTouchArea(Rect(expandWidth, expandHeight, expandWidth, expandHeight))
}

internal fun View.sliderExpandViewTouch() {
  val expandWidth = ((80.dp - measuredWidth).coerceAtLeast(0)) / 2
  val expandHeight = ((80.dp - measuredHeight).coerceAtLeast(0)) / 2
  // logDebug("expandViewTouch measuredWidth: $measuredWidth measuredHeight:$measuredHeight expandWidth:$expandWidth  expandHeight: $expandHeight   ")
  expandTouchArea(Rect(expandWidth, expandHeight, expandWidth, expandHeight))
}

fun View.expandTouchArea(rect: Rect) {
  postDelayed({
    val bounds = Rect()
    getHitRect(bounds)

    bounds.left -= rect.left
    bounds.top -= rect.top
    bounds.right += rect.right
    bounds.bottom += rect.bottom
    val mTouchDelegate = TouchDelegate(bounds, this)
    val p = parent
    takeIf { id == View.NO_ID }?.let { id = View.generateViewId() }
    if (p is ViewGroup) {
      val delegate = p.touchDelegate
      if (delegate is TouchDelegateComposite) {
        delegate.addDelegate(id, mTouchDelegate)
        delegate.build()
      } else {
        val touchDelegateComposite = TouchDelegateComposite(p)
        touchDelegateComposite.addDelegate(id, mTouchDelegate)
        touchDelegateComposite.build()
      }
    }
  }, 100)
}
