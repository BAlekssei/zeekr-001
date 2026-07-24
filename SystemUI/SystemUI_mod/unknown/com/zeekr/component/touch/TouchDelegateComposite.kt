package com.zeekr.component.touch

import android.view.MotionEvent
import android.view.TouchDelegate
import android.view.View
import androidx.core.view.isVisible
import com.zeekr.component.extention.logDebug

class TouchDelegateComposite(private val mParent: View) : TouchDelegate(null, mParent) {

  private val mDelegates: MutableMap<Int, TouchDelegate> = mutableMapOf()

  fun addDelegate(id: Int, delegate: TouchDelegate) {
    mDelegates[id] = delegate
  }

  fun build() {
    mParent.touchDelegate = this
  }

  override fun onTouchEvent(event: MotionEvent): Boolean {
    var res = false
    val x = event.x
    val y = event.y
    mDelegates.forEach { (viewId, delegate) ->
      if (mParent.findViewById<View>(viewId).shouldExpand()) {
        event.setLocation(x, y)
        res = delegate.onTouchEvent(event)
        mParent.logDebug(" viewId: $viewId   res: $res  x: $x  y: $y ")
        if (res) {
          return true
        }
      }
    }
    return res
  }

  private fun View?.shouldExpand() = this != null && isVisible && tag != "not expand hot"
}
