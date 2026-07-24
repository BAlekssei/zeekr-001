package com.zeekr.component.menu

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
import androidx.annotation.AttrRes
import androidx.annotation.ColorRes
import androidx.annotation.DrawableRes
import com.google.android.material.shape.CornerFamily
import com.google.android.material.shape.MaterialShapeDrawable
import com.google.android.material.shape.ShapeAppearanceModel
import com.zeekr.component.R
import com.zeekr.component.constant.DEFAULT_ITEM_SELECT
import com.zeekr.component.constant.NO_ITEM_SELECT
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.getDrawableOrNull
import com.zeekr.component.extention.listIconEditMode
import com.zeekr.component.extention.listStringEditMode
import com.zeekr.component.extention.measureSpecBySize
import com.zeekr.component.extention.sizeWhenExactly
import com.zeekr.component.extention.themeColor
import com.zeekr.component.extention.themeColorResource
import com.zeekr.component.extention.themeColorSelectId
import com.zeekr.component.extention.themeColorStateId
import com.zeekr.component.extention.themeColorStateList
import com.zeekr.component.segement.ZeekrGroupTouchHelper

class ZeekrMenu @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : View(context, attrs) {

  private val selectDrawable = MaterialShapeDrawable()
  private val selectDrawableCorner = 8.dp
  private var menuWidth = 282.dp
  private var itemPadding: Int
  private val menuHeight: Int
    get() = (itemCount * (itemHeight + itemPadding)) - itemPadding
  var itemHeight = 72.dp
  private val contentList = listStringEditMode()
  private val textPaint: Paint = Paint()
  private var movePosition = 0f
  private var motionEventY = 0f
  private var selectAnimator: ValueAnimator? = null
  private val textRect = Rect()
  private val iconPadding: Int
  private val textPadding: Int
  private val iconLists = listIconEditMode()
  private var itemTextSize = 24.dp
  var iconWidth = 40.dp
  var iconHeight = 40.dp
  var textLeftPadding = 0.dp
  private var enabledSelectedTextColor =
    context.themeColor(com.google.android.material.R.attr.colorPrimary)
  private var enabledUnSelectedTextColor = themeColorStateId(com.zeekr.theme.R.color.primary_60)
  private var disablePaintColor = context.themeColorSelectId(com.zeekr.theme.R.color.primary_20)
  private var onSelectColor = context.themeColorSelectId(com.zeekr.theme.R.color.primary_60)
  private var selectColor = context.themeColor(com.google.android.material.R.attr.colorPrimary)
  private val disableArray: MutableSet<Int> = mutableSetOf()
  private var isAnimator: Boolean = false
  private var selectColorId = 0
  private var onSelectTextColorId = 0

  private val itemCount: Int
    get() = contentList.size

  private val iconCount: Int
    get() = iconLists.size

  private var selectIndexListener: ((Int) -> Unit)? = null

  var selectIndex = DEFAULT_ITEM_SELECT
    private set(value) {
      val target = 0.coerceAtLeast(value).coerceAtMost(itemCount - 1)
      if (field == NO_ITEM_SELECT || isAnimator) {
        movePosition = value.toFloat()
        invalidate()
        invalidateTouchHelper()
      } else {
        selectAnimator(field, target)
      }
      field = target
    }

  private val touchHelper = ZeekrGroupTouchHelper(this, contentList).apply {
    orientation = ZeekrGroupTouchHelper.VERTIICAL
    itemListener = {
      commonItemSet(it)
    }
  }

