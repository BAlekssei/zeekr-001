package com.zeekr.component.qrcode

import android.content.Context
import android.graphics.Bitmap
import android.os.Looper
import android.util.AttributeSet
import androidx.annotation.WorkerThread
import androidx.appcompat.widget.AppCompatImageView
import androidx.constraintlayout.widget.ConstraintLayout
import androidx.core.content.ContextCompat
import androidx.core.content.res.use
import androidx.core.graphics.drawable.toBitmap
import com.zeekr.component.R
import com.zeekr.component.qrcode.QRCodeUtil.generateRoundedQR
import com.zeekr.lottie.ZeekrLoadingView

private val DEFAULT_LOGO_RES = R.drawable.qr_code_logo
private const val DEFAULT_LOGO_SIZE = 0.18f

private const val status_error = -1
private const val status_loading = 0
private const val status_success = 1

class ZeekrQRCodeView @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : ConstraintLayout(context, attrs) {

  /**
   * Logo图片资源
   */
  var logoRes = DEFAULT_LOGO_RES

  /**
   * Logo在二维码中的比例大小
   *
   * 如果设置较大会影响二维码识别
   */
  var logoSize = DEFAULT_LOGO_SIZE

  private var status = status_error

  private val imageView by lazy(LazyThreadSafetyMode.NONE) {
    AppCompatImageView(context).also {
      it.id = generateViewId()
      addView(it, LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT))
    }
  }

  private val loadingView by lazy(LazyThreadSafetyMode.NONE) {
    ZeekrLoadingView(context).also {
      it.id = generateViewId()
      it.scaleX = 120 / 400f
      it.scaleY = 120 / 400f
      addView(it, LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT))
    }
  }

  init {
    context.obtainStyledAttributes(attrs, R.styleable.ZeekrQRCodeView).use {
      logoRes = it.getResourceId(R.styleable.ZeekrQRCodeView_qrLogo, DEFAULT_LOGO_RES)
      logoSize = it.getFloat(R.styleable.ZeekrQRCodeView_qrLogoSize, DEFAULT_LOGO_SIZE)
        .coerceAtMost(1f)
    }
  }

  /**
   * 生成QRCode，尽量避免在UI线程调用
   */
  @WorkerThread
  fun generateQR(data: String) {
    val size = (400 * logoSize).toInt()
    val result = generateRoundedQR(
      ContextCompat.getDrawable(context, R.drawable.qr_code_logo)!!.toBitmap(size, size), data
    )
    if (Looper.myLooper() != null && Looper.myLooper() == handler?.looper) {
      onResult(result)
    } else {
      post {
        onResult(result)
      }
    }
  }

  private fun onResult(result: Bitmap?) {
    if (result != null) {
      imageView.setImageBitmap(result)
      loadingView.pauseAnimation()
      loadingView.visibility = GONE
      status = status_success
    } else {
      onError()
    }
  }

  /**
   * 获取生成二维码
   *
   * 当状态为加载中或异常时，返回null
   * */
  fun getQRCodeBitmap(): Bitmap? {
    if (status == status_success) {
      return imageView.drawable.toBitmap()
    }
    return null
  }

  fun onLoading() {
    imageView.setImageResource(R.drawable.qr_code_loading)
    loadingView.visibility = VISIBLE
    loadingView.playAnimation()
    status = status_loading
  }

  fun onError() {
    imageView.setImageResource(R.drawable.qr_code_failed)
    loadingView.pauseAnimation()
    loadingView.visibility = GONE
    status = status_error
  }
}
