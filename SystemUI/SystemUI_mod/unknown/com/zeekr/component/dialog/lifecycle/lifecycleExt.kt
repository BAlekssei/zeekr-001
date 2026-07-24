package com.zeekr.component.dialog.lifecycle

import androidx.lifecycle.LifecycleOwner
import com.zeekr.component.dialog.ZeekrDialogCreate

internal fun ZeekrDialogCreate.zeekrLifecycleOwner(owner: LifecycleOwner): ZeekrDialogCreate {
  owner.lifecycle.addObserver(dialogLifecycleObserver)
  return this
}
