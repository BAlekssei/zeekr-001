package com.zeekr.component.extention

import android.annotation.SuppressLint
import android.content.Context
import android.content.res.ColorStateList
import android.graphics.Color
import android.graphics.drawable.Drawable
import android.util.TypedValue
import android.view.LayoutInflater
import android.view.View
import android.view.animation.AnimationUtils
import android.view.animation.Interpolator
import androidx.annotation.AttrRes
import androidx.annotation.ColorInt
import androidx.annotation.ColorRes
import androidx.annotation.DrawableRes
import androidx.annotation.StyleRes
import androidx.appcompat.content.res.AppCompatResources
import androidx.core.content.res.use

/**
 * Retrieve a color from the current [android.content.res.Resources.Theme].
 */
@ColorInt
@SuppressLint("Recycle")
fun Context.themeColor(
  @AttrRes themeAttrId: Int
): Int {
  return obtainStyledAttributes(
    intArrayOf(themeAttrId)
  ).use {
    it.getColor(0, Color.MAGENTA)
  }
}

fun Context.themeColorStateList(
  @AttrRes themeAttrId: Int
): ColorStateList {
  return ColorStateList.valueOf(themeColor(themeAttrId))
}

@SuppressLint("UseCompatLoadingForColorStateLists")
fun Context.themeColorResource(@ColorRes color: Int): ColorStateList {
  return themeColorStateListSelectId(color)
}

@SuppressLint("NewApi")
fun Context.themeColorStateListSelectId(@ColorRes color: Int): ColorStateList {
  return resources.getColorStateList(color, theme)
}

@SuppressLint("NewApi")
fun Context.themeColorSelectId(@ColorRes color: Int): Int {
  return resources.getColor(color, theme)
}

/**
 * Retrieve a style from the current [android.content.res.Resources.Theme].
 */
@StyleRes
fun Context.themeStyle(@AttrRes attr: Int): Int {
  val tv = TypedValue()
  theme.resolveAttribute(attr, tv, true)
  return tv.data
}

@SuppressLint("Recycle")
fun Context.themeInterpolator(@AttrRes attr: Int): Interpolator {
  return AnimationUtils.loadInterpolator(
    this,
    obtainStyledAttributes(intArrayOf(attr)).use {
      it.getResourceId(0, android.R.interpolator.fast_out_slow_in)
    }
  )
}

fun Context.getDrawableOrNull(@DrawableRes id: Int?): Drawable? {
  return if (id == null || id == 0) null else AppCompatResources.getDrawable(this, id)
}

fun Context.inflater(): LayoutInflater = LayoutInflater.from(this)
fun View.inflater(): LayoutInflater = LayoutInflater.from(context)

fun Context.dimensionFromAttribute(@AttrRes themeAttrId: Int): Int {
  val typedValue = TypedValue()
  theme.resolveAttribute(themeAttrId, typedValue, true)
  val attributes = obtainStyledAttributes(typedValue.resourceId, intArrayOf(android.R.attr.textSize))
  val dimension = attributes.getDimensionPixelSize(0, -1)
  attributes.recycle()
  return dimension
}

@SuppressLint("NewApi")
fun View.themeColorStateId(
  @ColorRes color: Int,
  @AttrRes themeAttrId: Int = com.google.android.material.R.attr.colorPrimary
): Int {
  return context.themeColor(themeAttrId).takeIf { isInEditMode } ?: context.themeColorSelectId(
    color
  )
}
