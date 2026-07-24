package com.zeekr.component.button

import android.annotation.SuppressLint
import android.content.Context
import android.content.res.ColorStateList
import android.graphics.Canvas
import android.graphics.Rect
import android.util.AttributeSet
import android.view.MotionEvent
import android.view.SoundEffectConstants
import android.view.ViewConfiguration
import com.google.android.material.button.MaterialButton
import com.zeekr.component.R
import com.zeekr.component.colors.colorOutlineBackground
import com.zeekr.component.colors.createColorStateListButton
import com.zeekr.component.colors.createColorStateListEnabled
import com.zeekr.component.colors.ghostButton30
import com.zeekr.component.colors.ghostButton40
import com.zeekr.component.colors.ghostButton80
import com.zeekr.component.colors.onPrimary
import com.zeekr.component.colors.onPrimary40
import com.zeekr.component.colors.primary
import com.zeekr.component.colors.primary40
import com.zeekr.component.colors.primary60
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.logDebug
import com.zeekr.component.extention.performClickDelayed
import com.zeekr.component.loading.ZeekrCircleLoading
import com.zeekr.component.ripple.ZeekrVoiceButtonInterface
import com.zeekr.component.ripple.refreshScreenLocation
import com.zeekr.component.ripple.refreshViewRect
import com.zeekr.component.ripple.rippleDisplay
import com.zeekr.component.touch.expandViewTouch
import kotlin.math.abs
import com.google.android.material.R as materialR
import com.zeekr.theme.R as themeR

open class ZeekrButton @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : MaterialButton(context, attrs), ZeekrVoiceButtonInterface {

  private var mTouchX = 0f
  private var mTouchY = 0f
  private var isTouchDrag = false
  private val rippleRect = Rect()
  private val mTouchSlop: Int
  private var isLoading = false
  private val backgroundTintResId: Int
  private var loadingDrawableSide = 56.dp
  private var disableClicker: (() -> Unit)? = null
  private var loadingListener: (() -> Unit)? = null
  private val loadingDrawable: ZeekrCircleLoading by lazy {
    ZeekrCircleLoading(context).apply {
      setBounds(0, 0, loadingDrawableSide, loadingDrawableSide)
    }
  }

  fun setDisableClicker(clicker: () -> Unit) {
    this.disableClicker = clicker
  }

  fun isLoadingListener(listener: (() -> Unit)) {
    this.loadingListener = listener
  }

  init {
    val attributes = context.obtainStyledAttributes(
      attrs, materialR.styleable.MaterialButton
    )
    backgroundTintResId = attributes.getResourceId(
      materialR.styleable.MaterialButton_backgroundTint, -1
    )
    attributes.recycle()
    val config = ViewConfiguration.get(context)
    mTouchSlop = config.scaledTouchSlop
  }

  /**
   * 设置 loading大小
   * @param size 设置loading大小
   */
  fun setCircleLoadingSize(size: Int) {
    // 更新大小
    loadingDrawableSide = size
    loadingDrawable.setBounds(0, 0, loadingDrawableSide, loadingDrawableSide)
    invalidate()
  }

  fun setLoadingColorReverse() {
    loadingDrawable.colorReverse = true
  }

  fun setLoading(loading: Boolean) {
    isLoading = loading
    invalidate()
    loadingDrawable.takeIf { isLoading }?.startAnimator() ?: let {
      loadingDrawable.stopAnimator()
    }
    refreshLoading()
  }

  override fun onDraw(canvas: Canvas) {
    if (isLoading) {
      canvas.save()
      canvas.translate(
        (measuredWidth - loadingDrawableSide).toFloat() / 2,
        (measuredHeight - loadingDrawableSide).toFloat() / 2
      )
      loadingDrawable.draw(canvas)
      canvas.restore()
      loadingListener?.invoke()
    } else {
      super.onDraw(canvas)
    }
  }

  private fun refreshLoading() {
    if (isLoading) {
      postDelayed({
        if (isLoading) {
          invalidate()
          refreshLoading()
        }
      }, TIMER_VALUE)
    }
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
        if (abs(x - mTouchX) > mTouchSlop || abs(y - mTouchY) > mTouchSlop) {
          logDebug(" mTouchX: ${abs(x - mTouchX)}  mTouchY: ${abs(y - mTouchY)} ")
          isTouchDrag = true
        }
      }

      MotionEvent.ACTION_UP, MotionEvent.ACTION_CANCEL -> {
        if (!isEnabled && !isTouchDrag) {
          disableClicker?.invoke()
        }
      }
    }
    return super.onTouchEvent(event)
  }

  override fun onFinishInflate() {
    super.onFinishInflate()
    addOnCheckedChangeListener { button, checked ->
      if (button.isPressed && !hasOnClickListeners()) {
        playSoundEffect(SoundEffectConstants.CLICK)
      }
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
    refreshLoading()
    refreshScreenLocation(rippleRect)
  }

  override fun voiceClick() {
    performClickDelayed()
    rippleDisplay(rippleRect)
  }

  fun themeApply() {
    when (backgroundTintResId) {
      com.zeekr.theme.R.attr.colorOutlineBackground -> {
        backgroundTintList = ColorStateList.valueOf(colorOutlineBackground)
        iconTint = createColorStateListEnabled(primary, primary40)
        setTextColor(createColorStateListEnabled(primary, primary40))
      }

      themeR.color.zeekr_button_minor_background_select -> {
        backgroundTintList =
          createColorStateListButton(ghostButton80, ghostButton40, ghostButton80, ghostButton30)
        iconTint =
          createColorStateListEnabled(primary, primary40)
        setTextColor(createColorStateListEnabled(primary, primary40))
      }

      themeR.color.zeekr_button_primary_background_select -> {
        backgroundTintList =
          createColorStateListButton(primary60, primary, primary60, primary40)
        iconTint =
          createColorStateListEnabled(onPrimary, onPrimary40)
        setTextColor(createColorStateListEnabled(onPrimary, onPrimary40))
      }

      else -> {}
    }
    invalidate()
  }

  companion object {
    private const val TIMER_VALUE = 60L
  }
}
