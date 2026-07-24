package com.zeekr.component.toggle

import android.content.Context
import android.graphics.Canvas
import android.graphics.Rect
import android.util.AttributeSet
import android.view.LayoutInflater
import android.view.ViewGroup
import android.widget.TextView
import androidx.annotation.RestrictTo
import androidx.appcompat.content.res.AppCompatResources
import androidx.constraintlayout.helper.widget.Flow
import androidx.constraintlayout.widget.ConstraintLayout
import androidx.core.graphics.drawable.DrawableCompat
import androidx.core.view.ViewCompat
import androidx.core.view.children
import androidx.core.view.isGone
import androidx.core.view.isInvisible
import androidx.core.view.isVisible
import androidx.core.view.updateLayoutParams
import com.google.android.material.card.MaterialCardView
import com.google.android.material.imageview.ShapeableImageView
import com.zeekr.component.R
import com.zeekr.component.databinding.ZeekrToggleLayoutBinding
import com.zeekr.component.extention.childrenEnable
import com.zeekr.component.extention.clickWithParentTrigger
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.getViewRect
import com.zeekr.component.extention.logDebug
import com.zeekr.component.extention.performClickDelayed
import com.zeekr.component.extention.themeColorStateList
import com.zeekr.component.extention.themeColorStateListSelectId
import com.zeekr.component.extention.toggleItemSelect
import com.zeekr.component.ripple.ZeekrVoiceListInterface
import com.zeekr.component.ripple.refreshScreenLocation
import com.zeekr.component.ripple.refreshViewRect
import com.zeekr.component.ripple.rippleDisplay
import com.zeekr.component.touch.expandTouchArea
import java.util.Stack

