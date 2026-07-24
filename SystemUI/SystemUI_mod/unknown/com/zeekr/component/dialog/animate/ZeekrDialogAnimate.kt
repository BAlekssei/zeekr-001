package com.zeekr.component.dialog.animate

import android.animation.ValueAnimator
import android.graphics.Outline
import android.view.View
import android.view.ViewOutlineProvider
import com.zeekr.component.dialog.common.DIALOG_ANIMATE_DOWN
import com.zeekr.component.dialog.common.DIALOG_ANIMATE_SCALE
import com.zeekr.component.dialog.common.DIALOG_ANIMATE_UP
import com.zeekr.component.dialog.common.DialogParam
import com.zeekr.component.extention.logDebug

internal sealed class ZeekrDialogAnimate {

  internal lateinit var contentView: View
  internal lateinit var dialogParam: DialogParam
  abstract fun showAnimate()
  abstract fun hideAnimate()

  internal fun View.clipVertical(clipPercent: Float) {
    outlineProvider = object : ViewOutlineProvider() {
      override fun getOutline(view: View, outline: Outline) {
        val clipDim = (clipPercent * view.height).toInt() / 2
        outline.setRoundRect(
          0, clipDim, view.width, view.height - clipDim, CLIP_RADIUS
        )
      }
    }
  }

  class Scale : ZeekrDialogAnimate() {
    override fun showAnimate() {
      with(contentView) {
        scaleX = dialogParam.startScale
        scaleY = dialogParam.startScale
        alpha = 0f
        pivotX = measuredWidth / 2f
        pivotY = measuredHeight / 2f
      }
      contentView.animate().scaleX(1f).scaleY(1f).alpha(1f)
        .setDuration(dialogParam.animationDuration)
        .setInterpolator(dialogParam.showInterpolator)
        .withLayer()
        .start()
    }

    override fun hideAnimate() {
      with(contentView) {
        pivotX = measuredWidth / 2f
        pivotY = measuredHeight / 2f
      }
      contentView.animate().scaleX(SCALE_X).scaleY(SCALE_Y)
        .alpha(0f).setDuration(dialogParam.animationDuration)
        .setInterpolator(dialogParam.dismissInterpolator)
        .withLayer()
        .start()
    }
  }

  class DropDown : ZeekrDialogAnimate() {
    override fun showAnimate() {
      contentView.logDebug("contentView.height   ${contentView.height}")
      contentView.post {
        contentView.alpha = 1f
        ValueAnimator.ofFloat(1f, 0f).apply {
          addUpdateListener {
            val value = it.animatedValue as Float
            contentView.clipVertical(value)
            contentView.translationY = -value * contentView.height / 2
          }
          interpolator = dialogParam.showInterpolator
          duration = dialogParam.animationDuration
          start()
        }
      }
    }

    override fun hideAnimate() {
      ValueAnimator.ofFloat(0f, 1f).apply {
        addUpdateListener {
          val value = it.animatedValue as Float
          contentView.clipVertical(value)
          contentView.translationY = - value * contentView.height / 2
        }
        interpolator = dialogParam.dismissInterpolator
        duration = dialogParam.animationDuration
        start()
      }
    }
  }

  class DropUp : ZeekrDialogAnimate() {
    override fun showAnimate() {
      contentView.alpha = 1f
      ValueAnimator.ofFloat(1f, 0f).apply {
        addUpdateListener {
          val value = it.animatedValue as Float
          contentView.clipVertical(value)
          contentView.translationY = value * contentView.height / 2
        }
        interpolator = dialogParam.showInterpolator
        duration = dialogParam.animationDuration
        start()
      }
    }

    override fun hideAnimate() {
      ValueAnimator.ofFloat(0f, 1f).apply {
        addUpdateListener {
          val value = it.animatedValue as Float
          contentView.clipVertical(value)
          contentView.translationY = value * contentView.height / 2
        }
        interpolator = dialogParam.dismissInterpolator
        duration = dialogParam.animationDuration
        start()
      }
    }
  }

  companion object {
    private const val SCALE_X = 0.8F
    private const val SCALE_Y = 0.8F
    private const val CLIP_RADIUS = 8f
    fun createDialogAnimate(contentView: View, dialogParam: DialogParam): ZeekrDialogAnimate {
      return when (dialogParam.animationStyle) {
        DIALOG_ANIMATE_SCALE -> Scale()
        DIALOG_ANIMATE_DOWN -> DropDown()
        DIALOG_ANIMATE_UP -> DropUp()
        else -> Scale()
      }.apply {
        this.contentView = contentView
        this.dialogParam = dialogParam
      }
    }
  }
}
