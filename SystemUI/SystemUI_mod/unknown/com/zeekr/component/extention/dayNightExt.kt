package com.zeekr.component.extention

import android.content.res.Configuration
import android.view.View
import com.zeekr.component.R
import com.zeekr.component.button.ZeekrToggleButton
import com.zeekr.component.card.ZeekrFrameCard
import com.zeekr.component.menu.ZeekrMenu
import com.zeekr.component.rebound.ZeekrReboundRefreshLayout
import com.zeekr.component.segement.ZeekrCardSegment
import com.zeekr.component.segement.ZeekrMultiTextSegment
import com.zeekr.component.segement.ZeekrSegement
import com.zeekr.component.segement.ZeekrSegementHorizontal
import com.zeekr.component.selection.ZeekrCheckBox
import com.zeekr.component.selection.ZeekrRadioButton
import com.zeekr.component.selection.ZeekrSwitch
import com.zeekr.component.slider.ZeekrDockSlider
import com.zeekr.component.slider.ZeekrHorizontalSlider
import com.zeekr.component.slider.ZeekrOsdCardView
import com.zeekr.component.slider.ZeekrSectionSlider
import com.zeekr.component.slider.ZeekrVerticalSlider
import com.zeekr.component.spinner.ZeekrSpinner
import com.zeekr.component.stepper.ZeekrStepper
import com.zeekr.component.tab.ZeekrMenuSecondView
import com.zeekr.component.tab.ZeekrRailView
import com.zeekr.component.tab.ZeekrTabLayout
import com.zeekr.component.timer.ZeekrNumberPicker
import com.zeekr.component.toggle.ZeekrSingleToggleLeft
import com.zeekr.component.toggle.ZeekrSingleToggleRight
import com.zeekr.component.toggle.ZeekrToggle

internal val View.isNight: Boolean
  get() = (resources.configuration.uiMode and Configuration.UI_MODE_NIGHT_MASK) == Configuration.UI_MODE_NIGHT_YES

fun View.isZeekrThemeComponent(): Boolean {
  return this is ZeekrCheckBox || this is ZeekrRadioButton ||
    this is ZeekrSwitch ||
    this is ZeekrStepper ||
    this is ZeekrMenuSecondView ||
    this is ZeekrToggle ||
    this is ZeekrHorizontalSlider ||
    this is ZeekrVerticalSlider ||
    this is ZeekrSectionSlider ||
    this is ZeekrNumberPicker ||
    this is ZeekrToggleButton ||
    this is ZeekrSegementHorizontal ||
    this is ZeekrRailView ||
    this is ZeekrSingleToggleLeft ||
    this is ZeekrSingleToggleRight ||
    this is ZeekrSpinner ||
    this is ZeekrSegement ||
    this is ZeekrCardSegment ||
    this is ZeekrFrameCard ||
    this is ZeekrOsdCardView ||
    this is ZeekrMenu ||
    this is ZeekrMultiTextSegment ||
    this is ZeekrDockSlider
}

fun View.dayNightApply() {
  when (this) {
    is ZeekrCheckBox -> themeApply()
    is ZeekrRadioButton -> themeApply()
    is ZeekrSwitch -> themeApply()
    is ZeekrMenuSecondView -> themeApply()
    is ZeekrToggle -> themeApply()
    is ZeekrHorizontalSlider -> themeApply()
    is ZeekrVerticalSlider -> themeApply()
    is ZeekrSectionSlider -> themeApply()
    is ZeekrNumberPicker -> themeApply()
    is ZeekrRailView -> themeApply()
    is ZeekrToggleButton -> themeApply()
    is ZeekrSegementHorizontal -> themeApply()
    is ZeekrSingleToggleLeft -> themeApply()
    is ZeekrSingleToggleRight -> themeApply()
    is ZeekrSpinner -> themApply()
    is ZeekrSegement -> themApply()
    is ZeekrCardSegment -> themeApply()
    is ZeekrFrameCard -> themeApply()
    is ZeekrStepper -> themeApply()
    is ZeekrOsdCardView -> themeApply()
    is ZeekrMenu -> themApply()
    is ZeekrReboundRefreshLayout -> themeApply()
    is ZeekrMultiTextSegment -> themeApply()
    is ZeekrDockSlider -> themeApply()
    is ZeekrTabLayout -> themeApply()
  }
}

fun ZeekrToggleButton.dayNightApply(changeIconTint: Boolean? = true) {
  this.themeApply(changeIconTint)
}

fun ZeekrToggleButton.dayNightApply() {
  this.themeApply()
}

internal fun ZeekrCheckBox.themeApply() {
  if (isChecked) {
    setImageResource(R.drawable.zeekr_check_box_content)
  } else {
    setImageResource(R.drawable.zeekr_check_box_stroke)
  }
}

internal fun ZeekrRadioButton.themeApply() {
  if (isChecked) {
    setImageResource(R.drawable.zeekr_radio_button_content)
  } else {
    setImageResource(R.drawable.zeekr_radio_button_stroke)
  }
  invalidate()
}
