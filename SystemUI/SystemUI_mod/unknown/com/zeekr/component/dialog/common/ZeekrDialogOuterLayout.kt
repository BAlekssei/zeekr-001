package com.zeekr.component.dialog.common

import android.animation.ArgbEvaluator
import android.animation.ValueAnimator
import android.annotation.SuppressLint
import android.app.Activity
import android.content.ComponentCallbacks
import android.content.Context
import android.content.res.Configuration
import android.graphics.Color
import android.graphics.Rect
import android.os.Build
import android.os.Build.VERSION_CODES.P
import android.util.AttributeSet
import android.util.Log
import android.view.Gravity
import android.view.KeyEvent
import android.view.MotionEvent
import android.view.SoundEffectConstants
import android.view.View
import android.view.ViewGroup
import android.view.animation.DecelerateInterpolator
import android.view.animation.Interpolator
import android.view.inputmethod.InputMethodManager
import android.widget.FrameLayout
import androidx.annotation.RequiresApi
import androidx.core.animation.doOnEnd
import androidx.core.view.ViewCompat
import androidx.core.view.updateLayoutParams
import com.zeekr.component.R
import com.zeekr.component.dialog.ZeekrDialogLayout
import com.zeekr.component.dialog.addKeyBordHeightChangeCallBack
import com.zeekr.component.dialog.animate.ZeekrDialogAnimate
import com.zeekr.component.dialog.hasEditChildrenView
import com.zeekr.component.dialog.isKeyboardShown
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.logDebug
import com.zeekr.component.extention.themeColor

internal class ZeekrDialogOuterLayout @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : FrameLayout(context, attrs), ViewCompat.OnUnhandledKeyEventListenerCompat {

  private lateinit var dialogParam: DialogParam
  private lateinit var dialogAnimate: ZeekrDialogAnimate
  private lateinit var dismissDialog: () -> Unit
  lateinit var popupContentView: View
  private var position = 0

  private var dismissOnListener: DialogDismissCallback? = null
  private var dismissBeforeOnListener: DialogDismissCallback? = null
  private var touchOutsideListener: DialogTouchOutsideCallback? = null

  private var currentMode: Int = context.resources.configuration.uiMode
  private var isInputType = false
  private var isDismissAnimatorRunning = false

  private var componentCallbacks = object : ComponentCallbacks {
    override fun onConfigurationChanged(newConfig: Configuration) {
      dayNightChanged(newConfig)
    }

    override fun onLowMemory() {
    }
  }

  fun initLayout(dialogParam: DialogParam, dismissDialog: () -> Unit) {
    this.dialogParam = dialogParam
    this.dismissDialog = dismissDialog

    logDebug("initLayout")

    if (!dialogParam.hasShadow) {
      popupContentView.elevation = 0f
    }
    if (dialogParam.offsetX.hasSetValue()) {
      popupContentView.translationX = dialogParam.offsetX.toFloat()
    }
    if (dialogParam.offsetY.hasSetValue()) {
      popupContentView.translationY = dialogParam.offsetY.toFloat()
    }
    if (dialogParam.positionX.hasSetValue() or dialogParam.positionY.hasSetValue()) {
      popupContentView.updateLayoutParams<LayoutParams> {
        gravity = Gravity.LEFT or Gravity.TOP
        leftMargin = dialogParam.positionX
        topMargin = dialogParam.positionY
      }
    }
    dialogAnimate = ZeekrDialogAnimate.createDialogAnimate(popupContentView, dialogParam)
    popupContentView.post {
      if (dialogParam.backgroundMoveValue != 0) {
        dialogBackgroundMove(dialogParam.backgroundMoveValue)
      }
      displayShadowAnimator(true) {}
      dialogAnimate.showAnimate()
    }
    if (hasEditChildrenView()) {
      addKeyBordHeightChangeCallBack {
        Log.d("ZeekrDialogInput", "addCenterView: $it ")
        if (it > MOVE_BACKGROUND_VALUE) {
          isInputType = true
          dialogMoveY(popupContentView.height / 2)
        } else {
          dialogMoveY(0)
        }
      }
    }
  }

