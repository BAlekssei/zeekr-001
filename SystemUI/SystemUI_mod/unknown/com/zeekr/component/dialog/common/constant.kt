package com.zeekr.component.dialog.common

import android.view.View
import androidx.annotation.IntDef

internal fun String.hasSetValue() = this != NOT_SET_VALUE
internal fun Int.hasSetValue() = this != NOT_SET_INT_VALUE
internal fun Any?.hasSetValue() = this != null

internal const val NOT_SET_VALUE = ""
internal const val NOT_SET_INT_VALUE = -1

typealias DialogDismissCallback = (Boolean) -> Unit
typealias DialogTouchOutsideCallback = (View) -> Unit

const val DIALOG_ANIMATE_SCALE = 101
const val DIALOG_ANIMATE_DOWN = 102
const val DIALOG_ANIMATE_UP = 103

const val DIALOG_SIZE_SMALL = 1000
const val DIALOG_SIZE_MEDIUM = 1001
const val DIALOG_SIZE_LARGE = DIALOG_SIZE_MEDIUM
internal const val DIALOG_SIZE_SPECIALLY = 1003
@IntDef(DIALOG_SIZE_SMALL, DIALOG_SIZE_MEDIUM, DIALOG_SIZE_LARGE, DIALOG_SIZE_SPECIALLY)
@Retention(AnnotationRetention.SOURCE)
annotation class ZeekrDialogSize
