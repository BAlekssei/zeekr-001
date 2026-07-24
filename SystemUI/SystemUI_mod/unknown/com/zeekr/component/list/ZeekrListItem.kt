package com.zeekr.component.list

import android.animation.Animator
import android.animation.AnimatorListenerAdapter
import android.animation.ObjectAnimator
import android.content.Context
import android.graphics.drawable.Drawable
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.view.animation.Animation
import android.view.animation.Transformation
import androidx.core.view.isGone
import com.zeekr.component.R
import com.zeekr.component.databinding.ZeekrListItemContactExpandItemBinding
import com.zeekr.component.databinding.ZeekrListItemContactLayoutBinding
import com.zeekr.component.databinding.ZeekrListItemPhoneLayoutBinding
import com.zeekr.component.extention.getDrawableOrNull

object ZeekrListItem {

  fun getContactItem(context: Context, parent: ViewGroup) =
    ZeekrListItemContactLayoutBinding.inflate(
      LayoutInflater.from(context),
      parent,
      false
    )

  fun setExpandListener(
    context: Context,
    binding: ZeekrListItemContactLayoutBinding,
    listener: ((Boolean) -> Unit)? = null
  ) {
    binding.run {
      val arrowDrawable: Drawable? =
        context.getDrawableOrNull(R.drawable.zeekr_spinner_expand)?.mutate()
      zeekrListContactLayoutExpand.setImageDrawable(arrowDrawable)
      zeekrListItemContactTop.setOnClickListener {
        val show = zeekrListItemContactBottom.isGone
        animateArrow(arrowDrawable, show)
        listener?.invoke(show)
        if (show) {
          expand(zeekrListItemContactBottom)
        } else {
          collapse(zeekrListItemContactBottom)
        }
      }

//      binding.zeekrListCardView.waitForHeight {
//        binding.zeekrListShadow.updateLayoutParams<ConstraintLayout.LayoutParams> {
//          width = 400.dp
//          height = 150.dp
//          topMargin = 3.dp
//        }
//      }
    }
  }

  fun contactBindingAddItems(
    binding: ZeekrListItemContactLayoutBinding,
    expandCount: Int,
    itemBinder: ((Int, ZeekrListItemContactExpandItemBinding) -> Unit)
  ) {
    binding.run {
      val ids = mutableListOf<Int>()
      0.until(expandCount).forEach { index ->
        zeekrListItemContactBottom.addView(
          ZeekrListItemContactExpandItemBinding.inflate(
            LayoutInflater.from(root.context),
            zeekrListItemContactBottom,
            false
          ).apply {
            root.id = View.generateViewId()
            ids.add(root.id)
            itemBinder.invoke(index, this)
          }.root
        )
      }
      zeekrListItemContactFlow.referencedIds = ids.toIntArray()
    }
  }

  fun getPhoneItem(context: Context, parent: ViewGroup) =
    ZeekrListItemPhoneLayoutBinding.inflate(
      LayoutInflater.from(context),
      parent,
      false
    )

  private fun animateArrow(arrowDrawable: Drawable?, shouldRotateUp: Boolean) {
    val start = if (shouldRotateUp) 0 else 10000
    val end = if (shouldRotateUp) 10000 else 0
    ObjectAnimator.ofInt(arrowDrawable, "level", start, end).apply {
      duration = 250L
      start()
    }
  }

  private fun expand(v: View) {
    if (v.visibility == View.VISIBLE) return
    val durations: Long
    val matchParentMeasureSpec = View.MeasureSpec.makeMeasureSpec(
      (v.parent as View).width,
      View.MeasureSpec.EXACTLY
    )
    val wrapContentMeasureSpec = View.MeasureSpec.makeMeasureSpec(
      0,
      View.MeasureSpec.UNSPECIFIED
    )
    v.measure(matchParentMeasureSpec, wrapContentMeasureSpec)
    val targetHeight = v.measuredHeight

// Older versions of android (pre API 21) cancel animations for views with a height of 0.
    v.layoutParams.height = 1
    v.visibility = View.VISIBLE
    durations = (
      (
        targetHeight / v.context.resources
          .displayMetrics.density
        )
      ).toLong()

    v.alpha = 0.0F
    v.visibility = View.VISIBLE
    v.animate().alpha(1.0F).setDuration(durations).setListener(null)

    val a: Animation = object : Animation() {
      override fun applyTransformation(
        interpolatedTime: Float,
        t: Transformation
      ) {
        v.layoutParams.height =
          if (interpolatedTime == 1f) ViewGroup.LayoutParams.WRAP_CONTENT else (targetHeight * interpolatedTime).toInt()
        v.requestLayout()
      }

      override fun willChangeBounds(): Boolean {
        return true
      }
    }

// Expansion speed of 1dp/ms
    a.duration = durations
    v.startAnimation(a)
  }

  private fun collapse(v: View) {
    if (v.visibility == View.GONE) return
    val durations: Long
    val initialHeight = v.measuredHeight
    val a: Animation = object : Animation() {
      override fun applyTransformation(
        interpolatedTime: Float,
        t: Transformation
      ) {
        if (interpolatedTime == 1f) {
          v.visibility = View.GONE
        } else {
          v.layoutParams.height =
            initialHeight - (initialHeight * interpolatedTime).toInt()
          v.requestLayout()
        }
      }

      override fun willChangeBounds(): Boolean {
        return true
      }
    }

    durations = (
      initialHeight / v.context.resources
        .displayMetrics.density
      ).toLong()

    v.alpha = 1.0F
    v.animate().alpha(0.0F).setDuration(durations)
      .setListener(object : AnimatorListenerAdapter() {
        override fun onAnimationEnd(animation: Animator) {
          v.visibility = View.GONE
          v.alpha = 1.0F
        }
      })

    // Collapse speed of 1dp/ms
    a.duration = durations
    v.startAnimation(a)
  }
}
