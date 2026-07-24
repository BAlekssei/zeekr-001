package com.zeekr.component.slider

import android.content.Context
import android.util.AttributeSet
import android.view.LayoutInflater
import androidx.constraintlayout.widget.ConstraintLayout
import com.zeekr.component.databinding.ZeekrPlayGroupLayoutBinding

class ZeekrPlayGroup @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : ConstraintLayout(context, attrs) {

  val binding = ZeekrPlayGroupLayoutBinding.inflate(
    LayoutInflater.from(context), this
  )

  override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
    super.onMeasure(widthMeasureSpec, heightMeasureSpec)
  }
}
