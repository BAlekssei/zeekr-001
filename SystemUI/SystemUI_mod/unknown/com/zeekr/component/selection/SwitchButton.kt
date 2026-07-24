package com.zeekr.component.selection

import android.animation.ObjectAnimator
import android.annotation.SuppressLint
import android.content.Context
import android.graphics.Canvas
import android.graphics.Rect
import android.graphics.drawable.Drawable
import android.util.AttributeSet
import android.util.Log
import android.util.Property
import android.view.MotionEvent
import android.view.SoundEffectConstants
import android.view.VelocityTracker
import android.view.ViewConfiguration
import android.widget.CompoundButton
import androidx.core.view.ViewCompat
import com.google.android.material.shape.CornerFamily
import com.google.android.material.shape.MaterialShapeDrawable
import com.google.android.material.shape.ShapeAppearanceModel
import com.zeekr.component.R
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.getDrawableOrNull
import com.zeekr.component.extention.logDebug
import com.zeekr.component.extention.themeColorStateListSelectId
import kotlin.math.abs

class SwitchButton@JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : CompoundButton(context, attrs) {

  private val mThumbDrawable = MaterialShapeDrawable()
  private var mTrackDrawableOn: Drawable
  private var mTrackDrawableOff: Drawable
  private val mTrackDrawable: Drawable
    get() = mTrackDrawableOn.takeIf { isChecked } ?: mTrackDrawableOff
  private var mThumbShadowDrawableOn: Drawable
  private var mThumbShadowDrawableOff: Drawable
  private val mThumbShadowDrawable: Drawable
    get() = mThumbShadowDrawableOn.takeIf { isChecked } ?: mThumbShadowDrawableOff
  private var mTouchMode = 0
  private var mTouchSlop = 0
  private var mTouchX = 0f
  private var mTouchY = 0f
  private val mVelocityTracker = VelocityTracker.obtain()
  private var mMinFlingVelocity = 0

  private var mThumbPosition = 0f

  private var mSwitchWidth = 72.dp
  private var mSwitchHeight = 40.dp
  private var mThumbWidth = 32.dp
  private var mThumbPadding = 4.dp
  private var mSwitchLeft = 0
  private var mSwitchTop = 0
  private var mSwitchRight = 0
  private var mSwitchBottom = 0
  private var initTime = true

  private val mTempRect = Rect()
  private var mPositionAnimator: ObjectAnimator? = null
  internal var hasClickController = false

  init {
    Log.d("SwitchButton", "  test is on ")
    mTrackDrawableOn = context.getDrawableOrNull(R.drawable.zeekr_switch_track_on)?.mutate()!!.apply {
      setBounds(0, 0, mSwitchWidth, mSwitchHeight)
    }
    mTrackDrawableOff = context.getDrawableOrNull(R.drawable.zeekr_switch_track_off)?.mutate()!!.apply {
      setBounds(0, 0, mSwitchWidth, mSwitchHeight)
    }

    mThumbShadowDrawableOn = context.getDrawableOrNull(R.drawable.shadow_off)?.mutate()!!.apply {
      setBounds(0, 0, 40.dp, 40.dp)
    }

    mThumbShadowDrawableOff = context.getDrawableOrNull(R.drawable.shadow_on)?.mutate()!!.apply {
      setBounds(0, 0, 40.dp, 40.dp)
    }

    with(mThumbDrawable) {
      shapeAppearanceModel =
        ShapeAppearanceModel.builder()
          .setAllCorners(CornerFamily.ROUNDED, 6.toFloat()).build()
      fillColor =
        context.themeColorStateListSelectId(android.R.color.white)
      setBounds(0, 0, mThumbWidth, mThumbWidth)
    }

    val config = ViewConfiguration.get(context)
    mTouchSlop = config.scaledTouchSlop
    mMinFlingVelocity = config.scaledMinimumFlingVelocity
  }

