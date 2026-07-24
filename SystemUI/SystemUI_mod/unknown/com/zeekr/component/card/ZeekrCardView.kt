package com.zeekr.component.card

import android.content.Context
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Rect
import android.graphics.drawable.Drawable
import android.os.Build
import android.util.AttributeSet
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.core.view.isVisible
import com.google.android.material.card.MaterialCardView
import com.zeekr.component.R
import com.zeekr.component.databinding.ZeekrCardViewShadowLayoutBinding
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.dpf
import com.zeekr.component.extention.logInfo

class ZeekrCardView @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null,
  defStyleAttr: Int = com.google.android.material.R.attr.materialCardViewFilledStyle
) : MaterialCardView(context, attrs, defStyleAttr) {

  private var shadowDrawable: Drawable? = null
  private var viewRect: Rect = Rect()

  init {
    clipToPadding = false
    clipChildren = false
    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
      outlineAmbientShadowColor = Color.TRANSPARENT
      outlineSpotShadowColor = Color.TRANSPARENT
    }
  }

  override fun onDraw(canvas: Canvas) {
    super.onDraw(canvas)
  }

  private val shadowView: View by lazy {
    ZeekrCardViewShadowLayoutBinding.inflate(
      LayoutInflater.from(context),
      null,
      false
    ).root.apply {
      shadowDrawable?.let {
        background = it
      }
    }
  }

  override fun setVisibility(visibility: Int) {
    super.setVisibility(visibility)
    if (isVisible) {
      (parent as ViewGroup?)?.let {
        it.overlay.add(shadowView)
        setShadowRect(viewRect)
      }
    } else {
      (parent as ViewGroup?)?.overlay?.remove(shadowView)
    }
  }

  override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
    super.onLayout(changed, left, top, right, bottom)
    viewRect = Rect(left, top, right, bottom)
    if (isVisible) {
      (parent as ViewGroup?)?.let {
        it.overlay.add(shadowView)
        setShadowRect(viewRect)
      }
    }
  }

  private fun setShadowRect(viewRect: Rect) {
    shadowView.run {
      logInfo("shadowRect:  $viewRect")

      val shadowWidth = viewRect.width() + (15.dp.takeIf { radius < 50.dp } ?: 15.dp)
      val shadowHeight = viewRect.height() + (15.dp.takeIf { radius < 50.dp } ?: 15.dp)

      if (viewRect.height() < 100.dp) {
        shadowView.setBackgroundResource(R.drawable.shadow_small)
      }

      if (radius > 40.dp) {
        shadowView.setBackgroundResource(R.drawable.shadow_radius)
      }

      val yOffset = when {
        viewRect.height() >= 100.dp -> 0.dp
        else -> 0.dp
      }

      val shadowLeft =
        viewRect.left - (7.dpf.takeIf { radius < 50.dp } ?: 7.dpf)
      val shadowTop =
        viewRect.top - (3.dpf.takeIf { radius < 50.dp } ?: 7.dpf) + yOffset
      layout(
        shadowLeft.toInt(),
        shadowTop.toInt(),
        (shadowLeft + shadowWidth).toInt(),
        (shadowTop + shadowHeight).toInt()
      )
    }
  }

  override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
    super.onMeasure(widthMeasureSpec, heightMeasureSpec)
  }

  override fun onDetachedFromWindow() {
    (parent as ViewGroup?)?.overlay?.remove(shadowView)
    super.onDetachedFromWindow()
  }
}
