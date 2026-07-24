package com.zeekr.component.rebound

import android.content.Context
import android.util.AttributeSet
import android.view.View
import android.view.ViewGroup
import android.widget.LinearLayout
import com.zeekr.component.R
import com.zeekr.component.extention.getDimen
import com.zeekr.component.rebound.content.ZeekrRefreshContentHorizontal
import com.zeekr.component.rebound.content.ZeekrZeekrRefreshContentVertical
import com.zeekr.component.rebound.footer.ZeekrRefreshCircleLoadingTextFooter
import com.zeekr.component.rebound.header.ZeekrRefreshCircleLoadingTextHeader
import com.zeekr.component.refresh.ZeekrRefreshLayout
import com.zeekr.component.refresh.simple.ZeekrScrollBoundaryHorizontal
import com.zeekr.component.refresh.util.ZeekrSmartUtil

/**
 * 回弹刷新布局
 */
open class ZeekrReboundRefreshLayout @JvmOverloads constructor(context: Context, attr: AttributeSet ? = null) : ZeekrRefreshLayout(context, attr) {

  companion object {
    const val TAG = "ReboundRefreshLayout"
    // 回弹模式开启下关闭下拉刷新和上来加载更多
    const val SPRING_BACK_ONLY = 0
    // 回弹模式开启下拉刷新和上拉加载更多
    const val SPRING_BACK_ALLOW_REFRESH_LOAD = 1
    // 回弹模式仅开启下拉刷新
    const val SPRING_BACK_ONLY_ALLOW_REFRESH = 2
    // 回弹模式仅开启上来加载更多
    const val SPRING_BACK_ONLY_ALLOW_LOAD = 3
    // 回弹模式关闭
    const val SPRING_CLOSE = 4
    // 回弹模式 + 下拉文本提示
    const val SPRING_BACK_ONLY_ADD_DOWN_TIPS = 5
    // 回弹模式 + 上拉文本提示
    const val SPRING_BACK_ONLY_ADD_UP_TIPS = 6
    // 回弹模式 + 文本提示提示
    const val SPRING_BACK_ADD_TIPS = 7
    // 头回弹模式 + 头文本提示 + 上拉加载
    const val SPRING_BACK_ADD_UP_TIPS_AND_ALLOW_LOAD = 8
    // 尾回弹模式 + 尾文本提示 + 下拉刷新
    const val SPRING_BACK_ADD_DOWN_TIPS_AND_ALLOW_REFRESH = 9
  }

  protected var isRInLayout = false

  // 当前布局方向(回弹方向) 默认纵向 当前只能纵向，不要视图通过此修改布局
  private var mOrientation: Int = LinearLayout.VERTICAL
  // 是否运行开启回弹
  private var mSpringBackMode: Int = SPRING_BACK_ONLY

  init {
    val ta = context.obtainStyledAttributes(attr, R.styleable.ZeekrReboundRefreshLayout)
    try {
      // 获取设置的布局方向  当前只能纵向
      mOrientation = ta.getInt(R.styleable.ZeekrReboundRefreshLayout_android_orientation, mOrientation)
      // 获取是否开启回弹
      mSpringBackMode = ta.getInt(R.styleable.ZeekrReboundRefreshLayout_zeekrSpringBackMode, mSpringBackMode)
      // 获取下拉刷新的文本
      val refreshText = ta.getString(R.styleable.ZeekrReboundRefreshLayout_zeekrRefreshPullText)
      val refreshThresholdText = ta.getString(R.styleable.ZeekrReboundRefreshLayout_zeekrRefreshThresholdText)
      val refreshingText = ta.getString(R.styleable.ZeekrReboundRefreshLayout_zeekrRefreshingText)
      // 获取上拉加载的文本
      val loadMoreText = ta.getString(R.styleable.ZeekrReboundRefreshLayout_zeekrLoadMoreText)
      val loadMoreThresholdText = ta.getString(R.styleable.ZeekrReboundRefreshLayout_zeekrLoadMoreThresholdText)
      val loadMoreLoadingText = ta.getString(R.styleable.ZeekrReboundRefreshLayout_zeekrLoadMoreLoadingText)
      // 获取下拉刷新和上拉加载更多loading 和文字大小
      val loadingSize = ta.getDimensionPixelSize(R.styleable.ZeekrReboundRefreshLayout_zeekrRefreshLoadMoreIconSize, context.getDimen(R.dimen.zeekr_refresh_circle_loading_size))
      val refreshLoadingTextSize = ta.getDimensionPixelSize(R.styleable.ZeekrReboundRefreshLayout_zeekrRefreshLoadMoreTextSize, context.getDimen(com.zeekr.theme.R.dimen.font_size_body_medium))
      // 获取回弹文本
      val springBackDownTipsText = ta.getString(R.styleable.ZeekrReboundRefreshLayout_zeekrSpringBackDownTipsText)
      val springBackUpTipsText = ta.getString(R.styleable.ZeekrReboundRefreshLayout_zeekrSpringBackUpTipsText)
      // 初始化操作
      innerInit(refreshText, refreshThresholdText, refreshingText, loadMoreText, loadMoreThresholdText, loadMoreLoadingText, loadingSize, refreshLoadingTextSize, springBackDownTipsText, springBackUpTipsText)
    } finally {
      ta.recycle()
    }
  }

