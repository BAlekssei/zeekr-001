package com.zeekr.component.selection

import android.annotation.SuppressLint
import android.content.Context
import android.graphics.Rect
import android.graphics.drawable.Drawable
import android.util.AttributeSet
import android.view.LayoutInflater
import android.view.MotionEvent
import android.view.ViewConfiguration
import android.widget.Checkable
import android.widget.FrameLayout
import androidx.constraintlayout.widget.ConstraintLayout
import androidx.core.view.ViewCompat
import androidx.core.view.isGone
import androidx.core.view.isInvisible
import androidx.core.view.isVisible
import com.zeekr.component.R
import com.zeekr.component.colors.primary
import com.zeekr.component.colors.primary40
import com.zeekr.component.databinding.ZeekrSwitchLayoutBinding
import com.zeekr.component.extention.allEnable
import com.zeekr.component.extention.clickWithTrigger
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.getViewRect
import com.zeekr.component.extention.logDebug
import com.zeekr.component.extention.performClickDelayed
import com.zeekr.component.ripple.ZeekrVoiceButtonInterface
import com.zeekr.component.ripple.refreshScreenLocation
import com.zeekr.component.ripple.refreshViewRect
import com.zeekr.component.ripple.rippleDisplay
import com.zeekr.component.touch.expandTouchArea
import kotlin.math.abs

