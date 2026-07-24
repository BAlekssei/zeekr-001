package com.zeekr.component.toast

import android.annotation.SuppressLint
import android.content.Context
import android.content.res.ColorStateList
import android.graphics.drawable.Drawable
import android.os.Build
import android.provider.Settings
import android.util.Log
import android.view.Gravity.CENTER
import android.view.Gravity.TOP
import android.view.LayoutInflater
import android.view.View
import android.widget.FrameLayout
import android.widget.Toast
import androidx.annotation.DrawableRes
import androidx.core.content.ContextCompat
import androidx.core.view.isVisible
import androidx.core.view.updateLayoutParams
import com.zeekr.component.colors.primary
import com.zeekr.component.colors.surface
import com.zeekr.component.databinding.ZeekrToastGroupLayoutBinding
import com.zeekr.component.extention.dp

private fun Context.inflateToastLayout(message: String, drawable: Drawable?): View {
  val inflater = getSystemService(Context.LAYOUT_INFLATER_SERVICE) as LayoutInflater

  return ZeekrToastGroupLayoutBinding.inflate(
    inflater,
    null,
    false
  ).apply {
    // 重新设置一下颜色
    zeekrToastCard.setCardBackgroundColor(zeekrToastCard.surface)
    zeekrToastMessage.setTextColor(zeekrToastMessage.primary)

    zeekrToastMessage.text = message
    var iconWidth = 0
    drawable?.let { drawable ->
      drawable.setBounds(0, 0, drawable.minimumWidth, drawable.minimumHeight)
      iconWidth = 24.dp + drawable.intrinsicWidth
      zeekrToastIcon.isVisible = true
      zeekrToastIcon.setImageDrawable(drawable)
    }
    val textMeasuredWidth = zeekrToastMessage.paint.measureText(message)
    val totalExpectWidth = textMeasuredWidth + iconWidth
    val hasTwoLinesWidth = 696.dp.takeIf { drawable == null } ?: 648.dp
    val hasTwoLines = textMeasuredWidth >= hasTwoLinesWidth
    zeekrToastGroup.updateLayoutParams<FrameLayout.LayoutParams> {
      gravity = CENTER
      width = totalExpectWidth.toInt().takeIf { it <= 712.dp } ?: 712.dp
      height = 88.dp.takeUnless { hasTwoLines } ?: 128.dp
      leftMargin = leftMargin.takeIf { leftMargin >= 48.dp } ?: 48.dp
      rightMargin = rightMargin.takeIf { rightMargin >= 48.dp } ?: 48.dp
    }
    if (!hasTwoLines) {
      zeekrToastMessage.setSingleLine()
    }
    zeekrToastMessage.maxLines = 2
  }.root
}

private fun Context.inflateToastLayoutColors(message: String, drawable: Drawable?, backgroundColors: ColorStateList, textColor: ColorStateList): View {
  val inflater = getSystemService(Context.LAYOUT_INFLATER_SERVICE) as LayoutInflater
  return ZeekrToastGroupLayoutBinding.inflate(
    inflater,
    null,
    false
  ).apply {
    zeekrToastMessage.text = message
    zeekrToastMessage.setTextColor(textColor)
    root.setCardBackgroundColor(backgroundColors)
    var iconWidth = 0
    drawable?.let { drawable ->
      drawable.setBounds(0, 0, drawable.minimumWidth, drawable.minimumHeight)
      iconWidth = 24.dp + drawable.intrinsicWidth
      zeekrToastIcon.isVisible = true
      zeekrToastIcon.setImageDrawable(drawable)
    }
    val textMeasuredWidth = zeekrToastMessage.paint.measureText(message)
    val totalExpectWidth = textMeasuredWidth + iconWidth
    val hasTwoLinesWidth = 696.dp.takeIf { drawable == null } ?: 648.dp
    val hasTwoLines = textMeasuredWidth >= hasTwoLinesWidth
    zeekrToastGroup.updateLayoutParams<FrameLayout.LayoutParams> {
      gravity = CENTER
      width = totalExpectWidth.toInt().takeIf { it <= 712.dp } ?: 712.dp
      height = 88.dp.takeUnless { hasTwoLines } ?: 128.dp
      leftMargin = leftMargin.takeIf { leftMargin >= 48.dp } ?: 48.dp
      rightMargin = rightMargin.takeIf { rightMargin >= 48.dp } ?: 48.dp
    }
    if (!hasTwoLines) {
      zeekrToastMessage.setSingleLine()
    }
    zeekrToastMessage.maxLines = 2
  }.root
}

@SuppressLint("NewApi")
@JvmOverloads
fun Context.showToast(
  message: String,
  @DrawableRes
  icon: Int = 0,
  duration: Int = Toast.LENGTH_SHORT
) {
  val drawable = if (icon != 0) {
    ContextCompat.getDrawable(this, icon)
  } else {
    null
  }
  showToast2(message, drawable, duration)
}

@SuppressLint("NewApi")
@JvmOverloads
fun Context.showToast2(
  message: String,
  drawable: Drawable? = null,
  duration: Int = Toast.LENGTH_SHORT
) {
  Log.d("ZUI_TOAST", "showToast2 message:$message ")
  if (Build.VERSION.SDK_INT > 28) {
    val layout = inflateToastLayout(message, drawable)
    val toast = Toast(this).apply {
      this.duration = duration
      view = layout
      setGravity(TOP, 0, 10)
    }
    toast.show()
  } else {
    if (!Settings.canDrawOverlays(this)) {
      Toast.makeText(this, message, duration).show()
      return
    }
    val layout = inflateToastLayout(message, drawable)
    ZeekrToastObject.show(this, layout, duration)
  }
}

/**
 * 因为语言运用了第三方换肤框架导致主题配置不生效，故提供此方法给
 * 语音团队使用
 * @param message 文本
 * @param drawable 图标
 * @param duration 时常
 * @param backgroundColors 背景颜色
 * @param textColor 文本颜色
 */
@SuppressLint("NewApi")
@JvmOverloads
fun Context.showToastAboutColors(
  message: String,
  drawable: Drawable? = null,
  duration: Int = Toast.LENGTH_SHORT,
  backgroundColors: ColorStateList,
  textColor: ColorStateList
) {

  if (Build.VERSION.SDK_INT > 28) {
    val layout = inflateToastLayoutColors(message, drawable, backgroundColors, textColor)

    val toast = Toast(this).apply {
      this.duration = duration
      view = layout
    }
    toast.show()
  } else {
    if (!Settings.canDrawOverlays(this)) {
      Toast.makeText(this, message, duration).show()
      return
    }
    val layout = inflateToastLayoutColors(message, drawable, backgroundColors, textColor)
    ZeekrToastObject.show(this, layout, duration)
  }
}
