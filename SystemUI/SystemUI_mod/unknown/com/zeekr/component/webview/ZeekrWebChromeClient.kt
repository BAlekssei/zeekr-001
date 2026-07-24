package com.zeekr.component.webview

import android.annotation.SuppressLint
import android.content.Context
import android.net.ConnectivityManager
import android.webkit.WebChromeClient
import android.webkit.WebView
import androidx.annotation.CallSuper
import androidx.core.view.children
import androidx.core.view.postDelayed
import com.zeekr.component.extention.logDebug

open class ZeekrWebChromeClient : WebChromeClient() {

  // 判断是否联网
  @SuppressLint("MissingPermission")
  private fun checkConnectNetwork(context: Context): Boolean {
    val conn = context.getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
    val net = conn.activeNetworkInfo
    return net != null && net.isConnected
  }

  @CallSuper
  override fun onProgressChanged(view: WebView, newProgress: Int) {
    super.onProgressChanged(view, newProgress)
    view.logDebug("onProgressChanged  progress: $newProgress")
    (view as ZeekrWebView).apply {
      if (status == ERROR) {
        return
      }

      if (!checkConnectNetwork(view.context)) {
        setErrorState()
        return
      }

      if (newProgress == FULL_PROGRESS) {
        // 延迟显示,避免在深色模式下闪一下白色
        postDelayed(DEF_DELAY_MILLIS) {
          children.forEach {
            it.visibility = WebView.GONE
          }
          setSuccessState()
        }
      } else {
        setLoadingState()
      }
    }
  }

  companion object {
    private const val DEF_DELAY_MILLIS = 600L
    private const val FULL_PROGRESS = 100
  }
}
