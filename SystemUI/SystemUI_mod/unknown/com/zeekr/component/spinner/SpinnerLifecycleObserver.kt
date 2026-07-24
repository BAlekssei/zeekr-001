package com.zeekr.component.spinner

import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.LifecycleOwner

class SpinnerLifecycleObserver(private val dismiss: () -> Unit) : LifecycleEventObserver {

  override fun onStateChanged(source: LifecycleOwner, event: Lifecycle.Event) {
    if (event == Lifecycle.Event.ON_DESTROY || event == Lifecycle.Event.ON_PAUSE) {
      dismiss()
    }
  }
}
