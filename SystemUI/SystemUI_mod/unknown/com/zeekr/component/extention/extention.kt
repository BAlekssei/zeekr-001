package com.zeekr.component.extention

import android.content.Context
import android.content.res.Resources
import android.graphics.Rect
import android.view.View
import androidx.annotation.DimenRes

inline val Float.dp
  get() = (
    (Resources.getSystem().displayMetrics.density) *
      this + 0.5f
    ).toInt()

inline val Int.dp
  get() = toFloat().dp

inline val Int.dpf
  get() = dp.toFloat()

inline val Float.dpf
  get() = dp.toFloat()

fun View.getViewRect(): Rect {
  return Rect(
    left, top, right,
    bottom
  )
}

fun Context.getDimen(@DimenRes dimenRes: Int) =
  resources.getDimensionPixelSize(dimenRes)

fun Context.getDimenFloat(@DimenRes dimenRes: Int) = getDimen(dimenRes).toFloat()
