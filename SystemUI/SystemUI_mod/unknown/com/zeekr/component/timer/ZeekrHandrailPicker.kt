package com.zeekr.component.timer

import android.annotation.SuppressLint
import android.content.Context
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.Typeface
import android.util.AttributeSet
import android.view.MotionEvent
import android.view.VelocityTracker
import android.view.View
import android.view.ViewConfiguration
import android.view.ViewGroup
import android.view.animation.DecelerateInterpolator
import android.widget.OverScroller
import android.widget.Scroller
import androidx.annotation.RestrictTo
import com.google.android.material.shape.CornerFamily
import com.google.android.material.shape.MaterialShapeDrawable
import com.google.android.material.shape.ShapeAppearanceModel
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.logDebug
import com.zeekr.component.extention.themeColor
import com.zeekr.component.extention.themeColorStateList
import com.zeekr.component.timer.widget.SCROLL_STATE_FLING
import com.zeekr.component.timer.widget.SCROLL_STATE_IDLE
import com.zeekr.component.timer.widget.SCROLL_STATE_TOUCH_SCROLL
import com.zeekr.component.timer.widget.SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT
import com.zeekr.component.timer.widget.SNAP_SCROLL_DURATION
import com.zeekr.component.timer.widget.TOP_AND_BOTTOM_FADING_EDGE_STRENGTH
import com.zeekr.component.timer.widget.WheelAdapter
import com.zeekr.component.timer.widget.ZeekrHandrailPickerChangeListener
import com.zeekr.component.timer.widget.ZeekrHandrailPickerScrollListener
import com.zeekr.component.timer.widget.ZeekrWheelAdapter
import kotlin.math.abs
import kotlin.math.max
import kotlin.math.min

