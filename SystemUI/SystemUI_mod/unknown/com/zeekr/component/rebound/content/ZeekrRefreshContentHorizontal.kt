package com.zeekr.component.rebound.content

import android.animation.ValueAnimator
import android.view.View
import android.widget.AbsListView
import com.zeekr.component.refresh.util.ZeekrSmartUtil.scrollListBy
import com.zeekr.component.refresh.wrapper.ZeekrRefreshContentWrapper

class ZeekrRefreshContentHorizontal constructor(view: View) : ZeekrRefreshContentWrapper(view) {

  override fun scrollContentWhenFinished(spinner: Int): ValueAnimator.AnimatorUpdateListener? {
    if (mScrollableView != null && spinner != 0) {
      if (spinner < 0 && mScrollableView.canScrollHorizontally(1) || spinner > 0 && mScrollableView.canScrollHorizontally(
          -1
        )
      ) {
        mLastSpinner = spinner
        return this
      }
    }
    return null
  }

  override fun onAnimationUpdate(animation: ValueAnimator) {
    val value = animation.animatedValue as Int
    try {
      if (mScrollableView is AbsListView) {
        scrollListBy(mScrollableView as AbsListView, value - mLastSpinner)
      } else {
        mScrollableView.scrollBy(value - mLastSpinner, 0)
      }
    } catch (ignored: Throwable) {
      // 根据用户反馈，此处可能会有BUG
    }
    mLastSpinner = value
  }
}
