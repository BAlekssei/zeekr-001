package com.zeekr.component.toggle

import android.animation.Animator
import android.animation.AnimatorListenerAdapter
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.view.animation.Animation
import android.view.animation.DecelerateInterpolator
import android.view.animation.Transformation
import android.widget.ImageView
import androidx.core.view.isGone
import androidx.core.view.isVisible
import com.zeekr.component.databinding.ZeekrToggleExpandIconBinding
import com.zeekr.component.toggle.ZeekrToggle.Companion.EXPAND_VIEW

private const val EXPAND_ITEM_DURATION = 100L
internal fun ViewGroup.createExpandView(): ImageView {
  return ZeekrToggleExpandIconBinding.inflate(
    LayoutInflater.from(context),
    this,
    false
  ).apply {
    root.id = View.generateViewId()
    root.tag = EXPAND_VIEW
  }.root
}

internal fun View.toggleItemCollapse() {
  if (isGone) return
  val durations: Long = EXPAND_ITEM_DURATION
  val initialWidth = measuredWidth
  val animation: Animation = object : Animation() {
    override fun applyTransformation(
      interpolatedTime: Float,
      t: Transformation
    ) {
      if (interpolatedTime == 1f) {
        layoutParams.width = initialWidth
        isGone = true
      } else {
        layoutParams.width =
          initialWidth - (initialWidth * interpolatedTime).toInt()
        requestLayout()
      }
    }

    override fun willChangeBounds(): Boolean {
      return true
    }
  }

  alpha = 1.0F
  animate().alpha(0.0F).setDuration(durations)
    .setListener(object : AnimatorListenerAdapter() {
      override fun onAnimationEnd(animation: Animator) {
        visibility = View.GONE
        alpha = 1.0F
      }
    })

  // Collapse speed of 1dp/ms
  animation.duration = durations
  animation.interpolator = DecelerateInterpolator(3f)
  startAnimation(animation)
}

internal fun View.toggleItemExpand() {
  if (isVisible) return
  val durations: Long = EXPAND_ITEM_DURATION
  val matchParentMeasureSpec = View.MeasureSpec.makeMeasureSpec(
    (parent as View).height,
    View.MeasureSpec.EXACTLY
  )
  val wrapContentMeasureSpec = View.MeasureSpec.makeMeasureSpec(
    0,
    View.MeasureSpec.UNSPECIFIED
  )
  measure(wrapContentMeasureSpec, matchParentMeasureSpec)
  val targetWidth = measuredWidth

// Older versions of android (pre API 21) cancel animations for views with a height of 0.
  layoutParams.width = 1
  visibility = View.VISIBLE
  alpha = 0.0F
  animate().alpha(1.0F).setDuration(durations).setListener(null)

  val animation: Animation = object : Animation() {
    override fun applyTransformation(
      interpolatedTime: Float,
      t: Transformation
    ) {
      layoutParams.width =
        if (interpolatedTime == 1f) targetWidth else (targetWidth * interpolatedTime).toInt()
          .coerceAtLeast(1)

      // Log.d("toggle", "toggleItemExpand  interpolatedTime: $interpolatedTime   width:${layoutParams.width} ")
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

internal fun List<View>.measuredCollapseWidth(): Int {
  val widthList = map {
    val matchParentMeasureSpec = View.MeasureSpec.makeMeasureSpec(
      (it.parent as View).height,
      View.MeasureSpec.EXACTLY
    )
    val wrapContentMeasureSpec = View.MeasureSpec.makeMeasureSpec(
      0,
      View.MeasureSpec.UNSPECIFIED
    )
    it.measure(wrapContentMeasureSpec, matchParentMeasureSpec)
    it.measuredWidth
  }
  return widthList.reduce { acc, i -> acc + i }
}

internal fun List<View>.measuredExpandWidth(): Int {
  val widthList = map {
    it.measuredWidth
  }
  return widthList.reduce { acc, i -> acc + i }
}
