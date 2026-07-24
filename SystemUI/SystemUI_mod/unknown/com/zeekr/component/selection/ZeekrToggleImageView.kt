package com.zeekr.component.selection

import android.content.Context
import android.util.AttributeSet
import android.widget.Checkable
import com.google.android.material.imageview.ShapeableImageView

class ZeekrToggleImageView constructor(
  context: Context,
  attrs: AttributeSet? = null
) : ShapeableImageView(context, attrs), Checkable {

  private var mChecked = false

  private val CHECKED_STATE_SET = intArrayOf(
    android.R.attr.state_checked
  )

  init {
    setOnClickListener { }
  }

  override fun onCreateDrawableState(extraSpace: Int): IntArray {
    val drawableState = super.onCreateDrawableState(extraSpace + 1)
    if (isChecked) {
      mergeDrawableStates(drawableState, CHECKED_STATE_SET)
    }
    return drawableState
  }

  override fun setChecked(checked: Boolean) {
    mChecked = checked
    refreshDrawableState()
    invalidate()
  }

  override fun isChecked(): Boolean {
    return mChecked
  }

  override fun performClick(): Boolean {
    toggle()
    return super.performClick()
  }

  override fun toggle() {
    isChecked = !mChecked
  }
}
