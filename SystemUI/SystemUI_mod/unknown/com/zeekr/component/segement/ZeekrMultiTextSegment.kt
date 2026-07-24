package com.zeekr.component.segement

import android.animation.ValueAnimator
import android.annotation.SuppressLint
import android.content.Context
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.Rect
import android.os.SystemClock
import android.util.AttributeSet
import android.view.MotionEvent
import android.view.View
import android.view.animation.DecelerateInterpolator
import com.google.android.material.shape.CornerFamily
import com.google.android.material.shape.MaterialShapeDrawable
import com.google.android.material.shape.ShapeAppearanceModel
import com.zeekr.component.R
import com.zeekr.component.constant.NO_ITEM_SELECT
import com.zeekr.component.extention.dimensionFromAttribute
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.dpf
import com.zeekr.component.extention.listStringEditMode
import com.zeekr.component.extention.logDebug
import com.zeekr.component.extention.measureSpecBySize
import com.zeekr.component.extention.sizeWhenExactly
import com.zeekr.component.extention.themeColor
import com.zeekr.component.extention.themeColorSelectId
import com.zeekr.component.extention.themeColorStateId
import com.zeekr.component.extention.themeColorStateList
import java.lang.Integer.max

class ZeekrMultiTextSegment @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : View(context, attrs) {

  private var mSegmentWidth = 800.dp
  private var mSegmentHeight = 96.dp
  private val mSelectDrawable = MaterialShapeDrawable()
  private val mBackgroundDrawable = MaterialShapeDrawable()
  private val mBackgroundCornerSize = 8.dp
  private val mSelectCornerSize = 8.dp
  private val mSelectPadding = 0.dp
  private val mBackgroundPadding = 10.dp
  private val textRect = Rect()
  private var mTextPaint: Paint = Paint()
  private var mTextPaintTwo: Paint = Paint()
  private var selectAnimator: ValueAnimator? = null
  private val originList = mutableListOf<Any>()
  private val originTipList = mutableListOf<Any>()
  private val contentList = listStringEditMode()
  private val tipList = listStringEditMode()
  private var movePosition = 0f
  private var motionEventX = 0f
  private var selectIndexListener: ((Int) -> Unit)? = null
  private var visibleIndexListener: ((Int) -> Unit)? = null
  private var indexListener: ((Int) -> Unit)? = null
  private var disabledListener: ((String) -> Unit)? = null
  private val triggerTime: Int
  private val segmentCount: Int
    get() = max(max(contentList.size, contentList.size), 1)
  private var collapseTime = 0L
  private val disappearArray: MutableSet<Int> = mutableSetOf()
  private val visibleIndexList: List<Int>
    get() = (0.until(segmentCount)).toList().filterNot { disappearArray.contains(it) }
  private var mSelectedTextColor: Int
  private var mUnSelectedTextColor: Int
  private var mSelectedTextTipColor: Int
  private var mUnSelectedTextTipColor: Int
  private var selectStrokeColor =
    context.themeColorStateList(com.google.android.material.R.attr.colorSecondary)

  val itemCount: Int
    get() = contentList.size

  val tipCount: Int
    get() = tipList.size

  fun setSelectIndexListener(listener: (Int) -> Unit) {
    this.selectIndexListener = listener
  }

  fun setVisibleIndexListener(listener: (Int) -> Unit) {
    this.visibleIndexListener = listener
  }

  fun setCurrentIndexListener(listener: (Int) -> Unit) {
    this.indexListener = listener
  }

  fun setDisabledListener(listener: (String) -> Unit) {
    this.disabledListener = listener
  }

  private val touchHelper = ZeekrGroupTouchHelper(this, contentList).apply {
    orientation = ZeekrGroupTouchHelper.HORIZONTAL
    itemListener = {
      commonItemSet(it)
    }
  }

  val selectIndex: Int
    get() = if (disappearArray.isEmpty()) {
      visibleSelectIndex
    } else {
      visibleIndexList[visibleSelectIndex]
    }

  private var visibleSelectIndex = NO_ITEM_SELECT
    set(value) {
      val target = (0.coerceAtLeast(value).coerceAtMost(segmentCount - 1)).apply {
        if (disappearArray.isNotEmpty()) {
          visibleIndexList.indexOf(this)
        }
      }
      if (field == NO_ITEM_SELECT) {
        movePosition = value.toFloat()
        invalidate()
      } else {
        selectAnimator(field, target)
      }

      field = target
      touchHelper.refreshSelectIndexHelper(target)
      invalidateTouchHelper()
    }

