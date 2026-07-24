@file:JvmName("WheelAdapterKt")

package com.zeekr.component.timer.widget

/**
 * Custom wheel picker adapter for implementing a date picker
 */

class ZeekrWheelAdapter : WheelAdapter() {

  var timeList = mutableListOf<String>()
  var unitList = mutableListOf<String>()

  // get item value based on item position in wheel
  override fun getValue(position: Int): String {
    return when {
      position < 0 || position >= timeList.size -> ""
      else -> timeList[position]
    }
  }

  override fun getUnitValue(position: Int): String {
    return when {
      position < 0 || position >= unitList.size -> ""
      else -> unitList[position]
    }
  }

  // get item position based on item string value
  override fun getPosition(value: String): Int {
    return timeList.indexOf(value)
  }

  override fun getUnitPosition(value: String): Int {
    return unitList.indexOf(value)
  }

  // return a string with the approximate longest text width, for supporting WRAP_CONTENT
  override fun getTextWithMaximumLength(): String {
    return timeList.maxByOrNull { it.length }.orEmpty()
  }

  override fun getSize(): Int = timeList.size
}
