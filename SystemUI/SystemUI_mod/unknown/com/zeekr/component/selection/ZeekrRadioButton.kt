package com.zeekr.component.selection

import android.content.Context
import android.graphics.Rect
import android.util.AttributeSet
import android.widget.Checkable
import com.google.android.material.imageview.ShapeableImageView
import com.zeekr.component.R
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.performClickDelayed
import com.zeekr.component.ripple.ZeekrVoiceButtonInterface
import com.zeekr.component.ripple.refreshScreenLocation
import com.zeekr.component.ripple.refreshViewRect
import com.zeekr.component.ripple.rippleDisplay

open class ZeekrRadioButton @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null,
) : ShapeableImageView(context, attrs), Checkable, ZeekrVoiceButtonInterface {

  private var listener: OnCheckedChangeListener? = null
  private val rippleRect = Rect()
  private var checked = false

  init {
    setImageResource(R.drawable.zeekr_radio_button_stroke)
    setOnClickListener {
      toggle()
    }
  }

  override fun setEnabled(enabled: Boolean) {
    super.setEnabled(enabled)
    alpha = if (enabled) {
      1f
    } else {
      0.4f
    }
  }

  fun setOnCheckedChangeListener(listener: OnCheckedChangeListener) {
    this.listener = listener
  }

  override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
    super.onMeasure(widthMeasureSpec, heightMeasureSpec)

    val width = MeasureSpec.getSize(widthMeasureSpec)
    val widthMode = MeasureSpec.getMode(widthMeasureSpec)
    val height = MeasureSpec.getSize(heightMeasureSpec)
    val heightMode = MeasureSpec.getMode(heightMeasureSpec)
    val wrapWidth = 72.dp
    val wrapHeight = 72.dp

    if (widthMode == MeasureSpec.AT_MOST && heightMode == MeasureSpec.AT_MOST) {
      setMeasuredDimension(wrapWidth, wrapHeight)
    } else if (widthMode == MeasureSpec.AT_MOST) {
      setMeasuredDimension(wrapWidth, height)
    } else if (heightMode == MeasureSpec.AT_MOST) {
      setMeasuredDimension(width, wrapHeight)
    }
  }

  override fun setChecked(checked: Boolean) {
    this.checked = checked
    if (checked) {
      setImageResource(R.drawable.zeekr_radio_button_content)
    } else {
      setImageResource(R.drawable.zeekr_radio_button_stroke)
    }
    listener?.invoke(this, checked)
    refreshDrawableState()
  }

  override fun isChecked(): Boolean {
    return checked
  }

  override fun toggle() {
    setChecked(!checked)
  }

  override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
    super.onLayout(changed, left, top, right, bottom)
    rippleRect.refreshViewRect(right - left, bottom - top)
    refreshScreenLocation(rippleRect)
  }

  override fun onWindowFocusChanged(hasWindowFocus: Boolean) {
    super.onWindowFocusChanged(hasWindowFocus)
    refreshScreenLocation(rippleRect)
  }

  override fun voiceClick() {
    performClickDelayed()
    rippleDisplay(rippleRect)
  }
}
