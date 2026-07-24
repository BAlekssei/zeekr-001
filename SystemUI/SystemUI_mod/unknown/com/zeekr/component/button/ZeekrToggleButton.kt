package com.zeekr.component.button

import android.annotation.SuppressLint
import android.content.Context
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Rect
import android.util.AttributeSet
import android.view.SoundEffectConstants
import androidx.core.view.ViewCompat
import com.google.android.material.button.MaterialButton
import com.zeekr.component.R
import com.zeekr.component.colors.createColorStateListToggle
import com.zeekr.component.colors.createColorStateListToggleButton
import com.zeekr.component.colors.primary
import com.zeekr.component.colors.primary40
import com.zeekr.component.colors.primary60
import com.zeekr.component.colors.secondary
import com.zeekr.component.colors.secondary40
import com.zeekr.component.colors.toggleButtonCheckDisabledUnPress
import com.zeekr.component.colors.toggleButtonCheckEnabledPress
import com.zeekr.component.colors.toggleButtonCheckEnabledUnPress
import com.zeekr.component.colors.toggleButtonUnCheckDisabledUnPress
import com.zeekr.component.colors.toggleButtonUnCheckEnabledPress
import com.zeekr.component.colors.toggleButtonUnCheckEnabledUnPress
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.performClickDelayed
import com.zeekr.component.loading.ZeekrLoadingDrawable
import com.zeekr.component.ripple.ZeekrVoiceButtonInterface
import com.zeekr.component.ripple.refreshScreenLocation
import com.zeekr.component.ripple.refreshViewRect
import com.zeekr.component.ripple.rippleDisplay
import com.zeekr.component.touch.expandViewTouch

@SuppressLint("NewApi")
open class ZeekrToggleButton @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null,
  defStyleAttr: Int = 0
) : MaterialButton(context, attrs, defStyleAttr), ZeekrVoiceButtonInterface {

  private val uncheckedStrokeWidth: Int
  private val checkedStrokeWidth: Int
  private val rippleRect = Rect()
  private var isLoading = false
  private val loadingDrawableSide = 56.dp
  private val loadingDrawable: ZeekrLoadingDrawable by lazy {
    ZeekrLoadingDrawable(context).apply {
      setBounds(0, 0, loadingDrawableSide, loadingDrawableSide)
    }
  }

  init {
    val attributes = context.resources.obtainAttributes(attrs, R.styleable.ZeekrToggleButton)

    val uncheckedNoStroke =
      attributes.getBoolean(R.styleable.ZeekrToggleButton_zeekrUncheckNoStroke, false)
    val checkedNoStroke =
      attributes.getBoolean(R.styleable.ZeekrToggleButton_zeekrCheckNoStroke, false)
    uncheckedStrokeWidth = 1.dp.takeUnless { uncheckedNoStroke } ?: 0.dp
    checkedStrokeWidth = 2.dp.takeUnless { checkedNoStroke } ?: 0.dp
    attributes.recycle()
    outlineAmbientShadowColor = Color.TRANSPARENT
    outlineSpotShadowColor = Color.TRANSPARENT

    isChecked = isChecked
    ViewCompat.setImportantForAccessibility(this, ViewCompat.IMPORTANT_FOR_ACCESSIBILITY_YES)
  }

  override fun onFinishInflate() {
    super.onFinishInflate()
    addOnCheckedChangeListener { button, checked ->
      if (button.isPressed && !hasOnClickListeners()) {
        playSoundEffect(SoundEffectConstants.CLICK)
      }
    }
  }

  override fun setChecked(checked: Boolean) {
    super.setChecked(checked)
    if (isCheckable && isEnabled) {
      if (checked) {
        elevation = 8.dp.toFloat()
        strokeWidth = checkedStrokeWidth
      } else {
        elevation = 0.dp.toFloat()
        strokeWidth = 0.dp
      }
    }
  }

  override fun onDraw(canvas: Canvas) {
    if (isLoading) {
      canvas.save()
      canvas.translate((measuredWidth - loadingDrawableSide).toFloat() / 2, (measuredHeight - loadingDrawableSide).toFloat() / 2)
      loadingDrawable.draw(canvas)
      canvas.restore()
    } else {
      super.onDraw(canvas)
    }
  }

  override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
    super.onLayout(changed, left, top, right, bottom)
    rippleRect.refreshViewRect(right - left, bottom - top)
    refreshScreenLocation(rippleRect)
    expandViewTouch()
  }

  override fun onWindowFocusChanged(hasWindowFocus: Boolean) {
    super.onWindowFocusChanged(hasWindowFocus)
    refreshScreenLocation(rippleRect)
  }

  override fun performClick(): Boolean {
    if (isLoading) {
      return false
    }
    return super.performClick()
  }

  fun setLoading(loading: Boolean) {
    isLoading = loading
    invalidate()
    loadingDrawable.takeIf { isLoading }?.startAnimator() ?: let {
      loadingDrawable.stopAnimator()
    }
    refreshLoading()
        /* if (loading) {
           val drawable = LottieDrawable()
           LottieCompositionFactory.fromRawRes(
             context, com.zeekr.lottie.R.raw.ios_loading
           ).addListener { composition ->
             drawable.composition = composition
             drawable.repeatCount = -1
             drawable.playAnimation()
             originIcon = icon
             originIconSize = iconSize
             when (iconSize) {
               0 -> iconSize = 36.dp
             }
             icon = drawable
           }
         } else {
           icon = originIcon
           iconSize = originIconSize
         }*/
  }

  private fun refreshLoading() {
    if (isLoading) {
      postDelayed({
        if (isLoading) {
          invalidate()
          refreshLoading()
        }
      }, 60)
    }
  }

  internal open fun themeApply(changeIconTint: Boolean? = true) {
    toggleButtonColor(changeIconTint)
  }

  internal open fun themeApply() {
    toggleButtonColor()
  }

  fun toggleButtonColor(changeIconTint: Boolean? = true) {
    strokeColor = createColorStateListToggle(secondary, primary60, secondary40, primary60)
    if (changeIconTint != false) {
      iconTint = createColorStateListToggle(primary, primary, primary60, primary60)
    }
    setTextColor(createColorStateListToggle(primary, primary, primary40, primary40))
    backgroundTintList = createColorStateListToggleButton(
      toggleButtonCheckEnabledPress,
      toggleButtonCheckEnabledUnPress,
      toggleButtonCheckDisabledUnPress,
      toggleButtonUnCheckEnabledPress,
      toggleButtonUnCheckEnabledUnPress,
      toggleButtonUnCheckDisabledUnPress
    )
//    backgroundTintList = context.themeColorResource(com.zeekr.theme.R.color.zeekr_toggle_button_background)
//    strokeColor = context.themeColorResource(com.zeekr.theme.R.color.zeekr_toggle_button_stroke_select)
//    iconTint = context.themeColorResource(com.zeekr.theme.R.color.zeekr_toggle_button_select_icon)
//    setTextColor(context.themeColorStateListSelectId(com.zeekr.theme.R.color.zeekr_toggle_button_select_text_color))
  }

  override fun voiceClick() {
    performClickDelayed()
    rippleDisplay(rippleRect)
  }
}
