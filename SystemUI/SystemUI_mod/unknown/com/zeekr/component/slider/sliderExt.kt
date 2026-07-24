package com.zeekr.component.slider

import android.view.MotionEvent
import java.lang.Integer.max
import kotlin.math.roundToInt

typealias SliderProgressListener = (Int) -> Unit
typealias SliderTouchListener = ((MotionEvent) -> Unit)

internal const val VALUE_NOT_SET = Int.MIN_VALUE

internal fun Int.valueSet() = this != VALUE_NOT_SET

internal fun IntRange.getValue(progress: Float) = elementAt((progress * length()).roundToInt())
internal fun IntRange.length() = max(endInclusive - start, 1)
