package com.zeekr.component.dialog

import android.annotation.SuppressLint
import android.content.Context
import android.content.res.ColorStateList
import android.os.Build
import android.text.TextPaint
import android.text.method.LinkMovementMethod
import android.util.AttributeSet
import android.view.Gravity
import android.view.LayoutInflater
import android.view.ViewGroup
import android.widget.TextView
import androidx.annotation.RequiresApi
import androidx.constraintlayout.widget.ConstraintLayout
import androidx.core.view.isVisible
import androidx.core.view.updateLayoutParams
import com.google.android.material.card.MaterialCardView
import com.google.android.material.textview.MaterialTextView
import com.zeekr.component.R
import com.zeekr.component.button.ZeekrButton
import com.zeekr.component.colors.colorOutlineBackground
import com.zeekr.component.colors.createColorStateListButton
import com.zeekr.component.colors.createColorStateListEnabled
import com.zeekr.component.colors.dialogBackground
import com.zeekr.component.colors.onPrimary
import com.zeekr.component.colors.onPrimary40
import com.zeekr.component.colors.primary
import com.zeekr.component.colors.primary40
import com.zeekr.component.colors.primary60
import com.zeekr.component.databinding.ZeekrDialogContentTextLayoutBinding
import com.zeekr.component.databinding.ZeekrDialogLayoutMergeBinding
import com.zeekr.component.databinding.ZeekrDialogScrollTextLayoutBinding
import com.zeekr.component.dialog.button.INDEX_NEGATIVE
import com.zeekr.component.dialog.button.INDEX_NEUTRAL
import com.zeekr.component.dialog.button.INDEX_POSITIVE
import com.zeekr.component.dialog.button.WhichButton
import com.zeekr.component.dialog.common.NOT_SET_INT_VALUE
import com.zeekr.component.dialog.common.hasSetValue
import com.zeekr.component.extention.dimensionFromAttribute
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.logDebug

