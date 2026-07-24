package com.zeekr.component.timer

import android.annotation.SuppressLint
import android.content.Context
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.Rect
import android.graphics.Typeface
import android.graphics.drawable.Drawable
import android.util.AttributeSet
import android.view.MotionEvent
import android.view.SoundEffectConstants
import android.view.VelocityTracker
import android.view.View
import android.view.ViewConfiguration
import android.view.ViewGroup
import android.view.animation.DecelerateInterpolator
import android.widget.OverScroller
import android.widget.Scroller
import androidx.annotation.ColorInt
import androidx.annotation.RestrictTo
import com.google.android.material.shape.MaterialShapeDrawable
import com.zeekr.component.R
import com.zeekr.component.colors.primary
import com.zeekr.component.colors.primary16
import com.zeekr.component.colors.primary40
import com.zeekr.component.colors.primary60
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.dpf
import com.zeekr.component.extention.getDrawableOrNull
import com.zeekr.component.extention.logDebug
import com.zeekr.component.extention.themeColorSelectId
import com.zeekr.component.timer.widget.SCROLL_STATE_FLING
import com.zeekr.component.timer.widget.SCROLL_STATE_IDLE
import com.zeekr.component.timer.widget.SCROLL_STATE_TOUCH_SCROLL
import com.zeekr.component.timer.widget.SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT
import com.zeekr.component.timer.widget.SNAP_SCROLL_DURATION
import com.zeekr.component.timer.widget.TOP_AND_BOTTOM_FADING_EDGE_STRENGTH
import com.zeekr.component.timer.widget.WheelAdapter
import com.zeekr.component.timer.widget.ZeekrPickerChangeListener
import com.zeekr.component.timer.widget.ZeekrPickerScrollListener
import com.zeekr.component.timer.widget.ZeekrWheelAdapter
import kotlin.math.abs
import kotlin.math.max
import kotlin.math.min