@SuppressLint("NewApi")
class ZeekrHandrailPicker @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null,
  defStyleAttr: Int = 0
) : View(context, attrs, defStyleAttr) {

  private val timeList = mutableListOf<String>()
  private var defaultIndex = 0
  private var listener: ((Int) -> Unit)? = null

  private val mSelectorItemCount = 7
  private val mSelectorVisibleItemCount = 5
  private val mMinIndex: Int = 0
  private val mMaxIndex: Int
    get() = timeList.size - 1
  private val mMaxValidIndex: Int = Int.MAX_VALUE
  private val mMinValidIndex: Int = Int.MIN_VALUE

  private val mWheelMiddleItemIndex: Int
    get() = (mSelectorItemCount - 1) / 2
  private val mWheelVisibleItemMiddleIndex: Int
    get() = (mSelectorVisibleItemCount - 1) / 2
  private val mSelectorItemIndices = mutableListOf<Int>()
  private val mSelectorItemValidStatus = mutableListOf<Boolean>()
  private var mCurSelectedItemIndex = 0
  private var mWrapSelectorWheelPreferred: Boolean = false

  private var mTextPaint: Paint = Paint()
  private var mSelectedTextColor: Int
  private var mUnSelectedTextColor: Int
  private var mTextSize: Int
  private val mTextAlign: String

  private val mOverScroller: OverScroller
  private val adjustScroller: Scroller
  private var mVelocityTracker: VelocityTracker? = null
  private val mTouchSlop: Int
  private val mMaximumVelocity: Int
  private val mMinimumVelocity: Int
  private var mLastY: Float = 0f
  private var mIsDragging: Boolean = false
  private var mCurrentFirstItemOffset: Int = 0
  private var mInitialFirstItemOffset = Int.MIN_VALUE
  private var mTextGapHeight: Int = 0
  private var mItemHeight: Int = 0
  private var mTextHeight: Int = 0
  private var mPreviousScrollerY: Int = 0
  private var mOnValueChangeListener: ZeekrHandrailPickerChangeListener? = null
  private var mOnScrollListener: ZeekrHandrailPickerScrollListener? = null
  private val mAdapter: WheelAdapter
  private val mSelectedTextScale = 0.3f
  private var lastDownEventY = 0f
  private var lastUpEventY = 0f
  private var backgroundDrawable = MaterialShapeDrawable()
  private val backgroundDrawableCornerSize = 8.dp
  private var activate = true

  private var mScrollState = SCROLL_STATE_IDLE

  var selectIndex = 0
    get() = mCurSelectedItemIndex
    set(value) {
      field = value
      scrollTo(value)
    }

  init {
    mOverScroller = OverScroller(context, DecelerateInterpolator(5f))
    adjustScroller = Scroller(getContext(), DecelerateInterpolator(2.5f))
    val configuration = ViewConfiguration.get(context)
    mTouchSlop = configuration.scaledTouchSlop
    mMaximumVelocity =
      (configuration.scaledMaximumFlingVelocity / SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT).toInt()
    mMinimumVelocity = configuration.scaledMinimumFlingVelocity

    mSelectedTextColor = context.themeColor(com.google.android.material.R.attr.colorPrimary)
    mUnSelectedTextColor =
      context.resources.getColor(com.zeekr.theme.R.color.primary_60, context.theme)
    mTextSize = 24
    mTextAlign = "CENTER"

    mTextPaint.run {
      isAntiAlias = true
      textSize = mTextSize.toFloat()
      textAlign = Paint.Align.valueOf(mTextAlign)
      style = Paint.Style.FILL_AND_STROKE
      typeface = Typeface.DEFAULT_BOLD
    }

    with(backgroundDrawable) {
      shapeAppearanceModel = ShapeAppearanceModel.builder()
        .setAllCorners(CornerFamily.ROUNDED, backgroundDrawableCornerSize.toFloat()).build()
      fillColor =
        context.themeColorStateList(com.google.android.material.R.attr.colorSecondary)
    }

    mAdapter = ZeekrWheelAdapter().apply {
      timeList = this@ZeekrHandrailPicker.timeList
    }

    timeList.addAll(listOf("aa", "bb", "cc", "dd", "ee", "ff", "gg"))
    initializeSelectorWheelIndices()
  }

  fun setTextSize(size: Int) {
    mTextSize = size
  }

  fun setBgDrawable(drawable: MaterialShapeDrawable) {
    backgroundDrawable = drawable
    invalidate()
  }

  fun timeList(list: List<String>) = apply {
    timeList.clear()
    timeList.addAll(list)
  }

  fun defaultIndex(index: Int) = apply {
    defaultIndex = index
    applyData()
  }

  fun infinite(infinite: Boolean) = apply {
    mWrapSelectorWheelPreferred = infinite
  }

  fun itemListener(listener: ((Int) -> Unit)) = apply {
    this.listener = listener
  }

  override fun setEnabled(enabled: Boolean) {
    super.setEnabled(enabled)
    alpha = 1f.takeIf { isEnabled } ?: 0.4f
  }

  @RestrictTo(RestrictTo.Scope.LIBRARY_GROUP)
  fun applyData() = apply {
    initializeSelectorWheelIndices()
    selectIndex = defaultIndex
    invalidate()
  }

  inline fun submit(func: ZeekrHandrailPicker.() -> Unit): ZeekrHandrailPicker = apply {
    this.func()
    this.applyData()
  }

  override fun getSuggestedMinimumWidth(): Int {
    var suggested = super.getSuggestedMinimumHeight()
    if (mSelectorVisibleItemCount > 0) {
      suggested = max(suggested, computeMaximumWidth())
    }
    return suggested
  }

  override fun getSuggestedMinimumHeight(): Int {
    var suggested = super.getSuggestedMinimumWidth()
    if (mSelectorVisibleItemCount > 0) {
      val fontMetricsInt = mTextPaint.fontMetricsInt
      val height = fontMetricsInt.descent - fontMetricsInt.ascent
      suggested = max(suggested, height * mSelectorVisibleItemCount)
    }
    return suggested
  }

  override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
    // Try greedily to fit the max width and height.
    var lp: ViewGroup.LayoutParams? = layoutParams
    if (lp == null) lp = ViewGroup.LayoutParams(
      ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT
    )

    var width = calculateSize(suggestedMinimumWidth, lp.width, widthMeasureSpec)
    var height = calculateSize(suggestedMinimumHeight, lp.height, heightMeasureSpec)

    width += paddingLeft + paddingRight
    height += paddingTop + paddingBottom

    setMeasuredDimension(width, height)
  }

  override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
    super.onLayout(changed, left, top, right, bottom)

    backgroundDrawable.setBounds(0, 0, 64, 6)

    if (changed) {
      initializeSelectorWheel()
      initializeFadingEdges()
    }
  }

  override fun onDraw(canvas: Canvas) {
    super.onDraw(canvas)
    drawVertical(canvas)
  }

  override fun scrollBy(x: Int, y: Int) {
    if (y == 0) return

    val gap = mTextGapHeight
    logDebug("scrollBy  y: $y   gap: $gap ")
    if (!mWrapSelectorWheelPreferred && y > 0 && (mSelectorItemIndices[mWheelMiddleItemIndex] <= mMinIndex || mSelectorItemIndices[mWheelMiddleItemIndex] <= mMinValidIndex)) {
      if (mCurrentFirstItemOffset + y - mInitialFirstItemOffset < 0) {
        mCurrentFirstItemOffset += y
        logDebug("scrollBy 111 y: $y   mCurrentFirstItemOffset: $mCurrentFirstItemOffset ")
      } else {
        mCurrentFirstItemOffset = mInitialFirstItemOffset + 0
        logDebug("scrollBy 111 y: $y   mCurrentFirstItemOffset: $mCurrentFirstItemOffset   mInitialFirstItemOffset: $mInitialFirstItemOffset")
        if (!mOverScroller.isFinished && !mIsDragging) {
          mOverScroller.abortAnimation()
          logDebug("scrollBy 111 abortAnimation ")
        }
      }
      return
    }

    if (!mWrapSelectorWheelPreferred && y < 0 && (mSelectorItemIndices[mWheelMiddleItemIndex] >= mMaxIndex || mSelectorItemIndices[mWheelMiddleItemIndex] >= mMaxValidIndex)) {
      if (mCurrentFirstItemOffset + y - mInitialFirstItemOffset > 0) {
        mCurrentFirstItemOffset += y
      } else {
        mCurrentFirstItemOffset = mInitialFirstItemOffset - 0
        logDebug("scrollBy 222 y: $y   mCurrentFirstItemOffset: $mCurrentFirstItemOffset   mInitialFirstItemOffset: $mInitialFirstItemOffset")
        if (!mOverScroller.isFinished && !mIsDragging) {
          mOverScroller.abortAnimation()
          logDebug("scrollBy 222 abortAnimation ")
        }
      }
      return
    }

    mCurrentFirstItemOffset += y
    logDebug("scrollBy 333 y: $y   mCurrentFirstItemOffset: $mCurrentFirstItemOffset ")

    while (mCurrentFirstItemOffset - mInitialFirstItemOffset < -gap) {
      mCurrentFirstItemOffset += mItemHeight
      increaseSelectorsIndex()
      logDebug("scrollBy 444 y: $y   mCurrentFirstItemOffset: $mCurrentFirstItemOffset ")
      if (!mWrapSelectorWheelPreferred && (mSelectorItemIndices[mWheelMiddleItemIndex] >= mMaxIndex || mSelectorItemIndices[mWheelMiddleItemIndex] >= mMaxValidIndex)) {
        logDebug("scrollBy 555 mInitialFirstItemOffset: $mInitialFirstItemOffset   mCurrentFirstItemOffset: $mCurrentFirstItemOffset ")
        mCurrentFirstItemOffset = mInitialFirstItemOffset
      }
    }

    while (mCurrentFirstItemOffset - mInitialFirstItemOffset > gap) {
      mCurrentFirstItemOffset -= mItemHeight
      decreaseSelectorsIndex()
      logDebug("scrollBy 666 y: $y   mCurrentFirstItemOffset: $mCurrentFirstItemOffset ")
      if (!mWrapSelectorWheelPreferred && (mSelectorItemIndices[mWheelMiddleItemIndex] <= mMinIndex || mSelectorItemIndices[mWheelMiddleItemIndex] <= mMinValidIndex)) {
        logDebug("scrollBy 777 mInitialFirstItemOffset: $mInitialFirstItemOffset   mCurrentFirstItemOffset: $mCurrentFirstItemOffset ")
        mCurrentFirstItemOffset = mInitialFirstItemOffset
      }
    }
  }

  override fun computeScroll() {
    super.computeScroll()
    if (mOverScroller.computeScrollOffset()) {
      val x = mOverScroller.currX
      val y = mOverScroller.currY

      logDebug("computeScroll y: $y    mPreviousScrollerY: $mPreviousScrollerY  ")
      if (mPreviousScrollerY == 0) {
        mPreviousScrollerY = mOverScroller.startY
      }
      scrollBy(x, y - mPreviousScrollerY)
      mPreviousScrollerY = y
      invalidate()
    } else {
      if (!mIsDragging)
      // align item
        adjustItemVertical()
    }
  }

  @SuppressLint("ClickableViewAccessibility")
  override fun onTouchEvent(event: MotionEvent): Boolean {
    onTouchEventVertical(event)
    return true
  }

  private fun onTouchEventVertical(event: MotionEvent) {
    if (mVelocityTracker == null) {
      mVelocityTracker = VelocityTracker.obtain()
    }

    mVelocityTracker?.addMovement(event)

    when (event.actionMasked) {
      MotionEvent.ACTION_DOWN -> {
        activate = true
        invalidate()
        if (!mOverScroller.isFinished) {
          mOverScroller.forceFinished(true)
        }
        if (!adjustScroller.isFinished) {
          adjustScroller.forceFinished(true)
        }
        mLastY = event.y
        lastDownEventY = event.y
      }
      MotionEvent.ACTION_MOVE -> {
        activate = true
        invalidate()
        var deltaY = event.y - mLastY
        if (!mIsDragging && abs(deltaY) > mTouchSlop) {
          parent?.requestDisallowInterceptTouchEvent(true)
          logDebug("ACTION_MOVE  deltaY:$deltaY  mTouchSlop:$mTouchSlop  ")

          if (deltaY > 0) {
            deltaY -= mTouchSlop
          } else {
            deltaY += mTouchSlop
          }
          onScrollStateChange(SCROLL_STATE_TOUCH_SCROLL)
          mIsDragging = true
        }

        if (mIsDragging) {
          scrollBy(0, deltaY.toInt())
          invalidate()
          mLastY = event.y
        }
      }
      MotionEvent.ACTION_UP -> {
        if (mIsDragging) {
          mIsDragging = false
          parent?.requestDisallowInterceptTouchEvent(false)
          lastUpEventY = event.y

          mVelocityTracker?.computeCurrentVelocity(700, mMaximumVelocity.toFloat())
          val velocity = mVelocityTracker?.yVelocity?.toInt()

          if (abs(velocity!!) > mMinimumVelocity) {
            mPreviousScrollerY = 0
            mOverScroller.fling(
              scrollX,
              scrollY,
              0,
              velocity,
              0,
              0,
              Int.MIN_VALUE,
              Int.MAX_VALUE,
              0,
              (getItemHeight() * 0.9).toInt()
            )
            postInvalidateOnAnimation()
            onScrollStateChange(SCROLL_STATE_FLING)
          } else {
            adjustItemVertical()
          }
          recyclerVelocityTracker()
        } else {
          // click event
          val y = event.y.toInt()
          handlerClickVertical(y)
        }
      }

      MotionEvent.ACTION_CANCEL -> {
        if (mIsDragging) {
          mIsDragging = false
        }
        recyclerVelocityTracker()
      }
    }
  }

  override fun getBottomFadingEdgeStrength(): Float {
    return TOP_AND_BOTTOM_FADING_EDGE_STRENGTH
  }

  override fun getTopFadingEdgeStrength(): Float {
    return TOP_AND_BOTTOM_FADING_EDGE_STRENGTH
  }

  private fun getWrappedSelectorIndex(selectorIndex: Int): Int {
    if (selectorIndex > mMaxIndex) {
      return mMinIndex + (selectorIndex - mMaxIndex) % (mMaxIndex - mMinIndex + 1) - 1
    } else if (selectorIndex < mMinIndex) {
      return mMaxIndex - (mMinIndex - selectorIndex) % (mMaxIndex - mMinIndex + 1) + 1
    }
    return selectorIndex
  }

  private fun isValidPosition(position: Int): Boolean {
    return when {
      position < mMinValidIndex -> false
      position > mMaxValidIndex -> false
      else -> true
    }
  }

  private fun initializeSelectorWheelIndices() {
    mSelectorItemIndices.clear()
    mSelectorItemValidStatus.clear()

    mCurSelectedItemIndex = if (mMinValidIndex == null || mMinValidIndex!! < mMinIndex) {
      if (mMinIndex <= 0) {
        0
      } else {
        mMinIndex
      }
    } else {
      if (mMinValidIndex!! <= 0) {
        0
      } else {
        mMinValidIndex!!
      }
    }

    for (i in 0 until mSelectorItemCount) {
      var selectorIndex = mCurSelectedItemIndex + (i - mWheelMiddleItemIndex)
      if (mWrapSelectorWheelPreferred) {
        selectorIndex = getWrappedSelectorIndex(selectorIndex)
      }
      mSelectorItemIndices.add(selectorIndex)
      mSelectorItemValidStatus.add(isValidPosition(selectorIndex))
    }
  }

  private fun computeMaximumWidth(): Int {
    mTextPaint.textSize = mTextSize * 1.3f
    logDebug("mTextPaint.text  ${mTextPaint.textSize}")
    return if (mAdapter.getTextWithMaximumLength().isNotEmpty()) {
      val suggestedWith = mTextPaint.measureText(mAdapter.getTextWithMaximumLength()).toInt()
      mTextPaint.textSize = mTextSize * 1.0f
      suggestedWith
    } else {
      val suggestedWith = mTextPaint.measureText("0000").toInt()
      mTextPaint.textSize = mTextSize * 1.0f
      suggestedWith
    }
  }

  private fun calculateSize(suggestedSize: Int, paramSize: Int, measureSpec: Int): Int {
    var result = 0
    val size = MeasureSpec.getSize(measureSpec)
    val mode = MeasureSpec.getMode(measureSpec)

    when (MeasureSpec.getMode(mode)) {
      MeasureSpec.AT_MOST -> result = when (paramSize) {
        ViewGroup.LayoutParams.WRAP_CONTENT -> min(suggestedSize, size)
        ViewGroup.LayoutParams.MATCH_PARENT -> size
        else -> {
          paramSize.coerceAtMost(size)
        }
      }
      MeasureSpec.EXACTLY -> result = size
      MeasureSpec.UNSPECIFIED ->
        result =
          if (paramSize == ViewGroup.LayoutParams.WRAP_CONTENT || paramSize == ViewGroup.LayoutParams.MATCH_PARENT) suggestedSize
          else {
            paramSize
          }
    }

    return result
  }

  private fun getItemHeight(): Int {
    return height / (mSelectorItemCount - 2)
  }

  private fun getGapHeight(): Int {
    return getItemHeight() - computeTextHeight()
  }

  private fun computeTextHeight(): Int {
    val metricsInt = mTextPaint.fontMetricsInt
    return abs(metricsInt.bottom + metricsInt.top)
  }

  private fun initializeSelectorWheel() {
    mItemHeight = getItemHeight()
    mTextHeight = computeTextHeight()
    mTextGapHeight = getGapHeight()

    val visibleMiddleItemPos =
      mItemHeight * mWheelVisibleItemMiddleIndex + (mItemHeight + mTextHeight) / 2
    mInitialFirstItemOffset = visibleMiddleItemPos - mItemHeight * mWheelMiddleItemIndex
    mCurrentFirstItemOffset = mInitialFirstItemOffset
  }

  private fun initializeFadingEdges() {
    isVerticalFadingEdgeEnabled = true
    setFadingEdgeLength((bottom - top - mTextSize) / 2)
  }

  private fun changeValueBySteps(steps: Int) {
    mPreviousScrollerY = 0
    mOverScroller.startScroll(0, 0, 0, -mItemHeight * steps, SNAP_SCROLL_DURATION)
    invalidate()
  }

  private fun handlerClickVertical(y: Int) {
    val selectorIndexOffset = y / mItemHeight - mWheelVisibleItemMiddleIndex
    changeValueBySteps(selectorIndexOffset)
  }

  private fun recyclerVelocityTracker() {
    mVelocityTracker?.recycle()
    mVelocityTracker = null
  }

  private fun onScrollStateChange(scrollState: Int) {
    if (mScrollState == scrollState) {
      return
    }
    mScrollState = scrollState
    mOnScrollListener?.invoke(this, scrollState)
  }

  fun getValue(position: Int): String = mAdapter.getValue(position)

  fun isActivate(boolean: Boolean) {
    activate = boolean
    invalidate()
  }

  private fun drawVertical(canvas: Canvas) {
    if (mSelectorItemIndices.size == 0) return
    val itemHeight = getItemHeight()
    val x = when (mTextPaint.textAlign) {
      Paint.Align.LEFT -> paddingLeft.toFloat()
      Paint.Align.CENTER -> ((right - left) / 2).toFloat()
      Paint.Align.RIGHT -> (right - left).toFloat() - paddingRight.toFloat()
      else -> ((right - left) / 2).toFloat()
    }

    var y = mCurrentFirstItemOffset.toFloat()
    var i = 0
    val topIndexDiffToMid = mWheelVisibleItemMiddleIndex
    val bottomIndexDiffToMid = mSelectorVisibleItemCount - mWheelVisibleItemMiddleIndex - 1
    val maxIndexDiffToMid = max(topIndexDiffToMid, bottomIndexDiffToMid)

    while (i < mSelectorItemIndices.size) {
      var scale = 1f
      val offsetToMiddle =
        abs(y - (mInitialFirstItemOffset + mWheelMiddleItemIndex * itemHeight).toFloat())

      if (maxIndexDiffToMid != 0) scale =
        mSelectedTextScale * (itemHeight * maxIndexDiffToMid - offsetToMiddle) / (itemHeight * maxIndexDiffToMid) + 1

      val y1 = y.takeUnless { scale > 1f } ?: (y + 3.dp)

      if (mSelectorItemValidStatus[i]) {
        if (offsetToMiddle < mItemHeight / 2) {
          mTextPaint.textSize = 30f
          if (activate) {
            mTextPaint.color = mSelectedTextColor
            mTextPaint.typeface = Typeface.DEFAULT_BOLD
            canvas.save()
            canvas.translate(measuredWidth / 2 - 64 / 2f, y1 + mTextPaint.textSize / 2)
            backgroundDrawable.draw(canvas)
            canvas.restore()
          }
        } else {
          mTextPaint.color = mUnSelectedTextColor
          mTextPaint.typeface = Typeface.DEFAULT
          mTextPaint.textSize = 24f
        }
      } else {
        mTextPaint.color = mSelectedTextColor
      }

      canvas.save()
      // canvas.scale(scale, scale, x, y)
      canvas.drawText(getValue(mSelectorItemIndices[i]), x, y1, mTextPaint)
      canvas.restore()

      y += itemHeight
      i++
    }
  }

  private fun notifyChange(previous: Int, current: Int) {
    mOnValueChangeListener?.invoke(this, getValue(previous), getValue(current))
  }

  private fun getPosition(value: String): Int = validatePosition(mAdapter.getPosition(value))

  private fun validatePosition(position: Int): Int {
    return if (!mWrapSelectorWheelPreferred) {
      when {
        mMaxValidIndex == null && position > mMaxIndex -> mMaxIndex
        mMaxValidIndex != null && position > mMaxValidIndex -> mMaxValidIndex
        mMinValidIndex == null && position < mMinIndex -> mMinIndex
        mMinValidIndex != null && position < mMinValidIndex -> mMinValidIndex
        else -> position
      }
    } else {
      getWrappedSelectorIndex(position)
    }
  }

  private fun scrollTo(position: Int) {
    if (mCurSelectedItemIndex == position) return

    mCurSelectedItemIndex = position
    mSelectorItemIndices.clear()
    for (i in 0 until mSelectorItemCount) {
      var selectorIndex = mCurSelectedItemIndex + (i - mWheelMiddleItemIndex)
      if (mWrapSelectorWheelPreferred) {
        selectorIndex = getWrappedSelectorIndex(selectorIndex)
      }
      mSelectorItemIndices.add(selectorIndex)
    }

    invalidate()
  }

  private fun adjustItemVertical() {
    logDebug("adjustItemVertical  mPreviousScrollerY: $mPreviousScrollerY   mInitialFirstItemOffset: $mInitialFirstItemOffset mCurrentFirstItemOffset:$mCurrentFirstItemOffset ")

    var deltaY = mInitialFirstItemOffset - mCurrentFirstItemOffset

    logDebug("adjustItemVertical  deltaY: $deltaY   mItemHeight: $mItemHeight ")
        /* if (abs(deltaY) > mItemHeight / 2) {
           deltaY += if (deltaY > 0)
             -mItemHeight
           else
             mItemHeight
         }*/
    when {
      mPreviousScrollerY > 0 -> {
        if (deltaY < 0) {
          deltaY += mItemHeight
        }
      }
      mPreviousScrollerY < 0 -> {
        if (deltaY > 0) {
          deltaY -= mItemHeight
        }
      }
      else -> {
        val touchDelta = lastUpEventY - lastDownEventY
        lastDownEventY = 0f
        lastUpEventY = 0f
        logDebug("adjustItemVertical  touchDelta: $touchDelta   deltaY: $deltaY ")
        if (touchDelta < 0) {
          if (deltaY > 0) {
            deltaY -= mItemHeight
          }
        } else if (touchDelta > 0) {
          if (deltaY < 0) {
            deltaY += mItemHeight
          }
        }
      }
    }
    mPreviousScrollerY = 0
    if (deltaY != 0) {
      logDebug("adjustItemVertical startScroll  deltaY: $deltaY  mCurSelectedItemIndex: $mCurSelectedItemIndex  ")
      if (!mWrapSelectorWheelPreferred && ((mCurSelectedItemIndex == 0 && deltaY > 0) || (mCurSelectedItemIndex == mMaxIndex && deltaY < 0))) {
        return
      }

      mOverScroller.startScroll(scrollX, scrollY, 0, deltaY, 800 * abs(deltaY) / mItemHeight)
      postInvalidateOnAnimation()
    } else {
      onSelectionChanged(mSelectorItemIndices[mWheelMiddleItemIndex], true)
    }

    onScrollStateChange(SCROLL_STATE_IDLE)
  }

  private fun onSelectionChanged(current: Int, notifyChange: Boolean) {
    val previous = mCurSelectedItemIndex
    mCurSelectedItemIndex = current
    logDebug("current  $mCurSelectedItemIndex")
    if (notifyChange && previous != current) {
      notifyChange(previous, current)
      listener?.invoke(current)
    }
  }

  private fun increaseSelectorsIndex() {
    for (i in 0 until (mSelectorItemIndices.size - 1)) {
      mSelectorItemIndices[i] = mSelectorItemIndices[i + 1]
      mSelectorItemValidStatus[i] = mSelectorItemValidStatus[i + 1]
    }
    var nextScrollSelectorIndex = mSelectorItemIndices[mSelectorItemIndices.size - 2] + 1
    if (mWrapSelectorWheelPreferred && nextScrollSelectorIndex > mMaxIndex) {
      nextScrollSelectorIndex = mMinIndex
    }
    mSelectorItemIndices[mSelectorItemIndices.size - 1] = nextScrollSelectorIndex
    mSelectorItemValidStatus[mSelectorItemIndices.size - 1] =
      isValidPosition(nextScrollSelectorIndex)
  }

  private fun decreaseSelectorsIndex() {
    for (i in mSelectorItemIndices.size - 1 downTo 1) {
      mSelectorItemIndices[i] = mSelectorItemIndices[i - 1]
      mSelectorItemValidStatus[i] = mSelectorItemValidStatus[i - 1]
    }
    var nextScrollSelectorIndex = mSelectorItemIndices[1] - 1
    if (mWrapSelectorWheelPreferred && nextScrollSelectorIndex < mMinIndex) {
      nextScrollSelectorIndex = mMaxIndex
    }
    mSelectorItemIndices[0] = nextScrollSelectorIndex
    mSelectorItemValidStatus[0] = isValidPosition(nextScrollSelectorIndex)
  }

  internal fun themeApply() {
    mSelectedTextColor = context.themeColor(com.google.android.material.R.attr.colorPrimary)
    mUnSelectedTextColor =
      context.resources.getColor(com.zeekr.theme.R.color.primary_60, context.theme)
    backgroundDrawable.fillColor =
      context.themeColorStateList(com.google.android.material.R.attr.colorSecondary)
    invalidate()
  }
}
