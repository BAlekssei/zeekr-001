package com.zeekr.component.dialog

import android.view.animation.DecelerateInterpolator
import android.view.animation.Interpolator
import com.zeekr.component.dialog.button.WhichButton
import com.zeekr.component.dialog.common.ZeekrFullDialog

class ZeekrDialogAction(
  val dialogLayout: ZeekrDialogLayout,
) {

  var dialog: ZeekrFullDialog? = null
  val isShowing: Boolean
    get() = dialog?.isShowing == true

  fun getActionButton(which: WhichButton) = dialogLayout.getActionButton(which)

  fun dismiss() {
    dialog?.dismissDialog()
  }

  fun show() {
    if (dialog?.isShowing == false) {
      dialog?.show()
    }
  }

  fun hide() {
    if (dialog?.isShowing == true) {
      dialog?.hide()
    }
  }

  fun dialogBackgroundMove(positionX: Int) {
    if (dialog?.isShowing == true) {
      dialog?.dialogBackgroundMove(positionX)
    }
  }

  fun dialogAnimationMove(
    positionX: Int,
    animationInterpolator: Interpolator = DecelerateInterpolator(INTERPOLATOR_VALUE),
    animationTime: Long = 800L
  ) {
    if (dialog?.isShowing == true) {
      dialog?.dialogAnimationMove(positionX, animationInterpolator, animationTime)
    }
  }

  companion object {
    private const val INTERPOLATOR_VALUE = 3f
  }
}