  init {
    val attributes = context.obtainStyledAttributes(attrs, R.styleable.ZeekrMenu)
    itemHeight = attributes.getInteger(R.styleable.ZeekrMenu_itemHeight, 72.dp)
    iconWidth = attributes.getInteger(R.styleable.ZeekrMenu_iconWidth, 40.dp)
    iconHeight = attributes.getInteger(R.styleable.ZeekrMenu_iconHeight, 40.dp)
    iconPadding = attributes.getInteger(R.styleable.ZeekrMenu_icon_padding, 24.dp)
    textPadding = attributes.getInteger(R.styleable.ZeekrMenu_tex_padding, 88.dp)
    itemPadding = attributes.getInteger(R.styleable.ZeekrMenu_item_padding, 16.dp)
    isAnimator = attributes.getBoolean(R.styleable.ZeekrMenu_noAnimator, false)

    itemTextSize = attributes.getInteger(R.styleable.ZeekrMenu_itemTextSize, 24.dp)
    textPaint.run {
      isAntiAlias = true
      isDither = true
      textSize = itemTextSize.toFloat()
      textAlign = Paint.Align.CENTER
      style = Paint.Style.FILL_AND_STROKE
      color = themeColorStateId(com.zeekr.theme.R.color.primary_80)
    }

    with(selectDrawable) {
      shapeAppearanceModel = ShapeAppearanceModel.builder()
        .setAllCorners(CornerFamily.ROUNDED, selectDrawableCorner.toFloat()).build()
      fillColor = context.themeColorStateList(com.zeekr.theme.R.attr.colorMenuSelect)
    }

    setOnClickListener { }
  }

  fun setSelectIndexListener(listener: ((Int) -> Unit)) {
    this.selectIndexListener = listener
  }

  private fun selectAnimator(field: Int, target: Int) {
    selectAnimator?.cancel()
    selectAnimator = ValueAnimator.ofFloat(field.toFloat(), target.toFloat()).apply {
      addUpdateListener {
        movePosition = it.animatedValue as Float
        // requestLayout()
        invalidate()
        invalidateTouchHelper()
      }
      interpolator = DecelerateInterpolator(3f)
      duration = 250L
      start()
    }
  }

  override fun onDraw(canvas: Canvas) {
    super.onDraw(canvas)

    if (selectIndex > NO_ITEM_SELECT) {
      canvas.save()
      canvas.translate(
        0.toFloat(), movePosition * (itemHeight + itemPadding)
      )
      selectDrawable.draw(canvas)
      canvas.restore()
    }

    0.until(itemCount).forEach { index ->
      textPaint.getTextBounds(contentList[index], 0, contentList[index].length, textRect)
      canvas.save()
      if (disableArray.contains(index)) {
        selectColor = disablePaintColor
        onSelectColor = disablePaintColor
      } else {
        selectColor = enabledSelectedTextColor
        onSelectColor = enabledUnSelectedTextColor
      }
      textPaint.color = onSelectColor.takeUnless { index == selectIndex } ?: selectColor
      canvas.drawText(
        contentList[index],
        textPadding.toFloat() + textLeftPadding + textRect.width() / 2,
        (itemHeight + itemPadding) * (index * 2 + 1) / 2.toFloat() - textRect.centerY().toFloat() - itemPadding / 2,
        textPaint
      )
      canvas.restore()
    }

    0.until(iconCount).forEach { index ->
      canvas.save()
      val icon = context.getDrawableOrNull(iconLists[index])!!
      icon.setBounds(0, 0, iconWidth, iconHeight)
      if (disableArray.contains(index)) {
        selectColor = disablePaintColor
        onSelectColor = disablePaintColor
      } else {
        selectColor = enabledSelectedTextColor
        onSelectColor = enabledUnSelectedTextColor
      }
      icon.setTint(onSelectColor).takeUnless { index == selectIndex } ?: icon.setTint(
        selectColor
      )
      // 图标在item内竖直居中
      val iconTop = ((itemHeight + itemPadding) * index + (itemHeight - iconHeight) / 2).toFloat()
      canvas.translate(
        iconPadding.toFloat(), iconTop
      )
      icon.draw(canvas)
      canvas.restore()
    }
  }

  override fun getAccessibilityClassName(): CharSequence {
    return ZeekrMenu::class.java.simpleName
  }

  fun setOnSelectTextColor(@AttrRes color: Int) {
    onSelectTextColorId = color
    enabledUnSelectedTextColor = context.themeColor(color)
    invalidate()
    invalidateTouchHelper()
  }

  fun setUnSelectTextColor(@ColorRes color: Int) {
    enabledUnSelectedTextColor = context.themeColorSelectId(color)
    invalidate()
    invalidateTouchHelper()
  }

  fun setIconSize(targetWidth: Int, targetHeight: Int) {
    iconWidth = targetWidth
    iconHeight = targetHeight
    invalidate()
    invalidateTouchHelper()
  }

