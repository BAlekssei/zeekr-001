package com.zeekr.component.toast

import android.animation.Animator
import android.animation.ValueAnimator
import android.annotation.SuppressLint
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.graphics.PixelFormat
import android.os.Build
import android.view.Gravity
import android.view.View
import android.view.WindowManager
import android.view.animation.AnticipateOvershootInterpolator
import com.zeekr.component.R
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.logDebug

internal class ZeekrToastImpl {

  private lateinit var windowManager: WindowManager
  private var isShow: Boolean = false
  private var toastView: View? = null
  private var animator: ValueAnimator? = null
  private var animatorDismiss: ValueAnimator? = null
  private lateinit var params: WindowManager.LayoutParams
  private var context: Context? = null

  @SuppressLint("ObjectAnimatorBinding")
  fun showAnimator(
    context: Context,
    view: View,
    type: Int = WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY
  ) {
    logger(" showAnimator ")
    this.context = context
    toastView = view
    windowManager = context.getSystemService(Context.WINDOW_SERVICE) as WindowManager
    params = WindowManager.LayoutParams()
    params.type = type
    params.flags =
      (WindowManager.LayoutParams.FLAG_ALT_FOCUSABLE_IM or WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE or WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN)

/*    val messageView = view.findViewById<TextView>(R.id.zeekr_toast_message)
    val line = messageView.lineCount
    val width = messageView.measuredWidth
    val length = messageView.length()*/

    params.width = WindowManager.LayoutParams.WRAP_CONTENT
    params.height = WindowManager.LayoutParams.WRAP_CONTENT
    params.y = 90.dp
    params.format = PixelFormat.RGBA_8888
    params.gravity = Gravity.TOP or Gravity.CENTER
    params.windowAnimations = R.style.ZeekrToastStyle
    isShow = true
    windowManager.addView(view, params)
//    if (Build.VERSION.SDK_INT > 28) {
//      //   params.windowAnimations = R.style.ZeekrWindowManagerAnimator
//      //  windowManager.addView(view, params)
//    } else {
//      windowManager.addView(view, params)
//      animator = ValueAnimator.ofFloat(0f, 1f).apply {
//        addUpdateListener {
//          val value = it.animatedValue as Float
//          val result =
//            (1.0f - ((1.0f - value).toDouble()).pow((2 * 3).toDouble())).toFloat()
//          params.y = (result * 80.dp).toInt()
//          if (view.isAttachedToWindow) {
//            windowManager.updateViewLayout(view, params)
//          }
//        }
//        duration = 500
//        start()
//      }
//    }
    val filter = IntentFilter()
    filter.addAction("ACTION_DAY_NIGHT_CHANGE")
    context.registerReceiver(receiver, filter)
  }

  fun dismiss() {
    logger(" dismiss:  isShow: $isShow  ")
    if (isShow) {
//      if (Build.VERSION.SDK_INT > 28) {
//        removeWindowManager()
//      } else {
//        dismissAnimation()
//      }
      removeWindowManager()
    }
    isShow = false
  }

  fun cancelLastManager() {
    if (isShow && Build.VERSION.SDK_INT > 28) {
      // params.windowAnimations = R.style.ZeekrWindowManagerNoAnimator
      // windowManager.updateViewLayout(toastView, params)
    }
    toastView?.let {
      try {
        windowManager.removeViewImmediate(it)
      } catch (_: Exception) {}
    }
  }

  private fun removeWindowManager() {
    toastView?.let {
      logger("removeWindowManager view")
      it.removeCallbacks(null)
      try {
        windowManager.removeView(it)
      } catch (_: Exception) {}
      animator?.cancel()
      toastView = null
      isShow = false
    }
    if (receiver != null) {
      // Log.i("ZeekrDialogLayout", "unregisterReceiver")
      try {
        context?.unregisterReceiver(receiver)
      } catch (_: Exception) {}
      receiver = null
    }
  }

  private fun dismissAnimation() {
    logger(" dismissAnimation ")
    animatorDismiss = ValueAnimator.ofFloat(1f, 0f).apply {
      addUpdateListener {
        val value = it.animatedValue as Float
        params.alpha = value
        // val scaleValue = 0.8f + value * 0.2f
        toastView?.run {
          scaleY = value
          scaleX = value
        }

//        if (toastView?.isAttachedToWindow == true) {
//          windowManager.updateViewLayout(toastView, params)
//        }
      }
      addListener(object : Animator.AnimatorListener {
        override fun onAnimationStart(animation: Animator?, isReverse: Boolean) {
          onAnimationStart(animation)
        }

        override fun onAnimationEnd(animation: Animator?, isReverse: Boolean) {
          onAnimationEnd(animation)
        }

        override fun onAnimationEnd(animation: Animator?) {
          removeWindowManager()
        }

        override fun onAnimationCancel(animation: Animator?) {
        }

        override fun onAnimationRepeat(animation: Animator?) {
        }

        override fun onAnimationStart(animation: Animator?) {
        }
      })
      interpolator = AnticipateOvershootInterpolator(0f)
      duration = 300
      start()
    }
  }

  private fun logger(message: String) {
    toastView?.run {
      logDebug("$message")
    }
  }

  private var receiver: BroadcastReceiver? = object : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
      logger("onReceive")
      if ("ACTION_DAY_NIGHT_CHANGE" == intent.action) {
        removeWindowManager()
      }
    }
  }
}
