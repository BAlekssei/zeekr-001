package com.zeekr.component.toggle

import android.animation.ObjectAnimator
import android.graphics.drawable.Drawable
import android.util.Log
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import androidx.appcompat.content.res.AppCompatResources
import androidx.constraintlayout.helper.widget.Flow
import androidx.constraintlayout.widget.ConstraintLayout
import androidx.core.view.isGone
import androidx.core.view.isVisible
import androidx.core.view.postDelayed
import androidx.core.view.updateLayoutParams
import androidx.core.view.updateMargins
import com.zeekr.component.R
import com.zeekr.component.databinding.ZeekrToggleLayoutBinding
import com.zeekr.component.extention.clickWithParentTrigger
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.toggleItemSelect

sealed class ZeekrToggleBehavior {

  internal lateinit var parent: ZeekrToggle
  protected val binding: ZeekrToggleLayoutBinding
    get() = parent.binding

  protected val outBorderHasMargins: Boolean
    get() = parent.outBorderHasMargins

  protected val itemViews: List<View>
    get() = parent.itemCards

  private val selectView: ViewGroup
    get() = parent.selectView

  internal val itemList = mutableListOf<ZeekrToggleModel>()
  internal open val collapseState: Boolean = false
  internal open val expandState: Boolean = false
  internal var collapseListener: ToggleCollapseListener? = null

  open val outBorderMargins: IntArray
    get() = intArrayOf(0, 4, 0, 4).takeIf { outBorderHasMargins } ?: intArrayOf(0, 0, 0, 0)

  internal val expandView: ImageView by lazy {
    parent.createExpandView().apply {
      setImageDrawable(arrowDrawable)
    }
  }

  internal open val arrowDrawable: Drawable? by lazy {
    AppCompatResources.getDrawable(parent.context, R.drawable.zeekr_toggle_expand)?.mutate()
  }

  private fun animateArrow(shouldRotateRight: Boolean) {
    val start = if (shouldRotateRight) 0 else 10000
    val end = if (shouldRotateRight) 10000 else 0
    ObjectAnimator.ofInt(arrowDrawable, "level", start, end).apply {
      duration = 100L
      start()
    }
  }

  internal val expandViewMeasureWidth: Int
    get() = expandView.measureHorizontalWidth().takeIf { expandView.isVisible } ?: 0.dp

  internal fun init() {
    initData()
    initView()
    updateOutBorderLayoutParams()
  }

  internal val notShowAnimator: Boolean
    get() = !parent.hasSubmit || parent.noAnimator

  internal abstract fun itemSelect(index: Int)
  internal abstract fun initView()
  internal open fun expandView() {}
  internal open fun collapseView() {}
  internal open fun initData() {
    itemList.clear()
    itemList.addAll(
      itemViews.mapIndexed { index, view ->
        ZeekrToggleModel(
          index,
          view.id,
          view,
          selected = index == parent.defaultSelectIndex
        )
      }
    )
  }

  internal open fun updateOutBorderLayoutParams() {
    binding.zeekrToggleGroupCard.updateLayoutParams<ConstraintLayout.LayoutParams> {
      updateMargins(
        outBorderMargins[0].dp,
        outBorderMargins[1].dp,
        outBorderMargins[2].dp,
        outBorderMargins[3].dp
      )
    }
  }

  internal fun textStyleChange() {
    itemViews.filterNot { it.tag == parent.selectIndex }.forEach {
      it.toggleItemSelect(false)
    }
    val selectItem = itemViews[parent.selectIndex]
    selectItem.toggleItemSelect(true)
  }

