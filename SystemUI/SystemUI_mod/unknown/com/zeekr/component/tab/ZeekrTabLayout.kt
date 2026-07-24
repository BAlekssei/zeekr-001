package com.zeekr.component.tab

import android.content.Context
import android.graphics.Color
import android.graphics.Rect
import android.graphics.Typeface
import android.util.AttributeSet
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.appcompat.widget.TooltipCompat
import androidx.core.view.children
import com.google.android.material.tabs.TabLayout
import com.zeekr.component.colors.primary
import com.zeekr.component.colors.primary60
import com.zeekr.component.colors.secondary
import com.zeekr.component.extention.getViewRect
import com.zeekr.component.extention.logDebug
import com.zeekr.component.extention.performClickDelayed
import com.zeekr.component.ripple.ZeekrVoiceListInterface
import com.zeekr.component.ripple.refreshScreenLocation
import com.zeekr.component.ripple.refreshViewRect
import com.zeekr.component.ripple.rippleDisplay
import com.zeekr.component.toggle.MOVE_TO_SELECT_ITEM_DURATION
import com.zeekr.component.touch.expandViewTouch

open class ZeekrTabLayout @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : TabLayout(context, attrs), ZeekrVoiceListInterface {

  private val rippleRectList = mutableListOf<Rect>()
  var tabIndicatorAnimationDuration = MOVE_TO_SELECT_ITEM_DURATION

  init {
    setBackgroundColor(Color.TRANSPARENT)
    tabIndicatorAnimationMode = INDICATOR_ANIMATION_MODE_LINEAR

    addOnTabSelectedListener(object : OnTabSelectedListener {
      override fun onTabSelected(tab: Tab) {
        tab.view.children.find {
          it is TextView
        }?.let {
          it as TextView
          it.postDelayed({
            it.typeface = Typeface.defaultFromStyle(Typeface.BOLD)
          }, tabIndicatorAnimationDuration)
        }
      }

      override fun onTabUnselected(tab: Tab) {
        tab.view.children.find {
          it is TextView
        }?.let {
          it as TextView
          it.postDelayed({
            it.typeface = Typeface.defaultFromStyle(Typeface.NORMAL)
          }, tabIndicatorAnimationDuration)
        }
      }

      override fun onTabReselected(tab: Tab?) {
      }
    })
  }

  override fun onFinishInflate() {
    super.onFinishInflate()
    if (rippleRectList.isEmpty()) {
      addRippleItem()
    }
  }

  private fun addRippleItem() {
    0.until(tabCount).forEach {
      getTabAt(it)?.let { tab ->
        TooltipCompat.setTooltipText(tab.view, null)
      }
      rippleRectList.add(Rect())
    }
  }

  fun itemEnable(index: Int, enable: Boolean) {
    getTabAt(index)?.let {
      it.view.isEnabled = enable
      it.view.alpha = 1f.takeIf { enable } ?: 0.6f
      it.view.childrenEnable(enable)
    }
  }

  private fun View.childrenEnable(isEnabled: Boolean) {
    if (this is ViewGroup) {
      children.forEach {
        it.isEnabled = isEnabled
        it.childrenEnable(isEnabled)
      }
    }
  }

  override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
    super.onLayout(changed, left, top, right, bottom)
    if (rippleRectList.isEmpty()) {
      addRippleItem()
    }
    0.until(tabCount).forEach { index ->
      getTabAt(index)?.view?.let { view ->
        val oldRect = rippleRectList[index]
        val viewRect = view.getViewRect()
        oldRect.refreshViewRect(viewRect.width(), viewRect.height())
        view.refreshScreenLocation(oldRect)
        rippleRectList[index] = oldRect
        view.expandViewTouch()
      }
    }
  }

  override fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {
    super.onSizeChanged(w, h, oldw, oldh)
  }

  override fun onWindowFocusChanged(hasWindowFocus: Boolean) {
    super.onWindowFocusChanged(hasWindowFocus)
    logDebug("tab  onWindowFocusChanged :$hasWindowFocus  rect:${getViewRect()}")
    if (rippleRectList.isEmpty()) {
      addRippleItem()
    }
    0.until(tabCount).forEach { index ->
      getTabAt(index)?.view?.let { view ->
        val oldRect = rippleRectList[index]
        view.refreshScreenLocation(oldRect)
        rippleRectList[index] = oldRect
      }
    }
  }

  override fun voiceItemClick(index: Int) {
    getTabAt(index)?.view?.let {
      if (it.isEnabled) {
        it.performClickDelayed()
        it.rippleDisplay(rippleRectList[index])
      }
    }
  }

  /**
   * 白天黑夜切换方法
   */
  fun themeApply() {
    setSelectedTabIndicatorColor(secondary)
    setTabTextColors(primary60, primary)
  }
}
