package com.zeekr.component.timer.widget

import com.zeekr.component.timer.ZeekrHandrailPicker
import com.zeekr.component.timer.ZeekrNumberPicker

internal const val SNAP_SCROLL_DURATION = 300
internal const val SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT = 1.5
internal const val TOP_AND_BOTTOM_FADING_EDGE_STRENGTH = 1f

/**
 * The view is not scrolling.
 */
internal const val SCROLL_STATE_IDLE = 0

/**
 * The user is scrolling using touch, and his finger is still on the screen.
 */
internal const val SCROLL_STATE_TOUCH_SCROLL = 1

/**
 * The user had previously been scrolling using touch and performed a fling.
 */
internal const val SCROLL_STATE_FLING = 2

internal typealias ZeekrPickerScrollListener = (ZeekrNumberPicker, Int) -> Unit
internal typealias ZeekrPickerChangeListener = (ZeekrNumberPicker, String, String) -> Unit
internal typealias ZeekrHandrailPickerScrollListener = (ZeekrHandrailPicker, Int) -> Unit
internal typealias ZeekrHandrailPickerChangeListener = (ZeekrHandrailPicker, String, String) -> Unit
