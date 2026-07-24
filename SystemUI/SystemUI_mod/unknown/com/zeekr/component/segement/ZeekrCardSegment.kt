package com.zeekr.component.segement

import android.animation.ValueAnimator
import android.annotation.SuppressLint
import android.content.Context
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.Rect
import android.util.AttributeSet
import android.view.MotionEvent
import android.view.View
import android.view.animation.DecelerateInterpolator
import androidx.annotation.ColorInt
import com.google.android.material.shape.CornerFamily
import com.google.android.material.shape.MaterialShapeDrawable
import com.google.android.material.shape.ShapeAppearanceModel
import com.zeekr.component.R
import com.zeekr.component.constant.NO_ITEM_SELECT
import com.zeekr.component.extention.dimensionFromAttribute
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.listStringEditMode
import com.zeekr.component.extention.logDebug
import com.zeekr.component.extention.measureSpecBySize
import com.zeekr.component.extention.sizeWhenExactly
import com.zeekr.component.extention.themeColor
import com.zeekr.component.extention.themeColorSelectId
import com.zeekr.component.extention.themeColorStateList

class ZeekrCardSegment @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : View(context, attrs) {

  private var mSegmentWidth = 800.dp
  private var mSegmentHeight = 86.dp
  private val mSelectDrawable = MaterialShapeDrawable()
  private val mBackgroundDrawable = MaterialShapeDrawable()
  private val mBackgroundCornerSize = 8.dp
  private val mSelectCornerSize = 4.dp
  private val mSelectPadding = 2.dp
  private val textRect = Rect()
  private var mTextPaint: Paint = Paint()
  private var selectAnimator: ValueAnimator? = null
  private val contentList = listStringEditMode()
  private var movePosition = 0f
  private var motionEventX = 0f
  private var selectIndexListener: ((Int) -> Unit)? = null
  private val segmentCount: Int
    get() = contentList.size
  private val disableArray: MutableSet<Int> = mutableSetOf()
  private var enabledSelectedTextColor =
    context.themeColor(com.google.android.material.R.attr.colorSecondary)
  private var enabledUnSelectedTextColor =
    context.themeColorSelectId(com.zeekr.theme.R.color.primary_60)

  private val itemCount: Int
    get() = contentList.size

  fun setSelectIndexListener(listener: (Int) -> Unit) {
    this.selectIndexListener = listener
  }

  private val touchHelper = ZeekrGroupTouchHelper(this, contentList).apply {
    orientation = ZeekrGroupTouchHelper.HORIZONTAL
    itemListener = {
      commonItemSet(it)
    }
  }

  var selectIndex = NO_ITEM_SELECT
    private set(value) {
      val target = 0.coerceAtLeast(value).coerceAtMost(segmentCount - 1)
      if (field == NO_ITEM_SELECT) {
        movePosition = value.toFloat()
        invalidate()
      } else {
        selectAnimator(field, target)
      }
      field = target
    }

  init {
    val attributes = context.obtainStyledAttributes(attrs, R.styleable.ZeekrSegement)
    attributes.getTextArray(R.styleable.ZeekrSegement_segementDataArray)?.let {
      contentList.clear()
      it.forEach { item ->
        contentList.add(item as String)
      }
    }
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

    with(mBackgroundDrawable) {
      shapeAppearanceModel = ShapeAppearanceModel.builder()
        .setAllCorners(CornerFamily.ROUNDED, mBackgroundCornerSize.toFloat()).build()
      fillColor =
        context.themeColorStateList(com.zeekr.theme.R.attr.colorCardSegmentBackground)
    }

    with(mSelectDrawable) {
      shapeAppearanceModel = ShapeAppearanceModel.builder()
        .setAllCorners(CornerFamily.ROUNDED, mSelectCornerSize.toFloat()).build()
      fillColor =
        context.themeColorStateList(com.zeekr.theme.R.attr.colorCardSegment)
    }

    setOnClickListener { }
  }

  override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {

    mSegmentWidth = widthMeasureSpec.sizeWhenExactly(mSegmentWidth)
    val totalHeight = heightMeasureSpec.sizeWhenExactly(mSegmentHeight)
    mSegmentHeight = totalHeight

    super.onMeasure(mSegmentWidth.measureSpecBySize(), totalHeight.measureSpecBySize())
  }

  override fun setEnabled(enabled: Boolean) {
    super.setEnabled(enabled)
    refreshDisableArray()
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
      0, 0, measuredWidth, mSegmentHeight
    )

