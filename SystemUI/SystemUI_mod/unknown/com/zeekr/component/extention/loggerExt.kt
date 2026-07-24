package com.zeekr.component.extention

import android.util.Log
import android.view.View
import androidx.viewbinding.ViewBinding
import com.zeekr.component.BuildConfig

fun View.logInfo(message: String) {
  Log.i(this::class.simpleName, "ZUI8155: $id  $message")
}

fun View.logDebug(message: String) {
  Log.d(this::class.simpleName, "ZUI8155: ${BuildConfig.zui_version} $id  $message")
}

fun ViewBinding.logInfo(message: String) {
  Log.i(this::class.simpleName, "ZUI8155:  ${BuildConfig.zui_version} $message")
}

fun ViewBinding.logDebug(message: String) {
  Log.d(this::class.simpleName, "ZUI8155:   $message")
}
