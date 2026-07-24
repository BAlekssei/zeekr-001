package com.zeekr.component.toggle

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.annotation.DrawableRes
import com.zeekr.component.databinding.ZeekrToggleIconDefaultViewBinding
import com.zeekr.component.databinding.ZeekrToggleItemCardLayoutBinding
import com.zeekr.component.databinding.ZeekrToggleMultiTextDefaultLayoutBinding
import com.zeekr.component.databinding.ZeekrToggleTextHorizontalDefaultLayoutBinding
import com.zeekr.component.databinding.ZeekrToggleTextVerticalDefaultLayoutBinding

typealias ToggleListener = (Int) -> Unit
typealias ToggleCollapseListener = (Boolean) -> Unit
typealias ToggleItemBinder = (Int, ViewGroup) -> View

internal fun ZeekrToggle.inflateItemCard() =
  ZeekrToggleItemCardLayoutBinding.inflate(
    LayoutInflater.from(context),
    this,
    false
  ).root.apply {
    id = View.generateViewId()
  }

fun ZeekrToggle.inflateToggleIconItemView(@DrawableRes iconRes: Int, parent: ViewGroup): View =
  ZeekrToggleIconDefaultViewBinding.inflate(
    LayoutInflater.from(context),
    parent,
    false
  ).apply {
    root.setImageResource(iconRes)
  }.root

fun ZeekrToggle.inflateToggleHorizontalTextItemView(content: String, parent: ViewGroup): View =
  ZeekrToggleTextHorizontalDefaultLayoutBinding.inflate(
    LayoutInflater.from(context),
    parent,
    false
  ).apply {
    root.text = content
  }.root

fun ZeekrToggle.inflateToggleVerticalTextItemView(content: String, parent: ViewGroup): View =
  ZeekrToggleTextVerticalDefaultLayoutBinding.inflate(
    LayoutInflater.from(context),
    parent,
    false
  ).apply {
    root.text = content
  }.root

fun ZeekrToggle.inflateToggleMultiTextItemView(title: String, tip: String, parent: ViewGroup): View =
  ZeekrToggleMultiTextDefaultLayoutBinding.inflate(
    LayoutInflater.from(context),
    parent,
    false
  ).apply {
    zeekrToggleCardMultiLineContentTitle.text = title
    zeekrToggleCardMultiLineContentTip.text = tip
  }.root
