package com.zeekr.component.timer

import android.content.Context
import android.util.AttributeSet
import android.view.LayoutInflater
import androidx.constraintlayout.widget.ConstraintLayout
import com.zeekr.component.databinding.ZeekrTimerDateGroupLayoutBinding

class ZeekrTimerDateGroup @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null,
) : ConstraintLayout(context, attrs) {

  val bindingLayout: ZeekrTimerDateGroupLayoutBinding =
    ZeekrTimerDateGroupLayoutBinding.inflate(LayoutInflater.from(context), this)
}