  fun setItemVisible(index: Int, visible: Boolean, changeFunc: (Int) -> Unit) {
    val item = itemList[index]
    when {
      item.selected -> {
        if (!visible) {
          when {
            this is Expand -> {
              item.view.isGone = true
              itemList[index] = item.changeToGoneState()
              changeSelectedGoneItem(index)
            }
          }
          val minIndex = itemList.first { it.isNormalState }.index
          changeFunc.invoke(minIndex)
          item.view.isGone = true
          itemList[index] = item.changeToGoneState()
          moveSelectView()
        }
      }
      item.isNormalState -> {
        if (!visible) {
          item.view.isGone = true
          itemList[index] = item.changeToGoneState()
          when {
            this is Expand -> {
              changeNormalGoneItem(index)
            }
          }
          parent.post { moveSelectView() }
        }
      }
      item.isCollapseState -> {
        if (!visible) {
          item.view.isGone = true
          itemList[index] = item.changeToGoneState()
          when {
            this is Expand -> {
              changeCollapseGoneItem(index)
            }
          }
          // moveSelectView()
        }
      }
      item.isGoneState -> {
        if (visible) {
          item.view.isVisible = true
          // itemList[index] = item.changeToGoneState()
          when {
            this is Group -> itemList[index] = item.changeToNormalState()
            this is Expand -> {
              if (collapseState) {
                changeVisibleItem(index)
              } else {
                itemList[index] = item.changeToNormalState()
              }
            }
            this is Single -> {}
          }
          moveSelectView()
        }
      }
    }
  }

  private fun moveSelectView() {
    val selectView = itemList.selectView
    binding.moveGuideLineNoAnimator(selectView)
  }

  internal open fun showAnimation(style: Int) {
    when (style) {
      TOGGLE_READY_TO_SELECT_MOVE -> {
        parent.scrollViewParentEnable(false)
        itemViews.find { it.isSelected }?.toggleItemSelect(false)
        binding.moveSelectGuideLine(selectView) {
          selectView.postDelayed({
            parent.scrollViewParentEnable(true)
          }, 100)
          selectFinished()
        }
      }
      TOGGLE_READY_TO_EXPAND -> {
        animateArrow(true)
        itemViews.find { it.isSelected }?.toggleItemSelect(false)
        itemList.filter { it.ready == TOGGLE_READY_TO_EXPAND }.forEach {
          it.view.toggleItemExpand()
        }
        binding.guideLineFollowSelectView(itemList.selectView) {
          selectFinished()
          collapseListener?.invoke(false)
        }
      }
      TOGGLE_READY_TO_COLLAPSE -> {
        animateArrow(false)
        itemViews.find { it.isSelected }?.toggleItemSelect(false)
        itemList.filter { it.ready == TOGGLE_READY_TO_COLLAPSE }.forEach {
          it.view.toggleItemCollapse()
        }
        binding.guideLineFollowSelectView(itemList.selectView) {
          selectFinished()
          collapseListener?.invoke(true)
        }
      }
      TOGGLE_READY_TO_SINGLE_SELECT_MOVE -> {
        itemViews.find { it.isSelected }?.toggleItemSelect(false)
        binding.moveSelectGuideLine(selectView) {
          collapseView()
        }
      }
    }
  }

  internal fun selectFinished() {
    itemList.readyFinished()
    selectEnd()
  }

  internal fun selectEnd() {
    textStyleChange()
    parent.animatorEndCallback()
  }

  data class Group(val orientation: Int = Flow.HORIZONTAL) :
    ZeekrToggleBehavior() {

    override fun itemSelect(index: Int) {
      itemList.itemSelect(index) {
        if (notShowAnimator) {
          binding.moveGuideLineNoAnimator(itemViews[index])
          selectFinished()
        } else {
          showAnimation(TOGGLE_READY_TO_SELECT_MOVE)
        }
      }
    }

    override val outBorderMargins: IntArray
      get() = intArrayOf(0, 0, 0, 0).takeUnless { outBorderHasMargins }
        ?: intArrayOf(0, 4, 0, 4).takeIf { orientation == Flow.HORIZONTAL }
        ?: intArrayOf(4, 0, 4, 0)

    override fun initView() {
      binding.run {
        zeekrToggleGroupFlow.setOrientation(orientation)
        zeekrToggleGroupFlow.referencedIds = itemList.viewIdArray()
        if (orientation == Flow.HORIZONTAL) {
          zeekrToggleGroupFlow.setHorizontalGap(parent.toggleItemMargin)
        } else {
          zeekrToggleGroupFlow.setVerticalGap(parent.toggleItemMargin)
        }
      }
    }
  }

