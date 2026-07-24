package com.zeekr.component.rebound.content

import android.graphics.Color
import android.graphics.Rect
import android.graphics.drawable.LayerDrawable
import android.os.Build
import android.view.View
import com.google.android.material.shape.MaterialShapeDrawable
import com.google.android.material.shape.RoundedCornerTreatment
import com.google.android.material.shape.ShapeAppearanceModel
import com.zeekr.component.extention.dpf
import com.zeekr.component.refresh.wrapper.ZeekrRefreshContentWrapper
import kotlin.math.abs

class ZeekrZeekrRefreshContentVertical constructor(view: View) : ZeekrRefreshContentWrapper(view) {

  // 是否是滚动布局
  private var isScrollContentView = false

  // 是否显示滚动条
  private var isShowScrollBar = false

  // 滚动条Drawable
  private var mScrollbarThumbDrawable: MaterialShapeDrawable? = null

  // 滚动条宽度
  private var mScrollbarThumbDrawableWidth: Int = 0

  // 滚动条Drawable 高度
  private var mScrollbarThumbDrawableHeight: Int = 0

  // Drawable的位置大小信息
  private var mScrollbarThumbDrawableBound: Rect? = null

  /**
   * 这里是判断当前内容区域是不是滚动布局：ScrollView 或者RecyvlerView之类的
   * @param isScrollView true 是滚动布局  false 不是滚动布局
   * @param isShowScrollBar true 显示滚动条  false 不显示滚动条
   */
  open fun isRefreshContentScrollView(isScrollView: Boolean, isShowScrollBar: Boolean) {
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
    }
  }

  override fun moveSpinner(
    spinner: Int,
    headerTranslationViewId: Int,
    footerTranslationViewId: Int
  ) {
    super.moveSpinner(spinner, headerTranslationViewId, footerTranslationViewId)
    // 针对ScrollView 和RecyclerView 处理滚动条的问题
    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
      if (isScrollContentView && isShowScrollBar) {

        mContentView?.let {
          if (mScrollbarThumbDrawableBound == null) {
            mScrollbarThumbDrawableBound = it.verticalScrollbarThumbDrawable?.bounds
            // 计算滑动条的高度
            mScrollbarThumbDrawableHeight = mScrollbarThumbDrawableBound?.height() ?: 0
            // 计算滑动条的宽度
            mScrollbarThumbDrawableWidth = mScrollbarThumbDrawableBound?.width() ?: 0
          }

          if (mScrollbarThumbDrawableHeight > 0) {
            // val scrollbarPercent : Float = if (1 - percent <= 0.2F) 0.2F else 1 - percent
            val absMoveDistance = if (mScrollbarThumbDrawableHeight > abs(spinner) + 20) {
              abs(mScrollbarThumbDrawableHeight - abs(spinner))
            } else {
              20
            }
            val scrollbarHeight = absMoveDistance
            var layer = LayerDrawable(emptyArray())
            layer?.addLayer(mScrollbarThumbDrawable)
            layer?.setLayerHeight(0, scrollbarHeight)
            it.verticalScrollbarThumbDrawable = layer
          }
        }
      }
    }
  }
}