  private fun displayShadowAnimator(show: Boolean, animatorEnd: (() -> Unit)? = null) {
    if (!dialogParam.hasShadowBg) {
      postDelayed({ animatorEnd?.invoke() }, dialogParam.animationDuration)
      return
    }
    val shadowInterpolator =
      dialogParam.showInterpolator.takeIf { show } ?: dialogParam.dismissInterpolator
    if (dialogParam.customShadowBg != null) {

      if (show) {
        val view = View(context).apply { id = R.id.dialog_background_id }
        addView(
          view,
          LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT,
            ViewGroup.LayoutParams.MATCH_PARENT
          )
        )
        view.background = dialogParam.customShadowBg
      }
      val backgroundView: View = findViewById(R.id.dialog_background_id)

      ValueAnimator.ofFloat(0f, 1f).apply {
        addUpdateListener {
          val value = it.animatedValue as Float
          backgroundView.alpha = value.takeIf { show } ?: (1f - value)
        }
        doOnEnd {
          animatorEnd?.invoke()
        }
        interpolator = shadowInterpolator
        duration = dialogParam.animationDuration
        start()
      }
      return
    }
    val maskColor = context.themeColor(com.google.android.material.R.attr.colorPrimarySurface)
    val argbEvaluator = ArgbEvaluator()
    val startColor = Color.TRANSPARENT.takeIf { show } ?: maskColor
    val endColor = Color.TRANSPARENT.takeUnless { show } ?: maskColor

