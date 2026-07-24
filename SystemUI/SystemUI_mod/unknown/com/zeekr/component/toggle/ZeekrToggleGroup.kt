package com.zeekr.component.toggle

import android.content.Context
import android.os.Build
import android.util.AttributeSet
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.widget.Button
import android.widget.ImageView
import android.widget.TextView
import androidx.annotation.DrawableRes
import androidx.annotation.LayoutRes
import androidx.annotation.RequiresApi
import androidx.constraintlayout.helper.widget.Flow
import androidx.constraintlayout.widget.ConstraintLayout
import androidx.core.view.children
import androidx.core.view.isVisible
import com.zeekr.component.databinding.ZeekrToggleGroupLayoutBinding

@SuppressWarnings("deprecation")
class ZeekrToggleGroup @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null,
  defStyleAttr: Int = 0
) : ConstraintLayout(context, attrs, defStyleAttr) {

  private var listener: ((Int, Boolean) -> Unit)? = null
  private var binding: ZeekrToggleGroupLayoutBinding? = null
  private val list: MutableList<String> = mutableListOf()
  private val iconList: MutableList<Int> = mutableListOf()
  private val iconIdList: MutableList<Int> = mutableListOf()
  private var orientation: Int = Flow.HORIZONTAL

  var selectIndex: Int
    get() = when {
      list.isNotEmpty() -> {
        list.indexOf((children.first { it is Button } as Button).tag)
      }
      iconIdList.isNotEmpty() -> {
        iconIdList.indexOf((children.first { it is Button } as Button).tag)
      }
      else -> {
        Log.w("ZeekrToggleGroup", "setSelectIndex   list is empty  ")
        0
      }
    }
    set(value) {
      moveToItem(value)
      listener?.invoke(value, false)
    }

  init {
    clipChildren = false
    clipToPadding = false
  }

  fun setZeekrToggleListener(listener: ((Int, Boolean) -> Unit)) {
    this.listener = listener
  }

  private fun moveToItem(index: Int) {
    Log.d("ZeekrToggleGroup", "moveToItem  index $index ")
    when {
      list.isNotEmpty() -> {
        binding?.select(list[index], this, orientation)
      }
      iconIdList.isNotEmpty() -> {
        binding?.select(iconIdList[index], iconList[index], this, orientation)
      }
      else -> {
        Log.w("ZeekrToggleGroup", "moveToItem   index: $index")
      }
    }
  }

  fun itemEnable(index: Int, isEnabled: Boolean) {
    Log.d("ZeekrToggleGroup", "itemEnable  index $index   $isEnabled")
    if (list.isNotEmpty()) {
      if (index > list.size - 1) {
        throw Throwable(" index is too large!")
      }
      children.find { it is TextView && it.text == list[index] }?.isEnabled = isEnabled
    } else {
      if (index > iconIdList.size - 1) {
        throw Throwable(" index is too large!")
      }
      children.find { it is ImageView && it.id == iconIdList[index] }?.isEnabled = isEnabled
    }

    if (index == selectIndex && !isEnabled) {
      moveToItem(index)
    }
  }

  fun itemVisible(index: Int, visible: Boolean) {
    Log.d("ZeekrToggleGroup", "itemVisible  index $index   $isEnabled")
    if (list.isNotEmpty()) {
      if (index > list.size - 1) {
        throw Throwable(" index is too large!")
      }
      children.find { it is TextView && it.text == list[index] && it !is Button }?.isVisible = visible
    } else {
      if (index > iconIdList.size - 1) {
        throw Throwable(" index is too large!")
      }
      children.find { it is ImageView && it.id == iconIdList[index] }?.isVisible = visible
    }
    if (index == selectIndex && !isEnabled) {
      moveToItem(index)
    }
  }

  fun setEnable(enabled: Boolean) {
    isEnabled = enabled
    children.forEach {
      if (it.tag == EXPAND_TAG) {
        it.alpha = 1f.takeIf { enabled } ?: 0.4f
      }
      it.isEnabled = enabled
    }
  }

  @RequiresApi(Build.VERSION_CODES.M)
  fun removeRipple() {
    when {
      list.isNotEmpty() -> {
        children.filter { it is TextView && it !is Button }
          .forEach {
            it.foreground = null
          }
      }
      iconIdList.isNotEmpty() -> {
        children.filter { it is ImageView }.forEach {
          it.foreground = null
        }
      }
    }
  }

  fun getItemView(index: Int): View? {
    return when {
      list.size <= index && iconIdList.size <= index -> null
      list.isNotEmpty() -> {
        children.find {
          it is TextView && it !is Button && it.text == list[index]
        }
      }
      iconIdList.isNotEmpty() -> {
        children.find {
          it is ImageView && it.id == iconIdList[index]
        }
      }
      else -> null
    }
  }

  @JvmOverloads
  fun submitData(
    list: List<String>,
    orientation: Int = Flow.HORIZONTAL,
    selectIndex: Int = 0,
    expandCount: Int = 0
  ) {
    this.list.clear()
    removeAllViews()
    this.list.addAll(list)
    this.orientation = orientation
    if (expandCount > list.size - 1) {
      throw Throwable(" expandCount  is too large !  ")
    }
    binding = ZeekrToggleGroupLayoutBinding.inflate(
      LayoutInflater.from(context),
      this
    ).apply {
      layout(list, this@ZeekrToggleGroup, orientation, selectIndex, expandCount) {
          index, accord ->
        listener?.invoke(index, accord)
      }
    }
    setEnable(isEnabled)
  }

  @JvmOverloads
  fun submitIconData(
    @DrawableRes
    list: List<Int>,
    @LayoutRes
    imageLayout: Int,
    iconSize: Int,
    orientation: Int = Flow.HORIZONTAL,
    selectIndex: Int = 0,
    expandCount: Int = 0
  ) {
    this.iconList.clear()
    removeAllViews()
    this.iconIdList.clear()
    this.iconList.addAll(list)
    this.orientation = orientation
    if (expandCount > list.size - 1) {
      throw Throwable(" expandCount  is too large !  ")
    }
    binding = ZeekrToggleGroupLayoutBinding.inflate(
      LayoutInflater.from(context),
      this
    ).apply {
      zeekrToggleSelectButton.iconSize = iconSize
      iconIdList.addAll(
        iconLayout(
          list,
          imageLayout,
          this@ZeekrToggleGroup,
          orientation,
          selectIndex,
          expandCount
        ) {
            index, accord ->
          listener?.invoke(index, accord)
        }
      )
    }
    setEnable(isEnabled)
  }

  override fun onDetachedFromWindow() {
    super.onDetachedFromWindow()
    binding = null
  }

  companion object {
    const val EXPAND_TAG = "expand tag"
  }
}
