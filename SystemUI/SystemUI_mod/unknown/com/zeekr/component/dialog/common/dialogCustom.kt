package com.zeekr.component.dialog.common

import android.content.Context
import android.view.LayoutInflater
import android.view.ViewGroup
import com.zeekr.component.databinding.ZeekrDialogCustomWebviewLayoutBinding

@JvmOverloads
fun ViewGroup.inflateDialogWebViewLayout(url: String? = null) =
  ZeekrDialogCustomWebviewLayoutBinding.inflate(context.getServiceInflate(), this).run {
    if (!url.isNullOrEmpty()) {
      zeekrDialogWebView.loadUrl(url)
    }
    zeekrDialogWebView
  }

fun Context.getServiceInflate() = getSystemService(Context.LAYOUT_INFLATER_SERVICE) as LayoutInflater
