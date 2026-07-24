package com.zeekr.component.dialog.button

const val INDEX_POSITIVE = 0
const val INDEX_NEGATIVE = 1
const val INDEX_NEUTRAL = 2

enum class WhichButton(val index: Int) {
  POSITIVE(INDEX_POSITIVE),
  NEGATIVE(INDEX_NEGATIVE),
  NEUTRAL(INDEX_NEUTRAL);

  companion object {
    fun fromIndex(index: Int) = when (index) {
      INDEX_POSITIVE -> POSITIVE
      INDEX_NEGATIVE -> NEGATIVE
      INDEX_NEUTRAL -> NEUTRAL
      else -> throw IndexOutOfBoundsException("$index is not an action button index.")
    }
  }
}