@SuppressLint("NewApi")
class ZeekrNumberPicker @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null,
  defStyleAttr: Int = 0
) : View(context, attrs, defStyleAttr) {

  private val timeList = mutableListOf<String>()
  private val unitList = mutableListOf<String>()
  private var defaultIndex = 0
  private var listener: ((Int) -> Unit)? = null
  private var itemUpListener: ((Int) -> Unit)? = null
  private var dividerMargin = 0
  private var touchUpCallbackOnce = false

  private val mSelectorItemCount = 5
  private val mSelectorVisibleItemCount = 3
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
  private var mTextPaintColor: Int
  private var mSelectedTextColor: Int
  private var mUnSelectedTextColor: Int
  private var mUnitTextColor: Int
  private var mTextSize: Int
  private val mUnitSize: Int
  private val mTextScale: Float
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
  private var mOnValueChangeListener: ZeekrPickerChangeListener? = null
  private var mOnScrollListener: ZeekrPickerScrollListener? = null
  private val mAdapter: WheelAdapter
  private val mSelectedTextScale = 0.5f
  private var lastDownEventY = 0f
  private var lastUpEventY = 0f
  private var backgroundDrawableHeight = 100.dp
  private var backgroundDrawable: Drawable? = null
  private val backgroundDrawableId: Int
  private var unitListText = ""
  private val unitListPaint = Paint()
  private var unitText = ""
  private val unitPaint = Paint()
  private val unitTextRect = Rect()
  private var hotspotValue = 0
  private var hasFadingEdges = true
  private var isBackgroundShow = true
  private var maxItemWith = 0
  private var unitPaddingLeft = 0
  private var unitPaddingRight = 0
  private var isFadingEdgeEnabled: Boolean
  // 是否需要选中放大的效果
  private var chooseTextNeedScale: Boolean

  private var mScrollState = SCROLL_STATE_IDLE

  /**
   * xOffset:文字X轴偏移量
   */
  private var xOffset = 0f

  var isActivate = true
    set(value) {
      field = value
      invalidate()
    }
  var pickerHighlight = true
    set(value) {
      field = value
      mTextPaint.color = primary.takeIf { pickerHighlight }
        ?: primary40
      unitListPaint.color = primary.takeIf { pickerHighlight }
        ?: primary40
      invalidate()
    }

  @SuppressLint("NewApi")
  private val linePaint = Paint().apply {
    style = Paint.Style.FILL
    strokeWidth = 1.dpf
    color = context.resources.getColor(com.zeekr.theme.R.color.primary_16, context.theme)
  }

  var selectIndex = 0
    get() = mCurSelectedItemIndex
    set(value) {
      field = value
      scrollTo(value)
    }

  init {

    val attributes = context.resources.obtainAttributes(attrs, R.styleable.ZeekrNumberPicker)

    mTextSize = attributes.getInteger(R.styleable.ZeekrNumberPicker_timerTextSize, 34)
    mUnitSize = attributes.getInteger(R.styleable.ZeekrNumberPicker_unitTextSize, 16)
    mTextScale = attributes.getFloat(R.styleable.ZeekrNumberPicker_timerTextSizeScale, 1f)
    isBackgroundShow = attributes.getBoolean(R.styleable.ZeekrNumberPicker_timerBackgroundShow, true)
    hasFadingEdges = attributes.getBoolean(R.styleable.ZeekrNumberPicker_hasFadingEdges, true)
    backgroundDrawable = attributes.getDrawable(R.styleable.ZeekrNumberPicker_timerBackground)
    hotspotValue = attributes.getInteger(R.styleable.ZeekrNumberPicker_timerIsHotspotValue, 0)
    isFadingEdgeEnabled = attributes.getBoolean(R.styleable.ZeekrNumberPicker_isFadingEdgeEnabled, true)
    backgroundDrawableId =
      attributes.getResourceId(R.styleable.ZeekrNumberPicker_timerBackground, 0)
    chooseTextNeedScale = attributes.getBoolean(R.styleable.ZeekrNumberPicker_chooseTextNeedScale, true)

    attributes.recycle()
    mOverScroller = OverScroller(context, DecelerateInterpolator(5f))
    adjustScroller = Scroller(getContext(), DecelerateInterpolator(2.5f))
    val configuration = ViewConfiguration.get(context)
    mTouchSlop = configuration.scaledTouchSlop
    mMaximumVelocity =
      (configuration.scaledMaximumFlingVelocity / SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT).toInt()
    mMinimumVelocity = configuration.scaledMinimumFlingVelocity

    mSelectedTextColor = primary
    mUnitTextColor = context.themeColorSelectId(com.zeekr.theme.R.color.primary_40)
    mUnSelectedTextColor = context.themeColorSelectId(R.color.zeekr_timer_text_color_60).takeIf { hasFadingEdges }
      ?: context.themeColorSelectId(R.color.zeekr_timer_text_color_40)
    mTextAlign = "CENTER"
    mTextPaintColor = mSelectedTextColor.takeIf { pickerHighlight } ?: mUnSelectedTextColor

    mTextPaint.run {
      isAntiAlias = true
      textSize = mTextSize.toFloat()
      color = mTextPaintColor
      textAlign = Paint.Align.valueOf(mTextAlign)
      style = Paint.Style.FILL_AND_STROKE
      typeface = Typeface.DEFAULT_BOLD
    }

    unitListPaint.run {
      isAntiAlias = true
      textSize = mUnitSize.toFloat()
      color = mTextPaintColor
      textAlign = Paint.Align.valueOf(mTextAlign)
      style = Paint.Style.FILL_AND_STROKE
      typeface = Typeface.DEFAULT_BOLD
    }

    unitPaint.run {
      isAntiAlias = true
      textSize = 34f
      color = mUnitTextColor
      textAlign = Paint.Align.valueOf(mTextAlign)
      style = Paint.Style.FILL_AND_STROKE
      typeface = Typeface.DEFAULT
    }

    mAdapter = ZeekrWheelAdapter().apply {
      timeList = this@ZeekrNumberPicker.timeList
      unitList = this@ZeekrNumberPicker.unitList
    }

    timeList.addAll(listOf("aa", "bb", "cc", "dd", "ee", "ff", "gg"))
    initializeSelectorWheelIndices()
  }

  fun setTimeTextColor(@ColorInt colorInt: Int) {
    mTextPaint.color = colorInt
    invalidate()
  }

  fun setTextSize(textSize: Int) {
    mTextSize = textSize
    mTextPaint.textSize = mTextSize.toFloat()
    invalidate()
  }

  fun setChooseTextNeedScale(isNeed: Boolean) {
    chooseTextNeedScale = isNeed
    invalidate()
  }

  fun timeList(list: List<String>) = apply {
    timeList.clear()
    timeList.addAll(list)
  }

  fun unitList(list: List<String>) = apply {
    unitList.clear()
    unitList.addAll(list)
  }

  fun defaultIndex(index: Int) = apply {
    defaultIndex = index
    applyData()
  }

  fun setUnitText(unit: String) {
    unitText = unit
    invalidate()
  }

  fun setUnitTextSize(unitSize: Int) {
    unitPaint.textSize = unitSize.toFloat()
    invalidate()
  }

  fun infinite(infinite: Boolean) = apply {
    mWrapSelectorWheelPreferred = infinite
    initializeSelectorWheelIndices()
  }

  fun dividerMarginHorizontal(margin: Int) {
    dividerMargin = margin
  }

  fun itemListener(listener: ((Int) -> Unit)) = apply {
    this.listener = listener
  }

  fun itemUpListener(listener: ((Int) -> Unit)) = apply {
    this.itemUpListener = listener
  }

  fun setUnitPadding(leftPadding: Int, rightPadding: Int) {
    unitPaddingLeft = leftPadding
    unitPaddingRight = rightPadding
    invalidate()
  }

  fun setBackgroundSize(height: Int, width: Int = measuredWidth) {}

  fun setBgDrawable(drawable: MaterialShapeDrawable) {
    backgroundDrawable = drawable
    invalidate()
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

  inline fun submit(func: ZeekrNumberPicker.() -> Unit): ZeekrNumberPicker = apply {
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
    backgroundDrawable?.setBounds(0, 0, measuredWidth, backgroundDrawableHeight)
    var lp: ViewGroup.LayoutParams? = layoutParams
    if (lp == null) lp = ViewGroup.LayoutParams(
      ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT
    )

    var width = calculateSize(suggestedMinimumWidth, lp.width, widthMeasureSpec)
    var height = calculateSize(suggestedMinimumHeight, lp.height, heightMeasureSpec)

    unitPaint.getTextBounds(unitText, 0, unitText.length, unitTextRect)
    width += paddingLeft + paddingRight
    height += paddingTop + paddingBottom

    setMeasuredDimension(width, height)
  }

  override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
    super.onLayout(changed, left, top, right, bottom)

    if (changed) {
      // need to do all this when we know our size
      initializeSelectorWheel()
    }
  }

  override fun onDraw(canvas: Canvas) {
    super.onDraw(canvas)
    if (isBackgroundShow) {
      if (backgroundDrawable != null) {
        if (isActivate && pickerHighlight) {
          canvas.save()
          backgroundDrawable!!.setBounds(
            0, 0, backgroundDrawable!!.intrinsicWidth, backgroundDrawable!!.intrinsicHeight
          )
          canvas.translate(
            0f, measuredHeight / 2 - (backgroundDrawable!!.intrinsicHeight / 2).toFloat()
          )
          backgroundDrawable!!.draw(canvas)
          canvas.restore()
        }
      } else {
        val topLineY = measuredHeight.toFloat() / 3
        val bottomLineY = measuredHeight.toFloat() * 2 / 3
        canvas.save()
        canvas.drawLine(
          dividerMargin.toFloat(),
          topLineY,
          measuredWidth - dividerMargin.toFloat(),
          topLineY,
          linePaint
        )
        canvas.drawLine(
          dividerMargin.toFloat(),
          bottomLineY,
          measuredWidth - dividerMargin.toFloat(),
          bottomLineY,
          linePaint
        )
        canvas.restore()
      }
    }
    if (unitList.size < 1) {
      unitPaint.getTextBounds(unitText, 0, unitText.length, unitTextRect)

      // 计算 View 的宽度
      val viewWidth = right - left
      val unitTextWidth = unitTextRect.width()
      // 计算 unitX 的初始位置
      val unitX = (viewWidth / 2 + maxItemWith / 2 + unitTextWidth / 2 + 8.dp - unitPaddingRight + unitPaddingLeft).toFloat()

      xOffset = if (unitX + unitTextWidth > viewWidth) {
        viewWidth - (unitX + unitTextWidth)
      } else {
        0f
      }

      canvas.save()
      canvas.drawText(
        unitText,
        unitX + xOffset,
        (measuredHeight / 2f - unitTextRect.centerY().toFloat()),
        unitPaint
      )
      canvas.restore()
    }
    drawVertical(canvas)
    initializeFadingEdges()
  }

  override fun scrollBy(x: Int, y: Int) {
    if (y == 0) return

    val gap = mTextGapHeight
    if (!mWrapSelectorWheelPreferred && y > 0 && (mSelectorItemIndices[mWheelMiddleItemIndex] <= mMinIndex || mSelectorItemIndices[mWheelMiddleItemIndex] <= mMinValidIndex)) {
      if (mCurrentFirstItemOffset + y - mInitialFirstItemOffset < 0) {
        mCurrentFirstItemOffset += y
      } else {
        mCurrentFirstItemOffset = mInitialFirstItemOffset + 0
        if (!mOverScroller.isFinished && !mIsDragging) {
          mOverScroller.abortAnimation()
        }
      }
      return
    }

    if (!mWrapSelectorWheelPreferred && y < 0 && (mSelectorItemIndices[mWheelMiddleItemIndex] >= mMaxIndex || mSelectorItemIndices[mWheelMiddleItemIndex] >= mMaxValidIndex)) {
      if (mCurrentFirstItemOffset + y - mInitialFirstItemOffset > 0) {
        mCurrentFirstItemOffset += y
      } else {
        mCurrentFirstItemOffset = mInitialFirstItemOffset - 0
        if (!mOverScroller.isFinished && !mIsDragging) {
          mOverScroller.abortAnimation()
        }
      }
      return
    }

    mCurrentFirstItemOffset += y

    while (mCurrentFirstItemOffset - mInitialFirstItemOffset < -gap) {
      mCurrentFirstItemOffset += mItemHeight
      increaseSelectorsIndex()
      if (!mWrapSelectorWheelPreferred && (mSelectorItemIndices[mWheelMiddleItemIndex] >= mMaxIndex || mSelectorItemIndices[mWheelMiddleItemIndex] >= mMaxValidIndex)) {
        mCurrentFirstItemOffset = mInitialFirstItemOffset
      }
    }

    while (mCurrentFirstItemOffset - mInitialFirstItemOffset > gap) {
      mCurrentFirstItemOffset -= mItemHeight
      decreaseSelectorsIndex()
      if (!mWrapSelectorWheelPreferred && (mSelectorItemIndices[mWheelMiddleItemIndex] <= mMinIndex || mSelectorItemIndices[mWheelMiddleItemIndex] <= mMinValidIndex)) {
        mCurrentFirstItemOffset = mInitialFirstItemOffset
      }
    }
    onSelectionChanged(mSelectorItemIndices[mWheelMiddleItemIndex], true)
  }

  override fun computeScroll() {
    super.computeScroll()
    if (mOverScroller.computeScrollOffset()) {
      val x = mOverScroller.currX
      val y = mOverScroller.currY

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
    if (isEnabled) {
      onTouchEventVertical(event)
    }
    return true
  }

  private fun onTouchEventVertical(event: MotionEvent) {
    if (mVelocityTracker == null) {
      mVelocityTracker = VelocityTracker.obtain()
    }

    mVelocityTracker?.addMovement(event)

    when (event.actionMasked) {
      MotionEvent.ACTION_DOWN -> {
        touchUpCallbackOnce = false
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
        touchUpCallbackOnce = true
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
              (getItemHeight() * 0.7).toInt()
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
      mMinValidIndex != null && position < mMinValidIndex!! -> false
      mMaxValidIndex != null && position > mMaxValidIndex!! -> false
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
      if (mMinValidIndex <= 0) {
        0
      } else {
        mMinValidIndex
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
    mTextPaint.textSize = mTextSize * mTextScale
    unitListPaint.textSize = mUnitSize * mTextScale
    return if (mAdapter.getTextWithMaximumLength().isNotEmpty()) {
      val suggestedWith = mTextPaint.measureText(mAdapter.getTextWithMaximumLength()).toInt()
      maxItemWith = suggestedWith
      suggestedWith
    } else {
      val suggestedWith = mTextPaint.measureText("0000").toInt()
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
    if (pickerHighlight && isFadingEdgeEnabled) {
      isVerticalFadingEdgeEnabled = true
      setFadingEdgeLength((bottom - top - mTextSize) / 2)
      invalidate()
    } else {
      isVerticalFadingEdgeEnabled = false
      invalidate()
    }
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
  private fun getUnitValue(position: Int): String = mAdapter.getUnitValue(position)

  private fun drawVertical(canvas: Canvas) {
    if (mSelectorItemIndices.size == 0) return
    val itemHeight = getItemHeight()

    var x = when (mTextPaint.textAlign) {
      Paint.Align.LEFT -> paddingLeft.toFloat()
      Paint.Align.CENTER -> ((right - left) / 2).toFloat()
      Paint.Align.RIGHT -> (right - left).toFloat() - paddingRight.toFloat()
      else -> ((right - left) / 2).toFloat()
    }
    x += xOffset

    // logDebug("drawVertical  mCurrentFirstItemOffset: $mCurrentFirstItemOffset ")
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
      // 将选中的比例缩小
      if (scale > 1f) {
        scale = 1.2f
      }
      if (!pickerHighlight) {
        scale = 1f
      }

      if (mSelectorItemValidStatus[i]) {
        if (pickerHighlight) {
          if (isFadingEdgeEnabled) {
            isVerticalFadingEdgeEnabled = true
            mTextPaint.alpha = (255 * (1 - 1 * offsetToMiddle / 266)).toInt()
          } else {
            isVerticalFadingEdgeEnabled = false
          }
          unitListPaint.alpha = (255 * (1 - 1 * offsetToMiddle / 266)).toInt()
          unitListPaint.color = primary60
        }
      }

      canvas.save()
      if (pickerHighlight) {
        // 这里进行放大
        if (chooseTextNeedScale) {
          canvas.scale(scale, scale, x, y)
        }
      }
      val y1 = y.takeUnless { scale > 1f } ?: (y + 2.dp)
      val textItem = getValue(mSelectorItemIndices[i])
      val unitItem = getUnitValue(mSelectorItemIndices[i])
      var tempX = x.takeIf { unitText.isEmpty() } ?: (x - 10)
      canvas.drawText(textItem, tempX, y1, mTextPaint)

      if (textItem.isNotBlank()) {
        val textRect = Rect()
        val unitRect = Rect()
        mTextPaint.getTextBounds(textItem, 0, textItem.length, textRect)
        unitListPaint.getTextBounds(unitItem, 0, unitItem.length, unitRect)
        // - unitRect.width() - unitRect.centerX().dp
        canvas.drawText(
          unitItem,
          x + textRect.width() / 2 + unitRect.width() / 2 + 2,
          y1 - textRect.height() + unitRect.height() - 1.dp,
          unitListPaint
        )
      }
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
        mMaxValidIndex != null && position > mMaxValidIndex!! -> mMaxValidIndex!!
        mMinValidIndex == null && position < mMinIndex -> mMinIndex
        mMinValidIndex != null && position < mMinValidIndex!! -> mMinValidIndex!!
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
    var deltaY = mInitialFirstItemOffset - mCurrentFirstItemOffset
    when {
      mPreviousScrollerY > 0 -> {
        if (deltaY < - (mItemHeight / 2)) {
          deltaY += mItemHeight
        }
      }

      mPreviousScrollerY < 0 -> {
        if (deltaY > mItemHeight / 2) {
          deltaY -= mItemHeight
        }
      }

      else -> {
        val touchDelta = lastUpEventY - lastDownEventY
        lastDownEventY = 0f
        lastUpEventY = 0f
        if (touchDelta < 0) {
          if (deltaY > mItemHeight / 2) {
            deltaY -= mItemHeight
          }
        } else if (touchDelta > 0) {
          if (deltaY < - (mItemHeight / 2)) {
            deltaY += mItemHeight
          }
        }
      }
    }
    mPreviousScrollerY = 0
    if (deltaY != 0) {
//            val aa = (mCurSelectedItemIndex == 0 && deltaY > 0)
//            val aaa = (mCurSelectedItemIndex == mMaxIndex && deltaY < 0)
//            val isBoolean = !mWrapSelectorWheelPreferred && (aa || aaa)
//            if (isBoolean) {
//                return
//            }

      mOverScroller.startScroll(
        scrollX, scrollY, 0, deltaY, SNAP_SCROLL_DURATION * 2
      )
      postInvalidateOnAnimation()
    } else {
      val index = mSelectorItemIndices[mWheelMiddleItemIndex]
      if (touchUpCallbackOnce) {
        if (itemUpListener != null) {
          selectionUpChanged(index)
          touchUpCallbackOnce = false
        }
      }
    }

    onScrollStateChange(SCROLL_STATE_IDLE)
  }

  private fun selectionUpChanged(current: Int) {
    itemUpListener?.invoke(current)
    logDebug("selectionUpChanged current  $mCurSelectedItemIndex")
  }

  private fun onSelectionChanged(current: Int, notifyChange: Boolean) {
    val previous = mCurSelectedItemIndex
    mCurSelectedItemIndex = current
    if (notifyChange && previous != current) {
      notifyChange(previous, current)
      this.playSoundEffect(SoundEffectConstants.CLICK)
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

  /**
   * 设置文字X轴偏移量
   */
  fun setXOffset(textXOffset: Float) {
    xOffset = textXOffset
    invalidate()
  }

  fun themeApply() {
    mTextPaint.color = primary.takeIf { pickerHighlight }
      ?: primary40
    unitListPaint.color = primary.takeIf { pickerHighlight }
      ?: primary40
    linePaint.color = primary16
    unitPaint.color = primary40
    if (backgroundDrawableId != 0) {
      backgroundDrawable = context.getDrawableOrNull(backgroundDrawableId)
    }
    invalidate()
  }
}