  init {
    val attributes = context.obtainStyledAttributes(attrs, R.styleable.ZeekrSegment)
    attributes.getTextArray(R.styleable.ZeekrSegment_segmentDataArray)?.let {
      contentList.clear()
      it.forEach { item ->
        contentList.add(item as String)
      }
    }
    attributes.getTextArray(R.styleable.ZeekrSegment_segmentTipDataArray)?.let {
      tipList.clear()
      it.forEach { item ->
        tipList.add(item as String)
      }
    }
    triggerTime = attributes.getInteger(R.styleable.ZeekrSegment_segmentTriggerTime, 0)
    attributes.recycle()

    val itemTextSize =
      context.dimensionFromAttribute(com.google.android.material.R.attr.textAppearanceLabelMedium)
    mTextPaint.run {
      isAntiAlias = true
      textSize = itemTextSize.toFloat()
      textAlign = Paint.Align.CENTER
      style = Paint.Style.FILL_AND_STROKE
      isAntiAlias = true
      isDither = true
    }
    mTextPaintTwo.run {
      isAntiAlias = true
      textSize = itemTextSize.toFloat()
      textAlign = Paint.Align.CENTER
      style = Paint.Style.FILL_AND_STROKE
      isAntiAlias = true
      isDither = true
    }

    mSelectedTextColor = context.themeColor(com.google.android.material.R.attr.colorPrimary)
    mUnSelectedTextColor = themeColorStateId(com.zeekr.theme.R.color.primary_60)
    mSelectedTextTipColor = themeColorStateId(com.zeekr.theme.R.color.primary_60)
    mUnSelectedTextTipColor = themeColorStateId(com.zeekr.theme.R.color.primary_40)

    with(mBackgroundDrawable) {
      shapeAppearanceModel = ShapeAppearanceModel.builder()
        .setAllCorners(CornerFamily.ROUNDED, mBackgroundCornerSize.toFloat()).build()
      fillColor =
        context.themeColorStateList(com.zeekr.theme.R.attr.colorToggleButtonUnchecked)
    }

    with(mSelectDrawable) {
      shapeAppearanceModel = ShapeAppearanceModel.builder()
        .setAllCorners(CornerFamily.ROUNDED, mSelectCornerSize.toFloat()).build()
      fillColor = context.themeColorStateList(com.zeekr.theme.R.attr.colorToggleButtonChecked)
      strokeWidth = 2.dpf
      strokeColor = selectStrokeColor
    }

    setOnClickListener { }
  }

  override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {

    mSegmentWidth = widthMeasureSpec.sizeWhenExactly(mSegmentWidth)
    val totalHeight = heightMeasureSpec.sizeWhenExactly(mSegmentHeight + mBackgroundPadding * 2)
    mSegmentHeight = totalHeight - mBackgroundPadding * 2

    super.onMeasure(mSegmentWidth.measureSpecBySize(), totalHeight.measureSpecBySize())
  }

  override fun setEnabled(enabled: Boolean) {
    super.setEnabled(enabled)
    // refreshDisableArray()
  }

  override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
    super.onLayout(changed, left, top, right, bottom)

    mSelectDrawable.setBounds(
      0,
      0,
      measuredWidth / segmentCount - mSelectPadding * 2,
      mSegmentHeight - mSelectPadding * 2
    )
    mBackgroundDrawable.setBounds(
      0, mBackgroundPadding, measuredWidth, mSegmentHeight + mBackgroundPadding
    )

