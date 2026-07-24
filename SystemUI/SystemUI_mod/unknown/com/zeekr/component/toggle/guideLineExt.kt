package com.zeekr.component.toggle

import android.animation.ValueAnimator
import android.graphics.Rect
import android.view.View
import android.view.animation.DecelerateInterpolator
import androidx.constraintlayout.widget.ConstraintLayout
import androidx.core.animation.addListener
import androidx.core.view.isInvisible
import androidx.core.view.isVisible
import androidx.core.view.updateLayoutParams
import com.zeekr.component.R
import com.zeekr.component.databinding.ZeekrToggleLayoutBinding
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.getViewRect

internal const val MOVE_TO_SELECT_ITEM_DURATION = 167L
typealias ToggleCommonCallback = () -> Unit

internal const val IS_ANIMATOR = "is animator"
internal const val NO_ANIMATOR = "no animator"

private fun Float.currentValue(from: Int, target: Int): Int {
  return (from + ((target - from) * this)).toInt()
}

internal fun ZeekrToggleLayoutBinding.isAnimatorState(): Boolean {
  val lastTime = root.getTag(R.id.toggleAnimatorTimeKey) as Long?
  return lastTime != null && root.getTag(R.id.toggleAnimatorKey) == IS_ANIMATOR && (System.currentTimeMillis() - lastTime < MOVE_TO_SELECT_ITEM_DURATION * 2)
}

internal fun ZeekrToggleLayoutBinding.initSelectGuideLine(selectItem: View) {
  moveGuideLineNoAnimator(selectItem)
}

internal fun ZeekrToggleLayoutBinding.moveGuideLineNoAnimator(selectItem: View) {
  selectItem.waitForWidth {
    val itemRect = selectItem.getViewRect()
    logger(
      "moveGuideLineNoAnimator  selectItem ${selectItem.id}  itemRect: $itemRect"
    )
    initGuideLineNoAnimator(itemRect)
  }
}

internal fun ZeekrToggleLayoutBinding.initGuideLineNoAnimator(targetRect: Rect) {
  logger(
    "initGuideLineNoAnimator  targetRect $targetRect"
  )
  zeekrToggleGuidelineStart.setGuidelineBegin(targetRect.left)
  zeekrToggleGuidelineEnd.setGuidelineBegin(targetRect.right)
  zeekrToggleGuidelineTop.setGuidelineBegin(targetRect.top)
  zeekrToggleGuidelineBottom.setGuidelineBegin(targetRect.bottom)

  zeekrToggleSelectCard.isInvisible = true

  val shadowHeight = (zeekrToggleSelectCardShadow.tag as Int?) ?: 0
  val defaultShadowHeight = 20.dp.takeIf { targetRect.height() < 90.dp } ?: 32.dp
  zeekrToggleSelectCardShadow.updateLayoutParams<ConstraintLayout.LayoutParams> {
    width = targetRect.width() + ((targetRect.width() * 1.0f / 160.dp) * 47.dp).toInt()
    height = targetRect.height() + 46.dp
    topMargin = defaultShadowHeight.takeIf { shadowHeight < 1 } ?: shadowHeight
  }
}

internal fun ZeekrToggleLayoutBinding.moveSelectGuideLine(
  selectItem: View,
  endCallback: ToggleCommonCallback? = null
) {
  val itemRect = selectItem.getViewRect()
  logger(
    "moveSelectGuideLine   itemRect: $itemRect"
  )
  val topTargetBegin = itemRect.top
  val bottomTargetBegin = itemRect.bottom
  val startTargetBegin = itemRect.left
  val endTargetBegin = itemRect.right
  val topFromBegin = zeekrToggleGuidelineTop.top
  val bottomFromBegin = zeekrToggleGuidelineBottom.bottom
  val startFromBegin = zeekrToggleGuidelineStart.left
  val endFromBegin = zeekrToggleGuidelineEnd.right

  zeekrToggleSelectCard.isVisible = true

  ValueAnimator.ofFloat(0f, 1f).apply {
    addUpdateListener {
      val value = it.animatedValue as Float
      logger(
        "moveSelectGuideLine addUpdateListener  value $value "
      )
      val topBegin = value.currentValue(topFromBegin, topTargetBegin)
      val bottomBegin = value.currentValue(bottomFromBegin, bottomTargetBegin)
      val startBegin = value.currentValue(startFromBegin, startTargetBegin)
      val endBegin = value.currentValue(endFromBegin, endTargetBegin)
      zeekrToggleGuidelineStart.setGuidelineBegin(startBegin)
      zeekrToggleGuidelineEnd.setGuidelineBegin(endBegin)
      zeekrToggleGuidelineTop.setGuidelineBegin(topBegin)
      zeekrToggleGuidelineBottom.setGuidelineBegin(bottomBegin)
    }
    addListener(onEnd = {
      selectItem.post {
        moveGuideLineNoAnimator(selectItem)
        setNoAnimatorState()
        endCallback?.invoke()
      }
    }, onStart = {
        setAnimatorState()
      }, onCancel = {
        setNoAnimatorState()
      })
    duration = MOVE_TO_SELECT_ITEM_DURATION
    interpolator = DecelerateInterpolator(3f)
    start()
  }
}

internal fun ZeekrToggleLayoutBinding.guideLineFollowSelectView(
  selectItem: View,
  endCallback: ToggleCommonCallback? = null
) {

  ValueAnimator.ofFloat(0f, 1f).apply {
    addUpdateListener {
      val value = it.animatedValue as Float
      val itemRect = selectItem.getViewRect()
      logger(
        "guideLineFollowSelectView  value: $value itemRect: $itemRect"
      )

      val topTargetBegin = itemRect.top
      val bottomTargetBegin = itemRect.bottom
      val startTargetBegin = itemRect.left
      val endTargetBegin = itemRect.right

      zeekrToggleGuidelineStart.setGuidelineBegin(startTargetBegin)
      zeekrToggleGuidelineEnd.setGuidelineBegin(endTargetBegin)
      zeekrToggleGuidelineTop.setGuidelineBegin(topTargetBegin)
      zeekrToggleGuidelineBottom.setGuidelineBegin(bottomTargetBegin)
    }
    addListener(onEnd = {
      selectItem.post {
        moveGuideLineNoAnimator(selectItem)
        setNoAnimatorState()
        endCallback?.invoke()
      }
    }, onStart = {
        setAnimatorState()
      }, onCancel = {
        setNoAnimatorState()
      })
    duration = MOVE_TO_SELECT_ITEM_DURATION
    // interpolator = Interpolator()
    start()
  }
}

private fun ZeekrToggleLayoutBinding.setAnimatorState() {
  root.setTag(R.id.toggleAnimatorKey, IS_ANIMATOR)
  root.setTag(R.id.toggleAnimatorTimeKey, System.currentTimeMillis())
}

private fun ZeekrToggleLayoutBinding.setNoAnimatorState() {
  root.setTag(R.id.toggleAnimatorKey, NO_ANIMATOR)
  root.setTag(R.id.toggleAnimatorTimeKey, System.currentTimeMillis())
}

private fun logger(message: String) {
  // Log.i("ZeekrToggle", message)
}
