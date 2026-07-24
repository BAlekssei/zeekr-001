package com.zeekr.component.qrcode

import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Paint
import androidx.annotation.WorkerThread
import com.google.zxing.EncodeHintType
import com.google.zxing.WriterException
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel
import com.google.zxing.qrcode.encoder.Encoder
import java.io.IOException

object QRCodeUtil {

  @Throws(WriterException::class, IOException::class)
  @WorkerThread
  internal fun generateRoundedQR(logo: Bitmap, data: String): Bitmap? {
    val hints = hashMapOf<EncodeHintType, Int>().also {
      it[EncodeHintType.MARGIN] = 1
    } // Make the QR code buffer border narrower
    val code = Encoder.encode(data, ErrorCorrectionLevel.H, hints)
    val input = code.matrix ?: throw java.lang.IllegalStateException()

    val width = 400
    val height = 400
    val quietZone = 2

    val inputWidth = input.width
    val inputHeight = input.height
    val qrWidth = inputWidth + quietZone * 2
    val qrHeight = inputHeight + quietZone * 2
    val outputWidth = width.coerceAtLeast(qrWidth)
    val outputHeight = height.coerceAtLeast(qrHeight)
    val multiple = (outputWidth / qrWidth).coerceAtMost(outputHeight / qrHeight)
    val leftPadding = (outputWidth - inputWidth * multiple) / 2
    val topPadding = (outputHeight - inputHeight * multiple) / 2
    val FINDER_PATTERN_SIZE = 7
    val CIRCLE_SCALE_DOWN_FACTOR = 21f / 30f
    val circleSize = (multiple * CIRCLE_SCALE_DOWN_FACTOR).toInt()

    val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
    val canvas = Canvas(bitmap)
    val paint = Paint()
    paint.style = Paint.Style.FILL
    paint.color = Color.WHITE
    paint.isAntiAlias = true
    canvas.drawRect(0f, 0f, width.toFloat(), height.toFloat(), paint)
    paint.color = Color.BLACK

    var inputY = 0
    var outputY = topPadding
    while (inputY < inputHeight) {
      var inputX = 0

      var outputX = leftPadding
      while (inputX < inputWidth) {
        if (input[inputX, inputY].toInt() == 1) {
          if (!(inputX <= FINDER_PATTERN_SIZE && inputY <= FINDER_PATTERN_SIZE || inputX >= inputWidth - FINDER_PATTERN_SIZE && inputY <= FINDER_PATTERN_SIZE || inputX <= FINDER_PATTERN_SIZE && inputY >= inputHeight - FINDER_PATTERN_SIZE)) {
            canvas.drawCircle(
              outputX.toFloat(),
              outputY.toFloat(),
              circleSize * 0.8f,
              paint
            )
          }
        }
        inputX++
        outputX += multiple
      }
      inputY++
      outputY += multiple
    }

    val circleDiameter = multiple * FINDER_PATTERN_SIZE / 1.8f
    drawFinderPattern(canvas, leftPadding, topPadding, circleDiameter, paint)
    drawFinderPattern(
      canvas,
      leftPadding + circleSize + (inputWidth - FINDER_PATTERN_SIZE) * multiple,
      topPadding,
      circleDiameter,
      paint
    )
    drawFinderPattern(
      canvas,
      leftPadding,
      topPadding + circleSize + (inputHeight - FINDER_PATTERN_SIZE) * multiple,
      circleDiameter,
      paint
    )

    return addLogo(bitmap, logo)
  }

  private fun drawFinderPattern(
    canvas: Canvas,
    x: Int,
    y: Int,
    circleDiameter: Float,
    paint: Paint
  ) {

    val WHITE_CIRCLE_DIAMETER = circleDiameter * 5 / 7
    val MIDDLE_DOT_DIAMETER = circleDiameter * 3 / 7

    paint.color = Color.BLACK
    canvas.drawRect(
      x + circleDiameter / 1.5f - circleDiameter,
      y + circleDiameter / 1.5f - circleDiameter,
      x + circleDiameter / 1.5f + circleDiameter,
      y + circleDiameter / 1.5f + circleDiameter,
      paint
    )

    paint.color = Color.WHITE
    canvas.drawRect(
      x + circleDiameter / 1.5f - WHITE_CIRCLE_DIAMETER,
      y + circleDiameter / 1.5f - WHITE_CIRCLE_DIAMETER,
      x + circleDiameter / 1.5f + WHITE_CIRCLE_DIAMETER,
      y + circleDiameter / 1.5f + WHITE_CIRCLE_DIAMETER,
      paint
    )

    paint.color = Color.BLACK
    canvas.drawCircle(
      x + circleDiameter / 1.5f,
      y + circleDiameter / 1.5f,
      MIDDLE_DOT_DIAMETER,
      paint
    )
  }

  /**
   * 在二维码中间添加Logo图案
   */
  private fun addLogo(src: Bitmap, logo: Bitmap): Bitmap? {
    // 获取图片的宽高
    val srcWidth = src.width

    val srcHeight = src.height
    val logoWidth = logo.width

    val logoHeight = logo.height
    if (srcWidth == 0 || srcHeight == 0) {
      return null
    }
    if (logoWidth == 0 || logoHeight == 0) {
      return src
    }

    var bitmap = Bitmap.createBitmap(srcWidth, srcHeight, Bitmap.Config.ARGB_8888)
    try {
      val canvas = Canvas(bitmap)
      canvas.drawBitmap(src, 0f, 0f, null)
      canvas.drawBitmap(
        logo,
        (srcWidth - logoWidth) / 2f,
        (srcHeight - logoHeight) / 2f,
        null
      )
      canvas.save()
      canvas.restore()
    } catch (e: Exception) {
      bitmap = null
      e.stackTrace
    }
    return bitmap
  }
}
