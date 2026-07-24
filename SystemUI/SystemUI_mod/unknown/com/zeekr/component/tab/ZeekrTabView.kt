package com.zeekr.component.tab

import android.animation.ValueAnimator
import android.content.Context
import android.graphics.Typeface
import android.util.AttributeSet
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.view.animation.DecelerateInterpolator
import android.widget.TextView
import androidx.constraintlayout.widget.ConstraintLayout
import androidx.core.view.children
import androidx.core.view.isVisible
import com.zeekr.component.databinding.ZeekrTabViewItemBinding
import com.zeekr.component.databinding.ZeekrTabViewLayoutBinding
import com.zeekr.component.extention.clickWithParentTrigger
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.getViewRect

class ZeekrTabView constructor(
  context: Context,
  attrs: AttributeSet? = null
) : ConstraintLayout(context, attrs) {
  var selectIndex = 0
    set(value) {
      unSelect()
      field = value
      binding.moveSelect()
    }

  private val binding = ZeekrTabViewLayoutBinding.inflate(
    LayoutInflater.from(context),
    this
  )

  private val itemViews = mutableListOf<ViewGroup>()

  private var listener: ((Int) -> Unit)? = null

  fun setZeekrTabListener(listener: ((Int) -> Unit)) {
    this.listener = listener
  }

  @JvmOverloads
  fun submitData(
    nameList: List<String>,
    defaultSelect: Int = 0
  ) {
    itemViews.forEach {
      removeView(it)
    }
    clipChildren = false
    clipToPadding = false
    itemViews.clear()

    val itemSize = nameList.size
    if (nameList.size == 0) {
      throw Throwable(" nameList or iconList  size is not current : $itemSize")
    }

    val ids = mutableListOf<Int>()
    0.until(itemSize).forEachIndexed { index, _ ->
      val view = ZeekrTabViewItemBinding.inflate(
        LayoutInflater.from(context),
        this@ZeekrTabView,
        false
      ).apply {
        root.id = View.generateViewId()
        zeekrTabItemText.text = nameList[index]
        ids.add(root.id)
        root.clickWithParentTrigger(this@ZeekrTabView, 100) {
          selectIndex = index
        }
      }.root
      addView(view)
      itemViews.add(view)

      binding.zeekrTabGroupFlow.referencedIds = ids.toIntArray()
      selectIndex = defaultSelect
    }
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

  private fun ZeekrTabViewLayoutBinding.moveSelect() {
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

  private fun ZeekrTabViewLayoutBinding.moveSelectGuideLine(
    selectItem: View
  ) {
    val itemRect = selectItem.getViewRect()
    val rootRect = root.getViewRect()
    Log.d(
      "ZeekrRailView",
      "moveSelectGuideLine  selectItem $selectItem  itemRect: $itemRect  rootRect:$rootRect"
    )
    val leftTargetBegin = itemRect.left + (itemRect.width() / 2 - 24.dp)
    val leftFromBegin = zeekrTabGuidelineLeft.left

    if (leftFromBegin == 0) {
      zeekrTabViewIndicator.isVisible = true
      zeekrTabGuidelineLeft.setGuidelineBegin(leftTargetBegin)
      return
    }

    listener?.invoke(selectIndex)

    ValueAnimator.ofInt(0, 100).apply {
      addUpdateListener {
        val value = it.animatedValue as Int
        val leftBegin = leftFromBegin + (leftTargetBegin - leftFromBegin) * value / 100
        zeekrTabGuidelineLeft.setGuidelineBegin(leftBegin)
      }
      duration = 250L
      interpolator = DecelerateInterpolator()
      start()
    }
  }

  fun setFlowSpace(space: Int) {
    binding.zeekrTabGroupFlow.setHorizontalGap(space)
  }

  override fun onDetachedFromWindow() {
    super.onDetachedFromWindow()
  }
}