class ZeekrToggle @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : ConstraintLayout(
  context, attrs
),
  ZeekrVoiceListInterface {

  internal val binding = ZeekrToggleLayoutBinding.inflate(
    LayoutInflater.from(context), this
  )

  private var itemSize: Int
  internal val outBorderHasMargins: Boolean
  private val behavior: ZeekrToggleBehavior
  private var itemBinder: ToggleItemBinder = { _, viewGroup ->
    inflateToggleIconItemView(R.drawable.ic_home, viewGroup)
  }
  internal val itemCards = mutableListOf<ViewGroup>()
  private var listener: ToggleListener? = null

  private val selectIndexStack = Stack<Int>()
  internal var defaultSelectIndex: Int

  internal var noAnimator: Boolean = false
  private var selectShadowHeight: Int = 0

  private var itemDefaultWidth = 0
  private var itemDefaultHeight = 0

  internal val toggleItemMargin: Int

  internal var hasSubmit = false
  private val rippleRectList = mutableListOf<Rect>()
  private val triggerTime: Int

  internal val selectView: ViewGroup
    get() = itemCards[selectIndex]

  init {
    // Ensure we are using the correctly themed context rather than the context that was passed in.
    val attributes = context.resources.obtainAttributes(attrs, R.styleable.ZeekrToggle)

    itemSize = attributes.getInteger(R.styleable.ZeekrToggle_zeekrToggleSize, 2)
    check(itemSize >= 2)
    defaultSelectIndex = attributes.getInteger(R.styleable.ZeekrToggle_zeekrToggleSelect, 0)
    check(defaultSelectIndex in 0 until itemSize)
    outBorderHasMargins =
      attributes.getBoolean(R.styleable.ZeekrToggle_zeekrToggleOutBorderMargin, false)
    val attrStyle =
      attributes.getInteger(R.styleable.ZeekrToggle_zeekrToggleStyle, TOGGLE_STYLE_HORIZONTAL)
    val attrExpandSize = attributes.getInteger(R.styleable.ZeekrToggle_zeekrToggleExpandSize, 0)
    val singleIsRight =
      attributes.getBoolean(R.styleable.ZeekrToggle_zeekrToggleSingleDirectionRight, false)
    behavior = when (attrStyle) {
      TOGGLE_STYLE_HORIZONTAL -> ZeekrToggleBehavior.Group()
      TOGGLE_STYLE_VERTICAL -> ZeekrToggleBehavior.Group(Flow.VERTICAL)
      TOGGLE_STYLE_EXPAND -> {
        check(attrExpandSize in 1 until itemSize)
        ZeekrToggleBehavior.Expand(attrExpandSize)
      }
      TOGGLE_STYLE_SINGLE -> {
        ZeekrToggleBehavior.Single(singleIsRight)
      }
      else -> ZeekrToggleBehavior.Group()
    }
    behavior.parent = this
    val defaultMargin = 16.dp.takeIf { attrStyle == TOGGLE_STYLE_VERTICAL } ?: 0.dp
    toggleItemMargin =
      attributes.getInteger(R.styleable.ZeekrToggle_zeekrToggleItemMargin, defaultMargin)

    itemDefaultWidth =
      attributes.getInteger(R.styleable.ZeekrToggle_zeekrToggleItemDefaultWidthDp, 160).dp
    itemDefaultHeight =
      attributes.getInteger(R.styleable.ZeekrToggle_zeekrToggleItemDefaultHeightDp, 56).dp
    triggerTime =
      attributes.getInteger(R.styleable.ZeekrToggle_zeekrToggleTriggerTime, 50)

    attributes.getDrawable(R.styleable.ZeekrToggle_zeekrToggleShadowDrawable)?.let {
    }

    isChildrenDrawingOrderEnabled = true

    clipChildren = false
    clipToPadding = false
    hasSubmit = false

    attributes.recycle()
    ViewCompat.setImportantForAccessibility(this, ViewCompat.IMPORTANT_FOR_ACCESSIBILITY_YES)
  }

  var selectIndex = 0
    private set(value) {
      logDebug("selectIndex setter value: $value  field: $field  hasSubmit: $hasSubmit ")
      if (value < 0) {
        return
      }
      if ((value > itemSize - 1)) {
        throw Throwable("你传的 selectIndex 有问题啊!!! itemSize: $itemSize  selectIndex: $value")
      }
      if (binding.isAnimatorState()) {
        // logDebug("toggle   selectIndexStack push value: $value   ")
        selectIndexStack.push(value)
        return
      }
      field = value
      behavior.itemSelect(value)
    }

  private fun addItems() {
    rippleRectList.clear()
    0.until(itemSize).forEach { index ->
      val item = inflateItemCard().apply {
        tag = index
        val view = itemBinder.invoke(index, this).apply {
          updateLayoutParams {
            width = itemDefaultWidth
            height = itemDefaultHeight
          }
        }
        addView(view)
        clickWithParentTrigger(this@ZeekrToggle, triggerTime.toLong()) {
          if (!this@ZeekrToggle.isEnabled) {
            return@clickWithParentTrigger
          }
          selectIndex = index
          listener?.invoke(index)
          // playSoundEffect(SoundEffectConstants.CLICK)
        }
      }
      addView(item)
      itemCards.add(item)
      rippleRectList.add(Rect())
    }
  }

  override fun onFinishInflate() {
    super.onFinishInflate()
    // logDebug("toggle  onFinishInflate")
    refresh()
  }

  private fun clearView() {
    itemCards.forEach {
      removeView(it)
    }
    itemCards.clear()
  }

  private fun refresh() {
    addItems()
    measureSelectGuideline()
    behavior.init()
    selectIndex = defaultSelectIndex
  }

  fun itemSize(size: Int) = apply {
    itemSize = size
    clearView()
    addItems()
    behavior.init()
  }

  fun defaultSelectIndex(defaultSelectIndex: Int) = apply {
    this.defaultSelectIndex = defaultSelectIndex
    selectIndex = defaultSelectIndex
  }

  fun reset(size: Int, defaultSelectIndex: Int, itemBinder: ToggleItemBinder? = null) {
    itemSize = size
    this.defaultSelectIndex = defaultSelectIndex
    itemBinder?.let { this.itemBinder = itemBinder }
    check(defaultSelectIndex in 0 until itemSize)
    check(behavior is ZeekrToggleBehavior.Group)
    clearView()
    addItems()
    behavior.init()
    selectIndex = defaultSelectIndex
    hasSubmit = false
  }

  private fun measureSelectGuideline() {
    val rect = when (behavior) {
      is ZeekrToggleBehavior.Group -> {
        if (behavior.orientation == Flow.HORIZONTAL) {
          Rect(
            itemDefaultWidth * defaultSelectIndex + toggleItemMargin * (defaultSelectIndex - 1),
            0,
            itemDefaultWidth * (defaultSelectIndex + 1) + toggleItemMargin * (defaultSelectIndex - 1),
            itemDefaultHeight
          )
        } else {
          Rect(
            0,
            itemDefaultHeight * defaultSelectIndex + toggleItemMargin * (defaultSelectIndex - 1),
            itemDefaultWidth,
            itemDefaultHeight * (defaultSelectIndex + 1) + toggleItemMargin * (defaultSelectIndex - 1)
          )
        }
      }
      is ZeekrToggleBehavior.Expand -> {
        Rect(
          itemDefaultWidth * defaultSelectIndex + toggleItemMargin * (defaultSelectIndex - 1),
          0,
          itemDefaultWidth * (defaultSelectIndex + 1) + toggleItemMargin * (defaultSelectIndex - 1),
          itemDefaultHeight
        )
      }
      is ZeekrToggleBehavior.Single -> {
        Rect(0, 0, itemDefaultWidth, itemDefaultHeight)
          .takeUnless { behavior.isRight }
          ?: Rect(
            behavior.expandViewMeasureWidth,
            0,
            itemDefaultWidth + behavior.expandViewMeasureWidth,
            itemDefaultHeight
          )
      }
    }

    // logDebug("toggle  measureSelectGuideline rect: $rect ")
    binding.initGuideLineNoAnimator(rect)
  }

  override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
    super.onMeasure(widthMeasureSpec, heightMeasureSpec)

    //  logDebug("toggle  onMeasure")

    val width = MeasureSpec.getSize(widthMeasureSpec)
    val widthMode = MeasureSpec.getMode(widthMeasureSpec)
    val height = MeasureSpec.getSize(heightMeasureSpec)
    val heightMode = MeasureSpec.getMode(heightMeasureSpec)
    var wrapWidth = 0
    var wrapHeight = 0
    when (behavior) {
      is ZeekrToggleBehavior.Group -> {
        val listViews = itemCards.filter { it.isVisible }
        if (listViews.isEmpty()) {
          wrapWidth = 0.dp
          wrapHeight = 56.dp
        } else if (behavior.orientation == Flow.HORIZONTAL) {
          wrapWidth = listViews.measureChildWidthTotal()
          wrapHeight = listViews.measureChildHeightMax()
        } else {
          wrapWidth = listViews.measureChildWidthMax()
          wrapHeight =
            listViews.measureChildHeightTotal() + toggleItemMargin * (listViews.size - 1)
        }
      }
      is ZeekrToggleBehavior.Expand -> {
        val visibleList = itemCards.filter { it.isVisible }
        val listViews = visibleList.takeUnless { behavior.collapseState }
          ?: visibleList.take(behavior.expandSize)
        wrapWidth = listViews.measureChildWidthTotal() + behavior.expandViewMeasureWidth
        wrapHeight = listViews.measureChildHeightMax()
      }
      is ZeekrToggleBehavior.Single -> {
        val visibleList = itemCards.filter { it.isVisible }
        val listViews =
          visibleList.takeUnless { (behavior.collapseState && !binding.isAnimatorState()) || visibleList.isEmpty() } ?: listOf(selectView)
        wrapWidth = listViews.measureSingleChildWidthTotal() + behavior.expandViewMeasureWidth
        wrapHeight = listViews.measureChildHeightMax()
      }
    }
    // logDebug("toggle  onMeasure behavior: $behavior  wrapWidth: $wrapWidth   wrapHeight: $wrapHeight")
    if (widthMode == MeasureSpec.AT_MOST && heightMode == MeasureSpec.AT_MOST) {
      setMeasuredDimension(wrapWidth, wrapHeight)
    } else if (widthMode == MeasureSpec.AT_MOST) {
      setMeasuredDimension(wrapWidth, height)
    } else if (heightMode == MeasureSpec.AT_MOST) {
      setMeasuredDimension(width, wrapHeight)
    }
  }

  override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
    super.onLayout(changed, left, top, right, bottom)
    //  logDebug("toggle before onLayout rippleRectList: $rippleRectList  ")
    if (itemCards.size == itemSize) {
      itemCards.forEachIndexed { index, view ->
        val oldRect = rippleRectList[index]
        val viewRect = view.getViewRect()
        oldRect.refreshViewRect(viewRect.width(), viewRect.height())
        view.refreshScreenLocation(oldRect)
        rippleRectList[index] = oldRect
      }
    }
    // logDebug("toggle after onLayout rippleRectList: $rippleRectList  ")
  }

  override fun onDraw(canvas: Canvas?) {
    super.onDraw(canvas)
    // logDebug("toggle  onDraw ")
  }

  override fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {
    super.onSizeChanged(w, h, oldw, oldh)
    //   logDebug("toggle  onSizeChanged  w:$w  h:$h  oldw: $oldw  oldh: $oldh ")
    when (behavior) {
      is ZeekrToggleBehavior.Group -> {
        if (behavior.orientation == Flow.HORIZONTAL) {
          itemCards.forEach {
            it.expandTouchArea(Rect(toggleItemMargin / 2, 20, toggleItemMargin / 2, 20))
          }
        } else {
          itemCards.forEach {
            it.expandTouchArea(Rect(0, toggleItemMargin / 2, 0, toggleItemMargin / 2))
          }
        }
      }
      else -> {
        itemCards.forEach {
          it.expandTouchArea(Rect(0, 20, 0, 20))
        }
      }
    }
  }

  override fun onWindowFocusChanged(hasWindowFocus: Boolean) {
    super.onWindowFocusChanged(hasWindowFocus)
    //   logDebug("toggle  onWindowFocusChanged :$hasWindowFocus  rippleRectList:$rippleRectList")
    if (itemCards.size == itemSize) {
      itemCards.forEachIndexed { index, view ->
        val oldRect = rippleRectList[index]
        view.refreshScreenLocation(oldRect)
        rippleRectList[index] = oldRect
      }
    }
    //  logDebug("toggle  after onWindowFocusChanged :$hasWindowFocus  rippleRectList:$rippleRectList")
  }

  override fun getAccessibilityClassName(): CharSequence {
    return ZeekrToggle::class.java.simpleName
  }

  fun noAnimator(no: Boolean) = apply {
    check(behavior is ZeekrToggleBehavior.Group)
    noAnimator = no
  }

  fun selectShadowHeight(height: Int) = apply {
    this.selectShadowHeight = height
  }

  fun toggleItemLayoutBinding(itemBinder: ToggleItemBinder) = apply {
    this.itemBinder = itemBinder
  }

  fun clickListener(listener: ToggleListener) = apply {
    this.listener = listener
  }

  private fun addItemsContent() {
    itemCards.forEachIndexed { index, card ->
      card.removeAllViews()
      val view = itemBinder.invoke(index, this)
      card.addView(view)
    }
  }

  @RestrictTo(RestrictTo.Scope.LIBRARY_GROUP)
  fun applyData() = apply {
    //  logDebug("toggle  applyData ")
    binding.run {
      addItemsContent()
      val selectItemView = if (selectIndex < itemCards.size) {
        itemCards[selectIndex]
      } else {
        selectIndex = 0
        itemCards[0]
      }
      selectItemView.post {
        //    logDebug("toggle  applyData  post  $selectIndex")
        initSelectGuideLine(selectItemView)
        behavior.textStyleChange()
      }
      zeekrToggleSelectCardShadow.tag = selectShadowHeight
      zeekrToggleSelectCardShadow.isVisible = true
      postDelayed({
        hasSubmit = true
      }, 300)
    }
  }

  inline fun submit(func: ZeekrToggle.() -> Unit) = apply {
    this.func()
    this.applyData()
  }

  fun selectCardVisible(visible: Boolean) {
    binding.run {
      zeekrToggleSelectCard.isInvisible = !visible
      zeekrToggleSelectCardShadow.isInvisible = !visible
      val selectItem = itemCards[selectIndex]
      selectItem.toggleItemSelect(visible)
    }
  }

  internal fun animatorEndCallback() {
    if (selectIndexStack.isNotEmpty()) {
      selectIndex = selectIndexStack.pop()
      selectIndexStack.clear()
    }
  }

  override fun setEnabled(enabled: Boolean) {
    super.setEnabled(enabled)
    // allEnable(enabled)
    itemCards.forEach {
      it.isEnabled = enabled
    }
    alpha = 1f.takeIf { enabled } ?: 0.4f
  }

  fun setItemEnabled(index: Int, enabled: Boolean) {
    itemCards[index].isEnabled = enabled
    itemCards[index].childrenEnable(enabled)
  }

  fun setItemVisible(index: Int, visible: Boolean) {
    behavior.setItemVisible(index, visible, ::changeSelectIndex)
  }

  private fun changeSelectIndex(index: Int) {
    selectIndex = index
    listener?.invoke(index)
  }

  fun singleTypeCollapseView(collapse: Boolean = true) {
    if (behavior is ZeekrToggleBehavior.Single) {
      behavior.collapseView().takeIf { collapse } ?: behavior.expandView()
    }
  }

  fun setSingleTypeCollapseListener(listener: ToggleCollapseListener) {
    if (behavior is ZeekrToggleBehavior.Single) {
      behavior.collapseListener = listener
    }
  }

  override fun voiceItemClick(index: Int) {
//    logInfo("voiceItemClick index $index ")
    if (index < 0 || index >= itemCards.size || itemCards[index].isGone || !itemCards[index].isEnabled) {
      return
    }
    itemCards[index].performClickDelayed()
    if (rippleRectList.size > index) {
      itemCards[index].rippleDisplay(rippleRectList[index])
    }
  }

  fun signalItemClick(index: Int) {
    if (index < 0 || index >= itemCards.size || itemCards[index].isGone) {
      return
    }
    selectIndex = index
  }

  fun commonItemClick(index: Int) {
    if (index < 0 || index >= itemCards.size || itemCards[index].isGone) {
      return
    }
    selectIndex = index
  }

  fun themeApply() {
    with(binding) {
      zeekrToggleSelectCard.backgroundTintList =
        context.themeColorStateList(com.zeekr.theme.R.attr.colorToggleButtonChecked)
      zeekrToggleGroupCard.setCardBackgroundColor(
        context.themeColorStateList(com.zeekr.theme.R.attr.colorOutlineBackground)
      )
      zeekrToggleSelectCard.setStrokeColor(
        context.themeColorStateListSelectId(com.zeekr.theme.R.color.zeekr_toggle_stroke_color)
      )
    }
    if (behavior is ZeekrToggleBehavior.Expand) {
      behavior.expandView.setImageDrawable(
        AppCompatResources.getDrawable(
          context,
          R.drawable.zeekr_toggle_expand
        )?.mutate()
      )
    }
    itemCards.forEach {
      it.children.forEach { view ->
        when (view) {
          is ShapeableImageView -> {
            val tempDrawable = view.drawable
            DrawableCompat.setTintList(
              tempDrawable,
              context.themeColorStateListSelectId(R.color.zeekr_toggle_icon_selector_color)
            )
            view.setImageDrawable(tempDrawable)
          }
          is TextView -> {
            view.setTextColor(context.themeColorStateListSelectId(R.color.zeekr_toggle_text_select_color))
          }
          else -> {
            it.findViewById<TextView>(R.id.zeekr_toggle_card_multi_line_content_title)
              ?.setTextColor(context.themeColorStateListSelectId(R.color.zeekr_toggle_text_select_color))
            it.findViewById<TextView>(R.id.zeekr_toggle_card_multi_line_content_tip)
              ?.setTextColor(context.themeColorStateListSelectId(R.color.zeekr_toggle_tip_selector_color))
          }
        }
      }
      (it as? MaterialCardView)?.backgroundTintList = context
        .themeColorStateListSelectId(com.zeekr.theme.R.color.zeekr_toggle_item_background_color)
      (it as? MaterialCardView)?.setStrokeColor(
        context
          .themeColorStateListSelectId(com.zeekr.theme.R.color.zeekr_toggle_item_stroke_color)
      )
    }
  }

  companion object {
    internal const val EXPAND_VIEW = "expand view"
    const val TEXTVIEW_NOT_SELECT_BOLD = "not bold"
  }
}
