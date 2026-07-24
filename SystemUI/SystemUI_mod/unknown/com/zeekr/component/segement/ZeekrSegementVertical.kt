package com.zeekr.component.segement

import android.animation.ValueAnimator
import android.annotation.SuppressLint
import android.content.Context
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Paint
import android.graphics.Point
import android.graphics.Rect
import android.util.AttributeSet
import android.view.MotionEvent
import android.view.View
import android.view.animation.DecelerateInterpolator
import androidx.annotation.DrawableRes
import com.google.android.material.shape.CornerFamily
import com.google.android.material.shape.MaterialShapeDrawable
import com.google.android.material.shape.ShapeAppearanceModel
import com.zeekr.component.R
import com.zeekr.component.extention.ZEEKR_RIPPLE_CLICK_DELAYED
import com.zeekr.component.extention.dimensionFromAttribute
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.dpf
import com.zeekr.component.extention.getDrawableOrNull
import com.zeekr.component.extention.lisFlagEditMode
import com.zeekr.component.extention.listIconEditMode
import com.zeekr.component.extention.listStringEditMode
import com.zeekr.component.extention.logDebug
import com.zeekr.component.extention.measureSpecBySize
import com.zeekr.component.extention.sizeWhenExactly
import com.zeekr.component.extention.themeColor
import com.zeekr.component.extention.themeColorSelectId
import com.zeekr.component.extention.themeColorStateId
import com.zeekr.component.extention.themeColorStateList
import com.zeekr.component.extention.themeColorStateListSelectId
import com.zeekr.component.ripple.fetchScreenPoint
import com.zeekr.component.ripple.rippleCenterDisplay
import java.lang.Integer.max
import kotlin.math.roundToInt

class ZeekrSegementVertical @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : View(context, attrs) {

  private var mSegmentWidth = 160.dp
  private var singleSelectionHeight = 56.dp
  private val mSegmentHeight: Int
    get() = singleSelectionHeight * itemCount
  private val mSelectDrawable = MaterialShapeDrawable()
  private val mBackgroundDrawable = MaterialShapeDrawable()
  private val mFlagDrawable = MaterialShapeDrawable()
  private val flagWidth = 8.dp
  private val flagDrawableSize = 8.dp
  private val mBackgroundCornerSize = 4.dp
  private val mSelectCornerSize = 6.dp
  private val mSelectPadding = 0.dp
  private val textRect = Rect()
  private var mTextPaint: Paint = Paint()
  private var mSelectedTextColor: Int
  private var mUnSelectedTextColor: Int
  private var selectAnimator: ValueAnimator? = null
  private val originList = mutableListOf<Any>()
  private val contentList = listStringEditMode()
  private val iconList = listIconEditMode()
  private val segmentCount: Int
    get() = max(max(contentList.size, iconList.size), 1)
  private var iconSize = 36.dp
  private var movePosition = 0f
  private var motionEventY = 0f
  private var selectIndexListener: ((Int) -> Unit)? = null
  private var locationPoint = Point()
  private val disableArray: MutableSet<Int> = mutableSetOf()
  private val disappearArray: MutableSet<Int> = mutableSetOf()
  private val visibleIndexList: List<Int>
    get() = (0.until(segmentCount)).toList().filterNot { disappearArray.contains(it) }
  private var disablePaintColor = context.themeColorSelectId(com.zeekr.theme.R.color.primary_20)
  private var disableStrokeColor =
    context.themeColorStateListSelectId(com.zeekr.theme.R.color.secondary_40)
  private var enabledStrokeColor =
    context.themeColorStateListSelectId(com.zeekr.theme.R.color.secondary_80)
  private var enabledSelectedTextColor =
    context.themeColor(com.google.android.material.R.attr.colorPrimary)
  private var enabledUnSelectedTextColor = themeColorStateId(com.zeekr.theme.R.color.primary_60)

  private val touchHelper = ZeekrGroupTouchHelper(this, contentList).apply {
    orientation = ZeekrGroupTouchHelper.VERTIICAL
    itemListener = {
      commonItemSet(it)
    }
  }

  var flagList = lisFlagEditMode()
    set(value) {
      field = value
      invalidate()
    }

  private val itemCount: Int
    get() = contentList.size

