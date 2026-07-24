package com.zeekr.component.tab

import android.animation.ObjectAnimator
import android.content.Context
import android.graphics.Rect
import android.util.AttributeSet
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.view.animation.DecelerateInterpolator
import android.widget.ImageView
import android.widget.TextView
import androidx.annotation.DrawableRes
import androidx.constraintlayout.widget.ConstraintLayout
import androidx.core.graphics.drawable.DrawableCompat
import androidx.core.view.children
import androidx.core.view.isGone
import androidx.core.view.isVisible
import androidx.core.view.updateLayoutParams
import com.zeekr.component.R
import com.zeekr.component.databinding.ZeekrRailViewContentItemBinding
import com.zeekr.component.databinding.ZeekrRailViewItemBinding
import com.zeekr.component.databinding.ZeekrRailViewLayoutBinding
import com.zeekr.component.extention.clickWithParentTrigger
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.dpf
import com.zeekr.component.extention.getViewRect
import com.zeekr.component.extention.logDebug
import com.zeekr.component.extention.performClickDelayed
import com.zeekr.component.extention.themeColorStateList
import com.zeekr.component.extention.themeColorStateListSelectId
import com.zeekr.component.ripple.ZeekrVoiceListInterface
import com.zeekr.component.toggle.MOVE_TO_SELECT_ITEM_DURATION
import com.zeekr.component.toggle.waitForWidth
import com.zeekr.component.touch.expandTouchArea
import com.zeekr.lottie.ZeekrRippleView

class ZeekrRailView @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : ConstraintLayout(context, attrs), ZeekrVoiceListInterface {

  var guideLineHeight = 0
  var topTargetBegin = 0

  var selectIndex = 0
    set(value) {
      post {
        logDebug("SET selectIndex : $value")
        unSelect()
        field = value
        binding.moveSelect()
      }
    }

  private val binding = ZeekrRailViewLayoutBinding.inflate(
    LayoutInflater.from(context),
    this
  )

  private val itemViews = mutableListOf<ViewGroup>()
  val itemViewsSize: Int
    get() = itemViews.size

  private var listener: ((Int) -> Unit)? = null
  private val rippleView: ZeekrRippleView by lazy {
    ZeekrRippleView(context).apply {
      isGone = true
      elevation = 10.dpf
      addView(this)
    }
  }

  fun setZeekrRailListener(listener: ((Int) -> Unit)) {
    this.listener = listener
  }

  @JvmOverloads
  fun submitData(
    nameList: List<String>,
    @DrawableRes iconList: List<Int>,
    textTopMargin: Int = 10,
    defaultSelect: Int = 0
  ) {

    itemViews.forEach {
      removeView(it)
    }
    clipChildren = false
    clipToPadding = false
    itemViews.clear()

    val itemSize = nameList.size
    if (nameList.size != iconList.size) {
      throw Throwable(" nameList or iconList  size is not current : $itemSize")
    }

    val ids = mutableListOf<Int>()
    0.until(itemSize).forEachIndexed { index, _ ->
      val view = ZeekrRailViewItemBinding.inflate(
        LayoutInflater.from(context),
        this@ZeekrRailView,
        false
      ).apply {
        root.id = View.generateViewId()
        zeekrRailItemText.text = nameList[index]
        zeekrRailItemIcon.setImageResource(iconList[index])
        zeekrRailItemText.updateLayoutParams<LayoutParams> {
          topMargin = textTopMargin
        }
        ids.add(root.id)
        root.clickWithParentTrigger(this@ZeekrRailView, 100) {
          selectIndex = index
        }
        val itemGap = 100.dp
        root.expandTouchArea(Rect(0, itemGap / 2, 0, itemGap / 2))
      }.root
      addView(view)
      itemViews.add(view)

      binding.zeekrRailGroupFlow.referencedIds = ids.toIntArray()
    }
    selectIndex = defaultSelect
  }

  fun submitContent(
    nameList: List<String>,
    defaultSelect: Int = 0,
    textSize: Float = 28f,
    textStartMargin: Int = 50.dp
  ) {

    itemViews.forEach {
      removeView(it)
    }
    clipChildren = false
    clipToPadding = false
    itemViews.clear()

    val itemSize = nameList.size

    val ids = mutableListOf<Int>()
    0.until(itemSize).forEachIndexed { index, _ ->
      val view = ZeekrRailViewContentItemBinding.inflate(
        LayoutInflater.from(context),
        this@ZeekrRailView,
        false
      ).apply {
        root.id = View.generateViewId()
        zeekrRailItemText.text = nameList[index]
        zeekrRailItemText.textSize = textSize
        zeekrRailItemText.updateLayoutParams<LayoutParams> {
          marginStart = textStartMargin
        }
        ids.add(root.id)
        root.clickWithParentTrigger(this@ZeekrRailView, 100) {
          selectIndex = index
        }
        val itemGap = 100.dp
        root.expandTouchArea(Rect(0, itemGap / 2, 0, itemGap / 2))
      }.root
      addView(view)
      itemViews.add(view)

      binding.zeekrRailGroupFlow.referencedIds = ids.toIntArray()
    }
    selectIndex = defaultSelect
  }

