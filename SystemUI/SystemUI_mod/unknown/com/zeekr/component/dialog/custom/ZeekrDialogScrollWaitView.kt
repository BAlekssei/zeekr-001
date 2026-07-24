package com.zeekr.component.dialog.custom

import android.content.Context
import android.util.AttributeSet
import android.view.Gravity
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.FrameLayout
import androidx.core.view.isInvisible
import androidx.core.view.isVisible
import androidx.core.view.updateLayoutParams
import com.zeekr.component.databinding.ZeekrDialogScrollWaitLayoutBinding

class ZeekrDialogScrollWaitView @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : FrameLayout(context, attrs) {

  private var loadingView: View? = null
  private var errorView: View? = null

  private val binding = ZeekrDialogScrollWaitLayoutBinding.inflate(
    LayoutInflater.from(context),
    this
  ).apply {
    zeekrDialogConfirmScroll.isInvisible = true
    zeekrDialogScrollBar.isInvisible = true
  }

  fun loading(loadingView: View) {
    addView(loadingView)
    this.loadingView = loadingView
    loadingView.updateLayoutParams<LayoutParams> {
      width = ViewGroup.LayoutParams.WRAP_CONTENT
      height = ViewGroup.LayoutParams.WRAP_CONTENT
      gravity = Gravity.CENTER
    }
    errorView?.let { removeView(it) }
    binding.run {
      zeekrDialogConfirmScroll.isInvisible = true
      zeekrDialogScrollBar.isInvisible = true
    }
  }

  fun loadingSuccess(content: CharSequence) {
    errorView?.let { removeView(it) }
    loadingView?.let { removeView(it) }
    binding.run {
      zeekrDialogConfirmScroll.isVisible = true
      zeekrDialogScrollBar.isVisible = true
    }
    binding.zeekrDialogConfirmContentText.text = content
  }

  fun error(errorView: View) {
    addView(errorView)
    this.errorView = errorView
    errorView.updateLayoutParams<LayoutParams> {
      width = ViewGroup.LayoutParams.WRAP_CONTENT
      height = ViewGroup.LayoutParams.WRAP_CONTENT
      gravity = Gravity.CENTER
    }
    loadingView?.let { removeView(it) }
    binding.run {
      zeekrDialogConfirmScroll.isInvisible = true
      zeekrDialogScrollBar.isInvisible = true
    }
  }
}
