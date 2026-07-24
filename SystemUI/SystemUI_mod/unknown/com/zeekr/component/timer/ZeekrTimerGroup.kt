package com.zeekr.component.timer

import android.content.Context
import android.util.AttributeSet
import android.view.LayoutInflater
import androidx.constraintlayout.widget.ConstraintLayout
import com.zeekr.component.databinding.ZeekrTimerGroupLayoutBinding

class ZeekrTimerGroup @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null,
) : ConstraintLayout(context, attrs) {

  private val zeekrNumberPicker = ZeekrNumberPicker(context, attrs)

  val bindingLayout: ZeekrTimerGroupLayoutBinding =
    ZeekrTimerGroupLayoutBinding.inflate(LayoutInflater.from(context), this)
}