  private val iconCount: Int
    get() = iconList.size

  fun setSelectIndexListener(listener: (Int) -> Unit) {
    this.selectIndexListener = listener
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
    }

  init {

    val attributes = context.resources.obtainAttributes(attrs, R.styleable.ZeekrSegement)

    attributes.getTextArray(R.styleable.ZeekrSegement_segementDataArray)?.let {
      contentList.clear()
      it.forEach { item ->
        contentList.add(item as String)
      }
      refreshFlagList()
      invalidateTouchHelper()
    }
    attributes.recycle()

    val itemTextSize =
      context.dimensionFromAttribute(com.google.android.material.R.attr.textAppearanceLabelLarge)
    mTextPaint.run {
      isAntiAlias = true
      textSize = itemTextSize.toFloat()
      textAlign = Paint.Align.CENTER
      style = Paint.Style.FILL_AND_STROKE
    }

    mSelectedTextColor = enabledSelectedTextColor
    mUnSelectedTextColor = Color.BLACK.takeIf { isInEditMode }
      ?: enabledUnSelectedTextColor

    with(mBackgroundDrawable) {
      shapeAppearanceModel = ShapeAppearanceModel.builder()
        .setAllCorners(CornerFamily.ROUNDED, mBackgroundCornerSize.toFloat()).build()
      fillColor =
        context.themeColorStateList(com.zeekr.theme.R.attr.colorOutlineBackground)
    }

    with(mFlagDrawable) {
      shapeAppearanceModel =
        ShapeAppearanceModel.builder()
          .setAllCorners(CornerFamily.ROUNDED, flagDrawableSize.toFloat())
          .build()
      fillColor =
        context.themeColorStateList(com.google.android.material.R.attr.colorSecondary)
      setBounds(0, 0, flagDrawableSize, flagDrawableSize)
    }

    with(mSelectDrawable) {
      shapeAppearanceModel = ShapeAppearanceModel.builder()
        .setAllCorners(CornerFamily.ROUNDED, mSelectCornerSize.toFloat()).build()
      strokeWidth = 2.dpf
      strokeColor = context.themeColorStateListSelectId(com.zeekr.theme.R.color.secondary_80)
      fillColor =
        context.themeColorStateList(com.zeekr.theme.R.attr.colorToggleButtonChecked)
    }

    isClickable = true
    setOnClickListener { }
  }

  override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
    val totalWidth = widthMeasureSpec.sizeWhenExactly(mSegmentWidth)
    mSegmentWidth = totalWidth
    val totalHeight = heightMeasureSpec.sizeWhenExactly(mSegmentHeight)
    if (segmentCount != 0) {
      singleSelectionHeight = (totalHeight.toFloat() / segmentCount).roundToInt()
    }

