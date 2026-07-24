package com.zeekr.component.dialog.common

import android.graphics.Rect
import android.graphics.drawable.Drawable
import android.view.ViewGroup
import android.view.ViewGroup.LayoutParams
import android.view.animation.AnticipateInterpolator
import android.view.animation.Interpolator
import android.view.animation.OvershootInterpolator
import com.zeekr.component.extention.dp

data class DialogParam @JvmOverloads constructor(
  @JvmField
  val blurBackground: Boolean = true,
  @JvmField
  val hasShadowBg: Boolean = true,
  @JvmField
  val hasShadow: Boolean = true,
  @JvmField
  val isDismissOnBackPressed: Boolean = true,
  @JvmField
  val isDismissOnTouchOutside: Boolean = true,
  @JvmField
  val isTouchThrough: Boolean = false,
  @JvmField
  val windowType: Int = NOT_SET_INT_VALUE,
  @JvmField
  val backgroundMoveValue: Int = 0,
  @JvmField
  val fullScreen: Boolean = false,
  @JvmField
  val dayNightClose: Boolean = true,
  @JvmField
  val dismissNoAnimator: Boolean = false,
  @JvmField
  val customShadowBg: Drawable? = null,
  @JvmField
  val offsetX: Int = NOT_SET_INT_VALUE,
  @JvmField
  val offsetY: Int = NOT_SET_INT_VALUE,
  @JvmField
  val positionX: Int = NOT_SET_INT_VALUE,
  @JvmField
  val positionY: Int = NOT_SET_INT_VALUE,
  @JvmField
  val notDismissWhenTouchInArea: List<Rect>? = null,
  @JvmField
  val animationStyle: Int = DIALOG_ANIMATE_SCALE,
  @JvmField
  val dialogSpeciallyWidth: Int = ViewGroup.LayoutParams.WRAP_CONTENT,
  @JvmField
  val dialogSpeciallyHeight: Int = ViewGroup.LayoutParams.WRAP_CONTENT,
  @JvmField
  val startScale: Float = 0.8f,
  @JvmField
  val animationDuration: Long = 400L,
  @JvmField
  val showInterpolator: Interpolator = OvershootInterpolator(1f),
  @JvmField
  val dismissInterpolator: Interpolator = AnticipateInterpolator(1f)
) {
  @ZeekrDialogSize
  internal var dialogSize: Int = DIALOG_SIZE_SMALL

  internal val dialogWidth: Int
    get() = when (dialogSize) {
      DIALOG_SIZE_SMALL -> 808.dp
      DIALOG_SIZE_MEDIUM -> 1208.dp
      DIALOG_SIZE_SPECIALLY -> dialogSpeciallyWidth
      else -> ViewGroup.LayoutParams.WRAP_CONTENT
    }
  internal val dialogHeight: Int
    get() = when (dialogSize) {
      DIALOG_SIZE_SMALL -> LayoutParams.WRAP_CONTENT
      DIALOG_SIZE_MEDIUM -> 600.dp
      DIALOG_SIZE_SPECIALLY -> dialogSpeciallyHeight
      else -> ViewGroup.LayoutParams.WRAP_CONTENT
    }
}