  /**
   * 主要针对横向布局的一些处理
   * @param refreshText 下拉刷新文本
   * @param refreshThresholdText 触发下拉刷新位置的文本
   * @param refreshing 正在刷新的文本
   * @param loadMoreText 上拉更多的文本
   * @param loadMoreThresholdText 触发上拉更多的文本
   * @param loadingText 正在上拉更多的文本
   * @param loadingIconSize loading圈大小
   * @param refreshLoadingTextSize loading文言大小
   * @param springBackDownTipsText 回弹下拉提示文本
   * @param springBackUpTipsText 回弹上拉提示文本
   */
  private fun innerInit(refreshText: String?, refreshThresholdText: String?, refreshing: String?, loadMoreText: String?, loadMoreThresholdText: String?, loadingText: String?, loadingIconSize: Int, refreshLoadingTextSize: Int, springBackDownTipsText: String?, springBackUpTipsText: String?) {
    // 横向布局需要重设边界判断器
    if (isHorizontal()) {
      // 设置滚动边界判断器
      setScrollBoundaryDecider(object : ZeekrSimpleBoundaryDeciderZeekrScrollBoundaryDeciderAdapter() {
        override fun canRefresh(content: View): Boolean {
          return ZeekrScrollBoundaryHorizontal.canRefresh(content, mActionEvent)
        }

        override fun canLoadMore(content: View): Boolean {
          return ZeekrScrollBoundaryHorizontal.canLoadMore(content, mActionEvent, mEnableLoadMoreWhenContentNotFull)
        }
      })
    }

    // 更新头部视图
    innerAddRefreshHeader()
    // 设置头部视图的文本
    setRefreshHeaderStateText(refreshText, refreshThresholdText, refreshing)
    // 设置头部视图的回弹文本
    setRefreshHeaderSpringBackText(springBackDownTipsText)
    // 设置头部视图大小
    setRefreshHeaderSize(loadingIconSize, refreshLoadingTextSize)

    // 更新上拉加载更多视图
    innerAddRefreshFooter()
    // 设置底部视图文本
    setRefreshFooterStateText(loadMoreText, loadMoreThresholdText, loadingText)
    // 设置底部视图的回弹文本
    setRefreshFooterSpringBackText(springBackUpTipsText)
    // 设置底部视图大小
    setRefreshFooterSize(loadingIconSize, refreshLoadingTextSize)

    // 设置是否开启回弹
    setSpringBackMode(mSpringBackMode)
    setRefreshHeaderSpringBackMode(mSpringBackMode)
    setRefreshFooterSpringBackMode(mSpringBackMode)

    if (isHorizontal()) {
      // 设置滑动阻尼
      setDragRate(0.4F)
      // 设置滑动距离
      setHeaderMaxDragRate(6F)
      setFooterMaxDragRate(5F)
    } else {
      // 设置滑动阻尼
      setDragRate(0.5F)
      setHeaderMaxDragRate(9F)
      setFooterMaxDragRate(8F)
    }

    // 设置回弹执行时间
    setReboundDuration(800)
  }

  /**
   * 设置下拉刷新头
   */
  private fun innerAddRefreshHeader() {

    // 设置下拉刷新视图
    setRefreshHeader(
      ZeekrRefreshCircleLoadingTextHeader(context),
      ViewGroup.LayoutParams.MATCH_PARENT,
      ViewGroup.LayoutParams.WRAP_CONTENT
    )
  }

