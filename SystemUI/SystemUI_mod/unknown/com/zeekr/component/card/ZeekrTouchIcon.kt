package com.zeekr.component.card

import android.animation.ArgbEvaluator
import android.animation.ValueAnimator
import android.content.Context
import android.util.AttributeSet
import android.view.animation.DecelerateInterpolator
import com.google.android.material.imageview.ShapeableImageView
import com.zeekr.component.extention.logDebug
import com.zeekr.component.extention.themeColor
import com.zeekr.component.extention.themeColorStateList

class ZeekrTouchIcon @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : ShapeableImageView(context, attrs) {

  private var touchAnimation: ValueAnimator? = null

  init {
    setOnClickListener {
    }
  }

  override fun setPressed(pressed: Boolean) {
    super.setPressed(pressed)
    if (pressed) {
      setStartAnimation()
      colorStartAnimation()
      imageTintList =
        context.themeColorStateList(com.google.android.material.R.attr.colorOnPrimary)
    } else {
      setEndAnimation()
      colorEndAnimation()
      imageTintList =
        context.themeColorStateList(com.google.android.material.R.attr.colorPrimary)
    }
  }

  fun setPressedAnimation() {
    touchAnimation = ValueAnimator.ofFloat(0f, 1f).apply {
      addUpdateListener {
        val value = it.animatedValue as Float
        val scaleValue = (1 + 0.2 * value).toFloat()
        scaleX = scaleValue
        scaleY = scaleValue
        logDebug("scaleValue : $scaleValue")
      }
      duration = 300
      interpolator = DecelerateInterpolator(3f)
      start()
    }
  }

  fun setStartAnimation() {
    touchAnimation = ValueAnimator.ofFloat(0f, 1f).apply {
      addUpdateListener {
        val value = it.animatedValue as Float
        val scaleValue = (1 + 0.2 * value).toFloat()
        scaleX = scaleValue
        scaleY = scaleValue
        logDebug("scaleValue : $scaleValue")
      }
      duration = 300
      interpolator = DecelerateInterpolator(3f)
      start()
    }
  }

  fun setEndAnimation() {
    touchAnimation = ValueAnimator.ofFloat(1f, 0f).apply {
      addUpdateListener {
        val value = it.animatedValue as Float
        val scaleValue = (1 + 0.2 * value).toFloat()
        scaleX = scaleValue
        scaleY = scaleValue
        logDebug("scaleValue : $scaleValue")
      }
      duration = 300
      interpolator = DecelerateInterpolator(3f)
      start()
    }
  }

  fun colorStartAnimation() {
    val maskColor = context.themeColor(com.google.android.material.R.attr.colorSurfaceInverse)
    val argbEvaluator = ArgbEvaluator()
    val startColor = context.themeColor(com.google.android.material.R.attr.colorPrimaryInverse)
    val endColor = context.themeColor(com.google.android.material.R.attr.colorSecondary)
    ValueAnimator.ofObject(
      argbEvaluator, startColor,
      endColor
    ).apply {
      addUpdateListener {
        setBackgroundColor(it.animatedValue as Int)
      }
      interpolator = DecelerateInterpolator(3f)
      duration = 700
      start()
    }
  }

  fun colorEndAnimation() {
    val maskColor = context.themeColor(com.google.android.material.R.attr.colorSurfaceInverse)
    val argbEvaluator = ArgbEvaluator()
    val startColor = context.themeColor(com.google.android.material.R.attr.colorSecondary)
    val endColor = context.themeColor(com.google.android.material.R.attr.colorPrimaryInverse)
    ValueAnimator.ofObject(
      argbEvaluator, startColor,
      endColor
    ).apply {
      addUpdateListener {
        setBackgroundColor(it.animatedValue as Int)
      }
      interpolator = DecelerateInterpolator(3f)
      duration = 700
      start()
    }
  }
}
