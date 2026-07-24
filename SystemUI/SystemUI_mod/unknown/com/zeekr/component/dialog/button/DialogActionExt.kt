package com.zeekr.component.dialog.button

import androidx.core.view.isGone
import androidx.core.view.isVisible
import com.zeekr.component.dialog.ZeekrDialogLayout

/** Returns true if the dialog has visible action buttons. */
internal fun ZeekrDialogLayout.hasActionButtons(): Boolean {
  return false
}

/** Returns true if the given button is visible in the dialog. */
internal fun ZeekrDialogLayout.hasActionButton(which: WhichButton) = getActionButton(which).isVisible

/** Enables or disables an action button. */
internal fun ZeekrDialogLayout.setActionButtonEnabled(
  which: WhichButton,
  enabled: Boolean
) {
  getActionButton(which).isEnabled = enabled
}

/** Returns true if the given button is visible in the dialog. */
internal fun ZeekrDialogLayout.hasTwoButton() =
  getActionButton(WhichButton.POSITIVE).isVisible &&
    getActionButton(WhichButton.NEGATIVE).isVisible

internal fun ZeekrDialogLayout.hasNoButton() =
  getActionButton(WhichButton.POSITIVE).isGone &&
    getActionButton(WhichButton.NEGATIVE).isGone
