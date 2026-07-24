package com.zeekr.component.dialog

import android.content.Context
import android.view.Gravity
import android.view.LayoutInflater
import android.view.ViewGroup
import android.view.animation.DecelerateInterpolator
import android.view.animation.Interpolator
import androidx.annotation.RestrictTo
import androidx.annotation.StringRes
import androidx.core.view.isVisible
import androidx.lifecycle.LifecycleOwner
import com.zeekr.component.databinding.ZeekrDialogCommonLayoutBinding
import com.zeekr.component.dialog.button.WhichButton
import com.zeekr.component.dialog.button.hasNoButton
import com.zeekr.component.dialog.common.DIALOG_SIZE_LARGE
import com.zeekr.component.dialog.common.DIALOG_SIZE_MEDIUM
import com.zeekr.component.dialog.common.DIALOG_SIZE_SPECIALLY
import com.zeekr.component.dialog.common.DialogDismissCallback
import com.zeekr.component.dialog.common.DialogParam
import com.zeekr.component.dialog.common.DialogTouchOutsideCallback
import com.zeekr.component.dialog.common.NOT_SET_INT_VALUE
import com.zeekr.component.dialog.common.ZeekrFullDialog
import com.zeekr.component.dialog.lifecycle.DialogLifecycleObserver
import com.zeekr.component.dialog.lifecycle.zeekrLifecycleOwner
import com.zeekr.component.extention.clickWithTrigger
import com.zeekr.component.extention.dp

class ZeekrDialogCreate(private val context: Context) {

  private lateinit var dialog: ZeekrFullDialog
  val dialogLayout: ZeekrDialogLayout by lazy {
    val inflater = LayoutInflater.from(context)
    ZeekrDialogCommonLayoutBinding.inflate(
      inflater, null, false
    ).root
  }
  val dialogAction: ZeekrDialogAction by lazy {
    ZeekrDialogAction(dialogLayout)
  }

  private var dialogParam: DialogParam = DialogParam()

  private var title: String? = null
  private var webViewTitle: Boolean = false
  private var content: CharSequence? = null
  private var contentTopMargin = -1
  private var contentBottomMargin = NOT_SET_INT_VALUE
  private var buttonMarginContent = NOT_SET_INT_VALUE
  private var scrollContent: CharSequence? = null
  private var textGravity: Int = Gravity.NO_GRAVITY
  private var mergeLayoutBinder: ((ViewGroup) -> Unit)? = null
  private var mediumSize = false
  private var largeSize = false
  private var speciallySize = false
  private var lifecycleOwner: LifecycleOwner? = null

  internal val dialogLifecycleObserver: DialogLifecycleObserver by lazy {
    DialogLifecycleObserver(
      {
        dismissBeforeOnListener?.invoke(false)
        dismissOnListener?.invoke(false)
        dialog.dismiss()
      }
    ) { dialog.onDialogResume() }
  }

  private var dismissOnListener: DialogDismissCallback? = null
  private var dismissBeforeOnListener: DialogDismissCallback? = null
  private var touchOutsideListener: DialogTouchOutsideCallback? = null

  fun dialogParam(dialogParam: DialogParam) = apply {
    this.dialogParam = dialogParam
  }

  fun title(title: String) = apply {
    this.title = title
  }

  fun webViewTitle(webViewTitle: Boolean) = apply {
    this.webViewTitle = webViewTitle
  }

  fun content(content: CharSequence) = apply {
    this.content = content
  }

  fun dialogBackgroundMove(positionX: Int) {
    dialogParam = dialogParam.copy(backgroundMoveValue = positionX)
  }

  fun dialogAnimationMove(
    positionX: Int,
    animationInterpolator: Interpolator = DecelerateInterpolator(INTERPOLATOR_VALUE),
    animationTime: Long = 800L
  ) {
    dialogAction.dialogAnimationMove(positionX, animationInterpolator, animationTime)
  }

  fun mediumSize() = apply {
    this.mediumSize = true
  }

  fun largeSize() = apply {
    this.largeSize = true
  }

  fun speciallySize() = apply {
    this.speciallySize = true
  }

  fun contentMargin(topMargin: Int, bottomMargin: Int) = apply {
    contentTopMargin = topMargin
    contentBottomMargin = bottomMargin
  }

  fun buttonMarginContent(margin: Int) = apply {
    buttonMarginContent = margin
  }

  fun scrollContent(scrollContent: CharSequence) = apply {
    this.scrollContent = scrollContent
  }

  fun textGravity(textGravity: Int) = apply {
    this.textGravity = textGravity
  }

  fun mergeLayout(binder: (ViewGroup) -> Unit) = apply {
    mergeLayoutBinder = binder
  }

