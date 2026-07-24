package com.zeekr.component.segement

import android.graphics.Rect
import android.os.Bundle
import android.view.View
import android.view.accessibility.AccessibilityNodeInfo
import androidx.core.view.ViewCompat
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat
import androidx.customview.widget.ExploreByTouchHelper

internal class ZeekrGroupTouchHelper(
  host: View,
  private val dataList: List<String>,
) : ExploreByTouchHelper(host) {

  init {
    ViewCompat.setAccessibilityDelegate(host, this)
    host.importantForAccessibility = View.IMPORTANT_FOR_ACCESSIBILITY_YES
  }

  private var selectIndex = -1
  var orientation = HORIZONTAL
  val rect = Rect()
  var itemListener: ((Int) -> Unit)? = null
  private val boundList: List<Rect>
    get() = List(dataList.size) { index ->
      val size = dataList.size
      when (orientation) {
        HORIZONTAL -> {
          val selection = (rect.width() / size).toInt()
          Rect(selection * index, 0, selection * (index + 1), rect.height())
        }

        else -> {
          val selection = (rect.height() / size).toInt()
          Rect(0, selection * index, rect.width(), selection * (index + 1))
        }
      }
    }

  override fun getVirtualViewAt(x: Float, y: Float): Int {
    val size = dataList.size
    return when (orientation) {
      HORIZONTAL -> (x - rect.left).toInt() / (rect.width() / size).toInt()
      else -> (y - rect.top).toInt() / (rect.height() / size).toInt()
    }
  }

  override fun getVisibleVirtualViews(virtualViewIds: MutableList<Int>) {
    dataList.forEachIndexed { index, _ ->
      virtualViewIds.add(index)
    }
  }

  override fun onPopulateNodeForVirtualView(
    virtualViewId: Int,
    node: AccessibilityNodeInfoCompat
  ) {
    if (virtualViewId > dataList.size - 1 || virtualViewId < 0) {
      node.text = "text"
      node.contentDescription = "contentDescription"
      node.setBoundsInParent(Rect(0, 0, 0, 0))
      return
    }
    node.text = dataList[virtualViewId]
    node.setBoundsInParent(boundList[virtualViewId])
    node.contentDescription = dataList[virtualViewId]
    node.isClickable = true
    node.isVisibleToUser = true
    node.addAction(AccessibilityNodeInfoCompat.ACTION_CLICK)
  }

  override fun onPerformActionForVirtualView(
    virtualViewId: Int,
    action: Int,
    arguments: Bundle?
  ): Boolean {
    when (action) {
      AccessibilityNodeInfo.ACTION_CLICK -> {
        itemListener?.invoke(virtualViewId)
        return true
      }
    }
    return false
  }

  fun refreshSelectIndexHelper(index: Int) {
    selectIndex = index
  }

  companion object {
    const val HORIZONTAL = 0
    const val VERTIICAL = 1
  }
}
