package com.zeekr.component.extention

import android.graphics.Typeface
import android.graphics.Typeface.BOLD
import android.graphics.Typeface.NORMAL
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.core.view.children
import com.zeekr.component.toggle.ZeekrToggle.Companion.TEXTVIEW_NOT_SELECT_BOLD

internal fun View.childrenEnable(isEnabled: Boolean) {
  if (this is ViewGroup) {
    children.forEach {
      it.isEnabled = isEnabled
      it.childrenEnable(isEnabled)
    }
  }
}

internal fun ViewGroup.allEnable(isEnabled: Boolean) {
  children.forEach {
    it.isEnabled = isEnabled
    it.childrenEnable(isEnabled)
  }
}

internal fun ViewGroup.textType(type: Int) {
  children.forEach {
    if (it is TextView) {
      it.textViewSetType(type)
    } else if (it is ViewGroup) {
      it.textType(type)
    }
  }
}

internal fun TextView.textViewSetType(type: Int) {
  typeface = if (tag == TEXTVIEW_NOT_SELECT_BOLD) {
    Typeface.defaultFromStyle(NORMAL)
  } else {
    Typeface.defaultFromStyle(type)
  }
}

internal fun View.textViewType(type: Int) {
  when (this) {
    is ViewGroup -> {
      textType(type)
    }
    is TextView -> {
      textViewSetType(type)
    }
  }
}

internal fun View.toggleItemSelect(select: Boolean) {
  allViewSelect(select)
  textViewType(BOLD).takeIf { select } ?: textViewType(NORMAL)
}

internal fun View.allViewSelect(select: Boolean) {
  isSelected = select
  if (this is ViewGroup) {
    allSelect(isSelected)
  }
}

internal fun ViewGroup.allSelect(select: Boolean) {
  isSelected = select
  children.forEach {
    it.isSelected = select
    if (it is ViewGroup) {
      it.allSelect(select)
    }
  }
}

internal fun ViewGroup.allChildrenSelect(select: Boolean) {
  children.forEach {
    it.isSelected = select
    if (it is ViewGroup) {
      it.allSelect(select)
    }
  }
}

fun Int.sizeWhenExactly(size: Int): Int {
  return size.takeUnless { View.MeasureSpec.getMode(this) == View.MeasureSpec.EXACTLY }
    ?: View.MeasureSpec.getSize(this)
}

fun Int.measureSpecBySize(): Int =
  View.MeasureSpec.makeMeasureSpec(this, View.MeasureSpec.EXACTLY)

fun Int.measureSpecWhenExactly(size: Int): Int {
  return View.MeasureSpec.makeMeasureSpec(
    size.takeUnless { View.MeasureSpec.getMode(this) == View.MeasureSpec.EXACTLY }
      ?: View.MeasureSpec.getSize(this),
    View.MeasureSpec.EXACTLY
  )
}