  private fun unSelect() {
    itemViews.find {
      it.isSelected
    }?.run {
      isSelected = false
      children.forEach {
        it.isSelected = false
      }
    }
  }

  override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
    super.onLayout(changed, left, top, right, bottom)
    logDebug("onLayout  changed： $changed")
  }

  override fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {
    super.onSizeChanged(w, h, oldw, oldh)
    logDebug("onSizeChanged  w: $w  h:$h  old:$oldw  $oldh ")
    binding.run {
      zeekrRailViewIndicator.isVisible = true
      zeekrRailViewIndicator.postDelayed({
        val itemRect = itemViews[selectIndex].getViewRect()
        val topTargetBegin = itemRect.top
        zeekrRailViewIndicator.translationY = topTargetBegin.toFloat()
      }, 20)
    }
  }

  private fun ZeekrRailViewLayoutBinding.moveSelect() {
    val selectItem = itemViews[selectIndex].run {
      logDebug("moveSelect  selectIndex: $selectIndex")
      isSelected = true
      children.forEach {
        it.isSelected = true
      }
      this
    }
    selectItem.post {
      moveSelectGuideLine(selectItem)
    }
  }

  private fun ZeekrRailViewLayoutBinding.moveSelectGuideLine(
    selectItem: View
  ) {
    val itemRect = selectItem.getViewRect()
    val rootRect = root.getViewRect()
    Log.d(
      "ZeekrRailView",
      "moveSelectGuideLine  selectItem $selectItem  itemRect: $itemRect  rootRect:$rootRect  itemRectHeight: ${itemRect.height()}"
    )
    val topTargetBegin = itemRect.top.takeIf { guideLineHeight == 0 } ?: (itemRect.top + topTargetBegin)
    logDebug("itemRect.top  ${itemRect.top}")
    val topFromBegin = zeekrRailViewIndicator.translationY

    if (topFromBegin == 0f) {
      zeekrRailViewIndicator.translationY = topTargetBegin.toFloat()
      zeekrRailViewIndicator.isVisible = true
      zeekrRailViewIndicator.updateLayoutParams {
        height = itemRect.height().takeIf { guideLineHeight == 0 } ?: guideLineHeight
      }
      return
    }

    listener?.invoke(selectIndex)
    ObjectAnimator.ofFloat(
      zeekrRailViewIndicator,
      "translationY",
      topFromBegin,
      topTargetBegin.toFloat()
    ).apply {
      interpolator = DecelerateInterpolator(3f)
      duration = MOVE_TO_SELECT_ITEM_DURATION
      start()
    }
  }

  override fun voiceItemClick(index: Int) {
    performClickDelayed()
    itemViews[index].performClick()
    val itemRect = itemViews[index].getViewRect()
    logDebug("itemRect:  $itemRect")
    with(rippleView) {
      isVisible = true
      waitForWidth {
        val rippleRect = rippleView.getViewRect()
        translationX = (itemRect.centerX() - rippleRect.centerX()).toFloat()
        translationY = (itemRect.centerY() - rippleRect.centerY()).toFloat()
        playAnimation()
      }
    }
  }

  internal fun themeApply() {
    with(binding) {
      zeekrRailViewDivider.backgroundTintList = context.themeColorStateList(com.google.android.material.R.attr.colorPrimary)
      zeekrRailViewIndicator.backgroundTintList = context.themeColorStateList(com.google.android.material.R.attr.colorSecondary)
      children.forEach {
        it.findViewById<ImageView>(R.id.zeekr_rail_item_icon)?.let { icon ->
          icon.drawable?.let { tempDrawable ->
            DrawableCompat.setTintList(
              tempDrawable,
              context.themeColorStateListSelectId(R.color.zeekr_rail_item_selector_primary)
            )
            icon.setImageDrawable(tempDrawable)
          }
        }
        it.findViewById<TextView>(R.id.zeekr_rail_item_text)
          ?.setTextColor(context.themeColorStateListSelectId(R.color.zeekr_rail_item_selector_primary))
      }
    }
  }

  fun setVerticalGap(verticalGap: Int) {
    binding.zeekrRailGroupFlow.setVerticalGap(verticalGap)
  }

  override fun onDetachedFromWindow() {
    super.onDetachedFromWindow()
  }
}
