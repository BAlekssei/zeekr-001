package com.zeekr.component.rebound.header

import android.content.Context
import android.util.AttributeSet
import android.util.TypedValue
import android.view.LayoutInflater
import android.view.View
import android.widget.LinearLayout
import androidx.core.view.updateLayoutParams
import com.google.android.material.shape.MaterialShapeDrawable
import com.zeekr.component.R
import com.zeekr.component.databinding.ZeekrRefreshClassicsHeaderBinding
import com.zeekr.component.extention.themeColorSelectId
import com.zeekr.component.rebound.ZeekrReboundRefreshLayout
import com.zeekr.component.refresh.api.ZeekrRefreshHeader
import com.zeekr.component.refresh.api.ZeekrRefreshKernel
import com.zeekr.component.refresh.api.ZeekrRefreshLayout
import com.zeekr.component.refresh.constant.ZeekrRefreshState
import com.zeekr.component.refresh.constant.ZeekrSpinnerStyle

class ZeekrRefreshCircleLoadingTextHeader @JvmOverloads constructor(context: Context, attr: AttributeSet? = null) :
  LinearLayout(context, attr),
  ZeekrRefreshHeader {

  private val TAG = "RefreshTextHeader"

  // "下拉可以刷新"
  private var mTextPulling: String ? = getContext().getString(R.string.srl_header_pulling)

  // "正在刷新..."
  private var mTextRefreshing: String ? = getContext().getString(R.string.srl_header_refreshing)

  // "释放立即刷新"
  private var mTextRelease: String ? = getContext().getString(R.string.srl_header_release)

  // 回弹提示文本
  private var mTextSpringBack: String ? = ""

  // 设置回弹模式 默认头部视图的回弹模式是下拉刷新
  private var mSpringBackMode = ZeekrReboundRefreshLayout.SPRING_BACK_ONLY_ALLOW_REFRESH

  // 是否是滚动布局
  private var isScrollContentView = false

  // 是否显示滚动条
  private var isShowScrollBar = false

  // 内容区域
  private var mContentView: View ? = null

  // 滚动条Drawable
  private var mScrollbarThumbDrawable: MaterialShapeDrawable ? = null

  private val mBinding: ZeekrRefreshClassicsHeaderBinding by lazy {
    ZeekrRefreshClassicsHeaderBinding.inflate(
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
  fun setRefreshText(refreshText: String?, refreshThresholdText: String?, refreshingText: String?) {
    mTextPulling = refreshText
    mTextRelease = refreshThresholdText
    mTextRefreshing = refreshingText
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
      mSpringBackMode == ZeekrReboundRefreshLayout.SPRING_BACK_ONLY_ADD_DOWN_TIPS ||
      mSpringBackMode == ZeekrReboundRefreshLayout.SPRING_BACK_ADD_UP_TIPS_AND_ALLOW_LOAD
  }

  /**
   * 刷新尺寸设置
   * @param iconSize loading大小
   * @param textSize loading文本大小
   */
  fun setRefreshSize(iconSize: Int, textSize: Int) {
    mBinding.zeekrCircleLoading.updateLayoutParams<LinearLayout.LayoutParams> {
      width = iconSize
      height = iconSize
    }

    mBinding.zeekrRefreshText.setTextSize(TypedValue.COMPLEX_UNIT_PX, textSize.toFloat())
  }

  override fun onStateChanged(
    zeekrRefreshLayout: ZeekrRefreshLayout,
    oldState: ZeekrRefreshState,
    newState: ZeekrRefreshState
  ) {
    when (newState) {
      ZeekrRefreshState.None, ZeekrRefreshState.PullDownToRefresh ->
        mBinding.zeekrRefreshText.text = if (isSpringBackTips()) mTextSpringBack else mTextPulling

      ZeekrRefreshState.Refreshing, ZeekrRefreshState.RefreshReleased ->
        mBinding.zeekrRefreshText.text = if (isSpringBackTips()) mTextSpringBack else mTextRefreshing

      ZeekrRefreshState.ReleaseToRefresh ->
        mBinding.zeekrRefreshText.text = if (isSpringBackTips()) mTextSpringBack else mTextRelease
      ZeekrRefreshState.ReleaseToTwoLevel -> {}
      else -> {}
    }
  }

  /**
   * 这里是判断当前内容区域是不是滚动布局：ScrollView 或者RecyclerView之类的
   * @param view Content区域
   * @param isScrollView true 是滚动布局  false 不是滚动布局
   * @param isShowScrollBar true 显示滚动条  false 不显示滚动条
   */
  override fun isRefreshContentScrollView(view: View, isScrollView: Boolean, isShowScrollBar: Boolean) {
    /*    this.mContentView = view
        this.isScrollContentView = isScrollView
        this.isShowScrollBar = isShowScrollBar

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
        }*/
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

  /**
   * 【仅限框架内调用】手指拖动下拉（会连续多次调用，添加isDragging并取代之前的onPulling、onReleasing）
   * @param isDragging true 手指正在拖动 false 回弹动画
   * @param percent 下拉的百分比 值 = offset/footerHeight (0 - percent - (footerHeight+maxDragHeight) / footerHeight )
   * @param offset 下拉的像素偏移量  0 - offset - (footerHeight+maxDragHeight)
   * @param height 高度 HeaderHeight or FooterHeight
   * @param maxDragHeight 最大拖动高度
   */
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

  fun themeApply() {
    mBinding.zeekrRefreshText.setTextColor(context.themeColorSelectId(com.zeekr.theme.R.color.primary_80))
  }
}
