package com.zeekr.component.colors

import android.content.res.ColorStateList
import android.graphics.Color
import android.view.View
import androidx.annotation.ColorInt
import com.zeekr.component.extention.isNight

@get:ColorInt
val View.primary: Int
  get() = if (isNight) Color.parseColor("#B4B9BE") else Color.parseColor("#383A3D")

@get:ColorInt
val View.toggleButtonChecked: Int
  get() = if (isNight) Color.parseColor("#2C3038") else Color.parseColor("#FFFFFF")

@get:ColorInt
val View.colorOutlineBackground: Int
  get() = if (isNight) Color.parseColor("#663A404A") else Color.parseColor("#66CED2D9")

@get:ColorInt
val View.ghostButton: Int
  get() = if (isNight) Color.parseColor("#3A404A") else Color.parseColor("#CCCED2D9")

@get:ColorInt
val View.ghostButton40: Int
  get() = getAlphaColor(ghostButton, 0.4f)

@get:ColorInt
val View.ghostButton80: Int
  get() = getAlphaColor(ghostButton, 0.8f)

@get:ColorInt
val View.ghostButton30: Int
  get() = getAlphaColor(ghostButton, 0.3f)

@get:ColorInt
val View.colorInputBackground: Int
  get() = if (isNight) Color.parseColor("#663A404A") else Color.parseColor("#66CED2D9")

@get:ColorInt
val View.toggleButtonCheck: Int
  get() = if (isNight) Color.parseColor("#2C3038") else Color.parseColor("#FFFFFF")

@get:ColorInt
val View.toggleButtonUnCheck: Int
  get() = if (isNight) Color.parseColor("#3A404A") else Color.parseColor("#CED2D9")

@get:ColorInt
val View.toggleButtonUnCheckEnabledPress: Int
  get() = getAlphaColor(toggleButtonUnCheck, 0.8f)

@get:ColorInt
val View.toggleButtonUnCheckEnabledUnPress: Int
  get() = getAlphaColor(toggleButtonUnCheck, 0.4f)

@get:ColorInt
val View.toggleButtonUnCheckDisabledUnPress: Int
  get() = getAlphaColor(toggleButtonUnCheck, 0.3f)

@get:ColorInt
val View.toggleButtonCheck40: Int
  get() = getAlphaColor(toggleButtonCheck, 0.4f)

@get:ColorInt
val View.toggleButtonCheckEnabledPress: Int
  get() = if (isNight) Color.parseColor("#14FFFFFF") else Color.parseColor("#14000000")

@get:ColorInt
val View.toggleButtonCheckEnabledUnPress: Int
  get() = if (isNight) Color.parseColor("#2C3038") else Color.parseColor("#FFFFFF")

@get:ColorInt
val View.toggleButtonCheckDisabledUnPress: Int
  get() = if (isNight) Color.parseColor("#662C3038") else Color.parseColor("#66FFFFFF")

@get:ColorInt
val View.primary60: Int
  get() = getAlphaColor(primary, 0.6f)

@get:ColorInt
val View.primary32: Int
  get() = getAlphaColor(primary, 0.32f)

@get:ColorInt
val View.primary40: Int
  get() = getAlphaColor(primary, 0.4f)

@get:ColorInt
val View.primary20: Int
  get() = getAlphaColor(primary, 0.2f)

@get:ColorInt
val View.primary16: Int
  get() = getAlphaColor(primary, 0.16f)

@get:ColorInt
val View.onPrimary: Int
  get() = if (isNight) Color.parseColor("#0B0C0D") else Color.parseColor("#FFFFFF")

@get:ColorInt
val View.onPrimary60: Int
  get() = getAlphaColor(onPrimary, 0.6f)

@get:ColorInt
val View.onPrimary40: Int
  get() = getAlphaColor(onPrimary, 0.4f)

@get:ColorInt
val View.secondary: Int
  get() = if (isNight) Color.parseColor("#BE7153") else Color.parseColor("#F88650")

@get:ColorInt
val View.colorSliderInactive: Int
  get() = if (isNight) Color.parseColor("#2B2D32") else Color.parseColor("#E5E6E8")

@get:ColorInt
val View.colorAlwaysWhite: Int
  get() = if (isNight) Color.parseColor("#B4B9BE") else Color.parseColor("#FFFFFFFF")

@get:ColorInt
val View.secondary40: Int
  get() = getAlphaColor(secondary, 0.4f)

@get:ColorInt
val View.secondary80: Int
  get() = getAlphaColor(secondary, 0.8f)

@get:ColorInt
val View.secondaryContainer: Int
  get() = if (isNight) Color.parseColor("#CC323439") else Color.parseColor("#47C2C7CC")

@get:ColorInt
val View.secondaryContainer40: Int
  get() = getAlphaColor(secondaryContainer, 0.4f)

@get:ColorInt
val View.primaryContainer: Int
  get() = if (isNight) Color.parseColor("#CCD3D7DC") else Color.parseColor("#CC141416")

@get:ColorInt
val View.primaryContainer40: Int
  get() = getAlphaColor(primaryContainer, 0.4f)

@get:ColorInt
val View.secondaryVariant: Int
  get() = if (isNight) Color.parseColor("#40434A") else Color.parseColor("#FFFFFF")

@get:ColorInt
val View.secondaryVariant40: Int
  get() = getAlphaColor(secondaryVariant, 0.4f)

@get:ColorInt
val View.transparent: Int
  get() = Color.TRANSPARENT

@get:ColorInt
val View.surface: Int
  get() = if (isNight) Color.parseColor("#28282E") else Color.parseColor("#FFFFFF")

@get:ColorInt
val View.primarySurface: Int
  get() = if (isNight) Color.parseColor("#99000000") else Color.parseColor("#3D575B5E")

@get:ColorInt
val View.secondaryButton: Int
  get() = if (isNight) Color.parseColor("#323439") else Color.parseColor("#C2C7CC")

@get:ColorInt
val View.realButton: Int
  get() = if (isNight) Color.parseColor("#D3D7DC") else Color.parseColor("#141416")

@get:ColorInt
val View.colorBackground: Int
  get() = if (isNight) Color.parseColor("#F2F3F4") else Color.parseColor("#151619")

@get:ColorInt
val View.dialogBackground: Int
  get() = if (isNight) Color.parseColor("#28282E") else Color.parseColor("#F7F8F9")

private fun getAlphaColor(color: Int, alpha: Float): Int {
  val mAlpha = (255 * alpha).toInt()
  val red = color and 0xff0000 shr 16
  val green = color and 0x00ff00 shr 8
  val blue = color and 0x0000ff
  return Color.argb(mAlpha, red, green, blue)
}

fun View.createColorStateList(
  color: Int
): ColorStateList {
  val colors = intArrayOf(color)
  val states = arrayOfNulls<IntArray>(1)
  states[0] = intArrayOf(0)
  return ColorStateList(states, colors)
}
