package com.zeekr.component.toggle

import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.ImageView
import android.widget.TextView
import androidx.constraintlayout.helper.widget.Flow
import androidx.core.view.children
import androidx.core.view.isGone
import androidx.core.view.isVisible
import com.zeekr.component.R
import com.zeekr.component.databinding.ZeekrToggleExpandIconBinding
import com.zeekr.component.databinding.ZeekrToggleGroupLayoutBinding
import com.zeekr.component.databinding.ZeekrToggleItemHorTextViewLayoutBinding
import com.zeekr.component.databinding.ZeekrToggleItemVerTextViewLayoutBinding
import com.zeekr.component.extention.getViewRect
import com.zeekr.component.toggle.ZeekrToggleGroup.Companion.EXPAND_TAG

internal fun ZeekrToggleGroupLayoutBinding.layout(
  list: List<String>,
  parent: ViewGroup,
  orientation: Int = Flow.HORIZONTAL,
  selectIndex: Int = 0,
  expandCount: Int = 0,
  listener: ((Int, Boolean) -> Unit)?
) {
  if (orientation == Flow.VERTICAL) {
    zeekrToggleGroupFlow.setOrientation(Flow.VERTICAL)
  }

  var selectId = 0
  val ids = list.mapIndexed { index, content ->
    val textView = parent.getTextView(orientation)
    textView.id = View.generateViewId()
    textView.text = content
    if (index > list.size - 1 - expandCount) {
      textView.isGone = true
    }
    parent.addView(textView)
    textView.setOnClickListener {
      selectId = it.id
      select(content, parent, orientation)
      it as TextView
      listener?.invoke(list.indexOf(content), true)
    }
    textView.id
  }
  zeekrToggleGroupFlow.referencedIds = ids.toIntArray()
  selectId = ids[selectIndex]
  if (expandCount > 0) {
    val expandIcon = parent.getExpandView()
    expandIcon.id = View.generateViewId()
    expandIcon.tag = EXPAND_TAG
    expandIcon.setImageResource(R.drawable.ic_arrow_right)
    parent.addView(expandIcon)
    zeekrToggleGroupFlow.addView(expandIcon)
    val expandIds = ids.takeLast(expandCount)
    val expandViews = parent.children.filter {
      it is TextView && expandIds.contains(it.id)
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
          select(list[0], parent, orientation)
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

  select(list[selectIndex], parent, orientation)
  listener?.invoke(selectIndex, false)
}

internal fun ZeekrToggleGroupLayoutBinding.select(
  selectContent: String,
  parent: ViewGroup,
  orientation: Int = Flow.HORIZONTAL
) {
  Log.d("ZeekrToggleGroup", "ZeekrToggleGroupLayoutBinding  select $selectContent ")
  zeekrToggleSelectButton.text = ""
  zeekrToggleSelectButton.tag = selectContent
  val selectItem = parent.children.filterNot { it is Button }
    .firstOrNull { it is TextView && it.text == selectContent }
  selectItem?.post {
    moveSelectGuideLine(selectItem, orientation)
    zeekrToggleSelectButton.text = selectContent
  } ?: Throwable("ZeekrToggleGroupHorLayoutBinding  selectItem is null")
}

private fun ZeekrToggleGroupLayoutBinding.moveSelectGuideLine(selectItem: View, orientation: Int = Flow.HORIZONTAL) {
  val itemRect = selectItem.getViewRect()
  val rootRect = root.getViewRect()
  Log.d("ZeekrToggleGroup", "moveSelectGuideLine  selectItem $selectItem  itemRect: $itemRect  rootRect:$rootRect")
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

private fun ViewGroup.getTextView(orientation: Int = Flow.HORIZONTAL): TextView {
  return getHorTextView().takeIf { orientation == Flow.HORIZONTAL } ?: getVerTextView()
}

private fun ViewGroup.getHorTextView(): TextView {
  return ZeekrToggleItemHorTextViewLayoutBinding.inflate(
    LayoutInflater.from(context),
    this,
    false
  ).root
}

private fun ViewGroup.getVerTextView(): TextView {
  return ZeekrToggleItemVerTextViewLayoutBinding.inflate(
    LayoutInflater.from(context),
    this,
    false
  ).root
}

private fun ViewGroup.getExpandView(): ImageView {
  return ZeekrToggleExpandIconBinding.inflate(
    LayoutInflater.from(context),
    this,
    false
  ).root
}
