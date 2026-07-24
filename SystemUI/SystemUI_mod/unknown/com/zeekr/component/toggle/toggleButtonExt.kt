package com.zeekr.component.toggle

import android.util.Log
import androidx.annotation.DrawableRes
import androidx.core.content.ContextCompat.getDrawable
import com.zeekr.component.R
import com.zeekr.component.button.ZeekrToggleButton
import com.zeekr.component.extention.getViewRect

fun ZeekrToggleButton.addRightIcon(
  marginEnd: Int,
  @DrawableRes iconRes: Int = R.drawable.ic_toggle_button_right
) {

  waitForWidth {
    val drawable = getDrawable(context, iconRes)?.mutate()!!
    val rect = getViewRect()
//        var width = rect.width()
//        var height = rect.height()
    val drawableWidth = drawable.intrinsicWidth
    val drawableHeight = drawable.intrinsicHeight
    val boundLeft = rect.width() - (drawableWidth + marginEnd)
    val boundRight = rect.width() - marginEnd
    val boundTop = (rect.height() - drawableHeight) / 2
    val boundBottom = boundTop + drawableHeight
    Log.i("rect", "left $left top $top bottom$bottom  right$right ")
    drawable.setBounds(boundLeft, boundTop, boundRight, boundBottom)
    overlay.add(drawable)
  }
}