  /**
   * 设置上拉加载更多
   */
  private fun innerAddRefreshFooter() {
    // 设置上拉加载更多
    setRefreshFooter(
      ZeekrRefreshCircleLoadingTextFooter(context),
      ViewGroup.LayoutParams.MATCH_PARENT,
      ViewGroup.LayoutParams.WRAP_CONTENT
    )
  }

  /**
   * 设置下拉刷新的尺寸大小
   * @param iconSize icon大小
   * @param textSize 文本大小
   */
  fun setRefreshHeaderSize(iconSize: Int, textSize: Int) {
    if (refreshHeader is ZeekrRefreshCircleLoadingTextHeader) {
      (refreshHeader as? ZeekrRefreshCircleLoadingTextHeader)?.setRefreshSize(iconSize, textSize)
    }
  }

  /**
   * 设置下拉刷新不同状态的文本提示
   * @param refreshText 下拉刷新
   * @param thresholdText 到底刷新触发位置后显示的文本
   * @param refreshing 正在刷新
   */
  fun setRefreshHeaderStateText(refreshText: String?, thresholdText: String?, refreshing: String?) {
    if (refreshHeader is ZeekrRefreshCircleLoadingTextHeader) {
      (refreshHeader as? ZeekrRefreshCircleLoadingTextHeader)?.setRefreshText(refreshText, thresholdText, refreshing)
    }
  }

  /**
   * 设置回弹下拉提示文本
   * @param springBackDownTipsText 提示文本
   */
  fun setRefreshHeaderSpringBackText(springBackDownTipsText: String?) {
    if (refreshHeader is ZeekrRefreshCircleLoadingTextHeader) {
      (refreshHeader as? ZeekrRefreshCircleLoadingTextHeader)?.setSpringBackTipText(springBackDownTipsText)
    }
  }

  /**
   * 设置头部视图回弹模式
   * @param springBackMode
   */
  fun setRefreshHeaderSpringBackMode(springBackMode: Int) {
    if (refreshHeader is ZeekrRefreshCircleLoadingTextHeader) {
      (refreshHeader as? ZeekrRefreshCircleLoadingTextHeader)?.setSpringBackMode(springBackMode)
    }
  }

  /**
   * 设置上拉加载更多的尺寸大小
   * @param iconSize icon大小
   * @param textSize 文本大小
   */
  fun setRefreshFooterSize(iconSize: Int, textSize: Int) {
    if (refreshFooter is ZeekrRefreshCircleLoadingTextFooter) {
      (refreshFooter as? ZeekrRefreshCircleLoadingTextFooter)?.setRefreshSize(iconSize, textSize)
    }
  }

  /**
   * 设置上拉加载更多不同状态的文案提示
   * @param loadMoreText 上拉加载更多
   * @param loadMoreThresholdText 到达上拉加载更多触发位置显示文本
   * @param loadMoreLoading 正在上拉加载更多
   */
  fun setRefreshFooterStateText(loadMoreText: String?, loadMoreThresholdText: String?, loadMoreLoading: String?, noMoreDataText: String? = null) {
    if (refreshFooter is ZeekrRefreshCircleLoadingTextFooter) {
      (refreshFooter as? ZeekrRefreshCircleLoadingTextFooter)?.setRefreshText(loadMoreText, loadMoreThresholdText, loadMoreLoading, noMoreDataText)
    }
  }

  /**
   * 设置回弹上拉拉提示文本
   * @param springBackUpTipsText 提示文本
   */
  fun setRefreshFooterSpringBackText(springBackUpTipsText: String?) {
    if (refreshFooter is ZeekrRefreshCircleLoadingTextFooter) {
      (refreshFooter as? ZeekrRefreshCircleLoadingTextFooter)?.setSpringBackTipText(springBackUpTipsText)
    }
  }

  /**
   * 设置底部视图回弹模式
   * @param springBackMode
   */
  fun setRefreshFooterSpringBackMode(springBackMode: Int) {
    if (refreshFooter is ZeekrRefreshCircleLoadingTextFooter) {
      (refreshFooter as? ZeekrRefreshCircleLoadingTextFooter)?.setSpringBackMode(springBackMode)
    }
  }

