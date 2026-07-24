package com.zeekr.component.window

import android.animation.ValueAnimator
import android.annotation.SuppressLint
import android.content.Context
import android.graphics.PixelFormat
import android.util.Log
import android.view.Gravity
import android.view.View
import android.view.WindowManager
import android.view.animation.DecelerateInterpolator
import androidx.core.animation.doOnEnd
import com.zeekr.component.extention.dp

class ZeekrActionSheet(private val context: Context) {

  private var isShow: Boolean = false
  private var floatView: View? = null
  private var animator: ValueAnimator? = null
  private var animatorDismiss: ValueAnimator? = null
  private lateinit var params: WindowManager.LayoutParams
  private lateinit var windowManager: WindowManager
  private var placeX = 0.dp

  @SuppressLint("ObjectAnimatorBinding")
  fun show(
    context: Context,
    view: View,
    placeX: Int = 0,
    placeY: Int = 80,
    type: Int = WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY
  ) {
    floatView = view
    windowManager =
      context.applicationContext.getSystemService(Context.WINDOW_SERVICE) as WindowManager
    params = WindowManager.LayoutParams()
    params.type = type
    params.flags = (
      WindowManager.LayoutParams.FLAG_ALT_FOCUSABLE_IM
        or WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
        or WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN
      )
    params.width = WindowManager.LayoutParams.WRAP_CONTENT
    params.height = WindowManager.LayoutParams.WRAP_CONTENT
    this.placeX = placeX.dp
    params.x = placeX.dp - 150.dp
    params.y = placeY.dp
    params.format = PixelFormat.RGBA_8888
    params.gravity = Gravity.CENTER or Gravity.LEFT
    windowManager.addView(view, params)

    animator = ValueAnimator.ofInt(placeX - 150.dp, placeX).apply {
      addUpdateListener {
        val value = it.animatedValue as Int
        params.x = value.dp
        if (view.isAttachedToWindow) {
          windowManager.updateViewLayout(view, params)
        }
      }
      interpolator = DecelerateInterpolator(3f)
      duration = 600
      start()
    }
    isShow = true
  }

  fun dismiss() {
    Log.i("ZeekrToastLong", "dismiss:  isShow: $isShow")
    if (isShow) {
      isShow = false
      animator?.cancel()
      animatorDismiss?.cancel()
      if (floatView?.isAttachedToWindow == true) {
        windowManager.removeView(floatView)
      }
    }
  }

  fun dismissAnimation() {
    Log.i("ZeekrToastLong", "dismissAnimation: ")
    if (isShow) {
      isShow = false
      animatorDismiss = ValueAnimator.ofInt(placeX, placeX - 150.dp).apply {
        addUpdateListener {
          val value = it.animatedValue as Int
          params.x = value
          if (floatView?.isAttachedToWindow == true) {
            windowManager.updateViewLayout(floatView, params)
          } else {
            cancel()
          }
        }
        doOnEnd {
          windowManager.removeView(floatView)
        }
        interpolator = DecelerateInterpolator(3f)
        duration = 600
        start()
      }
    }
  }
}
