package com.zeekr.component.spinner

import androidx.annotation.DrawableRes

data class ZeekrSpinnerModel(
  val name: String,
  @DrawableRes
  val icon: Int = NO_INT_VALUE,
  val select: Boolean = false
)
