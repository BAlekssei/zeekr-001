package com.zeekr.component.toast

import android.content.Context
import android.view.View
import android.view.WindowManager
import android.widget.Toast
import com.zeekr.component.extention.logDebug
import java.lang.ref.WeakReference

object ZeekrToastObject {

  private var isShowing = false
  const val TOAST_SHORT = 0
  const val TOAST_MIDDLE = 1
  const val TOAST_LONG = 2
  private var toast: Toast? = null
  private var duration: Int = TOAST_SHORT
  private var toastWindow: WeakReference<ZeekrToastImpl>? = null
  private var windowType: Int = WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY
  private var currentViewId = 0

 /*   @JvmOverloads
    fun showWithType(
        context: Context,
        duration: Int = TOAST_SHORT,
        type: Int = WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
        viewBinder: () -> View,
    ) {
        windowType = type
        show(context, duration, viewBinder)
    }
*/

  @JvmOverloads
  fun show(
    context: Context,
    layout: View,
    duration: Int = TOAST_SHORT
  ) {
    ZeekrToastObject.duration = duration

    isShowing = true
    when (duration) {
      TOAST_SHORT -> {
        showToast(context, layout, 2000)
      }
      TOAST_MIDDLE -> {
        showToast(context, layout, 4000)
      }
      TOAST_LONG -> {
        showToast(context, layout, 6000)
      }
    }
  }

  private fun showToast(
    context: Context,
    layout: View,
    duration: Long
  ) {
    toast?.cancel()
    toastWindow?.get()?.cancelLastManager()
    toastWindow = WeakReference<ZeekrToastImpl>(ZeekrToastImpl())
    val view = layout.apply {
      id = View.generateViewId()
    }
    currentViewId = view.id
    toastWindow?.get()?.showAnimator(context, view, windowType)
    autoDismiss(view, toastWindow?.get(), duration)
  }

  private fun autoDismiss(view: View, toastWindow: ZeekrToastImpl?, delay: Long) {
    view.postDelayed({
      view.logDebug("autoDismiss view id : ${view.id}")
      if (view.id == currentViewId) {
        toastWindow?.dismiss()
        this@ZeekrToastObject.toastWindow?.clear()
      }
    }, delay)
  }
}
