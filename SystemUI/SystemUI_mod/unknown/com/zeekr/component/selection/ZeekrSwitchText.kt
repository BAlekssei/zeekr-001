package com.zeekr.component.selection

import android.content.Context
import android.util.AttributeSet
import com.google.android.material.textview.MaterialTextView

class ZeekrSwitchText@JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : MaterialTextView(context, attrs) {

  override fun getAccessibilityClassName(): CharSequence {
    return ZeekrSwitchText::class.java.simpleName
  }
}