  data class Expand(
    val expandSize: Int = 0
  ) : ZeekrToggleBehavior() {

    override fun initData() {
      itemList.clear()
      // val topSize = expandSize.takeIf { selectIndex < expandSize } ?: (expandSize + 1)
      itemList.addAll(
        itemViews.mapIndexed { index, view ->
          ZeekrToggleModel(
            index, view.id, view,
            state = TOGGLE_ITEM_NORMAL.takeIf { index < expandSize }
              ?: TOGGLE_ITEM_COLLAPSE,
            selected = index == parent.defaultSelectIndex
          )
        }
      )
    }

    override val collapseState: Boolean
      get() = arrowDrawable!!.level == 0

    override val expandState: Boolean
      get() = arrowDrawable!!.level == 10000

    override fun itemSelect(index: Int) {
      logger("toggle expand  index: $index itemList: $itemList ")
      val lastNormalItem = itemList.last { it.isNormalState }
      itemList.itemSelect(index) {
        logger("toggle expand  moveGuidelineCallback itemList: $itemList ")
        val currentSelectView = itemList.selectView
        if (collapseState && currentSelectView.isGone) {
          lastNormalItem.view.isGone = true
          //  itemList[lastSelectItem.index] = lastSelectItem.changeToCollapseState()
          currentSelectView.isVisible = true
          logger("toggle expand  selectFinishedCallback ")
          currentSelectView.post {
            binding.moveGuideLineNoAnimator(currentSelectView)
            selectEnd()
          }
        } else {
          if (notShowAnimator) {
            binding.moveGuideLineNoAnimator(itemViews[index])
            selectFinished()
          } else {
            showAnimation(TOGGLE_READY_TO_SELECT_MOVE)
          }
        }
      }
    }

    override fun initView() {
      binding.run {
        val itemIds = mutableListOf<Int>()
        itemIds.addAll(itemList.map { it.viewId })
        itemIds.add(expandView.id)
        if (expandView.parent == null) {
          parent.addView(expandView)
        }
        zeekrToggleGroupFlow.referencedIds = itemIds.toIntArray()
        if (expandSize >= itemList.size) {
          expandView.isGone = true
          return
        }
        itemList.collapseItemViews.forEach { it.isGone = true }
        zeekrToggleGroupFlow.setHorizontalGap(parent.toggleItemMargin)
        expandView.clickWithParentTrigger(parent) {
          if (binding.isAnimatorState()) {
            return@clickWithParentTrigger
          }
          if (collapseState) {
            expandView()
          } else {
            collapseView()
          }
        }
      }
    }

    internal fun changeVisibleItem(index: Int) {
      if (expandSize > itemList.count { it.isNormalState }) {
        itemList[index] = itemList[index].changeToNormalState()
        return
      }
      val firstItem = itemList.firstOrNull { it.isCollapseState }
      if (firstItem != null && firstItem.index < index) {
        itemList[firstItem.index] = itemList[firstItem.index].changeToNormalState()
        itemList[firstItem.index].view.isVisible = true
        itemList[index] = itemList[index].changeToCollapseState()
        itemList[index].view.isGone = true
      } else {
        val lastItem = itemList.last { it.isNormalState && !it.selected }
        if (lastItem.index > index) {
          itemList[index] = itemList[index].changeToNormalState()
          itemList[lastItem.index] = itemList[lastItem.index].changeToCollapseState()
          itemList[lastItem.index].view.isGone = true
        } else {
          itemList[index] = itemList[index].changeToCollapseState()
          itemList[index].view.isGone = true
        }
      }
      if (itemList.any { it.isCollapseState }) {
        expandView.isVisible = true
      }
    }

    internal fun changeCollapseGoneItem(index: Int) {
      if (itemList.none { it.isCollapseState }) {
        expandView.isGone = true
      }
    }

    internal fun changeNormalGoneItem(index: Int) {
      if (itemList.any { it.isCollapseState }) {
        val firstItem = itemList.first { it.isCollapseState }
        itemList[firstItem.index] = itemList[firstItem.index].changeToNormalState()
        itemList[firstItem.index].view.isVisible = true
      }
      itemList[index] = itemList[index].changeToGoneState()
      itemList[index].view.isGone = true
      if (itemList.none { it.isCollapseState }) {
        expandView.isGone = true
      }
    }

    internal fun changeSelectedGoneItem(index: Int) {
      itemList[index] = itemList[index].changeToSelectedState(false)
      val firstItem = itemList.first { it.isNormalState }
      itemList[firstItem.index] = itemList[firstItem.index].changeToSelectedState(true)
      val collapseList = itemList.filter { it.isCollapseState }
      if (collapseList.isNotEmpty()) {
        if (itemList.count { it.isNormalState } < expandSize) {
          val firstCollapse = collapseList.first()
          itemList[firstCollapse.index] =
            itemList[firstCollapse.index].changeToNormalState()
          itemList[firstCollapse.index].view.isVisible = true
        }
      }
      if (itemList.none { it.isCollapseState }) {
        expandView.isGone = true
      }
    }

    override fun expandView() {
      itemList.expandItems()
      showAnimation(TOGGLE_READY_TO_EXPAND)
    }

    override fun collapseView() {
      val needCollapseSize = itemList.count { it.isNormalState } - expandSize
      itemList.collapseItems(needCollapseSize)
      showAnimation(TOGGLE_READY_TO_COLLAPSE)
    }
  }

