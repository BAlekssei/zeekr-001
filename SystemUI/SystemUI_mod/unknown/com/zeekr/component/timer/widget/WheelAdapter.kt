package com.zeekr.component.timer.widget

abstract class WheelAdapter {

  abstract fun getValue(position: Int): String
  abstract fun getUnitValue(position: Int): String

  abstract fun getPosition(value: String): Int
  abstract fun getUnitPosition(value: String): Int

  /**
   * get the text with potential maximum print length for support "WRAP_CONTENT" attribute
   * if not sure, return empty("") string, in that case "WRAP_CONTENT" will behavior like "MATCH_PARENT"
   */
  abstract fun getTextWithMaximumLength(): String

  /**
   * get the elements size of the adapter, if the adapter does not contains an element array, default is -1
   */
  open fun getSize(): Int = -1

  open fun getMinValidIndex(): Int? {
    return null
  }

  open fun getMaxValidIndex(): Int? {
    return null
  }
}
