package com.zeekr.component.button

import android.animation.Animator
import android.content.Context
import android.util.AttributeSet
import androidx.core.content.res.use
import com.airbnb.lottie.LottieDrawable
import com.zeekr.component.R
import com.zeekr.component.constant.TIMER_VALUE
import com.zeekr.lottie.toggleEffectDrawable

class ZeekrToggleEffectButton@JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : ZeekrToggleButton(context, attrs) {

  private var rawRes: Int = 0
  private var lottieDrawable: LottieDrawable? = null
  private var lottieRunning = false
  init {
    context.obtainStyledAttributes(attrs, R.styleable.ZeekrToggleEffectButton).use { typedArray ->
      rawRes = typedArray.getResourceId(R.styleable.ZeekrToggleEffectButton_effectRawId, 0)
      if (rawRes > 0) {
        context.toggleEffectDrawable(rawRes) {
          lottieDrawable = it
          icon = lottieDrawable
        }
      }
    }
  }

  override fun setChecked(checked: Boolean) {
    super.setChecked(checked)
    if (checked) {
      lottieDrawable?.run {
        playAnimation()
        addAnimatorListener(object : Animator.AnimatorListener {
          override fun onAnimationStart(animation: Animator) {
          }

          override fun onAnimationEnd(animation: Animator) {
            lottieRunning = false
          }

          override fun onAnimationCancel(animation: Animator) {
          }

          override fun onAnimationRepeat(animation: Animator) {
          }
        })
        lottieRunning = true
        refreshLoading()
      }
    } else {
      lottieDrawable?.run {
        cancelAnimation()
        removeAllAnimatorListeners()
        progress = 0f
      }
      lottieRunning = false
    }
  }

  private fun refreshLoading() {
    if (lottieRunning) {
      postDelayed({
        if (lottieRunning) {
          invalidate()
          refreshLoading()
        }
      }, TIMER_VALUE)
    }
  }

  internal override fun themeApply(changeIconTint: Boolean?) {
    super.themeApply(changeIconTint)
    if (rawRes > 0) {
      context.toggleEffectDrawable(rawRes) {
        lottieDrawable = it
        icon = lottieDrawable
      }
    }
  }
}