class ZeekrDialogLayout @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null,
  defStyle: Int = com.zeekr.theme.R.attr.dialogCardStyle
) : MaterialCardView(context, attrs, defStyle) {
  private val binding: ZeekrDialogLayoutMergeBinding by lazy {
    ZeekrDialogLayoutMergeBinding.inflate(
      LayoutInflater.from(context), this, false
    )
  }

 /* init {
    context.registerComponentCallbacks(object: ComponentCallbacks{
      @SuppressLint("NewApi")
      override fun onConfigurationChanged(newConfig: Configuration) {
        val isNight = (newConfig.uiMode and Configuration.UI_MODE_NIGHT_MASK) == Configuration.UI_MODE_NIGHT_YES
        val applicationUiMode = context.applicationContext.resources.configuration.uiMode
        logDebug("registerComponentCallbacks  isNight: $isNight    uiMode: ${newConfig.uiMode} applicationUiMode：$applicationUiMode ")
        updateNightMode(isNight)
        themeApply()
      }

      override fun onLowMemory() {

      }

    })
  }*/

  val customParent: ViewGroup by lazy {
    binding.zeekrDialogCustomLayout
  }

  fun setTitleLayout(title: String?, webViewTitle: Boolean) {
    with(binding.zeekrDialogTitle) {
      isVisible = title != null
      text = title
      if (title == null && !webViewTitle) {
        binding.zeekrDialogTitleGuidelineTop.setGuidelineBegin(0)
      }
    }
  }

  fun setTitleView(title: String?) {
    with(binding.zeekrDialogTitle) {
      isVisible = title != null
      text = title
      if (title == null) {
        binding.zeekrDialogTitleGuidelineTop.setGuidelineBegin(0)
      }
    }
  }

  fun setNoButtonsAndNoTitleLayout() {
    binding.zeekrDialogTitleGuidelineTop.setGuidelineBegin(0)
    setNoButtonsLayout()
  }

  fun setNoButtonsLayout() {
    binding.zeekrDialogButtonGuidelineBottom.setGuidelineEnd(0)
  }

  fun setButtonsMargin(margin: Int) {
    if (margin > -1) {
      binding.zeekrDialogButtonGuidelineBottom.setGuidelineEnd(172.dp + margin)
    }
  }

  fun addCustomView() {
    customParent.isVisible = true
    addView(binding.root)
  }

  fun measureContent(content: CharSequence): Int {
    if (content.isBlank()) {
      return 0
    }
    val array = content.split("\n").filterNot { it.isBlank() }
    val lineList = array.map {
      val paint = TextPaint().apply {
        textSize =
          context.dimensionFromAttribute(com.google.android.material.R.attr.textAppearanceBodyMedium)
            .toFloat()
      }
      val contentWidth = paint.measureText(it)
      (contentWidth / DIALOG_WIDTH).toInt() + 1
    }
    val lineCount = lineList.reduce { acc, s ->
      acc + s
    }
    logDebug("lineCount :$lineCount")
    return lineCount
  }

  fun addContentView(
    content: CharSequence,
    textGravity: Int = Gravity.NO_GRAVITY,
    contentTopMargin: Int = NOT_SET_INT_VALUE,
    contentBottomMargin: Int = NOT_SET_INT_VALUE
  ) {
    binding.zeekrDialogCenterLayout.isVisible = true
    var marginBottom = contentBottomMargin
    ZeekrDialogContentTextLayoutBinding.inflate(
      LayoutInflater.from(context), binding.zeekrDialogCenterLayout, true
    ).apply {
      val contentWidth = zeekrDialogConfirmContentText.paint.measureText(content.toString())
      val lineCount = (contentWidth / (DIALOG_MAX_WIDTH - DIALOG_MARGIN * 2))
      if (!contentBottomMargin.hasSetValue() && lineCount <= 1) {
        marginBottom = 38.dp
      }
      zeekrDialogConfirmContentText.text = content
      zeekrDialogConfirmContentText.contentLayout(textGravity)
    }
    binding.zeekrDialogCenterLayout.updateLayoutParams<ConstraintLayout.LayoutParams> {
      topMargin = contentTopMargin
      bottomMargin = marginBottom
    }
    addView(binding.root)
  }

  fun addScrollContentView(content: CharSequence) {
    binding.zeekrDialogCenterLayout.isVisible = true
    ZeekrDialogScrollTextLayoutBinding.inflate(
      LayoutInflater.from(context), binding.zeekrDialogCenterLayout
    ).apply {
      zeekrDialogConfirmContentText.text = content
      zeekrDialogScrollBar.attachScrollView(zeekrDialogConfirmScroll)
    }
    addView(binding.root)
  }

  fun getActionButton(which: WhichButton): ZeekrButton {
    return when (which.index) {
      INDEX_POSITIVE -> binding.zeekrDialogPositiveButton
      INDEX_NEGATIVE -> binding.zeekrDialogNegativeButton
      INDEX_NEUTRAL -> binding.zeekrDialogNeutralButton
      else -> throw IndexOutOfBoundsException(" is not an action button index.")
    }
  }

  fun showCloseIcon(clickListener: () -> Unit) {
    binding.zeekrDialogEditClose.isVisible = true
    binding.zeekrDialogEditClose.setOnClickListener {
      clickListener.invoke()
    }
  }

  @SuppressLint("NewApi")
  fun MaterialTextView.contentLayout(textGravity: Int = Gravity.NO_GRAVITY) {
    post {
      if (lineCount == 1) {
        gravity = Gravity.CENTER_HORIZONTAL
        updateLayoutParams<ViewGroup.LayoutParams> {
          gravity = Gravity.CENTER_HORIZONTAL
        }
      }
      if (textGravity != Gravity.NO_GRAVITY) {
        gravity = textGravity
        updateLayoutParams<ViewGroup.LayoutParams> {
          gravity = textGravity
        }
      }

      highlightColor = resources.getColor(android.R.color.transparent, context.theme)
      movementMethod = LinkMovementMethod.getInstance()
      //  movementMethod = ScrollingMovementMethod.getInstance()
    }
  }

  private fun ZeekrButton.dialogButtonThemeApply() {
    backgroundTintList = ColorStateList.valueOf(colorOutlineBackground)
    iconTint = createColorStateListEnabled(primary, primary40)
    setTextColor(createColorStateListEnabled(primary, primary40))
  }

  @RequiresApi(Build.VERSION_CODES.M)
  fun themeApply() {
    logDebug("themeApply    ")
    setCardBackgroundColor(dialogBackground)
    backgroundTintList = ColorStateList.valueOf(dialogBackground)
    with(binding) {
      zeekrDialogTitle.setTextColor(
        primary
      )
      findViewById<TextView>(R.id.zeekr_dialog_confirm_content_text)?.setTextColor(
        primary
      )
      zeekrDialogPositiveButton.run {
        backgroundTintList =
          createColorStateListButton(primary60, primary, primary60, primary40)
        iconTint =
          createColorStateListEnabled(onPrimary, onPrimary40)
        setTextColor(createColorStateListEnabled(onPrimary, onPrimary40))
      }
      zeekrDialogNegativeButton.dialogButtonThemeApply()
      zeekrDialogNeutralButton.dialogButtonThemeApply()
    }
  }

  companion object {
    private val DIALOG_WIDTH = 680.dp
    private val DIALOG_MAX_WIDTH = 808.dp
    private val DIALOG_MARGIN = 64.dp
  }
}