class ZeekrSwitch @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null,
  defStyleAttr: Int = 0
) : ConstraintLayout(context, attrs, defStyleAttr), ZeekrVoiceButtonInterface, Checkable {

  private var switchCheck = false
  private lateinit var binding: ZeekrSwitchLayoutBinding
  private var listener: ((Boolean) -> Unit)? = null
  private var switchText: CharSequence? = null
  private var switchTip: CharSequence? = null
  private var switchIcon: Drawable? = null
  private var hasIcon: Boolean = false
  private var triggerTime: Int
  private var clickController: (() -> Unit)? = null
  private val rippleRect = Rect()
  private var iconIsInfo = false
  private val mTouchSlop: Int
  private var mTouchX = 0f
  private var mTouchY = 0f
  private var isTouchDrag = false
  private var disableClicker: (() -> Unit)? = null

  private lateinit var zeekrSwitchButton: SwitchButton

  val checked: Boolean
    get() = switchCheck

  init {
    // Ensure we are using the correctly themed context rather than the context that was passed in.
    val attributes = context.resources.obtainAttributes(attrs, R.styleable.ZeekrSwitch)

    switchText = attributes.getString(R.styleable.ZeekrSwitch_zeekrSwitchText)
    switchTip = attributes.getString(R.styleable.ZeekrSwitch_zeekrSwitchTip)
    hasIcon = attributes.getBoolean(R.styleable.ZeekrSwitch_hasInfoIcon, false)
    switchIcon = attributes.getDrawable(R.styleable.ZeekrSwitch_iconDrawable)
    switchCheck = attributes.getBoolean(R.styleable.ZeekrSwitch_zeekrChecked, false)
    iconIsInfo = attributes.getBoolean(R.styleable.ZeekrSwitch_iconIsInfo, false)
    triggerTime = attributes.getInt(R.styleable.ZeekrSwitch_zeekrTrigger, 0)

    submitLayout()

    val config = ViewConfiguration.get(context)
    mTouchSlop = config.scaledTouchSlop
    isEnabled = attributes.getBoolean(R.styleable.ZeekrSwitch_zeekrEnabled, true)
    isChildrenDrawingOrderEnabled = true
    clipChildren = false
    clipToPadding = false

    attributes.recycle()
    ViewCompat.setImportantForAccessibility(this, ViewCompat.IMPORTANT_FOR_ACCESSIBILITY_YES)
  }

  override fun setChecked(checked: Boolean) {
    setSwitchChecked(checked)
  }

  override fun isChecked(): Boolean {
    return switchCheck
  }

  override fun toggle() {
    setSwitchChecked(!switchCheck)
  }

  override fun setEnabled(enable: Boolean) {
    super.setEnabled(enable)
    zeekrSwitchButton.alpha = 1f.takeIf { enable } ?: 0.4f
    binding.zeekrSwitchText.alpha = 1f.takeIf { enable } ?: 0.4f
    allEnable(enable)
  }

  fun canMove(enable: Boolean) {
    super.setEnabled(enable)
    allEnable(enable)
  }

  @JvmOverloads
  fun setSwitchChecked(checked: Boolean, hasAnimator: Boolean = false) {
    logDebug(
      "setSwitchChecked switchCheck： $switchCheck  text: ${binding.zeekrSwitchText.text}" +
        " checked: ${zeekrSwitchButton.isChecked}  hasAnimator:$hasAnimator 需要设置checked: $checked"
    )
    if (switchCheck == checked && zeekrSwitchButton.isChecked == checked) {
      return
    }
    switchCheck = checked
    isPressed = false

    binding.changeSwitch(hasAnimator)
  }

  private fun ZeekrSwitchLayoutBinding.changeSwitch(hasAnimator: Boolean = true) {
    if (hasAnimator) {
      zeekrSwitchButton.isChecked = switchCheck
    } else {
      zeekrSwitchButton.changeSwitchNoAnimator(switchCheck)
    }
    zeekrSwitchText.isSelected = switchCheck
    zeekrSwitchIcon.isSelected = switchCheck
    zeekrSwitchTrackShadow.isInvisible = true // !switchCheck
  }

  fun isSwitchChecked() = switchCheck

  fun setZeekrSwitchListener(listener: ((Boolean) -> Unit)) {
    this.listener = listener
  }

  fun setClickController(controller: () -> Unit) {
    this.clickController = controller
    zeekrSwitchButton.hasClickController = true
  }

  fun setDisableClicker(clicker: () -> Unit) {
    disableClicker = clicker
  }

  fun setIconClicker(clicker: () -> Unit) {
    binding.zeekrSwitchIcon.setOnClickListener {
      clicker.invoke()
    }
  }

  fun text(
    switchText: CharSequence? = null
  ): ZeekrSwitch = apply {
    this.switchText = switchText
  }

  fun tip(
    switchTip: CharSequence? = null
  ): ZeekrSwitch = apply {
    this.switchTip = switchTip
  }

  fun icon(
    hasIcon: Boolean
  ): ZeekrSwitch = apply {
    this.hasIcon = hasIcon
  }

  fun applyData(): ZeekrSwitch = apply {
    binding.submitUi()
  }

  inline fun applyData(func: ZeekrSwitch.() -> Unit): ZeekrSwitch = apply {
    this.func()
    this.applyData()
  }

  private fun ZeekrSwitchLayoutBinding.submitUi() = run {
    switchText?.let {
      zeekrSwitchText.text = it
      zeekrSwitchButton.contentDescription = it
    }
    zeekrSwitchText.isGone = switchText.isNullOrEmpty()
    switchTip?.let {
      zeekrSwitchTip.text = it
    }
    zeekrSwitchTip.isGone = switchTip.isNullOrEmpty()
    zeekrSwitchIcon.isVisible = hasIcon
  }

  @SuppressLint("ClickableViewAccessibility")
  private fun submitLayout() {

    binding = ZeekrSwitchLayoutBinding.inflate(
      LayoutInflater.from(context),
      this
    ).apply {
      logDebug("submitUi switchCheck： $switchCheck")

      // 动态添加view
      val switchButton = SwitchButton(context)
      val param = FrameLayout.LayoutParams(
        FrameLayout.LayoutParams.MATCH_PARENT,
        FrameLayout.LayoutParams.MATCH_PARENT
      )
      switchButton.layoutParams = param
      // 手动赋予ID，避免重复ID导致异常缓存 SwitchButton-CompoundButton
      switchButton.id = id * -1
      switchButtonContainer.addView(switchButton)

      zeekrSwitchButton = switchButton

      if (iconIsInfo) {
        zeekrSwitchIcon.setImageResource(R.drawable.ic_baseline_info)
      }
      switchIcon?.let {
        zeekrSwitchIcon.setImageDrawable(it)
      }
      submitUi()
      if (switchCheck) {
        // zeekrSwitchComponent.jumpToState(R.id.end)
        zeekrSwitchButton.isChecked = true
        zeekrSwitchText.isSelected = switchCheck
        zeekrSwitchIcon.isSelected = switchCheck
        zeekrSwitchTrackShadow.isInvisible = true // !switchCheck
      } else {
        zeekrSwitchTrackShadow.isInvisible = true
      }

      zeekrSwitchButton.expandTouchArea(Rect(20.dp, 20.dp, 20.dp, 20.dp))

      zeekrSwitchButton.setOnCheckedChangeListener { switch, isChecked ->
        switchCheck = isChecked
        this@ZeekrSwitch.isPressed = switch.isPressed
        listener?.invoke(isChecked)
      }

      clickWithTrigger(triggerTime.toLong()) {
        clickController?.invoke() ?: run {
          logDebug("zeekrSwitchButton   focus: $isFocused    windowFocus: ${hasWindowFocus()}")
          switchCheck = !switchCheck

          changeSwitch()
          // listener?.invoke(switchCheck)
        }
      }
    }
  }

  override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
    super.onLayout(changed, left, top, right, bottom)
    val viewRect = zeekrSwitchButton.getViewRect()
    rippleRect.refreshViewRect(viewRect.width(), viewRect.height())
    zeekrSwitchButton.refreshScreenLocation(rippleRect)
  }

  @SuppressLint("ClickableViewAccessibility")
  override fun onTouchEvent(event: MotionEvent): Boolean {
    when (event.actionMasked) {
      MotionEvent.ACTION_DOWN -> {
        mTouchX = event.x
        mTouchY = event.y
        isTouchDrag = false
      }

      MotionEvent.ACTION_MOVE -> {
        val x: Float = event.x
        val y: Float = event.y
        if (abs(x - mTouchX) > mTouchSlop ||
          abs(y - mTouchY) > mTouchSlop
        ) {
          logDebug(" mTouchX: ${abs(x - mTouchX)}  mTouchY: ${abs(y - mTouchY)} ")
          isTouchDrag = true
        }
      }

      MotionEvent.ACTION_UP -> {
        logDebug(" isEnabled: $isEnabled  isTouchDrag: $isTouchDrag ")
        if (!isEnabled && !isTouchDrag) {
          disableClicker?.invoke()
        }
      }
    }
    return super.onTouchEvent(event)
  }

  override fun onWindowFocusChanged(hasWindowFocus: Boolean) {
    super.onWindowFocusChanged(hasWindowFocus)
    zeekrSwitchButton.refreshScreenLocation(rippleRect)
  }

  fun themeApply() {
    logDebug("ZeekrSwitch  uiMode : ${context.resources.configuration.uiMode}")
    with(binding) {
      zeekrSwitchButton.themeApply()
      zeekrSwitchText.setTextColor(primary)
      if (switchIcon != null) {
        zeekrSwitchIcon.setImageDrawable(switchIcon)
      } else if (iconIsInfo) {
        zeekrSwitchIcon.setImageResource(R.drawable.ic_baseline_info)
      } else {
        zeekrSwitchIcon.setImageResource(R.drawable.ic_baseline_error)
      }
      zeekrSwitchTip.setTextColor((primary40))
      invalidate()
    }
  }

  override fun voiceClick() {
    zeekrSwitchButton.performClickDelayed()
    zeekrSwitchButton.rippleDisplay(rippleRect)
  }
}
