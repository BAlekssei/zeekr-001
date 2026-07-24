package com.zeekr.component.slider

import android.content.Context
import android.graphics.drawable.Drawable
import android.util.AttributeSet
import com.google.android.material.card.MaterialCardView
import com.zeekr.component.R
import com.zeekr.component.extention.themeColorStateList

class ZeekrOsdCardView @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null,
  defStyle: Int = com.zeekr.theme.R.attr.osdCardView
) : MaterialCardView(context, attrs, defStyle) {

  private val zeekrOsdView = ZeekrOsdSlider(context, attrs)

  var progressValue: Int
    get() = zeekrOsdView.progressValue
    set(value) {
      zeekrOsdView.progressValue = value
      zeekrOsdView.invalidate()
    }

  init {
    addView(zeekrOsdView)
  }

  fun setTipDrawable(drawable: Drawable) {
    drawable.setBounds(0, 0, 28, 28)
    zeekrOsdView.tipDrawable = drawable
    zeekrOsdView.invalidate()
  }

  fun setTipText(string: String) {
    zeekrOsdView.tipText = string
    zeekrOsdView.invalidate()
  }

  fun themeApply() {
    setCardBackgroundColor(context.themeColorStateList(com.google.android.material.R.attr.colorSurfaceVariant))
    zeekrOsdView.themeApply()
  }
}