  /**
   * 设置回弹模式：仅回弹、下拉刷新、 上拉加载更多、下拉刷新+上拉加载更多、无任何效果
   * @param mode 提供三种模式
   */
  fun setSpringBackMode(mode: Int) {
    mSpringBackMode = mode
    // 更新头部试图和底部视图的模式
    setRefreshHeaderSpringBackMode(mSpringBackMode)
    setRefreshFooterSpringBackMode(mSpringBackMode)
    when (mode) {
      // 回弹 + 下拉刷新 + 上拉加载
      SPRING_BACK_ALLOW_REFRESH_LOAD -> {
        setEnableRefresh(true)
        setEnableLoadMore(true)
        setEnablePureScrollMode(false)
        setEnableOverScrollDownTips(false)
        setEnableOverScrollUpTips(false)
      }

      // 回弹 + 下拉刷新
      SPRING_BACK_ONLY_ALLOW_REFRESH -> {
        setEnableRefresh(true)
        setEnableLoadMore(false)
        setEnablePureScrollMode(false)
        setEnableOverScrollDownTips(false)
        setEnableOverScrollUpTips(false)
      }

      // 回弹 + 上拉加载
      SPRING_BACK_ONLY_ALLOW_LOAD -> {
        setEnableRefresh(false)
        setEnableLoadMore(true)
        setEnablePureScrollMode(false)
        setEnableOverScrollDownTips(false)
        setEnableOverScrollUpTips(false)
      }

      // 仅回弹
      SPRING_BACK_ONLY -> {
        setEnableRefresh(false)
        setEnableLoadMore(false)
        setEnableOverScrollDrag(true)
        setEnablePureScrollMode(true)
        setEnableOverScrollBounce(true)
        setEnableOverScrollDownTips(false)
        setEnableOverScrollUpTips(false)
      }

      // 关闭回弹
      SPRING_CLOSE -> {
        setEnableRefresh(false)
        setEnableLoadMore(false)
        setEnableOverScrollDrag(false)
        setEnablePureScrollMode(false)
        setEnableOverScrollBounce(false)
        setEnableOverScrollDownTips(false)
        setEnableOverScrollUpTips(false)
      }

      // 回弹 + 下拉提示文本
      SPRING_BACK_ONLY_ADD_DOWN_TIPS -> {
        setEnableRefresh(true)
        setEnableLoadMore(false)
        setEnablePureScrollMode(false)
        setEnableOverScrollDownTips(true)
        setEnableOverScrollUpTips(false)
      }

      // 回弹 + 上拉提示文本
      SPRING_BACK_ONLY_ADD_UP_TIPS -> {
        setEnableRefresh(false)
        setEnableLoadMore(true)
        setEnablePureScrollMode(false)
        setEnableOverScrollDownTips(false)
        setEnableOverScrollUpTips(true)
      }

      // 回弹 + 下拉提示文本 + 上拉提示文本
      SPRING_BACK_ADD_TIPS -> {
        setEnableRefresh(true)
        setEnableLoadMore(true)
        setEnablePureScrollMode(false)
        setEnableOverScrollDownTips(true)
        setEnableOverScrollUpTips(true)
      }

      // 回弹 + 下拉文本提示 + 上拉加载
      SPRING_BACK_ADD_UP_TIPS_AND_ALLOW_LOAD -> {
        setEnableRefresh(true)
        setEnableLoadMore(true)
        setEnablePureScrollMode(false)
        setEnableOverScrollDownTips(true)
        setEnableOverScrollUpTips(false)
      }

      // 回弹 + 上拉文本提示 + 下拉刷新
      SPRING_BACK_ADD_DOWN_TIPS_AND_ALLOW_REFRESH -> {
        setEnableRefresh(true)
        setEnableLoadMore(true)
        setEnablePureScrollMode(false)
        setEnableOverScrollDownTips(false)
        setEnableOverScrollUpTips(true)
      }
    }
  }

