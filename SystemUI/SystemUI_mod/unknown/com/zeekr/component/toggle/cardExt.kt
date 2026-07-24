package com.zeekr.component.toggle

import android.view.View
import android.widget.ScrollView
import androidx.core.widget.NestedScrollView
import com.zeekr.component.scroll.OverNestedScrollView

internal fun List<View>.measureChildWidthTotal(): Int = map {
  it.measureHorizontalWidth()
}.reduce { acc, i -> acc + i }

internal fun List<View>.measureChildHeightTotal(): Int = map {
  it.measureVerticalHeight()
}.reduce { acc, i -> acc + i }

internal fun List<View>.measureSingleChildWidthTotal(): Int = map {
  it.measuredWidth
}.reduce { acc, i -> acc + i }

internal fun List<View>.measureChildWidthMax(): Int = maxOf { it.measureVerticalWidth() }

internal fun List<View>.measureChildHeightMax(): Int = maxOf { it.measureHorizontalHeight() }

internal fun ZeekrToggle.scrollViewParentEnable(enable: Boolean) {
  val scrollView = when {
    parent.parent is NestedScrollView -> {
      parent.parent as NestedScrollView
    }
    parent.parent is ScrollView -> {
      parent.parent as ScrollView
    }
    parent.parent.parent is NestedScrollView -> {
      parent.parent.parent as NestedScrollView
    }
    parent.parent.parent is ScrollView -> {
      parent.parent.parent as ScrollView
    }
    parent.parent is OverNestedScrollView -> {
      parent.parent as OverNestedScrollView
    }
    parent.parent.parent is OverNestedScrollView -> {
      parent.parent.parent as OverNestedScrollView
    }
    else -> null
  }
  scrollView?.isVerticalScrollBarEnabled = enable
}
