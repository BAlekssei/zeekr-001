package com.zeekr.component.dialog.lifecycle
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.LifecycleOwner

internal class DialogLifecycleObserver(private val dismiss: () -> Unit, private val onResume: () -> Unit) : LifecycleEventObserver {

  override fun onStateChanged(source: LifecycleOwner, event: Lifecycle.Event) {
    if (event == Lifecycle.Event.ON_DESTROY/* || event == Lifecycle.Event.ON_PAUSE*/) {
      dismiss()
    } else if (event == Lifecycle.Event.ON_RESUME) {
      onResume()
    }
  }
}
