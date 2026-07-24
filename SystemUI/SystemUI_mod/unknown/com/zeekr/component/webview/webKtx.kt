package com.zeekr.component.webview

import java.net.URLDecoder

internal fun String.isOutLink() =
  !contains("zeekrlife.com") &&
    !contains("zeekrlife-test.com")

internal fun String.getUrlParams(): Map<String, List<String>> {
  val urlParts = split("\\?".toRegex()).filter(String::isNotEmpty)
  if (urlParts.size < 2) {
    return emptyMap()
  }
  val query = urlParts[1]
  return listOf("item").associateWith { key ->
    query.split("&?$key=".toRegex()).filter(String::isNotEmpty)
      .map { URLDecoder.decode(it, "UTF-8") }
  }
}

internal fun String.addParamToUrl(param: String): String {
  return if (this.contains(param)) {
    this
  } else if (this.contains("?")) {
    if (this.contains("#") && this.indexOf("#") > this.indexOf("?")) this.replaceFirst(
      "#".toRegex(),
      "&$param#"
    ) else "$this&$param"
  } else {
    if (this.contains("#")) this.replaceFirst("#".toRegex(), "?$param#") else "$this?$param"
  }
}
