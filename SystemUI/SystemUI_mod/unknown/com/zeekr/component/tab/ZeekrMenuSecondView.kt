package com.zeekr.component.tab

import android.content.Context
import android.graphics.Rect
import android.graphics.Typeface
import android.util.AttributeSet
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.constraintlayout.widget.ConstraintLayout
import androidx.core.graphics.drawable.DrawableCompat
import androidx.core.view.children
import androidx.core.view.isGone
import androidx.core.view.isVisible
import com.google.android.material.card.MaterialCardView
import com.zeekr.component.R
import com.zeekr.component.databinding.ZeekrLeftMenuSecondBinding
import com.zeekr.component.databinding.ZeekrLeftMenuSecondDefaultItemBinding
import com.zeekr.component.extention.allSelect
import com.zeekr.component.extention.clickWithParentTrigger
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.dpf
import com.zeekr.component.extention.getViewRect
import com.zeekr.component.extention.logDebug
import com.zeekr.component.extention.performClickDelayed
import com.zeekr.component.extention.textType
import com.zeekr.component.extention.themeColorStateList
import com.zeekr.component.extention.themeColorStateListSelectId
import com.zeekr.component.ripple.ZeekrVoiceListInterface
import com.zeekr.component.toggle.waitForWidth
import com.zeekr.component.touch.expandTouchArea
import com.zeekr.lottie.ZeekrRippleView

class ZeekrMenuSecondView @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : ConstraintLayout(context, attrs), ZeekrVoiceListInterface {

  var selectIndex = 0
    private set(value) {
      logDebug("value:$value  field:$field")
      if (field != value) {
        field = value
        moveSelect()
        listener?.invoke(selectIndex)
      }
    }

  private var defaultSelectIndex = 0
  private var indicatorPercent = 0.5f
  private var itemSize = 0
  private var itemGap = -1
  private var itemBinder: ((Int, ViewGroup) -> ViewGroup)
  private val noClickItemIndexList = mutableListOf<Int>()
  private val confirmItemIndexSet = mutableSetOf<Int>()
  private var currentConfirmIndex = NO_ITEM
  private val disableArray: MutableSet<Int> = mutableSetOf()
  val itemCount: Int
    get() = itemViews.size

  private val rippleView: ZeekrRippleView by lazy {
    ZeekrRippleView(context).apply {
      isGone = true
      elevation = 10.dpf
      addView(this)
    }
  }

  private val binding = ZeekrLeftMenuSecondBinding.inflate(
    LayoutInflater.from(context),
    this
  )

  init {
    itemBinder = { _, parent ->
      ZeekrLeftMenuSecondDefaultItemBinding.inflate(
        LayoutInflater.from(context),
        parent,
        false
      ).apply {
        zeekrLeftMenuItemIcon.setImageResource(R.drawable.ic_home)
        zeekrLeftMenuItemText.text = "文本文本"
      }.root
    }
  }

  private val itemViews = mutableListOf<ViewGroup>()

  private var listener: ((Int) -> Unit)? = null

  fun defaultSelectIndex(index: Int) = apply {
    defaultSelectIndex = index
  }

  fun itemSize(count: Int) {
    itemSize = count
  }

  fun itemGap(gap: Int) {
    itemGap = gap
  }

  fun indicatorPercent(indicatorPercent: Float) {
    this.indicatorPercent = indicatorPercent
  }

  fun noClickItemIndex(vararg args: Int) {
    noClickItemIndexList.clear()
    noClickItemIndexList.addAll(args.asList())
  }

  fun isIndexEnable(index: Int): Boolean {
    if (disableArray.contains(index)) {
      return false
    }
    return true
  }

  fun setConfirmItem(index: Int) {
    confirmItemIndexSet.add(index)
  }

  fun onConfirmItemConfirm() {
    check(confirmItemIndexSet.contains(currentConfirmIndex))
    confirmItemIndexSet.remove(currentConfirmIndex)
    selectIndex = currentConfirmIndex
    currentConfirmIndex = NO_ITEM
  }

  fun isConfirmItem(index: Int) = confirmItemIndexSet.contains(index)

  fun setZeekrMenuListener(listener: ((Int) -> Unit)) = apply {
    this.listener = listener
  }

  fun itemBinder(itemBinder: ((Int, ViewGroup) -> ViewGroup)) {
    this.itemBinder = itemBinder
  }

