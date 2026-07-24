package com.zeekr.component.dialog

import android.graphics.Rect
import android.os.Build
import android.util.Log
import android.view.View
import android.view.ViewGroup
import android.view.WindowInsets
import android.view.WindowInsetsAnimation
import android.widget.EditText
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat
import androidx.core.view.children
import com.zeekr.component.extention.dp

fun View.isKeyboardShown(): Boolean {
  val softKeyboardHeight = 200.dp
  val r = Rect()
  Log.d(
    "KeyboardUtils",
    "isKeyboardShown  Rect: " +
      r
  )
  getWindowVisibleDisplayFrame(r)
  val dm = resources.displayMetrics
  val heightDiff = bottom - r.bottom
  Log.d(
    "KeyboardUtils",
    "isKeyboardShown  heightDiff: " +
      heightDiff
  )
  return heightDiff > softKeyboardHeight * dm.density
}

internal fun View.addKeyBordHeightChangeCallBack(onAction: (height: Int) -> Unit) {
  var posBottom: Int
  if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
    val cb = object : WindowInsetsAnimation.Callback(DISPATCH_MODE_STOP) {
      override fun onProgress(
        insets: WindowInsets,
        animations: MutableList<WindowInsetsAnimation>
      ): WindowInsets {
        posBottom = insets.getInsets(WindowInsetsCompat.Type.ime()).bottom +
          insets.getInsets(WindowInsetsCompat.Type.systemBars()).bottom
        onAction.invoke(posBottom)
        return insets
      }
    }
    setWindowInsetsAnimationCallback(cb)
  } else {
    ViewCompat.setOnApplyWindowInsetsListener(this) { _, insets ->
      posBottom = insets.getInsets(WindowInsetsCompat.Type.ime()).bottom +
        insets.getInsets(WindowInsetsCompat.Type.systemBars()).bottom
      onAction.invoke(posBottom)
      insets
    }
  }
}

internal fun ViewGroup.hasEditChildrenView(): Boolean {
  return children.any {
    it is EditText || (it is ViewGroup && it.hasEditChildrenView())
  }
}