    ValueAnimator.ofObject(
      argbEvaluator, startColor, endColor
    ).apply {
      addUpdateListener {
        setBackgroundColor(it.animatedValue as Int)
      }
      doOnEnd {
        animatorEnd?.invoke()
      }
      interpolator = shadowInterpolator
      duration = dialogParam.animationDuration
      start()
    }
  }

  override fun onAttachedToWindow() {
    logDebug("onAttachedToWindow")
    super.onAttachedToWindow()
    if (context.applicationContext != null) {
      context.registerComponentCallbacks(componentCallbacks)
    }
    if (Build.VERSION.SDK_INT >= P) {
      ViewCompat.removeOnUnhandledKeyEventListener(this, this)
      ViewCompat.addOnUnhandledKeyEventListener(this, this)
    }
  }

  internal fun dialogAnimationMove(
    positionX: Int,
    animationInterpolator: Interpolator,
    animationTime: Long
  ) {
    post {
      ValueAnimator.ofInt(translationX.toInt(), positionX).apply {
        addUpdateListener {
          position = it.animatedValue as Int
          translationX = position.toFloat()
          popupContentView.translationX = -position.toFloat() / 2
        }
        interpolator = animationInterpolator
        duration = animationTime
        start()
      }
    }
  }

  internal fun dialogBackgroundMove(positionX: Int) {
    post {
      ValueAnimator.ofInt(translationX.toInt(), positionX).apply {
        addUpdateListener {
          position = it.animatedValue as Int
          translationX = position.toFloat()
          popupContentView.translationX = -position.toFloat() / 2
        }
        duration = 0
        start()
      }
    }
  }

  private fun dialogMoveY(positionY: Int) {
    post {
      ValueAnimator.ofInt(translationY.toInt(), positionY).apply {
        addUpdateListener {
          position = it.animatedValue as Int
          popupContentView.translationY = -position.toFloat()
        }
        duration = DURATION_VALUE
        interpolator = DecelerateInterpolator(FACTOR_VALUE)
        start()
      }
    }
  }

  internal fun onDialogResume() {
    if (isInputType) {
      popupContentView.translationY = 0.toFloat()
    }
  }

  override fun onWindowFocusChanged(hasWindowFocus: Boolean) {
    super.onWindowFocusChanged(hasWindowFocus)
    logDebug("onWindowFocusChanged $hasWindowFocus ")
  }

  override fun onDetachedFromWindow() {
    logDebug("onDetachedFromWindow")
    super.onDetachedFromWindow()
    if (context.applicationContext != null) {
      context.unregisterComponentCallbacks(componentCallbacks)
    }
    if (Build.VERSION.SDK_INT >= P) {
      ViewCompat.removeOnUnhandledKeyEventListener(this, this)
    }
  }

  @RequiresApi(Build.VERSION_CODES.M)
  override fun onConfigurationChanged(newConfig: Configuration) {
    super.onConfigurationChanged(newConfig)
    dayNightChanged(newConfig)
  }

  @SuppressLint("NewApi")
  private fun dayNightChanged(newConfig: Configuration) {
    if (newConfig.uiMode != currentMode) {
      currentMode = newConfig.uiMode
      if (dialogParam.dayNightClose) {
        dismissDialog.invoke()
        dismissOnListener?.invoke(false)
      } else {
        (popupContentView as? ZeekrDialogLayout)?.themeApply()
      }
    }
  }

  override fun onUnhandledKeyEvent(v: View, event: KeyEvent): Boolean {
    return processKeyEvent(event.keyCode, event)
  }

  private fun processKeyEvent(keyCode: Int, event: KeyEvent): Boolean {
    if (keyCode == KeyEvent.KEYCODE_BACK && event.action == KeyEvent.ACTION_UP) {
      if (dialogParam.isDismissOnBackPressed) {
        dismissOrHideSoftInput()
      }
      return true
    }
    return false
  }

  internal fun setDismissOnListener(dismissOnListener: DialogDismissCallback?) {
    this.dismissOnListener = dismissOnListener
  }

  internal fun setDismissBeforeOnListener(dismissOnListener: DialogDismissCallback?) {
    this.dismissBeforeOnListener = dismissOnListener
  }

  internal fun setTouchOutsideListener(touchOutsideListener: DialogTouchOutsideCallback?) {
    this.touchOutsideListener = touchOutsideListener
  }

  internal fun dismiss(isOutSidePressed: Boolean = false) {
    isDismissAnimatorRunning = true
    dialogAnimate.hideAnimate()
    dismissBeforeOnListener?.invoke(isOutSidePressed)
    displayShadowAnimator(false) {
      isDismissAnimatorRunning = false
      dismissOnListener?.invoke(isOutSidePressed)
      dismissDialog.invoke()
    }
  }

  private fun dismissOrHideSoftInput(isOutSidePressed: Boolean = false) {
    if (isKeyboardShown()) {
      val imm = context.getSystemService(Context.INPUT_METHOD_SERVICE) as InputMethodManager
      imm.hideSoftInputFromWindow(popupContentView.windowToken, 0)
    } else {
      dismiss(isOutSidePressed)
    }
  }

  private fun passTouchThrough(event: MotionEvent) {
    if (dialogParam.isTouchThrough) {
      (context as? Activity)?.dispatchTouchEvent(event)
    }
  }

  @SuppressLint("ClickableViewAccessibility")
  override fun onTouchEvent(event: MotionEvent): Boolean {
    if (isDismissAnimatorRunning) {
      logDebug("onTouchEvent  isDismissAnimatorRunning")
      return true
    }
    val rect = Rect()
    popupContentView.getGlobalVisibleRect(rect)
    // logDebug("onTouchEvent  event.action:${event.action} rect: $rect  event.x: ${event.x}  event.y: ${event.y}")
    val moveX = translationX
    if (!rect.contains((event.x + moveX).toInt(), event.y.toInt())) {
      logDebug("onTouchEvent  outside  event: ${event.x} X ${event.y} ")
      when (event.action) {
        MotionEvent.ACTION_DOWN, MotionEvent.ACTION_MOVE -> {
          passTouchThrough(event)
        }

        MotionEvent.ACTION_UP, MotionEvent.ACTION_CANCEL -> {
          passTouchThrough(event)
          if (touchOutsideListener != null) {
            touchOutsideListener?.invoke(popupContentView)
          } else if (dialogParam.isDismissOnTouchOutside) {
            logDebug("onTouchEvent  distance < touchSlop ")
            // 查看是否在排除区域外
            val rectList: List<Rect>? = dialogParam.notDismissWhenTouchInArea
            if (!rectList.isNullOrEmpty()) {
              var inRect = false
              for (r in rectList) {
                if (r.contains(
                    (event.x + moveX.toInt()).toInt(), event.y.toInt()
                  )
                ) {
                  inRect = true
                  break
                }
              }
              if (!inRect) {
                logDebug("onTouchEvent  !inRect ")
                dismissOrHideSoftInput(true)
                playSoundEffect(SoundEffectConstants.CLICK)
              }
            } else {
              logDebug("onTouchEvent  else")
              dismissOrHideSoftInput(true)
              playSoundEffect(SoundEffectConstants.CLICK)
            }
          }
        }
      }
    }
    return true
  }

  companion object {
    private const val DURATION_VALUE = 300L
    private const val FACTOR_VALUE = 3F
    private val MOVE_BACKGROUND_VALUE = 500.dp
  }
}
