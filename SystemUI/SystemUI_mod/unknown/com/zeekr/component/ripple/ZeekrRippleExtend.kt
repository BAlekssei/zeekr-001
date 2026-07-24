package com.zeekr.component.ripple

import android.animation.Animator
import android.annotation.SuppressLint
import android.content.Context
import android.graphics.PixelFormat
import android.graphics.Point
import android.graphics.Rect
import android.view.Gravity
import android.view.LayoutInflater
import android.view.View
import android.view.WindowManager
import com.zeekr.component.extention.ZEEKR_RIPPLE_SPEED
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.getViewRect
import com.zeekr.lottie.ZeekrRippleView

internal fun View.viewRippleRect(rect: Rect, screenLocationPoint: Point) {
  val point = Point(screenLocationPoint.x + rect.left, screenLocationPoint.y + rect.top)
  rippleInnerDisplay(point)
}

internal fun Point.hasValue(): Boolean {
  return x > 0 && y > 0
}

internal fun Rect.hasValue(): Boolean {
  return width() > 0 && height() > 0
}

internal fun View.fetchViewRect(originRect: Rect): Rect {
  val resultRect = getViewRect()
  return resultRect.takeIf { it.hasValue() } ?: originRect
}

internal fun Rect.refreshViewRect(layoutWidth: Int, layoutHeight: Int) {
  set(left, top, left + layoutWidth, top + layoutHeight)
}

internal fun View.refreshScreenLocation(rippleRect: Rect) {
  val point = fetchScreenPoint(Point(rippleRect.left, rippleRect.top))
  val rippleWidth = rippleRect.width()
  val rippleHeight = rippleRect.height()
  rippleRect.set(point.x, point.y, point.x + rippleWidth, point.y + rippleHeight)
}

internal fun View.fetchScreenPoint(originPoint: Point = Point(0, 0)): Point {
  val screenLocation = IntArray(2)
  getLocationOnScreen(screenLocation)
  val l1: Int = screenLocation[0]
  val l2: Int = screenLocation[1]
  val resultPoint = Point(l1, l2)
  // logDebug("fetchScreenPoint： resultPoint: $resultPoint  originPoint:$originPoint ")
  return resultPoint.takeIf { it.hasValue() } ?: originPoint
}

internal fun View.rippleDisplay(rippleRect: Rect) {
//  logDebug("rippleDisplay： resultPoint: $rippleRect ")
  refreshScreenLocation(rippleRect)
  // logDebug("rippleDisplay： after resultPoint: $rippleRect ")
  val pointX = rippleRect.centerX() - 54.dp
  val pointY = rippleRect.centerY() - 54.dp
  rippleInnerDisplay(Point(pointX, pointY))
}

fun View.rippleCenterDisplay(point: Point) {
  rippleInnerDisplay(Point(point.x - 54.dp, point.y - 54.dp))
}

@SuppressLint("InlinedApi")
private fun View.rippleInnerDisplay(point: Point) {
  val windowManager =
    context.applicationContext.getSystemService(Context.WINDOW_SERVICE) as WindowManager
  val params = WindowManager.LayoutParams()
  params.flags = (
    WindowManager.LayoutParams.FLAG_ALT_FOCUSABLE_IM
      or WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
      or WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN
      or WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS
    )
  params.type = WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY
  params.width = WindowManager.LayoutParams.WRAP_CONTENT
  params.height = WindowManager.LayoutParams.WRAP_CONTENT

//  logDebug("rippleDisplay： point: $point  hasFocus:${hasFocus()}  windowFocus: ${hasWindowFocus()}")

  params.x = point.x
  params.y = point.y
  params.alpha = 1F
  params.format = PixelFormat.RGBA_8888
  params.gravity = Gravity.TOP or Gravity.LEFT
  val inflater = context.getSystemService(Context.LAYOUT_INFLATER_SERVICE) as LayoutInflater
  val view = inflater.inflate(com.zeekr.lottie.R.layout.zeekr_ripple_layout, null)
  windowManager.addView(view, params)

  val ripple = view.findViewById<ZeekrRippleView>(com.zeekr.lottie.R.id.layout_ripple)
  ripple.speed = ZEEKR_RIPPLE_SPEED
  ripple.playAnimation()
  ripple.addAnimatorListener(object : Animator.AnimatorListener {
    override fun onAnimationRepeat(animation: Animator?) {
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
