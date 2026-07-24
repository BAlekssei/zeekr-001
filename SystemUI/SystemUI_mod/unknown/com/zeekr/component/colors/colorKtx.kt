package com.zeekr.component.colors

import android.content.res.ColorStateList
import android.view.View
import android.R as androidR

fun View.createColorStateListToggleButton(
  checkedEnabledPress: Int,
  checkedEnabledUnPress: Int,
  checkedDisabledUnPress: Int,
  unCheckedEnabledPress: Int,
  unCheckedEnabledUnPress: Int,
  normal: Int
): ColorStateList {
  val colors = intArrayOf(checkedEnabledPress, checkedEnabledUnPress, checkedDisabledUnPress, unCheckedEnabledPress, unCheckedEnabledUnPress, normal)
  val states = arrayOfNulls<IntArray>(6)
  states[0] = intArrayOf(androidR.attr.state_checked, androidR.attr.state_enabled, androidR.attr.state_pressed)
  states[1] = intArrayOf(androidR.attr.state_checked, androidR.attr.state_enabled)
  states[2] = intArrayOf(androidR.attr.state_checked)
  states[3] = intArrayOf(androidR.attr.state_enabled, androidR.attr.state_pressed)
  states[4] = intArrayOf(androidR.attr.state_enabled)
  states[5] = intArrayOf(0)
  return ColorStateList(states, colors)
}

fun View.createColorStateListToggle(
  enableCheck: Int,
  enableUnCheck: Int,
  check: Int,
  unCheck: Int
): ColorStateList {
  val colors = intArrayOf(enableCheck, enableUnCheck, check, unCheck)
  val states = arrayOfNulls<IntArray>(4)
  states[0] = intArrayOf(androidR.attr.state_checked, androidR.attr.state_enabled)
  states[1] = intArrayOf(androidR.attr.state_enabled)
  states[2] = intArrayOf(androidR.attr.state_checked)
  states[3] = intArrayOf(0)
  return ColorStateList(states, colors)
}

fun View.createColorStateListButton(
  enable: Int,
  disEnable: Int,
  pressed: Int,
  normal: Int
): ColorStateList {
  val colors = intArrayOf(enable, disEnable, pressed, normal)
  val states = arrayOfNulls<IntArray>(4)
  states[0] = intArrayOf(androidR.attr.state_pressed, androidR.attr.state_enabled)
  states[1] = intArrayOf(androidR.attr.state_enabled)
  states[2] = intArrayOf(androidR.attr.state_pressed)
  states[3] = intArrayOf(0)
  return ColorStateList(states, colors)
}

fun View.createColorStateListEnabled(
  enable: Int,
  disEnable: Int
): ColorStateList {
  val colors = intArrayOf(enable, disEnable)
  val states = arrayOfNulls<IntArray>(2)
  states[0] = intArrayOf(androidR.attr.state_enabled)
  states[1] = intArrayOf(0)
  return ColorStateList(states, colors)
}

fun View.createColorStateListEnabledCheck(
  enableCheck: Int,
  enableUnCheck: Int,
  disEnable: Int
): ColorStateList {
  val colors = intArrayOf(enableCheck, enableUnCheck, disEnable)
  val states = arrayOfNulls<IntArray>(3)
  states[0] = intArrayOf(androidR.attr.state_enabled, androidR.attr.state_checked)
  states[1] = intArrayOf(androidR.attr.state_enabled)
  states[2] = intArrayOf(0)
  return ColorStateList(states, colors)
}

fun View.createColorStateListSelected(
  selected: Int,
  unSelected: Int,
): ColorStateList {
  val colors = intArrayOf(selected, unSelected)
  val states = arrayOfNulls<IntArray>(2)
  states[0] = intArrayOf(androidR.attr.state_selected)
  states[1] = intArrayOf(0)
  return ColorStateList(states, colors)
}

fun View.createColorStateListSelect(
  enableSelect: Int,
  enableUnSelect: Int,
  select: Int,
  unCheck: Int
): ColorStateList {
  val colors = intArrayOf(enableSelect, enableUnSelect, select, unCheck)
  val states = arrayOfNulls<IntArray>(4)
  states[0] = intArrayOf(androidR.attr.state_selected, androidR.attr.state_enabled)
  states[1] = intArrayOf(androidR.attr.state_enabled)
  states[2] = intArrayOf(androidR.attr.state_selected)
  states[3] = intArrayOf(0)
  return ColorStateList(states, colors)
}
