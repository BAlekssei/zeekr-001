package com.zeekr.component.tab

import android.animation.ValueAnimator
import android.content.Context
import android.graphics.Rect
import android.graphics.Typeface
import android.util.AttributeSet
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.view.animation.DecelerateInterpolator
import android.widget.TextView
import androidx.constraintlayout.widget.ConstraintLayout
import androidx.core.view.children
import com.zeekr.component.R
import com.zeekr.component.databinding.ZeekrLeftMenuFirstBinding
import com.zeekr.component.databinding.ZeekrLeftMenuFirstDefaultItemBinding
import com.zeekr.component.extention.clickWithParentTrigger
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.getViewRect
import com.zeekr.component.extention.logDebug
import com.zeekr.component.toggle.MOVE_TO_SELECT_ITEM_DURATION
import com.zeekr.component.touch.expandTouchArea

class ZeekrMenuFirstView @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : ConstraintLayout(context, attrs) {

  var selectIndex = 0
    set(value) {
      unSelect()
      field = value
      binding.moveSelect()
    }

  private var defaultSelectIndex = 0
  private var indicatorPercent = 0.5f
  private var itemSize = 0
  private var itemGap = -1
  private var itemBinder: ((Int, ViewGroup) -> ViewGroup)
  private val noClickItemIndexList = mutableListOf<Int>()

  private val binding = ZeekrLeftMenuFirstBinding.inflate(
    LayoutInflater.from(context),
    this
  )

  init {
    itemBinder = { index, parent ->
      ZeekrLeftMenuFirstDefaultItemBinding.inflate(
        LayoutInflater.from(context),
        parent,
        false
      ).apply {
        zeekrLeftMenuItemIcon.setImageResource(R.drawable.ic_home)
        zeekrLeftMenuItemText.text = "文本文本"
      }.root
    }
  }

  private val itemViews = mutableListOf<ViewGroup>()

  private var listener: ((Int) -> Unit)? = null

  fun defaultSelectIndex(index: Int) = apply {
    defaultSelectIndex - index
  }

  fun itemSize(count: Int) {
    itemSize = count
  }

  fun itemGap(gap: Int) {
    itemGap = gap
  }

  fun indicatorPercent(indicatorPercent: Float) {
    this.indicatorPercent = indicatorPercent
  }

  fun noClickItemIndex(vararg args: Int) {
    noClickItemIndexList.clear()
    noClickItemIndexList.addAll(args.asList())
  }

  fun setZeekrMenuListener(listener: ((Int) -> Unit)) = apply {
    this.listener = listener
  }

  fun itemBinder(itemBinder: ((Int, ViewGroup) -> ViewGroup)) {
    this.itemBinder = itemBinder
  }

  fun applyData(): ZeekrMenuFirstView = apply {
    binding.run {
      addItems()
      // addSelectItem()
    }
  }

  inline fun submit(func: ZeekrMenuFirstView.() -> Unit): ZeekrMenuFirstView = apply {
    this.func()
    this.applyData()
  }

  private fun addItems() {
    val ids = mutableListOf<Int>()
    0.until(itemSize).forEachIndexed { index, _ ->
      val view = itemBinder.invoke(index, this).apply {
        id = View.generateViewId()
        ids.add(id)
        children.forEach {
          if (it is TextView) {
            it.typeface = Typeface.defaultFromStyle(Typeface.NORMAL)
          }
        }
        val expandHeight = 8.dp.takeIf { itemGap == -1 } ?: (itemGap / 2)
        expandTouchArea(Rect(0, expandHeight, 0, expandHeight))
      }
      view.takeUnless { noClickItemIndexList.contains(index) }
        ?.clickWithParentTrigger(this@ZeekrMenuFirstView, 100) {
          selectIndex = index
          listener?.invoke(index)
        }
      addView(view)
      itemViews.add(view)
    }
    binding.zeekrLeftMenuGroupFlow.referencedIds = ids.toIntArray()
    if (itemGap != -1) {
      binding.zeekrLeftMenuGroupFlow.setVerticalGap(itemGap)
    }
    selectIndex = defaultSelectIndex
  }

  private fun unSelect() {
    itemViews.find {
      it.isSelected
    }?.run {
      isSelected = false
      children.forEach {
        it.isSelected = false
        if (it is TextView) {
          it.typeface = Typeface.defaultFromStyle(Typeface.NORMAL)
        }
      }
    }
  }

  private fun ZeekrLeftMenuFirstBinding.moveSelect() {
    val selectItem = itemViews[selectIndex].run {
      isSelected = true
      children.forEach {
        it.isSelected = true
        if (it is TextView) {
          it.typeface = Typeface.defaultFromStyle(Typeface.BOLD)
        }
      }
      this
    }
    selectItem.post {
      moveSelectGuideLine(selectItem)
    }
  }

  private fun ZeekrLeftMenuFirstBinding.moveSelectGuideLine(
    selectItem: View
  ) {
    val itemRect = selectItem.getViewRect()
    val rootRect = root.getViewRect()
    logDebug(
      "moveSelectGuideLine  selectItem $selectItem  itemRect: $itemRect  rootRect:$rootRect"
    )
    val gap = (indicatorPercent * itemRect.height() / 2).toInt()
    val topTargetBegin = itemRect.top + gap
    val bottomTargetBegin = itemRect.bottom - gap
    val topFromBegin = zeekrLeftMenuGuidelineTop.top
    val bottomFromBegin = zeekrLeftMenuGuidelineBottom.top

    if (topFromBegin == 0) {
      zeekrLeftMenuGuidelineTop.setGuidelineBegin(topTargetBegin)
      zeekrLeftMenuGuidelineBottom.setGuidelineBegin(bottomTargetBegin)
    }

    listener?.invoke(selectIndex)

    ValueAnimator.ofInt(0, 100).apply {
      addUpdateListener {
        val value = it.animatedValue as Int
        val topBegin = topFromBegin + ((topTargetBegin - topFromBegin) * value) / 100
        val bottomBegin =
          bottomFromBegin + ((bottomTargetBegin - bottomFromBegin) * value) / 100
        zeekrLeftMenuGuidelineTop.setGuidelineBegin(topBegin)
        zeekrLeftMenuGuidelineBottom.setGuidelineBegin(bottomBegin)
      }
      duration = MOVE_TO_SELECT_ITEM_DURATION
      interpolator = DecelerateInterpolator(3f)
      start()
    }
  }
}