    super.onMeasure(totalWidth.measureSpecBySize(), totalHeight.measureSpecBySize())
  }

  override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
    super.onLayout(changed, left, top, right, bottom)

    val count = max(itemCount, iconCount)
    mSelectDrawable.setBounds(
      0,
      0,
      160,
      56
    )

    if (changed) {
      touchHelper.rect.set(left, top, right, bottom)
      invalidateTouchHelper()
    }
  }

  override fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {
    super.onSizeChanged(w, h, oldw, oldh)
    val point = fetchScreenPoint(locationPoint)
    locationPoint.set(point.x, point.y)
  }

  private fun drawIcon(canvas: Canvas) {
    0.until(segmentCount).forEach { index ->
      if (iconList[index] == 0) return@forEach
      val hasFlag = flagList.isNotEmpty() && flagList[index]
      val flagDx = (flagWidth * 2).takeIf { hasFlag } ?: 0
      val iconStart =
        mSegmentWidth * (index * 2 + 1) / (iconCount * 2).toFloat() - iconSize / 2 + flagDx

      canvas.save()
      val icon = context.getDrawableOrNull(iconList[index])!!
      icon.setBounds(0, 0, iconSize, iconSize)
      if (disableArray.contains(index)) {
        mSelectedTextColor = disablePaintColor
        mUnSelectedTextColor = disablePaintColor
      } else {
        mSelectedTextColor = enabledSelectedTextColor
        mUnSelectedTextColor = enabledUnSelectedTextColor
      }
      val color = mSelectedTextColor.takeIf { selectIndex == index } ?: mUnSelectedTextColor
      icon.setTint(color)
      canvas.translate(
        iconStart,
        (measuredHeight - iconSize) / 2.toFloat()
      )

      icon.draw(canvas)
      canvas.restore()

      canvas.save()
      if (hasFlag) {
        val flagStart = iconStart - flagDx - textRect.width() / 2
        canvas.save()
        canvas.translate(
          flagStart,
          (measuredHeight - flagDrawableSize) / 2.toFloat()
        )
        mFlagDrawable.draw(canvas)
        canvas.restore()
      }
    }
  }

  private fun drawContent(canvas: Canvas) {
    0.until(segmentCount).forEach { index ->
      if (contentList[index] == "") return@forEach
      if (disableArray.contains(index)) {
        mSelectedTextColor = disablePaintColor
        mUnSelectedTextColor = disablePaintColor
      } else {
        mSelectedTextColor = enabledSelectedTextColor
        mUnSelectedTextColor = enabledUnSelectedTextColor
      }
      mTextPaint.color =
        mSelectedTextColor.takeIf { visibleSelectIndex == index } ?: mUnSelectedTextColor
      mTextPaint.getTextBounds(contentList[index], 0, contentList[index].length, textRect)
      val hasFlag = flagList.isNotEmpty() && flagList[index]
      val flagDx = (flagWidth * 2).takeIf { hasFlag } ?: 0
      val textStart = mSegmentWidth / 2f + flagDx
      if (hasFlag) {
        val flagStart = textStart - flagDx - textRect.width() / 2
        canvas.save()
        canvas.translate(
          flagStart,
          mSegmentHeight * (index * 2 + 1) / (itemCount * 2) - flagDrawableSize / 2.toFloat()
        )
        mFlagDrawable.draw(canvas)
        canvas.restore()
      }
      canvas.drawText(
        contentList[index],
        textStart,
        mSegmentHeight * (index * 2 + 1).toFloat() / (itemCount * 2) - textRect.centerY(),
        mTextPaint
      )
    }
  }

  override fun onDraw(canvas: Canvas) {
    super.onDraw(canvas)

    mBackgroundDrawable.setBounds(
      0, 0, measuredWidth, mSegmentHeight
    )
    mBackgroundDrawable.draw(canvas)

    if (visibleSelectIndex > NO_ITEM_SELECT) {
      canvas.save()
      canvas.translate(
        mSelectPadding.toFloat(),
        mSegmentHeight * movePosition / itemCount + mSelectPadding,
      )
      if (disableArray.contains(visibleSelectIndex)) {
        mSelectDrawable.strokeColor = disableStrokeColor
      } else {
        mSelectDrawable.strokeColor = enabledStrokeColor
      }
      mSelectDrawable.draw(canvas)
      canvas.restore()
    }

    if (iconList.size > 0) {
      drawIcon(canvas)
    }
    if (contentList.size > 0) {
      drawContent(canvas)
    }
  }

  override fun dispatchHoverEvent(event: MotionEvent): Boolean {
    return if (touchHelper.dispatchHoverEvent(event)) {
      true
    } else super.dispatchHoverEvent(event)
  }

  override fun performClick(): Boolean {
    val selection = mSegmentHeight / segmentCount
    logDebug("selection  $selection")
    val tempIndex = (motionEventY / selection).toInt()
    if (disableArray.contains(tempIndex)) {
      return false
    }
    visibleSelectIndex = tempIndex
    logDebug("selectIndex  $visibleSelectIndex")
    selectIndexListener?.invoke(visibleSelectIndex)
    return super.performClick()
  }

  @SuppressLint("ClickableViewAccessibility")
  override fun onTouchEvent(event: MotionEvent): Boolean {

    when (event.actionMasked) {
      MotionEvent.ACTION_DOWN -> {
        motionEventY = event.y
      }
      MotionEvent.ACTION_MOVE -> {
        motionEventY = event.y
      }
      MotionEvent.ACTION_UP -> {
      }
    }
    return super.onTouchEvent(event)
  }

  override fun getAccessibilityClassName(): CharSequence {
    return ZeekrSegementHorizontal::class.java.simpleName
  }

  private fun selectAnimator(fromIndex: Int, targetIndex: Int) {
    selectAnimator?.cancel()
    selectAnimator = ValueAnimator.ofFloat(fromIndex.toFloat(), targetIndex.toFloat()).apply {
      addUpdateListener {
        movePosition = it.animatedValue as Float
        // requestLayout()
        invalidate()
      }
      interpolator = DecelerateInterpolator(3f)
      duration = 167L
      start()
    }
  }

  private fun refreshFlagList() {
    flagList.clear()
    List(itemCount) {
      flagList.add(false)
    }
  }

  private fun refreshDisableArray() {
    if (isEnabled) {
      disableArray.clear()
    } else {
      0.until(itemCount).forEach { index ->
        disableArray.add(index)
      }
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

  private fun refreshData() {
    refreshDisableArray()
    refreshFlagList()
    originList.clear()
    0.until(segmentCount).forEach { index ->
      if (contentList.isNotEmpty() && contentList[index] != "") {
        originList.add(contentList[index])
      } else {
        originList.add(iconList[index])
      }
    }
    requestLayout()
    invalidate()
    invalidateTouchHelper()
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
    refreshMixedData(visibleList)
  }

  fun submitContentData(list: List<String>) {
    contentList.clear()
    iconList.clear()
    contentList.addAll(list)
    refreshData()
  }

  fun submitIconData(@DrawableRes list: List<Int>) {
    iconList.clear()
    contentList.clear()
    iconList.addAll(list)
    refreshData()
  }

  fun submitMixedData(list: List<Any>) {
    iconList.clear()
    contentList.clear()
    contentList.addAll(
      list.map {
        if (it is String) it else ""
      }
    )
    refreshData()
    requestLayout()
  }

  private fun refreshMixedData(list: List<Any>) {
    iconList.clear()
    contentList.clear()
    iconList.addAll(
      list.map {
        if (it is Int) it else 0
      }
    )
    contentList.addAll(
      list.map {
        if (it is String) it else ""
      }
    )
    invalidate()
    invalidateTouchHelper()
    requestLayout()
  }

  private fun invalidateTouchHelper() {
    touchHelper.invalidateRoot()
    List(contentList.size) {
      touchHelper.invalidateVirtualView(it)
    }
  }

  fun commonItemSet(index: Int) {
    visibleSelectIndex = index
  }

  fun signalItemSet(index: Int) {
    visibleSelectIndex = index
  }

  fun setSingleFlag(index: Int, flag: Boolean) {
    flagList[index] = flag
    invalidate()
  }

  fun voiceItemSet(index: Int) {
    val selectionWidth = mSegmentWidth / contentList.size
    val pointX = index * selectionWidth + selectionWidth / 2 + locationPoint.x
    val pointY = mSegmentHeight / 2 + locationPoint.y
    rippleCenterDisplay(Point(pointX, pointY))
    postDelayed({
      visibleSelectIndex = index
    }, ZEEKR_RIPPLE_CLICK_DELAYED)
  }

  internal fun themeApply() {
    disablePaintColor = context.themeColorSelectId(com.zeekr.theme.R.color.primary_20)
    disableStrokeColor =
      context.themeColorStateListSelectId(com.zeekr.theme.R.color.secondary_40)
    enabledStrokeColor =
      context.themeColorStateListSelectId(com.zeekr.theme.R.color.secondary_80)
    enabledSelectedTextColor =
      context.themeColor(com.google.android.material.R.attr.colorPrimary)
    enabledUnSelectedTextColor = themeColorStateId(com.zeekr.theme.R.color.primary_60)
    mSelectedTextColor = context.themeColor(com.google.android.material.R.attr.colorPrimary)
    mUnSelectedTextColor = context.themeColorSelectId(com.zeekr.theme.R.color.primary_60)
    with(mBackgroundDrawable) {
      fillColor =
        context.themeColorStateList(com.zeekr.theme.R.attr.colorOutlineBackground)
    }

    with(mSelectDrawable) {
      strokeColor = context.themeColorStateListSelectId(com.zeekr.theme.R.color.secondary_80)
      fillColor =
        context.themeColorStateList(com.zeekr.theme.R.attr.colorToggleButtonChecked)
    }
    invalidate()
  }

  companion object {
    private const val NO_ITEM_SELECT = -1
  }
}