  fun setItemTextSize(targetTextSize: Int) {
    itemTextSize = targetTextSize
    textPaint.run {
      textSize = itemTextSize.toFloat()
    }
    invalidate()
    invalidateTouchHelper()
  }

  fun submitData(list: List<String>, @DrawableRes iconList: List<Int>) {
    contentList.clear()
    iconLists.clear()
    contentList.addAll(list)
    iconLists.addAll(iconList)
    requestLayout()
    invalidate()
    invalidateTouchHelper()
  }

  fun submitContent(list: List<String>) {
    contentList.clear()
    contentList.addAll(list)
    requestLayout()
    invalidate()
    invalidateTouchHelper()
  }

  fun commonItemSet(index: Int) {
    selectIndex = index
  }

  private fun invalidateTouchHelper() {
    touchHelper.invalidateRoot()
    List(contentList.size) {
      touchHelper.invalidateVirtualView(it)
    }
  }

  fun signalItemSet(index: Int) {
    selectIndex = index
  }

  fun voiceItemSet(index: Int, noAnimator: Boolean) {
    selectIndex = index
    isAnimator = noAnimator
  }

  fun setSelectDrawableColor(@AttrRes themeAttrId: Int) {
    selectColorId = themeAttrId
    selectDrawable.fillColor = context.themeColorStateList(themeAttrId)
    invalidate()
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

  fun isIndexEnable(index: Int): Boolean {
    if (disableArray.contains(index)) {
      return false
    }
    return true
  }

  private fun refreshDisableArray() {
    if (isEnabled) {
      disableArray.clear()
      selectDrawable.fillColor =
        context.themeColorStateList(com.zeekr.theme.R.attr.colorMenuSelect)
      invalidate()
    } else {
      0.until(itemCount).forEach { index ->
        disableArray.add(index)
      }
      selectDrawable.fillColor =
        context.themeColorResource(com.zeekr.theme.R.color.colormenu_50)
      invalidate()
    }
  }

  override fun setEnabled(enabled: Boolean) {
    super.setEnabled(enabled)
    refreshDisableArray()
  }

  override fun dispatchHoverEvent(event: MotionEvent): Boolean {
    return if (touchHelper.dispatchHoverEvent(event)) {
      true
    } else super.dispatchHoverEvent(event)
  }

  override fun performClick(): Boolean {
    val selection = menuHeight / itemCount
    val tempIndex = (motionEventY / selection).toInt()
    if (disableArray.contains(tempIndex)) {
      return super.performClick()
    }
    selectIndex = (motionEventY / (itemHeight + itemPadding)).toInt()
    selectIndexListener?.invoke(selectIndex)
    return super.performClick()
  }

  override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
    super.onLayout(changed, left, top, right, bottom)

    selectDrawable.setBounds(
      0, 0, menuWidth, itemHeight
    )

    if (changed) {
      touchHelper.rect.set(left, top, right, bottom)
      invalidateTouchHelper()
    }
  }

  @SuppressLint("ClickableViewAccessibility")
  override fun onTouchEvent(event: MotionEvent): Boolean {
    when (event.actionMasked) {
      MotionEvent.ACTION_DOWN -> {
        motionEventY = event.y
      }

      MotionEvent.ACTION_UP -> {
      }

      MotionEvent.ACTION_MOVE -> {
        motionEventY = event.y
      }
    }
    return super.onTouchEvent(event)
  }

  override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
    menuWidth = widthMeasureSpec.sizeWhenExactly(menuWidth)
    super.onMeasure(
      menuWidth.measureSpecBySize(), menuHeight.measureSpecBySize()
    )
  }

  internal fun themApply() {
    selectDrawable.fillColor =
      context.themeColorStateList(com.zeekr.theme.R.attr.colorMenuSelect)
        .takeIf { selectColorId == 0 } ?: context.themeColorStateList(selectColorId)
    enabledUnSelectedTextColor = context.themeColorSelectId(com.zeekr.theme.R.color.primary_60)
      .takeIf { onSelectTextColorId == 0 } ?: context.themeColor(onSelectTextColorId)
    invalidate()
    invalidateTouchHelper()
  }
}
