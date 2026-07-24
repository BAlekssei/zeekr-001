package com.zeekr.component.extention

import android.view.View
import com.zeekr.component.R

internal fun View.listStringEditMode(): MutableList<String> {
  return mutableListOf<String>().takeUnless { isInEditMode } ?: mutableListOf("文本一", "文本二", "文本三")
}

internal fun View.listIconEditMode(): MutableList<Int> {
  return mutableListOf<Int>().takeUnless { isInEditMode } ?: mutableListOf(
    R.drawable.ic_search,
    R.drawable.ic_search,
    R.drawable.ic_search
  )
}

internal fun View.lisFlagEditMode(): MutableList<Boolean> {
  return mutableListOf<Boolean>().takeUnless { isInEditMode } ?: mutableListOf(true, true, true)
}
