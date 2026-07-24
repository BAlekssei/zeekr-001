package com.zeekr.component.toggle

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.ImageView
import androidx.constraintlayout.helper.widget.Flow
import androidx.core.view.children
import androidx.core.view.isGone
import androidx.core.view.isVisible
import com.zeekr.component.R
import com.zeekr.component.databinding.ZeekrToggleExpandIconBinding
import com.zeekr.component.databinding.ZeekrToggleGroupLayoutBinding
import com.zeekr.component.extention.getViewRect
import com.zeekr.component.toggle.ZeekrToggleGroup.Companion.EXPAND_TAG

internal fun ZeekrToggleGroupLayoutBinding.iconLayout(
  list: List<Int>,
  imageLayout: Int,
  parent: ViewGroup,
  orientation: Int = Flow.HORIZONTAL,
  selectIndex: Int = 0,
  expandCount: Int = 0,
  listener: ((Int, Boolean) -> Unit)?
): List<Int> {
  if (orientation == Flow.VERTICAL) {
    zeekrToggleGroupFlow.setOrientation(Flow.VERTICAL)
  }

  var selectId = 0
  val imageViewList = list.mapIndexed { index, icon ->
    val imageView = LayoutInflater.from(root.context).inflate(
      imageLayout,
      null, false
    ) as ImageView
    imageView.id = View.generateViewId()
    imageView.setImageResource(icon)
    if (index > list.size - 1 - expandCount) {
      imageView.isGone = true
    }
    parent.addView(imageView)
    imageView
  }
  val ids = imageViewList.map { it.id }
  imageViewList.forEachIndexed { index, item ->
    item.setOnClickListener {
      selectId = it.id
      select(selectId, list[index], parent, orientation)
      it as ImageView
      listener?.invoke(index, true)
    }
  }
  zeekrToggleGroupFlow.referencedIds = ids.toIntArray()
  selectId = ids[selectIndex]
  if (expandCount > 0) {
    val expandIcon = parent.getExpandView()
    expandIcon.id = View.generateViewId()
    expandIcon.tag = EXPAND_TAG
    parent.addView(expandIcon)
    zeekrToggleGroupFlow.addView(expandIcon)
    val expandIds = ids.takeLast(expandCount)
    val expandViews = parent.children.filter {
      it is ImageView && expandIds.contains(it.id)
    }

    expandIcon.setOnClickListener {
      val expanded = expandIcon.isSelected
      val expandIdsList = mutableListOf<Int>()
      if (expanded) {
        expandIcon.isSelected = false
        expandIcon.setImageResource(R.drawable.ic_arrow_right)
        expandViews.forEach {
          it.isGone = true
        }
        if (selectId > 0 && expandIds.contains(selectId)) {
          selectId = 0
          select(ids[0], list[0], parent, orientation)
          listener?.invoke(0, false)
        }
      } else {
        expandIcon.isSelected = true
        expandIcon.setImageResource(R.drawable.ic_arrow_left)
        expandViews.forEach {
          it.isVisible = true
        }
      }
    }
  }

  select(ids[selectIndex], list[selectIndex], parent, orientation)
  listener?.invoke(selectIndex, false)
  return ids
}

internal fun ZeekrToggleGroupLayoutBinding.select(
  selectId: Int,
  selectIcon: Int,
  parent: ViewGroup,
  orientation: Int = Flow.HORIZONTAL
) {
  zeekrToggleSelectButton.tag = selectId
  val selectItem = parent.children.filterNot { it is Button }
    .firstOrNull { it is ImageView && it.id == selectId }
  selectItem?.post {
    moveSelectGuideLine(selectItem, orientation)
    zeekrToggleSelectButton.setIconResource(selectIcon)
  } ?: Throwable("ZeekrToggleGroupHorLayoutBinding  selectItem is null")
}

private fun ZeekrToggleGroupLayoutBinding.moveSelectGuideLine(selectItem: View, orientation: Int = Flow.HORIZONTAL) {
  val itemRect = selectItem.getViewRect()
  val rootRect = root.getViewRect()
  if (orientation == Flow.VERTICAL) {
    zeekrToggleGuidelineStart.setGuidelineBegin(0)
    zeekrToggleGuidelineEnd.setGuidelineBegin(rootRect.width())
    zeekrToggleGuidelineTop.setGuidelineBegin(itemRect.top)
    zeekrToggleGuidelineBottom.setGuidelineBegin(itemRect.bottom)
  } else {
    zeekrToggleGuidelineStart.setGuidelineBegin(itemRect.left)
    zeekrToggleGuidelineEnd.setGuidelineBegin(itemRect.right)
    zeekrToggleGuidelineTop.setGuidelineBegin(itemRect.top)
    zeekrToggleGuidelineBottom.setGuidelineBegin(itemRect.bottom)
  }
}

private fun ViewGroup.getExpandView(): ImageView {
  return ZeekrToggleExpandIconBinding.inflate(
    LayoutInflater.from(context),
    this,
    false
  ).root
}