  fun lifecycleOwner(owner: LifecycleOwner) = apply {
    lifecycleOwner = owner
  }

  fun dismissOnListener(dismissOnListener: DialogDismissCallback) = apply {
    this.dismissOnListener = dismissOnListener
  }

  fun dismissBeforeOnListener(dismissOnListener: DialogDismissCallback) = apply {
    this.dismissBeforeOnListener = dismissOnListener
  }

  fun touchOutsideListener(touchOutsideListener: DialogTouchOutsideCallback) = apply {
    this.touchOutsideListener = touchOutsideListener
  }

  fun showCloseIcon(show: Boolean = true) = apply {
    dialogLayout.showCloseIcon { dialogAction.dismiss() }
  }

  fun noBackground() {
  }

  fun realButton(
    @StringRes res: Int? = null,
    text: CharSequence? = null,
    click: DialogButtonCallback? = null
  ) = apply {
    val button = dialogLayout.getActionButton(WhichButton.POSITIVE)
    button.isVisible = true
    res?.let { button.setText(it) }
    text?.let { button.text = it }
    button.clickWithTrigger {
      click?.invoke(dialogAction) ?: dialog.dismissDialog()
    }
  }

  fun neutralButton(
    @StringRes res: Int? = null,
    text: CharSequence? = null,
    click: DialogButtonCallback? = null
  ) = apply {
    val button = dialogLayout.getActionButton(WhichButton.NEUTRAL)
    button.isVisible = true
    res?.let { button.setText(it) }
    text?.let { button.text = it }
    button.clickWithTrigger {
      click?.invoke(dialogAction) ?: dialog.dismissDialog()
    }
  }

  fun ghostButton(
    @StringRes res: Int? = null,
    text: CharSequence? = null,
    click: DialogButtonCallback? = null
  ) = apply {
    val button = dialogLayout.getActionButton(WhichButton.NEGATIVE)
    button.isVisible = true
    res?.let { button.setText(it) }
    text?.let { button.text = it }
    button.clickWithTrigger {
      click?.invoke(dialogAction) ?: dialog.dismissDialog()
    }
  }

  @RestrictTo(RestrictTo.Scope.LIBRARY_GROUP)
  fun applyData(): ZeekrDialogAction {
    dialogLayout.setTitleLayout(title, webViewTitle)
    if (title == null && dialogLayout.hasNoButton() && !webViewTitle) {
      mergeLayoutBinder?.invoke(dialogLayout)
      dialogLayout.setNoButtonsAndNoTitleLayout()
    } else {
      mergeLayoutBinder?.let {
        it.invoke(dialogLayout.customParent)
        dialogLayout.addCustomView()
      }
      content?.let { text ->
        if (dialogLayout.measureContent(text) > 14.dp) {
          scrollContent = text
          content = null
          mediumSize()
        } else {
          dialogLayout.addContentView(
            text, textGravity, contentTopMargin, contentBottomMargin
          )
        }
      }
      scrollContent?.let { text -> dialogLayout.addScrollContentView(text) }
      if (dialogLayout.hasNoButton()) {
        dialogLayout.setNoButtonsLayout()
      } else {
        dialogLayout.setButtonsMargin(buttonMarginContent)
      }
    }
    dialog = ZeekrFullDialog(
      context,
      dialogParam.apply {
        when {
          mediumSize -> dialogSize = DIALOG_SIZE_MEDIUM
          largeSize -> dialogSize = DIALOG_SIZE_LARGE
          speciallySize -> dialogSize = DIALOG_SIZE_SPECIALLY
        }
      },
      dialogLayout
    )
    lifecycleOwner?.let { zeekrLifecycleOwner(it) }
    dialog.dismissBeforeOnListener {
      val ghost = dialogLayout.getActionButton(WhichButton.NEGATIVE)
      val real = dialogLayout.getActionButton(WhichButton.POSITIVE)
      val neutral = dialogLayout.getActionButton(WhichButton.NEGATIVE)
      ghost.isClickable = false
      real.isClickable = false
      neutral.isClickable = false
      lifecycleOwner?.lifecycle?.removeObserver(dialogLifecycleObserver)
      dismissBeforeOnListener?.invoke(it)
    }

    dismissOnListener?.let {
      dialog.setDismissOnListener(it)
    }
    touchOutsideListener?.let { dialog.setTouchOutsideListener(it) }
    dialog.show()
    dialogAction.dialog = dialog
    return dialogAction
  }

  fun show(func: ZeekrDialogCreate.() -> Unit): ZeekrDialogAction {
    func()
    return applyData()
  }

  companion object {
    private const val INTERPOLATOR_VALUE = 3F
  }
}