  override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
    super.onMeasure(
      MeasureSpec.makeMeasureSpec(
        mSwitchWidth,
        MeasureSpec.EXACTLY
      ),
      MeasureSpec.makeMeasureSpec(
        mSwitchHeight,
        MeasureSpec.EXACTLY
      )
    )
  }

  /**
   * Sets the thumb position as a decimal value between 0 (off) and 1 (on).
   *
   * @param position new position between [0,1]
   */
  fun setThumbPosition(position: Float) {
    // logDebug("setThumbPosition  position:$position   ")
    mThumbPosition = position
    invalidate()
  }

  fun changeSwitchNoAnimator(checked: Boolean) {
    logDebug("changeSwitchNoAnimator  checked:$checked  isChecked: $isChecked   ")
    isChecked = checked
    cancelPositionAnimator()
    val position = 1f.takeIf { isChecked } ?: 0f
    setThumbPosition(position)
  }

  override fun toggle() {
    // takeUnless { hasClickController }?.run { super.toggle() }
  }

  override fun performClick(): Boolean {
    isPressed = true
    return super.performClick()
  }

  override fun onFinishInflate() {
    super.onFinishInflate()
    postDelayed({
      initTime = false
    }, 1000)
  }

  override fun setChecked(checked: Boolean) {
    logDebug("setChecked  checked:$checked  isChecked:$isChecked initTime: $initTime   ")
    super.setChecked(checked)

    // Calling the super method may result in setChecked() getting called
    // recursively with a different value, so load the REAL value...

    if (windowToken != null && ViewCompat.isLaidOut(this) && !initTime) {
      animateThumbToCheckedState(isChecked)
    } else {
      // Immediately move the thumb to the new position.
      cancelPositionAnimator()
      val position = 1f.takeIf { isChecked } ?: 0f
      setThumbPosition(position)
    }
  }

  private fun animateThumbToCheckedState(newCheckedState: Boolean) {
    val targetPosition: Float = 1f.takeIf { newCheckedState } ?: 0f
    mPositionAnimator = ObjectAnimator.ofFloat(this, THUMB_POS, targetPosition).apply {
      duration = THUMB_ANIMATION_DURATION.toLong()
      setAutoCancel(true)
      start()
    }
  }

  private fun cancelPositionAnimator() {
    mPositionAnimator?.cancel()
  }

  override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
    super.onLayout(changed, left, top, right, bottom)
    mSwitchLeft = left
    mSwitchTop = top
    mSwitchBottom = bottom
    mSwitchRight = right
  }

  override fun onDraw(canvas: Canvas) {
    super.onDraw(canvas)

    canvas.save()
    mTrackDrawable.draw(canvas)
    canvas.restore()

    canvas.save()
    canvas.translate((mThumbPadding + getThumbOffset()).toFloat() - 3f, mThumbPadding.toFloat() - 1f)
    mThumbShadowDrawable.draw(canvas)
    canvas.restore()

    canvas.save()
    canvas.translate((mThumbPadding + getThumbOffset()).toFloat(), mThumbPadding.toFloat())
    mThumbDrawable.draw(canvas)
    canvas.restore()
  }

  @SuppressLint("ClickableViewAccessibility")
  override fun onTouchEvent(event: MotionEvent): Boolean {
    mVelocityTracker.addMovement(event)
    when (event.actionMasked) {
      MotionEvent.ACTION_DOWN -> {
        val x: Float = event.x
        val y: Float = event.y
        if (isEnabled && hitThumb(x, y) && !hasClickController) {
          mTouchMode = TOUCH_MODE_DOWN
          mTouchX = x
          mTouchY = y
        }
      }
      MotionEvent.ACTION_MOVE -> {
        when (mTouchMode) {
          TOUCH_MODE_IDLE -> {}
          TOUCH_MODE_DOWN -> {
            val x: Float = event.x
            val y: Float = event.y
            if (abs(x - mTouchX) > mTouchSlop ||
              abs(y - mTouchY) > mTouchSlop
            ) {
              mTouchMode = TOUCH_MODE_DRAGGING
              parent.requestDisallowInterceptTouchEvent(true)
              mTouchX = x
              mTouchY = y
              return true
            }
          }
          TOUCH_MODE_DRAGGING -> {
            val x: Float = event.x
            val thumbScrollRange = getThumbScrollRange()
            val thumbScrollOffset = x - mTouchX
            val dPos: Float = if (thumbScrollRange != 0) {
              thumbScrollOffset / thumbScrollRange
            } else {
              // If the thumb scroll range is empty, just use the
              // movement direction to snap on or off.
              1f.takeIf { thumbScrollOffset > 0 } ?: -1f
            }
            val newPos = constrain(mThumbPosition + dPos, 0f, 1f)
            if (newPos != mThumbPosition) {
              mTouchX = x
              logDebug("TOUCH_MODE_DRAGGING  ")
              setThumbPosition(newPos)
            }
            return true
          }
        }
      }
      MotionEvent.ACTION_UP, MotionEvent.ACTION_CANCEL -> {
        if (mTouchMode == TOUCH_MODE_DRAGGING) {
          stopDrag(event)
          // Allow super class to handle pressed state, etc.
          super.onTouchEvent(event)
          return true
        }
        mTouchMode = TOUCH_MODE_IDLE
        mVelocityTracker.clear()
      }
    }

    return super.onTouchEvent(event)
  }

  override fun getAccessibilityClassName(): CharSequence? {
    return SwitchButton::class.java.name
  }

  private fun getTargetCheckedState(): Boolean {
    return mThumbPosition > 0.5f
  }

  private fun cancelSuperTouch(ev: MotionEvent) {
    val cancel = MotionEvent.obtain(ev)
    cancel.action = MotionEvent.ACTION_CANCEL
    super.onTouchEvent(cancel)
    cancel.recycle()
  }

  /**
   * Called from onTouchEvent to end a drag operation.
   *
   * @param ev Event that triggered the end of drag mode - ACTION_UP or ACTION_CANCEL
   */
  private fun stopDrag(ev: MotionEvent) {
    logDebug("stopDrag  ")
    mTouchMode = TOUCH_MODE_IDLE

    // Commit the change if the event is up and not canceled and the switch
    // has not been disabled during the drag.
    val commitChange = ev.action == MotionEvent.ACTION_UP && isEnabled
    val oldState = isChecked
    val newState: Boolean = if (commitChange) {
      mVelocityTracker.computeCurrentVelocity(1000)
      val xvel = mVelocityTracker.xVelocity
      if (abs(xvel) > mMinFlingVelocity) {
        xvel > 0
      } else {
        getTargetCheckedState()
      }
    } else {
      oldState
    }
    if (newState != oldState) {
      isPressed = true
      playSoundEffect(SoundEffectConstants.CLICK)
    }
    // Always call setChecked so that the thumb is moved back to the correct edge
    isChecked = newState
    cancelSuperTouch(ev)
  }

  /**
   * Taken from android.util.MathUtils
   */
  private fun constrain(amount: Float, low: Float, high: Float): Float {
    return if (amount < low) low else if (amount > high) high else amount
  }

  /**
   * @return true if (x, y) is within the target area of the switch thumb
   */
  private fun hitThumb(x: Float, y: Float): Boolean {
    // Relies on mTempRect, MUST be called first!
    val thumbOffset: Int = getThumbOffset()
    mThumbDrawable.getPadding(mTempRect)
    val thumbTop: Int = mSwitchTop - mTouchSlop
    val thumbLeft: Int = mSwitchLeft + thumbOffset - mTouchSlop
    val thumbRight: Int = thumbLeft + mThumbWidth +
      mTempRect.left + mTempRect.right + mTouchSlop
    val thumbBottom: Int = mSwitchBottom + mTouchSlop
    return x > thumbLeft && x < thumbRight && y > thumbTop && y < thumbBottom
  }

  /**
   * Translates thumb position to offset according to current RTL setting and
   * thumb scroll range. Accounts for both track and thumb padding.
   *
   * @return thumb offset
   */
  private fun getThumbOffset(): Int {
    return (mThumbPosition * getThumbScrollRange() + 0.5f).toInt()
  }

  private fun getThumbScrollRange(): Int {
    return mSwitchWidth - mThumbPadding * 2 - mThumbWidth
  }

  fun themeApply() {
    mTrackDrawableOn = context.getDrawableOrNull(R.drawable.zeekr_switch_track_on)?.mutate()!!.apply {
      setBounds(0, 0, mSwitchWidth, mSwitchHeight)
    }
    mTrackDrawableOff = context.getDrawableOrNull(R.drawable.zeekr_switch_track_off)?.mutate()!!.apply {
      setBounds(0, 0, mSwitchWidth, mSwitchHeight)
    }
    mThumbShadowDrawableOn = context.getDrawableOrNull(R.drawable.shadow_off)?.mutate()!!.apply {
      setBounds(0, 0, 40.dp, 40.dp)
    }
    mThumbShadowDrawableOff = context.getDrawableOrNull(R.drawable.shadow_on)?.mutate()!!.apply {
      setBounds(0, 0, 40.dp, 40.dp)
    }
    with(mThumbDrawable) {
      fillColor =
        context.themeColorStateListSelectId(android.R.color.white)
    }
    invalidate()
  }

  companion object {
    private val THUMB_POS: Property<SwitchButton, Float> =
      object : Property<SwitchButton, Float>(
        Float::class.java, "thumbPos"
      ) {
        override fun get(switch: SwitchButton): Float {
          return switch.mThumbPosition
        }

        override fun set(switch: SwitchButton, value: Float) {
          switch.setThumbPosition(value)
        }
      }
    private const val TOUCH_MODE_IDLE = 0
    private const val TOUCH_MODE_DOWN = 1
    private const val TOUCH_MODE_DRAGGING = 2

    private const val THUMB_ANIMATION_DURATION = 250
  }
}