  override fun onAttachedToWindow() {
    super.onAttachedToWindow()
    if (isHorizontal()) {
      if (mZeekrRefreshContent != null && mZeekrRefreshContent !is ZeekrRefreshContentHorizontal) {
        mZeekrRefreshContent = ZeekrRefreshContentHorizontal(mZeekrRefreshContent.view)
        val fixedHeaderView: View? =
          if (mFixedHeaderViewId > 0) findViewById(mFixedHeaderViewId) else null
        val fixedFooterView: View? =
          if (mFixedFooterViewId > 0) findViewById(mFixedFooterViewId) else null
        mZeekrRefreshContent.setScrollBoundaryDecider(mScrollBoundaryDecider)
        mZeekrRefreshContent.setEnableLoadMoreWhenContentNotFull(
          mEnableLoadMoreWhenContentNotFull
        )
        mZeekrRefreshContent.setUpComponent(mKernel, fixedHeaderView, fixedFooterView)
      }
      rotation = -90F
    } else {
      if (mZeekrRefreshContent != null && mZeekrRefreshContent !is ZeekrZeekrRefreshContentVertical) {
        mZeekrRefreshContent = ZeekrZeekrRefreshContentVertical(mZeekrRefreshContent.view)
        val fixedHeaderView: View? =
          if (mFixedHeaderViewId > 0) findViewById(mFixedHeaderViewId) else null
        val fixedFooterView: View? =
          if (mFixedFooterViewId > 0) findViewById(mFixedFooterViewId) else null
        mZeekrRefreshContent.setScrollBoundaryDecider(mScrollBoundaryDecider)
        mZeekrRefreshContent.setEnableLoadMoreWhenContentNotFull(
          mEnableLoadMoreWhenContentNotFull
        )
        mZeekrRefreshContent.setUpComponent(mKernel, fixedHeaderView, fixedFooterView)
        (mZeekrRefreshContent as ZeekrZeekrRefreshContentVertical).isRefreshContentScrollView(
          ZeekrSmartUtil.isScrollableView(mZeekrRefreshContent.view), true
        )
      }
    }
    // mRefreshHeader?.isRefreshContentScrollView(mRefreshContent.view, SmartUtil.isScrollableView(mRefreshContent.view), true)
    // mRefreshFooter?.isRefreshContentScrollView(mRefreshContent.view, SmartUtil.isScrollableView(mRefreshContent.view), true)
  }

  override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
    if (isHorizontal()) {
      super.onMeasure(heightMeasureSpec, widthMeasureSpec)
    } else {
      super.onMeasure(widthMeasureSpec, heightMeasureSpec)
    }
  }

  override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
    super.onLayout(changed, left, top, right, bottom)

    if (isVertical()) {
      super.onLayout(changed, left, top, right, bottom)
    } else {
      val width = right - left
      val height = bottom - top
      var div = (height - width) / 2
      if (isRInLayout) {
        val paddingLeft: Int = paddingLeft
        val paddingRight: Int = paddingRight
        val paddingTop: Int = paddingTop
        val paddingBottom: Int = paddingBottom

        for (i in 0 until childCount) {
          val child = getChildAt(i)
          if ((mRefreshHeader == null || child != mRefreshHeader.view) && (mRefreshFooter == null || child != mRefreshFooter.view)) {
            if (child.visibility != GONE) {
              var w = height
              var h = width
              var l = paddingBottom
              var t = paddingLeft

              h -= paddingTop + paddingBottom
              w -= paddingLeft + paddingRight

              val params = child.layoutParams
              if (params is MarginLayoutParams) {
                h -= params.topMargin + params.bottomMargin
                w -= params.leftMargin + params.rightMargin
                l += params.bottomMargin
                t += params.leftMargin
              }

              div = (h - w) / 2
              l += div
              t -= div

              child.rotation = 90f
              child.setTag(R.id.zrl_tag, "GONE")
              child.measure(
                MeasureSpec.makeMeasureSpec(w, MeasureSpec.EXACTLY),
                MeasureSpec.makeMeasureSpec(h, MeasureSpec.EXACTLY)
              )
              child.layout(l, t, l + w, t + h)
            }
          }
        }
        super.onLayout(changed, left, top, right, bottom)
      } else {
        val newTop = top - div
        val newLeft = left + div
        isRInLayout = true
        super.layout(newLeft, newTop, newLeft + width, newTop + height)
        isRInLayout = false
      }
    }
  }

  /**
   * 是否是横向
   * @return true 横向 false 纵向
   */
  fun isHorizontal(): Boolean = false

  /**
   * 是否纵向
   */
  fun isVertical(): Boolean = true

  internal fun themeApply() {
    if (refreshHeader is ZeekrRefreshCircleLoadingTextHeader) {
      (refreshHeader as? ZeekrRefreshCircleLoadingTextHeader)?.themeApply()
    }

    if (refreshFooter is ZeekrRefreshCircleLoadingTextFooter) {
      (refreshFooter as? ZeekrRefreshCircleLoadingTextFooter)?.themeApply()
    }
  }
}
