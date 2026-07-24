package com.zeekr.component.button

import android.animation.Animator
import android.content.Context
import android.graphics.PixelFormat
import android.os.Build
import android.view.Gravity
import android.view.LayoutInflater
import android.view.WindowManager
import com.google.android.material.button.MaterialButton
import com.zeekr.component.extention.ZEEKR_RIPPLE_SPEED
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.getViewRect
import com.zeekr.lottie.ZeekrRippleView

fun MaterialButton.buttonRipple() {
  performClick()

  val windowManager =
    context.applicationContext.getSystemService(Context.WINDOW_SERVICE) as WindowManager
  val params = WindowManager.LayoutParams()
  params.flags = (
    WindowManager.LayoutParams.FLAG_ALT_FOCUSABLE_IM
      or WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
      or WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN
    )
  if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
    params.type = WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY
  }
  params.width = WindowManager.LayoutParams.WRAP_CONTENT
  params.height = WindowManager.LayoutParams.WRAP_CONTENT
  val rect = getViewRect()
  val screenLocation = IntArray(2)
  getLocationOnScreen(screenLocation)
  params.y = screenLocation[1] + rect.height() / 2 - 54.dp
  params.x = screenLocation[0] + rect.width() / 2 - 54.dp
  params.alpha = 1F
  params.format = PixelFormat.RGBA_8888
  params.windowAnimations = android.R.style.Animation_Translucent
  params.gravity = Gravity.TOP or Gravity.LEFT
  val inflater = context.getSystemService(Context.LAYOUT_INFLATER_SERVICE) as LayoutInflater
  val view = inflater.inflate(com.zeekr.lottie.R.layout.zeekr_ripple_layout, null)
  windowManager.addView(view, params)

  val ripple = view.findViewById<ZeekrRippleView>(com.zeekr.lottie.R.id.layout_ripple)
  ripple.speed = ZEEKR_RIPPLE_SPEED
  ripple.playAnimation()
  ripple.addAnimatorListener(object : Animator.AnimatorListener {
    override fun onAnimationRepeat(animation: Animator?) {
      windowManager.removeView(view)
    }

    override fun onAnimationEnd(animation: Animator?) {
      windowManager.removeView(view)
    }

    override fun onAnimationCancel(animation: Animator?) {
    }

    override fun onAnimationStart(animation: Animator?) {
    }
  })
}
