package com.zeekr.component.webview

import android.annotation.SuppressLint
import android.content.res.Configuration
import android.webkit.WebResourceRequest
import android.webkit.WebView
import androidx.webkit.WebResourceErrorCompat
import androidx.webkit.WebViewClientCompat
import com.zeekr.component.extention.logDebug
import com.zeekr.component.toast.showToast

open class ZeekrWebViewClient : WebViewClientCompat() {

  override fun shouldOverrideUrlLoading(view: WebView, request: WebResourceRequest): Boolean {
    val url = request.url.toString()
    view.logDebug("shouldOverrideUrlLoading url : ${request.url.toString().take(15)} ")
    (view as ZeekrWebView).lastUrl?.let { lastUrl ->
      if (lastUrl.isOutLink()) {
        view.post { view.context.showToast("该页面不可访问") }
        return true
      }
    }
    return super.shouldOverrideUrlLoading(view, request)
  }

  @SuppressLint("RequiresFeature")
  override fun onPageFinished(webView: WebView, url: String) {
    super.onPageFinished(webView, url)
    webView.logDebug("onPageFinished  url: $url")
    if ((webView as ZeekrWebView).status != ERROR) {
      webView.loadUrl("javascript:function getSub(){" + "document.getElementsByTagName('body')[0].style.background-color='#00000000'" + "};getSub();")
      webView.loadUrl("javascript:function getSub(){" + "document.getElementsByTagName('body')[0].style.backgroundColor='#00000000'" + "};getSub();")
      if ((webView.resources.configuration.uiMode and Configuration.UI_MODE_NIGHT_MASK) == Configuration.UI_MODE_NIGHT_YES) {
        // WebSettingsCompat.setForceDark(webView.settings, WebSettingsCompat.FORCE_DARK_ON)
        webView.loadUrl("javascript:function getSub(){" + "document.getElementsByTagName('body')[0].style.color ='#F7F8F9CC'" + "};getSub();")
      } else {
        // WebSettingsCompat.setForceDark(webView.settings, WebSettingsCompat.FORCE_DARK_OFF)
        webView.loadUrl("javascript:function getSub(){" + "document.getElementsByTagName('body')[0].style.color ='#28282ECC'" + "};getSub();")
      }
    }
  }

  override fun onReceivedError(
    view: WebView,
    request: WebResourceRequest,
    error: WebResourceErrorCompat
  ) {
    super.onReceivedError(view, request, error)
    view.logDebug("onReceivedError  error: ${error.description}")
    (view as ZeekrWebView).setErrorState()
  }
}
