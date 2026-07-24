package com.zeekr.component.card

import android.content.Context
import android.graphics.Color
import android.graphics.Outline
import android.os.Build
import android.util.AttributeSet
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.view.ViewOutlineProvider
import androidx.core.view.isVisible
import com.google.android.material.card.MaterialCardView
import com.zeekr.component.R
import com.zeekr.component.databinding.ZeekrCardPoiShadowLayoutBinding
import com.zeekr.component.extention.logDebug

class ZeekrPoiCardView @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null,
  defStyleAttr: Int = com.google.android.material.R.attr.materialCardViewFilledStyle
) : MaterialCardView(context, attrs, defStyleAttr) {

  private var clipShadowBottom: Int = 0
  private val shadowView: View by lazy {
    ZeekrCardPoiShadowLayoutBinding.inflate(
      LayoutInflater.from(context), null, false
    ).root
  }

  init {

    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
      outlineAmbientShadowColor = Color.TRANSPARENT
      outlineSpotShadowColor = Color.TRANSPARENT
    }

    val attributes = context.resources.obtainAttributes(attrs, R.styleable.ZeekrPoiCardView)
    clipShadowBottom =
      attributes.getInteger(R.styleable.ZeekrPoiCardView_zeekrCardViewShadowBottom, 0)
    attributes.recycle()

    clipShadowBottom(clipShadowBottom)
  }

  override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
    super.onLayout(changed, left, top, right, bottom)

    if (changed) {
      val cardWidth = right - left
      val cardHeight = bottom - top
      //   shadow.setBounds(-cardWidth * 77 / 200, -cardHeight * 65 / 200, cardWidth * 279 / 200, cardHeight * 291 / 200 )
      val widthDiff = 1f.takeIf { cardWidth > 200 } ?: (cardWidth.toFloat() / 200)
      val heightDiff = 1f.takeIf { cardHeight > 200 } ?: (cardHeight.toFloat() / 200)
      val shadowLeft = left - (7 * widthDiff).toInt()
      val shadowRight = right + (7 * widthDiff).toInt()
      val shadowTop = top - (3 * heightDiff).toInt()
      val shadowBottom = bottom + (11 * heightDiff).toInt()
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

  private fun clipShadowBottom(bottom: Int) {
    val viewOutlineProvider1: ViewOutlineProvider = object : ViewOutlineProvider() {
      override fun getOutline(view: View, outline: Outline) {
        outline.setRoundRect(0, 0, view.width, view.height - bottom, 0f)
      }
    }
    shadowView.outlineProvider = viewOutlineProvider1
    shadowView.clipToOutline = true
  }

  override fun onDetachedFromWindow() {
    removeShadow()
    super.onDetachedFromWindow()
  }
}
