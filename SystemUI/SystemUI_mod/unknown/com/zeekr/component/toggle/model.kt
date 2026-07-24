package com.zeekr.component.toggle

import android.util.Log
import android.view.View

internal const val NONE_SET = -1

internal const val TOGGLE_ITEM_NORMAL = 11
internal const val TOGGLE_ITEM_COLLAPSE = 12
internal const val TOGGLE_ITEM_GONE = 13

internal const val TOGGLE_NO_READY = 101
internal const val TOGGLE_READY_TO_SELECT_MOVE = 102
internal const val TOGGLE_READY_TO_EXPAND = 103
internal const val TOGGLE_READY_TO_COLLAPSE = 104
internal const val TOGGLE_READY_TO_VISIBLE = 105
internal const val TOGGLE_READY_TO_GONE = 106
internal const val TOGGLE_READY_TO_SINGLE_SELECT_MOVE = 107

private val Int.hasSetValue
  get() = this > NONE_SET

internal data class ZeekrToggleModel(
  val index: Int,
  val viewId: Int,
  val view: View,
  val state: Int = TOGGLE_ITEM_NORMAL,
  val selected: Boolean = false,
  val ready: Int = TOGGLE_NO_READY
) {
  val isNormalState: Boolean
    get() = state == TOGGLE_ITEM_NORMAL
  val isCollapseState: Boolean
    get() = state == TOGGLE_ITEM_COLLAPSE
  val isGoneState: Boolean
    get() = state == TOGGLE_ITEM_GONE

  val isNoReady: Boolean
    get() = ready == TOGGLE_NO_READY
  val isReady: Boolean
    get() = ready != TOGGLE_NO_READY

  fun changeToNormalState(): ZeekrToggleModel = copy(state = TOGGLE_ITEM_NORMAL)
  fun changeToCollapseState(): ZeekrToggleModel = copy(state = TOGGLE_ITEM_COLLAPSE)
  fun changeToGoneState(): ZeekrToggleModel = copy(state = TOGGLE_ITEM_GONE)
  fun changeToSelectedState(newSelected: Boolean): ZeekrToggleModel = copy(selected = newSelected)

  override fun toString(): String {
    return "{$index , ${state.display} , ${ready.display} , $selected  }"
  }

  private val Int.display: String
    get() = when (this) {
      TOGGLE_ITEM_NORMAL -> "normal"
      TOGGLE_ITEM_COLLAPSE -> "collapse"
      TOGGLE_ITEM_GONE -> "gone"
      TOGGLE_NO_READY -> "no_ready"
      TOGGLE_READY_TO_SELECT_MOVE -> "ready_select_move"
      TOGGLE_READY_TO_EXPAND -> "ready_expand"
      TOGGLE_READY_TO_COLLAPSE -> "ready_collapse"
      TOGGLE_READY_TO_VISIBLE -> "ready_visible"
      TOGGLE_READY_TO_GONE -> "ready_gone"
      TOGGLE_READY_TO_SINGLE_SELECT_MOVE -> "ready_single_select_move"
      else -> ""
    }
}

internal fun MutableList<ZeekrToggleModel>.itemSelect(
  index: Int,
  moveStyle: Int = TOGGLE_READY_TO_SELECT_MOVE,
  selectCallback: ToggleCommonCallback? = null
) {
  if (this[index].selected) {
    return
  }
  check(count { it.selected } == 1)
  val oldSelectIndex = first { it.selected }.index
//  check(this[oldSelectIndex].isNormalState)
  this[oldSelectIndex] = this[oldSelectIndex].changeToSelectedState(false)
  val model = this[index]
  check(!model.isGoneState)
  this[index] = model.changeToSelectedState(true).takeIf { model.isNormalState }
    ?: model.copy(selected = true, state = TOGGLE_ITEM_NORMAL)
  if (model.isCollapseState) {
    val lastItem = lastOrNull { it.isNormalState && it.index != index }
      ?: throw Throwable("list is error!!")
    this[lastItem.index] = lastItem.changeToCollapseState()
  } else {
    changeState(index, ready = moveStyle)
  }
  selectCallback?.invoke()
}

internal fun MutableList<ZeekrToggleModel>.collapseItems(
  collapseSize: Int
) {
  check(none { it.isCollapseState })
  val collapseList = filter { it.isNormalState && !it.selected }.takeLast(collapseSize)
  collapseList.forEach {
    changeState(it.index, state = TOGGLE_ITEM_COLLAPSE, ready = TOGGLE_READY_TO_COLLAPSE)
  }
}

internal fun MutableList<ZeekrToggleModel>.expandItems() {
  check(any { it.isCollapseState })
  val expandList = filter { it.isCollapseState }
  expandList.forEach {
    this[it.index] = it.changeToNormalState()
    changeState(it.index, state = TOGGLE_ITEM_NORMAL, ready = TOGGLE_READY_TO_EXPAND)
  }
}

internal fun MutableList<ZeekrToggleModel>.viewIdArray(): IntArray {
  return map { it.viewId }.toIntArray()
}

internal val MutableList<ZeekrToggleModel>.selectView: View
  get() = firstOrNull { it.selected }?.view ?: throw Throwable(" list has no select item  ")

internal val MutableList<ZeekrToggleModel>.selectViewId: Int
  get() = firstOrNull { it.selected }?.viewId ?: throw Throwable(" list has no select item  ")

internal val MutableList<ZeekrToggleModel>.selectIndex: Int
  get() = firstOrNull { it.selected }?.index ?: throw Throwable(" list has no select item  ")

internal val MutableList<ZeekrToggleModel>.collapseItemViews: List<View>
  get() = filter { it.isCollapseState }.map { it.view }

internal fun MutableList<ZeekrToggleModel>.changeState(
  index: Int,
  state: Int = NONE_SET,
  ready: Int = NONE_SET,
  select: Boolean? = null
) {
  val model = this[index]
  val stateSet = state.takeIf { it.hasSetValue } ?: model.state
  val readySet = ready.takeIf { it.hasSetValue } ?: model.ready
  val selectSet = select ?: model.selected
  this[index] = model.copy(state = stateSet, ready = readySet, selected = selectSet)
}

internal fun MutableList<ZeekrToggleModel>.readyFinished() {
  forEachIndexed { index, model ->
    if (model.isReady) {
      this[index] = this[index].copy(ready = TOGGLE_NO_READY)
    }
  }
}

private fun MutableList<ZeekrToggleModel>.logger(message: String) {
  Log.d("ZeekrToggle", "ZeekrToggleModel   $message")
}
