package com.zeekr.component.spinner

import android.view.View
import android.view.animation.AccelerateInterpolator
import android.view.animation.Animation
import android.view.animation.DecelerateInterpolator
import android.view.animation.Transformation
import com.zeekr.component.extention.logDebug

internal const val EXPAND_ITEM_DURATION = 300L
internal fun View.spinnerLayoutExpand(spinnerHeight: Int, listView: View) {
  // if (isVisible) return
  val durations: Long = EXPAND_ITEM_DURATION
  val matchParentMeasureSpec = View.MeasureSpec.makeMeasureSpec(
    (parent as View).width,
    View.MeasureSpec.EXACTLY
  )
  val wrapContentMeasureSpec = View.MeasureSpec.makeMeasureSpec(
    0,
    View.MeasureSpec.UNSPECIFIED
  )
  measure(matchParentMeasureSpec, wrapContentMeasureSpec)
  logDebug("spinnerLayoutExpand targetHeight is $spinnerHeight")
  layoutParams.height = 1

  val animation: Animation = object : Animation() {
    override fun applyTransformation(
      interpolatedTime: Float,
      t: Transformation
    ) {
      layoutParams.height =
        if (interpolatedTime == 1f) spinnerHeight else (spinnerHeight * interpolatedTime).toInt()
          .coerceAtLeast(1)
      listView.translationY = (spinnerHeight / 2) * (interpolatedTime - 1)
      requestLayout()
    }

    override fun willChangeBounds(): Boolean {
      return true
    }
  }

// Expansion speed of 1dp/ms
  animation.duration = durations
  animation.interpolator = DecelerateInterpolator(3f)
  startAnimation(animation)
}

internal fun View.toggleLayoutCollapse(listView: View) {
  val durations: Long = EXPAND_ITEM_DURATION
  val initialHeight = measuredHeight
  val animation: Animation = object : Animation() {
    override fun applyTransformation(
      interpolatedTime: Float,
      t: Transformation
    ) {
      if (interpolatedTime == 1f) {
        layoutParams.height = initialHeight
        listView.translationY = 0f
      } else {
        layoutParams.height =
          initialHeight - (initialHeight * interpolatedTime).toInt()
        listView.translationY = -(initialHeight / 2) * interpolatedTime
        requestLayout()
      }
    }

    override fun willChangeBounds(): Boolean {
      return true
    }
  }

  // Collapse speed of 1dp/ms
  animation.duration = durations
  animation.interpolator = AccelerateInterpolator(3f)

  startAnimation(animation)
}
