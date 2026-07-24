package com.zeekr.component.toggle

import android.content.Context
import android.os.Build
import android.util.AttributeSet
import android.view.LayoutInflater
import androidx.annotation.RequiresApi
import androidx.constraintlayout.widget.ConstraintLayout
import androidx.core.view.isVisible
import com.zeekr.component.R
import com.zeekr.component.databinding.ZeekrToggleRemoveButtonBinding

@RequiresApi(Build.VERSION_CODES.M)
class ZeekrToggleRemoveButton @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : ConstraintLayout(context, attrs) {

  private val binding = ZeekrToggleRemoveButtonBinding.inflate(LayoutInflater.from(context), this)

  private var listenerButton: (() -> Unit)? = null
  private var listenerClose: (() -> Unit)? = null
  private var listenerEdit: (() -> Unit)? = null
  private var listenerEditState: ((Boolean) -> Unit)? = null

  init {
    clipChildren = false
    clipToPadding = false

    val attributes = context.resources.obtainAttributes(attrs, R.styleable.ZeekrToggleRemoveButton)

    binding.zeekrToggleButton.text =
      attributes.getString(R.styleable.ZeekrToggleRemoveButton_zeekrToggleRemoveButtonText)
    attributes.recycle()

    with(binding) {

      close.setOnClickListener {
        listenerClose?.invoke()
      }

      zeekrToggleButton.setOnClickListener {
        if (close.isVisible) {
          listenerEdit?.invoke()
        } else {
          listenerButton?.invoke()
        }
      }

      zeekrToggleButton.setOnLongClickListener {
        if (zeekrToggleButton.isChecked) {
          close.visibility = INVISIBLE
          zeekrToggleButton.icon = null
          zeekrToggleButton.isCheckable = true
        } else {
          close.visibility = VISIBLE
          zeekrToggleButton.setIconResource(R.drawable.ic_edit)
          zeekrToggleButton.isCheckable = false
          listenerEditState?.invoke(true)
        }
        true
      }
    }
  }

  fun setZeekrToggleButtonListener(listener: (() -> Unit)) {
    this.listenerButton = listener
  }

  fun setZeekrCloseListener(listener: (() -> Unit)) {
    this.listenerClose = listener
  }

  fun setEditStateListener(listener: ((Boolean) -> Unit)) {
    this.listenerEditState = listener
  }

  fun setEditListener(listener: (() -> Unit)) {
    this.listenerEdit = listener
  }

  fun hideCloseIcon() {
    binding.close.visibility = INVISIBLE
    binding.zeekrToggleButton.icon = null
    binding.zeekrToggleButton.isCheckable = true
  }

  fun setEditMsg(msg: String) {
    binding.zeekrToggleButton.text = msg
  }

  fun setEditState(editState: Boolean) {
    if (!editState) {
      binding.close.visibility = INVISIBLE
      binding.zeekrToggleButton.icon = null
      binding.zeekrToggleButton.isCheckable = true
    } else {
      binding.close.visibility = VISIBLE
      binding.zeekrToggleButton.setIconResource(R.drawable.ic_edit)
      binding.zeekrToggleButton.isCheckable = false
    }
  }

  fun setCheckState(checkd: Boolean) {
    if (checkd) {
      binding.zeekrToggleButton.isChecked = checkd
    } else {
      binding.zeekrToggleButton.isChecked = checkd
    }
  }
}
