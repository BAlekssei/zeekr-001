package com.zeekr.component.rebound.footer

import android.content.Context
import android.graphics.Color
import android.graphics.Rect
import android.graphics.drawable.LayerDrawable
import android.os.Build
import android.util.AttributeSet
import android.util.TypedValue
import android.view.LayoutInflater
import android.view.View
import android.widget.LinearLayout
import androidx.core.view.updateLayoutParams
import com.google.android.material.shape.MaterialShapeDrawable
import com.google.android.material.shape.RoundedCornerTreatment
import com.google.android.material.shape.ShapeAppearanceModel
import com.zeekr.component.R
import com.zeekr.component.databinding.ZeekrRefreshClassicsFooterBinding
import com.zeekr.component.extention.dpf
import com.zeekr.component.extention.themeColorSelectId
import com.zeekr.component.rebound.ZeekrReboundRefreshLayout
import com.zeekr.component.refresh.api.ZeekrRefreshFooter
import com.zeekr.component.refresh.api.ZeekrRefreshKernel
import com.zeekr.component.refresh.api.ZeekrRefreshLayout
import com.zeekr.component.refresh.constant.ZeekrRefreshState
import com.zeekr.component.refresh.constant.ZeekrSpinnerStyle

class ZeekrRefreshCircleLoadingTextFooter @JvmOverloads constructor(context: Context, attr: AttributeSet ? = null) :
  LinearLayout(context, attr),
  ZeekrRefreshFooter {

  // "上拉加载更多"
  private var mRefreshFooterPulling: String ? = context.getString(R.string.srl_footer_pulling)

  // "释放立即加载"
  private var mRefreshFooterRelease: String ? = context.getString(R.string.srl_footer_release)

  // "正在加载..."
  private var mRefreshFooterLoading: String ? = context.getString(R.string.srl_footer_loading)

  // "没有更多数据了"
  private var mRefreshFooterNothing: String ? = context.getString(R.string.srl_footer_nothing)

  // 内容区域
  private var mContentView: View ? = null

  // 回弹提示文本
  private var mTextSpringBack: String ? = ""

  // 是否无更多数据数据情况
  private var mNoMoreData = false

  // 设置回弹模式 默认头部视图的回弹模式是下拉刷新
  private var mSpringBackMode = ZeekrReboundRefreshLayout.SPRING_BACK_ONLY_ALLOW_REFRESH

  // 是否显示滚动条
  private var isShowScrollBar = false

  // 是否是滚动布局
  private var isScrollContentView = false

  // 滚动条Drawable
  private var mScrollbarThumbDrawable: MaterialShapeDrawable ? = null

  // 滚动条宽度
  private var mScrollbarThumbDrawableWidth: Int = 0

  // 滚动条Drawable 高度
  private var mScrollbarThumbDrawableHeight: Int = 0

  // Drawable的位置大小信息
  private var mScrollbarThumbDrawableBound: Rect? = null

  // 布局
  private val mBinding: ZeekrRefreshClassicsFooterBinding by lazy {
    ZeekrRefreshClassicsFooterBinding.inflate(
      LayoutInflater.from(context),
      this
    )
  }

  init {
    mBinding.zeekrCircleLoading.isAutoPlay(false)
  }

  /**
   * 刷新文字提示
   * @param refreshText 下拉刷新
   * @param refreshThresholdText 到底下拉刷新触发时的文本
   * @param refreshingText 正在刷新的文本
   */
  fun setRefreshText(refreshText: String?, refreshThresholdText: String?, refreshingText: String?, noMoreDataText: String?) {
    mRefreshFooterPulling = refreshText
    mRefreshFooterRelease = refreshThresholdText
    mRefreshFooterLoading = refreshingText
    mRefreshFooterNothing = noMoreDataText
  }

  /**
   * 刷新尺寸设置
   * @param iconSize loading大小
   * @param textSize loading文本大小
   */
  fun setRefreshSize(iconSize: Int, textSize: Int) {
    mBinding.zeekrCircleLoading.updateLayoutParams<LayoutParams> {
      width = iconSize
      height = iconSize
    }

    mBinding.zeekrRefreshText.setTextSize(TypedValue.COMPLEX_UNIT_PX, textSize.toFloat())
  }

  /**
   * 设置回弹提示文本
   * @param springBackDownTipsText 提示文本
   */
  fun setSpringBackTipText(springBackDownTipsText: String?) {
    mTextSpringBack = springBackDownTipsText
  }

  /**
   * 设置当前模式，头部视图主要是刷新和回弹两种模式需要控制
   * @param springBackMode 参考主控件的参数
   */
  fun setSpringBackMode(springBackMode: Int) {
    mSpringBackMode = springBackMode
    if (isSpringBackTips()) mBinding.zeekrCircleLoading.visibility = GONE else mBinding.zeekrCircleLoading.visibility = VISIBLE
  }

  /**
   * 是否是回弹提示模式
   * @return true 是 false 否
   */
  private fun isSpringBackTips(): Boolean {
    return mSpringBackMode == ZeekrReboundRefreshLayout.SPRING_BACK_ADD_TIPS ||
      mSpringBackMode == ZeekrReboundRefreshLayout.SPRING_BACK_ONLY_ADD_UP_TIPS ||
      mSpringBackMode == ZeekrReboundRefreshLayout.SPRING_BACK_ADD_DOWN_TIPS_AND_ALLOW_REFRESH
  }

  override fun onStateChanged(
    zeekrRefreshLayout: ZeekrRefreshLayout,
    oldState: ZeekrRefreshState,
    newState: ZeekrRefreshState
  ) {
    when (newState) {
      ZeekrRefreshState.None -> {
      }
      ZeekrRefreshState.PullUpToLoad -> {
        mBinding.zeekrRefreshText.text = if (isSpringBackTips()) mTextSpringBack else mRefreshFooterPulling
      }
      ZeekrRefreshState.Loading, ZeekrRefreshState.LoadReleased -> {
        mBinding.zeekrRefreshText.text = if (isSpringBackTips()) mTextSpringBack else mRefreshFooterLoading
      }
      ZeekrRefreshState.ReleaseToLoad -> {
        mBinding.zeekrRefreshText.text = if (isSpringBackTips()) mTextSpringBack else mRefreshFooterRelease
      }
      else -> {}
    }
  }

  override fun isRefreshContentScrollView(view: View, isScrollView: Boolean, isShowScrollBar: Boolean) {
    // 滑动的指示器
    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
      // 判断是不是需要生成Drawable
      if (isShowScrollBar && isScrollContentView) {
        val shapeModel = ShapeAppearanceModel.builder()
          .setAllCorners(RoundedCornerTreatment())
          .setAllCornerSizes(10.dpf)
          .build()
        mScrollbarThumbDrawable = MaterialShapeDrawable(shapeModel).apply {
          setTint(Color.GRAY)
        }

        mContentView?.let {
          it.verticalScrollbarThumbDrawable = LayerDrawable(arrayOf(mScrollbarThumbDrawable))
        }
      }
    }
  }

  override fun getView(): View {
    return this
  }

  override fun getSpinnerStyle(): ZeekrSpinnerStyle {
    return ZeekrSpinnerStyle.TRANSLATE
  }

  override fun setPrimaryColors(vararg colors: Int) {
  }

  override fun onInitialized(kernel: ZeekrRefreshKernel, height: Int, maxDragHeight: Int) {
  }

  override fun onMoving(
    isDragging: Boolean,
    percent: Float,
    offset: Int,
    height: Int,
    maxDragHeight: Int
  ) {
    // 取消放大效果
//    if (percent <= 1) {
//      mBinding.zeekrCircleLoading.scaleX = percent
//      mBinding.zeekrCircleLoading.scaleY = percent
//    }

    // 针对ScrollView 和RecyclerView 处理滚动条的问题
//        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
//            if (isScrollContentView && isShowScrollBar){
//
//                mContentView?.let {
//                    if (mScrollbarThumbDrawableBound == null) {
//                        mScrollbarThumbDrawableBound = it.verticalScrollbarThumbDrawable?.bounds
//                        // 计算滑动条的高度
//                        mScrollbarThumbDrawableHeight = mScrollbarThumbDrawableBound?.height()?:0
//                        // 计算滑动条的宽度
//                        mScrollbarThumbDrawableWidth = mScrollbarThumbDrawableBound?.width()?:0
//                    }
//
//                    if (mScrollbarThumbDrawableHeight > 0) {
//                        val scrollbarPercent : Float = if (1 - percent <= 0.2F) 0.2F else 1 - percent
//                        val scrollbarHeight = abs(mScrollbarThumbDrawableHeight * scrollbarPercent)
//                        var layer = LayerDrawable(emptyArray())
//                        if (percent > 0) {
//                            layer?.addLayer(mScrollbarThumbDrawable)
//                            layer?.setLayerHeight(0, scrollbarHeight.toInt())
//                        } else {
//                            layer?.addLayer(mScrollbarThumbDrawable)
//                            layer?.setLayerHeight(0, scrollbarHeight.toInt())
//                        }
//                        it.verticalScrollbarThumbDrawable = layer
//                    }
//                }
//            }
//        }
  }

  override fun onReleased(zeekrRefreshLayout: ZeekrRefreshLayout, height: Int, maxDragHeight: Int) {
  }

  override fun onStartAnimator(zeekrRefreshLayout: ZeekrRefreshLayout, height: Int, maxDragHeight: Int) {
    // 开始loading动画
    mBinding.zeekrCircleLoading.startAnimator()
  }

  override fun onFinish(zeekrRefreshLayout: ZeekrRefreshLayout, success: Boolean): Int {
    mBinding.zeekrCircleLoading.releaseAnimator()
    return 0
  }

  override fun onHorizontalDrag(percentX: Float, offsetX: Int, offsetMax: Int) {
  }

  override fun isSupportHorizontalDrag(): Boolean {
    return true
  }

  override fun setNoMoreData(noMoreData: Boolean): Boolean {
    if (mNoMoreData != noMoreData) {
      mNoMoreData = noMoreData
      if (noMoreData) {
        // 如果设置无数据了，需要隐藏loading 并重新设置无数据的文本提示
        mBinding.zeekrRefreshText.text = mRefreshFooterNothing
        mBinding.zeekrCircleLoading.visibility = GONE
      } else {
        // 如果设置了有数据，需要显示loading 并重新设置文本提示
        mBinding.zeekrRefreshText.text = mRefreshFooterPulling
        mBinding.zeekrCircleLoading.visibility = VISIBLE
      }
    }
    return true
  }

  fun themeApply() {
    mBinding.zeekrRefreshText.setTextColor(context.themeColorSelectId(com.zeekr.theme.R.color.primary_80))
  }
}
