package com.zeekr.component.toggle

import android.content.Context
import android.graphics.Canvas
import android.os.Build
import android.util.AttributeSet
import android.view.LayoutInflater
import android.view.ViewGroup
import android.widget.FrameLayout
import androidx.annotation.RequiresApi
import androidx.core.content.ContextCompat
import com.zeekr.component.R
import com.zeekr.component.databinding.ZeekrTextswitcherBinding
import com.zeekr.component.databinding.ZeekrToggleSwitchBinding
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.getViewRect
import com.zeekr.component.extention.logInfo

@RequiresApi(Build.VERSION_CODES.M)
class ZeekrToggleSwitcher @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : FrameLayout(context, attrs) {

  private val itemList: List<String>
  private var currentIndex = 0
  private val binding = ZeekrToggleSwitchBinding.inflate(LayoutInflater.from(context), this)

  init {
    clipChildren = false
    clipToPadding = false
    binding.zeekrToggleButton.addRightIcon(24.dp)
    binding.zeekrToggleTextSwitch.setFactory {
      ZeekrTextswitcherBinding.inflate(
        LayoutInflater.from(context),
        (parent as ViewGroup?),
        false
      ).root
    }
    val attributes = context.resources.obtainAttributes(attrs, R.styleable.ZeekrToggleSwitcher)
    itemList = attributes.getTextArray(R.styleable.ZeekrToggleSwitcher_zeekrStringArray)
      .toList() as List<String>
    attributes.recycle()

    binding.zeekrToggleTextSwitch.setCurrentText(itemList[0])
    waitForWidth {
      val drawable = ContextCompat.getDrawable(context, R.drawable.ic_arrow_left)?.mutate()!!
      val rect = this@ZeekrToggleSwitcher.getViewRect()
//        var width = rect.width()
//        var height = rect.height()
      val drawableWidth = drawable.intrinsicWidth
      val drawableHeight = drawable.intrinsicHeight
      val boundLeft = 24.dp
      val boundRight = 24.dp + drawableWidth
      val boundTop = (rect.height() - drawableHeight) / 2
      val boundBottom = boundTop + drawableHeight
      logInfo("rect : left $left top $top bottom$bottom  right$right ")
      drawable.setBounds(boundLeft, boundTop, boundRight, boundBottom)
      overlay.add(drawable)
    }
  }

  override fun onDraw(canvas: Canvas?) {
    super.onDraw(canvas)
  }

  fun selectNext() {
    binding.zeekrToggleTextSwitch.run {
      setOutAnimation(context, android.R.anim.slide_out_right)
      setInAnimation(context, android.R.anim.slide_in_left)
      nextView.setOnClickListener {
        binding.zeekrToggleButton.performClick()
      }
      currentIndex = (currentIndex + 1).takeIf { currentIndex < itemList.size - 1 } ?: 0
      setText(itemList[currentIndex])
    }
  }

  fun selectPrevious() {
    binding.zeekrToggleTextSwitch.run {
      setOutAnimation(context, R.anim.slide_out_left)
      setInAnimation(context, R.anim.slide_in_right)
      nextView.setOnClickListener {
        binding.zeekrToggleButton.performClick()
      }
      currentIndex = (currentIndex - 1).takeIf { currentIndex > 0 } ?: (itemList.size - 1)
      setText(itemList[currentIndex])
    }
  }

  fun selectedItem(index: Int) {
    binding.zeekrToggleTextSwitch.setText(itemList[index])
  }
}
