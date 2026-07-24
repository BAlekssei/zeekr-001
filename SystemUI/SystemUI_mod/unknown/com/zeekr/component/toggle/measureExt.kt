package com.zeekr.component.toggle

import android.view.View
import android.view.ViewTreeObserver

internal fun View.measureHorizontalWidth(): Int {
  val wrapContentMeasureSpec = View.MeasureSpec.makeMeasureSpec(
    0,
    View.MeasureSpec.UNSPECIFIED
  )
  measure(wrapContentMeasureSpec, wrapContentMeasureSpec)
  return measuredWidth
}

internal fun View.measureHorizontalHeight(): Int {
  val wrapContentMeasureSpec = View.MeasureSpec.makeMeasureSpec(
    0,
    View.MeasureSpec.UNSPECIFIED
  )
  measure(wrapContentMeasureSpec, wrapContentMeasureSpec)
  return measuredHeight
}

internal fun View.measureVerticalWidth(): Int {
  val wrapContentMeasureSpec = View.MeasureSpec.makeMeasureSpec(
    0,
    View.MeasureSpec.UNSPECIFIED
  )
  measure(wrapContentMeasureSpec, wrapContentMeasureSpec)
  return measuredWidth
}

internal fun View.measureVerticalHeight(): Int {
  val wrapContentMeasureSpec = View.MeasureSpec.makeMeasureSpec(
    0,
    View.MeasureSpec.UNSPECIFIED
  )
  measure(wrapContentMeasureSpec, wrapContentMeasureSpec)
  return measuredHeight
}

internal fun <T : View> T.waitForWidth(block: T.() -> Unit) {
  if (measuredWidth > 0 && measuredHeight > 0) {
    this.block()
    return
  }

  viewTreeObserver.addOnGlobalLayoutListener(object : ViewTreeObserver.OnGlobalLayoutListener {
    var lastWidth: Int? = null

    override fun onGlobalLayout() {
      if (lastWidth != null && lastWidth == measuredWidth) {
        viewTreeObserver.removeOnGlobalLayoutListener(this)
        return
      }
      if (measuredWidth > 0 && measuredHeight > 0 && lastWidth != measuredWidth) {
        lastWidth = measuredWidth
        this@waitForWidth.block()
      }
    }
  })
}

internal fun <T : View> T.waitForHeight(block: T.() -> Unit) {
  if (measuredWidth > 0 && measuredHeight > 0) {
    this.block()
    return
  }

  viewTreeObserver.addOnGlobalLayoutListener(object : ViewTreeObserver.OnGlobalLayoutListener {
    var lastHeight: Int? = null

    override fun onGlobalLayout() {
      if (lastHeight != null && lastHeight == measuredHeight) {
        viewTreeObserver.removeOnGlobalLayoutListener(this)
        return
      }
      if (measuredWidth > 0 && measuredHeight > 0 && lastHeight != measuredHeight) {
        lastHeight = measuredHeight
        this@waitForHeight.block()
      }
    }
  })
}