    if (changed) {
      touchHelper.rect.set(left, top, right, bottom)
      invalidateTouchHelper()
    }
  }

  override fun onDraw(canvas: Canvas) {
    super.onDraw(canvas)

    mBackgroundDrawable.draw(canvas)

    if (selectIndex > NO_ITEM_SELECT) {
      canvas.save()
      canvas.translate(
        mSegmentWidth * movePosition / segmentCount + mSelectPadding,
        mSelectPadding.toFloat()
      )
      mSelectDrawable.draw(canvas)
      canvas.restore()
    }
    if (contentList.size > 0) {
      drawContent(canvas)
    }
  }

  override fun performClick(): Boolean {
    val selection = mSegmentWidth / segmentCount
    logDebug("selection  $selection")
    val tempIndex = (motionEventX / selection).toInt()
    if (disableArray.contains(tempIndex)) {
      return false
    }
    selectIndex = tempIndex
    logDebug("selectIndex  $selectIndex")
    selectIndexListener?.invoke(selectIndex)
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
    return ZeekrCardSegment::class.java.simpleName
  }

  private fun selectAnimator(fromIndex: Int, targetIndex: Int) {
    selectAnimator?.cancel()
    selectAnimator = ValueAnimator.ofFloat(fromIndex.toFloat(), targetIndex.toFloat()).apply {
      addUpdateListener {
        movePosition = it.animatedValue as Float
        invalidate()
      }
      interpolator = DecelerateInterpolator(3f)
      duration = 250
      start()
    }
  }

  private fun refreshDisableArray() {
    if (isEnabled) {
      disableArray.clear()
    } else {
      0.until(segmentCount).forEach { index ->
        disableArray.add(index)
      }
    }
  }

  private fun drawContent(canvas: Canvas) {
    0.until(segmentCount).forEach { index ->
      if (contentList[index] == "") return@forEach
      mTextPaint.color =
        enabledSelectedTextColor.takeIf { selectIndex == index }
          ?: enabledUnSelectedTextColor
      mTextPaint.getTextBounds(contentList[index], 0, contentList[index].length, textRect)
      val textStart = mSegmentWidth * (index * 2 + 1) / (itemCount * 2).toFloat()
      canvas.drawText(
        contentList[index],
        textStart,
        measuredHeight / 2 - textRect.centerY().toFloat(),
        mTextPaint
      )
    }
  }

  fun setEnabledIndex(index: Int, enabled: Boolean) {
    if (enabled) {
      super.setEnabled(true)
      disableArray.remove(index)
    } else {
      disableArray.add(index)
    }
    invalidate()
  }

  private fun resetExtra() {
    mSelectDrawable.setBounds(
      0,
      0,
      measuredWidth / segmentCount - mSelectPadding * 2,
      mSegmentHeight - mSelectPadding * 2
    )
    refreshDisableArray()
    invalidate()
  }

  private fun invalidateTouchHelper() {
    touchHelper.invalidateRoot()
    List(contentList.size) {
      touchHelper.invalidateVirtualView(it)
    }
  }

  private fun refreshData() {
    refreshDisableArray()
    invalidate()
    invalidateTouchHelper()
  }

  fun submitContentData(list: List<String>) {
    contentList.clear()
    contentList.addAll(list)
    refreshData()
  }

  fun setTextSize(size: Float) {
    mTextPaint.textSize = size
    invalidate()
  }

  fun setUnSelectTextColor(@ColorInt color: Int) {
    enabledUnSelectedTextColor = color
    invalidate()
  }

  fun setSelectTextColor(@ColorInt color: Int) {
    enabledSelectedTextColor = color
    invalidate()
  }

  fun submitMixedData(list: List<Any>) {
    contentList.clear()
    contentList.addAll(
      list.map {
        if (it is String) it else ""
      }
    )
    refreshData()
  }

  fun commonItemSet(index: Int) {
    selectIndex = index
    selectIndexListener?.invoke(selectIndex)
  }

  fun signalItemSet(index: Int) {
    selectIndex = index
    selectIndexListener?.invoke(selectIndex)
  }

  fun voiceItemSet(index: Int) {
    selectIndex = index
    selectIndexListener?.invoke(selectIndex)
  }

  internal fun themeApply() {
    enabledSelectedTextColor =
      context.themeColor(com.google.android.material.R.attr.colorSecondary)
    enabledUnSelectedTextColor = context.themeColorSelectId(com.zeekr.theme.R.color.primary_60)
    mBackgroundDrawable.fillColor =
      context.themeColorStateList(com.zeekr.theme.R.attr.colorCardSegmentBackground)
    mSelectDrawable.fillColor =
      context.themeColorStateList(com.zeekr.theme.R.attr.colorCardSegment)
    invalidate()
  }
}