    if (changed) {
      touchHelper.rect.set(left, top, right, bottom)
      invalidateTouchHelper()
    }
  }

  override fun onDraw(canvas: Canvas) {
    super.onDraw(canvas)

    mBackgroundDrawable.draw(canvas)
    if (visibleSelectIndex > NO_ITEM_SELECT) {
      canvas.save()
      canvas.translate(
        mSegmentWidth * movePosition / segmentCount, mBackgroundPadding.toFloat()
      )
      mSelectDrawable.strokeColor = selectStrokeColor
      mSelectDrawable.draw(canvas)
      canvas.restore()
    }

    if (contentList.size > 0) {
      drawContent(canvas)
    }
  }

  override fun performClick(): Boolean {
    if (SystemClock.uptimeMillis() - collapseTime < triggerTime.toLong()) {
      return false
    }
    val selection = mSegmentWidth / segmentCount
    logDebug("selection  $selection")
    val tempIndex = (motionEventX / selection).toInt()

    if (visibleSelectIndex == tempIndex) {
      return false
    }
    if (visibleIndexListener != null) {
      val visibleString = contentList[tempIndex]
      val visibleIndex = originList.indexOf(visibleString)
      visibleIndexListener?.invoke(visibleIndex)
    }
    collapseTime = SystemClock.uptimeMillis()
    visibleSelectIndex = tempIndex
    selectIndexListener?.invoke(visibleSelectIndex)
    return super.performClick()
  }

  @SuppressLint("ClickableViewAccessibility")
  override fun onTouchEvent(event: MotionEvent): Boolean {

    when (event.actionMasked) {
      MotionEvent.ACTION_DOWN -> {
        motionEventX = event.x
      }

      MotionEvent.ACTION_MOVE -> {
        motionEventX = event.x
      }

      MotionEvent.ACTION_UP -> {
      }
    }
    return super.onTouchEvent(event)
  }

  override fun dispatchTouchEvent(event: MotionEvent): Boolean {
    return if (touchHelper.dispatchHoverEvent(event)) {
      true
    } else return super.dispatchTouchEvent(event)
  }

  override fun getAccessibilityClassName(): CharSequence {
    return ZeekrSegementHorizontal::class.java.simpleName
  }

  private fun selectAnimator(fromIndex: Int, targetIndex: Int) {
    selectAnimator?.cancel()
    selectAnimator = ValueAnimator.ofFloat(fromIndex.toFloat(), targetIndex.toFloat()).apply {
      addUpdateListener {
        movePosition = it.animatedValue as Float
        invalidate()
      }
      interpolator = DecelerateInterpolator(DEF_FACTOR)
      duration = DEF_DURATION
      start()
    }
  }

  private fun drawContent(canvas: Canvas) {
    0.until(segmentCount).forEach { index ->
      mTextPaint.color =
        mSelectedTextColor.takeIf { visibleSelectIndex == index } ?: mUnSelectedTextColor
      mTextPaintTwo.color = mSelectedTextTipColor.takeIf { visibleSelectIndex == index }
        ?: mUnSelectedTextTipColor
      mTextPaint.getTextBounds(contentList[index], 0, contentList[index].length, textRect)
      val textStart = mSegmentWidth * (index * 2 + 1) / (itemCount * 2).toFloat()
      canvas.drawText(
        contentList[index],
        textStart,
        measuredHeight / 2 - textRect.height() / 2 + 4.dpf,
        mTextPaint
      )
      mTextPaintTwo.getTextBounds(tipList[index], 0, tipList[index].length, textRect)
      canvas.drawText(
        tipList[index],
        textStart,
        measuredHeight / 2 + textRect.height() / 2 + 16.dpf,
        mTextPaintTwo
      )
    }
  }

  fun submitData(contents: List<String>, tips: List<String>) {
    contentList.clear()
    tipList.clear()
    contentList.addAll(contents)
    tipList.addAll(tips)
    requestLayout()
    invalidate()
    refreshData()
  }

  private fun invalidateTouchHelper() {
    touchHelper.invalidateRoot()
    List(contentList.size) {
      touchHelper.invalidateVirtualView(it)
    }
  }

  private fun refreshData() {
    // refreshDisableArray()
    originList.clear()
    originTipList.clear()
    0.until(segmentCount).forEach { index ->
      if (contentList.isNotEmpty() && contentList[index] != "") {
        originList.add(contentList[index])
      }
    }
    0.until(segmentCount).forEach { index ->
      if (tipList.isNotEmpty() && tipList[index] != "") {
        originTipList.add(tipList[index])
      }
    }
    invalidate()
    invalidateTouchHelper()
  }

  fun setTextSize(size: Int) {
    mTextPaint.textSize = size.toFloat()
    invalidate()
  }

  fun changeItemTip(index: Int, tip: String) {
    0.until(segmentCount).forEach { contentIndex ->
      if (originList[index].toString() == contentList[contentIndex]) {
        tipList[contentIndex] = tip
        originTipList[contentIndex] = tip
        invalidate()
        return
      }
    }
  }

  fun setItemVisible(index: Int, visible: Boolean) {
    if (visible) {
      disappearArray.remove(index)
    } else {
      disappearArray.add(index)
    }

    val visibleList = originList.filterIndexed { itemIndex, _ ->
      !disappearArray.contains(itemIndex)
    }
    val visibleTipList = originTipList.filterIndexed { itemIndex, _ ->
      !disappearArray.contains(itemIndex)
    }
    refreshMixedData(visibleList, visibleTipList)
  }

  private fun refreshMixedData(list: List<Any>, listTip: List<Any>) {
    contentList.clear()
    tipList.clear()
    contentList.addAll(
      list.map {
        if (it is String) it else ""
      }
    )
    tipList.addAll(
      listTip.map {
        if (it is String) it else ""
      }
    )
    invalidate()
    invalidateTouchHelper()
    requestLayout()
  }

  fun commonItemSet(index: Int) {
    visibleSelectIndex = index
    invalidate()
  }

  fun signalItemSet(index: Int) {
    visibleSelectIndex = index
    invalidate()
  }

  fun voiceItemSet(index: Int) {
    visibleSelectIndex = index
    invalidate()
  }

  internal fun themeApply() {
    mSelectedTextTipColor = context.themeColorSelectId(com.zeekr.theme.R.color.primary_60)
    mUnSelectedTextTipColor = context.themeColorSelectId(com.zeekr.theme.R.color.primary_40)
    mSelectedTextColor = context.themeColor(com.google.android.material.R.attr.colorPrimary)
    mUnSelectedTextColor = context.themeColorSelectId(com.zeekr.theme.R.color.primary_60)
    mBackgroundDrawable.fillColor =
      context.themeColorStateList(com.zeekr.theme.R.attr.colorToggleButtonUnchecked)
    mSelectDrawable.fillColor =
      context.themeColorStateList(com.zeekr.theme.R.attr.colorToggleButtonChecked)
    mSelectDrawable.strokeColor = selectStrokeColor
    invalidate()
  }

  companion object {
    internal const val DEF_FACTOR = 3f
    internal const val DEF_DURATION = 250L
  }
}