  data class Single(val isRight: Boolean = false) : ZeekrToggleBehavior() {

    override val arrowDrawable: Drawable? by lazy {
      val drawable = R.drawable.zeekr_toggle_expand.takeUnless { isRight }
        ?: R.drawable.zeekr_toggle_expand_right
      AppCompatResources.getDrawable(parent.context, drawable)?.mutate()
    }

    override fun itemSelect(index: Int) {
      val lastSelectView = itemList.selectView
      itemList.itemSelect(index, TOGGLE_READY_TO_SINGLE_SELECT_MOVE) {
        val currentSelectView = itemList.selectView
        logger("itemSelect  collapseState: $collapseState level:${arrowDrawable!!.level} ")
        if (collapseState) {
          lastSelectView.isGone = true
          currentSelectView.isVisible = true
          currentSelectView.post {
            binding.moveGuideLineNoAnimator(currentSelectView)
            selectEnd()
          }
        } else {
          showAnimation(TOGGLE_READY_TO_SINGLE_SELECT_MOVE)
        }
      }
    }

    override fun initData() {
      itemList.clear()
      itemList.addAll(
        itemViews.mapIndexed { index, view ->
          ZeekrToggleModel(
            index, view.id, view,
            state = TOGGLE_ITEM_NORMAL.takeIf { index == parent.defaultSelectIndex }
              ?: TOGGLE_ITEM_COLLAPSE,
            selected = index == parent.defaultSelectIndex
          )
        }
      )
    }

    override val collapseState: Boolean
      get() = arrowDrawable!!.level == 0

    override val expandState: Boolean
      get() = arrowDrawable!!.level == 10000

    private fun List<Int>.referencedIds(): IntArray {
      return (sortedDescending().takeIf { isRight } ?: this).toIntArray()
    }

    override fun initView() {
      binding.run {
        val itemIds = mutableListOf<Int>()
        itemIds.addAll(itemList.map { it.viewId })
        parent.addView(expandView)
        itemIds.add(expandView.id)
        zeekrToggleGroupFlow.referencedIds = itemIds.referencedIds()
        if (isRight) {
          zeekrToggleGroupFlow.setHorizontalAlign(Flow.HORIZONTAL_ALIGN_END)
        }
        itemList.collapseItemViews.forEach { it.isGone = true }
        expandView.clickWithParentTrigger(parent) {
          if (binding.isAnimatorState()) {
            return@clickWithParentTrigger
          }
          if (collapseState) {
            expandView()
          } else {
            collapseView()
          }
        }
      }
    }

    override fun expandView() {
      if (!collapseState || binding.isAnimatorState()) {
        return
      }
      itemList.expandItems()
      showAnimation(TOGGLE_READY_TO_EXPAND)
    }

    override fun collapseView() {
      if (!expandState || binding.isAnimatorState()) {
        return
      }
      val collapseSize = itemList.count { it.isNormalState } - 1
      itemList.collapseItems(collapseSize)
      showAnimation(TOGGLE_READY_TO_COLLAPSE)
    }
  }

  internal fun logger(message: String) {
    Log.i("ZeekrToggle", "${parent.id}  $message")
  }
}
