package com.zeekr.component.rebound

import android.content.Context
import android.util.AttributeSet
import com.zeekr.component.refresh.ZeekrRefreshHorizontal

class ZeekrReboundHorizontalLayout @JvmOverloads constructor(context: Context, attr: AttributeSet? = null) : ZeekrRefreshHorizontal(context, attr) {

  init {
    setEnableRefresh(false)
    setEnableLoadMore(false)
    setEnableOverScrollDrag(true)
    setEnablePureScrollMode(true)
    setEnableOverScrollBounce(true)
    // 设置滑动阻尼
    setDragRate(0.4F)
    // 设置滑动距离
    setHeaderMaxDragRate(6F)
    setFooterMaxDragRate(5F)

    // 设置回弹执行时间
    setReboundDuration(800)
  }

  /**
   * 设置最小触发fling的速度
   * @param minimumVelocity 阈值速度
   */
  fun setMinimumVelocity(minimumVelocity: Int = 10000) {
    mMinimumVelocity = minimumVelocity
  }
}