  fun applyData(): ZeekrMenuSecondView = apply {
    binding.run {
      addItems()
      initMoveSelectView()
    }
  }

  inline fun submit(func: ZeekrMenuSecondView.() -> Unit): ZeekrMenuSecondView = apply {
    this.func()
    this.applyData()
  }

  private fun addItems() {
    val ids = mutableListOf<Int>()
    0.until(itemSize).forEachIndexed { index, _ ->
      val view = itemBinder.invoke(index, this).apply {
        id = View.generateViewId()
        ids.add(id)
        textType(Typeface.NORMAL)
        val expandHeight = 8.dp.takeIf { itemGap == -1 } ?: (itemGap / 2)
        expandTouchArea(Rect(0, expandHeight, 0, expandHeight))
      }
      view.takeUnless { noClickItemIndexList.contains(index) }
        ?.clickWithParentTrigger(this@ZeekrMenuSecondView, 0) {
          if (confirmItemIndexSet.contains(index)) {
            logDebug("itemClickIndex:  $index")
            currentConfirmIndex = index
            listener?.invoke(index)
          } else {
            logDebug(" else  itemClickIndex:  $index")
            selectIndex = index
          }
        }
      addView(view)
      itemViews.add(view)
    }
    binding.zeekrLeftMenuGroupFlow.referencedIds = ids.toIntArray()
    if (itemGap != -1) {
      binding.zeekrLeftMenuGroupFlow.setVerticalGap(itemGap)
    }
    selectIndex = defaultSelectIndex
  }

  private fun unSelect() {
    itemViews.filter {
      it.isSelected || it.children.any { view ->
        view.isSelected
      }
    }.forEach {
      it.textType(Typeface.NORMAL)
      it.allSelect(false)
    }
  }

  private fun moveSelect() {
    unSelect()
    itemViews[selectIndex].run {
      textType(Typeface.BOLD)
      allSelect(true)
      this
    }
  }

  private fun initMoveSelectView() {
    val selectView = itemViews[selectIndex]
    val selectRect = selectView.getViewRect()
    if (selectRect.width() == 0) {
      itemViews[selectIndex].post {
        waitForWidth {
          val cardRect = binding.zeekrLeftMenuCardView.getViewRect()
          val selectViewRect = itemViews[selectIndex].getViewRect()
          binding.zeekrLeftMenuCardView.translationY =
            (selectViewRect.centerY() - cardRect.centerY()).toFloat()
          moveSelect()
        }
      }
      return
    }
  }

  fun commonItemSet(index: Int) {
    selectIndex = index
    moveSelect()
  }

  fun setEnabledIndex(index: Int, isEnabled: Boolean) {
    if (isEnabled) {
      disableArray.remove(index)
    } else {
      disableArray.add(index)
    }
    itemViews[index].isEnabled = isEnabled
    itemViews[index].alpha = 1f.takeIf { isEnabled } ?: 0.4f
  }

  internal fun themeApply() {
    binding.zeekrLeftMenuCardView.setCardBackgroundColor(
      context.themeColorStateList(com.zeekr.theme.R.attr.colorMenuSelect)
    )

    itemViews.forEach {
      (it as? MaterialCardView)?.setCardBackgroundColor(context.themeColorStateListSelectId(R.color.zeekr_menu_list_second_item_back_select))

      it.findViewById<ImageView>(R.id.zeekr_left_menu_item_icon)?.let { icon ->
        icon.drawable?.let { tempDrawable ->
          DrawableCompat.setTintList(
            tempDrawable,
            context.themeColorStateListSelectId(R.color.zeekr_menu_list_second_item_select)
          )
          icon.setImageDrawable(tempDrawable)
        }
      }
      it.findViewById<TextView>(R.id.zeekr_left_menu_item_text)
        ?.setTextColor(context.themeColorStateListSelectId(R.color.zeekr_menu_list_second_item_select))
    }
  }

  override fun voiceItemClick(index: Int) {
    itemViews[index].performClickDelayed()
    val itemRect = itemViews[index].getViewRect()

    with(rippleView) {
      isVisible = true
      waitForWidth {
        val rippleRect = this@ZeekrMenuSecondView.rippleView.getViewRect()
        translationX = (itemRect.centerX() - rippleRect.centerX()).toFloat()
        translationY = (itemRect.centerY() - rippleRect.centerY()).toFloat()
        playAnimation()
      }
    }
  }
}
