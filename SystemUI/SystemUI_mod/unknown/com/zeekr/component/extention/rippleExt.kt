package com.zeekr.component.extention

import android.view.View

internal const val ZEEKR_RIPPLE_CLICK_DELAYED = 200L
const val ZEEKR_RIPPLE_SPEED = 1.33f

internal fun View.performClickDelayed() {
  postDelayed({
    isPressed = true
    performClick()
    isPressed = false
  }, ZEEKR_RIPPLE_CLICK_DELAYED)
}
