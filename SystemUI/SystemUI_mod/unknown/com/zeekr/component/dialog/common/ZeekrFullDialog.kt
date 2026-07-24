package com.zeekr.component.dialog.common

import android.app.Activity
import android.app.Dialog
import android.content.Context
import android.graphics.Color
import android.os.Build
import android.os.Bundle
import android.view.Gravity
import android.view.LayoutInflater
import android.view.View
import android.view.Window
import android.view.WindowManager
import android.view.animation.DecelerateInterpolator
import android.view.animation.Interpolator
import android.widget.FrameLayout
import androidx.core.view.WindowCompat
import androidx.core.view.WindowInsetsCompat
import androidx.core.view.WindowInsetsControllerCompat
import com.zeekr.component.R
import com.zeekr.component.databinding.ZeekrDialogOuterLayoutBinding
import com.zeekr.component.extention.dp

class ZeekrFullDialog(
  context: Context,
  private val dialogParam: DialogParam,
  dialogLayout: View
) : Dialog(context, R.style.Zeekr_full_dialog_theme) {

  private var dismissBeforeOnListener: DialogDismissCallback? = null

  private val binding = ZeekrDialogOuterLayoutBinding.inflate(
    LayoutInflater.from(context), null, false
  ).apply {
    dialogLayout.alpha = 0f
    root.addView(dialogLayout)
    dialogLayout.layoutParams = (dialogLayout.layoutParams as FrameLayout.LayoutParams).apply {
      gravity = Gravity.CENTER
      bottomMargin = BTM_MARGIN
      height = dialogParam.dialogHeight
      width = dialogParam.dialogWidth
    }
    root.popupContentView = dialogLayout
    root.initLayout(dialogParam, ::finalDismiss)
    root.setDismissBeforeOnListener {
      dismissBeforeOnListener?.invoke(it)
      // window?.addFlags(WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL or WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE)
    }
  }

  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)

    window?.run {
      transparentSystemBar(this)

      setLayout(
        WindowManager.LayoutParams.MATCH_PARENT, WindowManager.LayoutParams.MATCH_PARENT
      )
      if (dialogParam.windowType.hasSetValue()) {
        setType(dialogParam.windowType)
      }
    }

    if (dialogParam.fullScreen) {
      fullScreen()
    }

    setContentView(binding.root)
  }

  fun setDismissOnListener(dismissOnListener: DialogDismissCallback?) {
    binding.root.setDismissOnListener(dismissOnListener)
  }

  fun dismissBeforeOnListener(dismissOnListener: DialogDismissCallback?) {
    dismissBeforeOnListener = dismissOnListener
  }

  fun setTouchOutsideListener(touchOutsideListener: DialogTouchOutsideCallback?) {
    binding.root.setTouchOutsideListener(touchOutsideListener)
  }

  fun dismissDialog() {
    binding.root.dismiss()
  }

  fun onDialogResume() {
    binding.root.onDialogResume()
  }

  fun dialogAnimationMove(
    positionX: Int,
    animationInterpolator: Interpolator = DecelerateInterpolator(INTERPOLATOR_VALUE),
    animationTime: Long = 800L
  ) {
    binding.root.dialogAnimationMove(positionX, animationInterpolator, animationTime)
  }

  fun dialogBackgroundMove(positionX: Int) {
    binding.root.dialogBackgroundMove(positionX)
  }

  private fun finalDismiss() {
    if (context is Activity && (context as Activity).isFinishing || window?.decorView?.isAttachedToWindow != true) {
      return
    }
    dismiss()
  }

  private fun transparentSystemBar(window: Window) {
    with(window) {
      setBackgroundDrawable(null)
      decorView.setPadding(0, 0, 0, 0)
      clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS)
      addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS)
      statusBarColor = Color.TRANSPARENT
//      navigationBarColor = Color.TRANSPARENT

      WindowCompat.setDecorFitsSystemWindows(this, false)

      val option =
        View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or View.SYSTEM_UI_FLAG_LAYOUT_STABLE
      decorView.systemUiVisibility = option
    }
  }

  private fun fullScreen() {
    window?.run {
      WindowInsetsControllerCompat(this, decorView).let { controller ->
        controller.hide(WindowInsetsCompat.Type.statusBars())
//        controller.hide(WindowInsetsCompat.Type.navigationBars())
        controller.systemBarsBehavior =
          WindowInsetsControllerCompat.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE
      }
//      navigationBarColor = Color.TRANSPARENT
      if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
//        navigationBarDividerColor = Color.TRANSPARENT
      }
    }
  }

  companion object {
    private val BTM_MARGIN = 20.dp
    private const val INTERPOLATOR_VALUE = 3F
  }
}
