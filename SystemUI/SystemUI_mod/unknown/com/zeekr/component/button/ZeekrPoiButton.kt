package com.zeekr.component.button

import android.content.Context
import android.util.AttributeSet
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.core.view.isVisible
import com.zeekr.component.databinding.ZeekrPoiButtonShadowLayoutBinding
import com.zeekr.component.extention.logDebug

class ZeekrPoiButton @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : ZeekrToggleButton(context, attrs) {

  private val shadowView: View by lazy {
    ZeekrPoiButtonShadowLayoutBinding.inflate(
      LayoutInflater.from(context),
      null,
      false
    ).root
  }

  override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
    super.onLayout(changed, left, top, right, bottom)

    if (changed) {
      val cardWidth = right - left
      val cardHeight = bottom - top
      //   shadow.setBounds(-cardWidth * 77 / 200, -cardHeight * 65 / 200, cardWidth * 279 / 200, cardHeight * 291 / 200 )
      val widthDiff = 1f.takeIf { cardWidth > 80 } ?: (cardWidth.toFloat() / 80)
      val heightDiff = 1f.takeIf { cardHeight > 80 } ?: (cardHeight.toFloat() / 80)
      val shadowLeft = left - (45 * widthDiff).toInt()
      val shadowRight = right + (45 * widthDiff).toInt()
      val shadowTop = top - (15 * heightDiff).toInt()
      val shadowBottom = bottom + (61 * heightDiff).toInt()
      logDebug(" shadow $shadowLeft $shadowRight   $shadowTop  $shadowBottom   ")
      shadowView.layout(shadowLeft, shadowTop, shadowRight, shadowBottom)
      takeIf { isVisible }?.addShadow()
    }
  }

  override fun setVisibility(visibility: Int) {
    super.setVisibility(visibility)
    takeIf { isVisible }?.addShadow() ?: removeShadow()
  }

  private fun addShadow() {
    (parent as ViewGroup?)?.overlay?.add(shadowView)
  }

  private fun removeShadow() {
    (parent as ViewGroup?)?.overlay?.remove(shadowView)
  }
}
