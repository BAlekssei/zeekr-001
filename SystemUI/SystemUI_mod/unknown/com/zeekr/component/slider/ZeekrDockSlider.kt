package com.zeekr.component.slider

import android.animation.ValueAnimator
import android.annotation.SuppressLint
import android.content.Context
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Paint
import android.graphics.drawable.Drawable
import android.media.AudioAttributes
import android.media.AudioManager.STREAM_SYSTEM
import android.media.SoundPool
import android.util.AttributeSet
import android.view.MotionEvent
import android.view.VelocityTracker
import android.view.View
import com.google.android.material.shape.CornerFamily
import com.google.android.material.shape.MaterialShapeDrawable
import com.google.android.material.shape.ShapeAppearanceModel
import com.zeekr.component.R
import com.zeekr.component.extention.dimensionFromAttribute
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.dpf
import com.zeekr.component.extention.getDrawableOrNull
import com.zeekr.component.extention.logDebug
import com.zeekr.component.extention.themeColor
import com.zeekr.component.extention.themeColorSelectId
import com.zeekr.component.extention.themeColorStateList
import kotlin.math.abs
import kotlin.math.max
import kotlin.math.min
import kotlin.math.roundToInt

class ZeekrDockSlider @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : View(context, attrs) {

  private val thumbRadius: Int
  private val thumbInnerRadius: Int
    get() = thumbRadius - 2.dp
  private val sliderHeight: Int
  private val trackHeight: Int
  private val defaultThumbDrawable = MaterialShapeDrawable() // 外圆
  private val defaultThumbInnerDrawable = MaterialShapeDrawable() // 内圆
  private var sliderProgress: Float = 0.5f
  private val trackSidePadding: Int
  private var thumbIsPressed = false
  private var trackCircleRevert = true
  private var revertAnimateValue = 0f
  private var circleRevertAnimation: ValueAnimator? = null
  private var progressListener: ((Float) -> Unit)? = null
  private var touchListener: SliderTouchListener? = null
  private var mTouchMode = 0
  private val mVelocityTracker = VelocityTracker.obtain()
  private val trackWidth
    get() = measuredWidth - 2 * thumbRadius - 2 * trackSidePadding
  private var valueRange: IntRange
  private var lastProgressValueForSound = 0
  private val selectPaint = Paint()
  private val onSelectPaint = Paint()
  private var onSelectedTextColor: Int
  private var selectedTextColor: Int
  private val pointTextSize: Float
  private val selectTextHeight = 33.dpf
  private val sliderSingleHeight: Int
    get() = sliderHeight - selectTextHeight.toInt()
  private var startValue = 15.5f
  private var endValue = 28.5f

  private var soundId = -1
  private val soundPool: SoundPool by lazy {
    val audioAttributes = AudioAttributes.Builder().setLegacyStreamType(STREAM_SYSTEM).build()

    SoundPool.Builder().setMaxStreams(1).setAudioAttributes(audioAttributes).build().apply {
      setOnLoadCompleteListener { soundPool, sampleId, status ->
      }
    }
  }

  private val circlePaint: Paint = Paint().apply {
    style = Paint.Style.FILL
    strokeCap = Paint.Cap.ROUND
    color = Color.WHITE
    isAntiAlias = true
    isDither = true
  }

  private var progressValue: Int = 0
    get() = fetchProgressValue()
    set(value) {
      field = value
      val index = value - valueRange.first
      val result = index.toFloat() / valueRange.length()
      logDebug("index: $index, result: $result")
      sliderProgress = result
      logDebug("sliderProgress: $sliderProgress")
      invalidate()
    }

  var progressFinalValue: Float = 0f
    get() = startValue + progressValue.toFloat() / 2
    set(value) {
      post {
        field = value
        progressValue = ((value - startValue) * 2).toInt()
      }
    }

  init {
    val attributes = context.resources.obtainAttributes(attrs, R.styleable.ZeekrSliderStyle)

    val valueFrom = attributes.getInteger(R.styleable.ZeekrSliderStyle_zeekrSliderValueFrom, 0)
    val valueTo = attributes.getInteger(R.styleable.ZeekrSliderStyle_zeekrSliderValueTo, 26)
    valueRange = IntRange(valueFrom, valueTo)

    thumbRadius = attributes.getDimensionPixelSize(
      R.styleable.ZeekrSliderStyle_zeekrSliderThumbRadius, 21.dp
    )
    val padding = attributes.getDimensionPixelSize(
      R.styleable.ZeekrSliderStyle_zeekrSliderSidePadding, 16.dp
    )
    onSelectedTextColor = context.themeColorSelectId(com.zeekr.theme.R.color.primary_60)
    selectedTextColor = context.themeColor(com.google.android.material.R.attr.colorPrimary)

    pointTextSize =
      context.dimensionFromAttribute(com.google.android.material.R.attr.textAppearanceHeadlineLarge)
        .toFloat()

    trackSidePadding = max(padding, thumbRadius)

    selectPaint.apply {
      style = Paint.Style.FILL
      color = Color.BLACK
      textSize = pointTextSize
      isAntiAlias = true
      isDither = true
    }

    onSelectPaint.apply {
      style = Paint.Style.FILL
      color = onSelectedTextColor
      textSize = pointTextSize
      isAntiAlias = true
      isDither = true
    }

    with(defaultThumbDrawable) {
      shapeAppearanceModel = ShapeAppearanceModel.builder()
        .setAllCorners(CornerFamily.ROUNDED, thumbRadius.toFloat()).build()
      fillColor =
        context.themeColorStateList(com.google.android.material.R.attr.colorSecondary)
      setBounds(0, 0, thumbRadius * 2, thumbRadius * 2)
    }

    with(defaultThumbInnerDrawable) {
      shapeAppearanceModel = ShapeAppearanceModel.builder()
        .setAllCorners(CornerFamily.ROUNDED, thumbInnerRadius.toFloat()).build()
      fillColor = context.themeColorStateList(com.zeekr.theme.R.attr.colorAlwaysWhite)
      setBounds(0, 0, thumbInnerRadius * 2, thumbInnerRadius * 2)
    }

    trackHeight = attributes.getDimensionPixelSize(
      R.styleable.ZeekrSliderStyle_zeekrSliderTrackThickness, 18.dp
    )
    sliderHeight = thumbRadius * 2 + selectTextHeight.toInt()

    attributes.recycle()
  }

  private val trackBackgroundDrawable: Drawable by lazy {
    context.getDrawableOrNull(R.drawable.zeekr_dock_slider_track)?.mutate()!!.apply {
      val trackTop = (sliderSingleHeight - trackHeight) / 2
      val trackBottom = (sliderSingleHeight + trackHeight) / 2
      setBounds(thumbRadius, trackTop, measuredWidth - thumbRadius, trackBottom)
    }
  }

  override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
    super.onMeasure(
      widthMeasureSpec,
      MeasureSpec.makeMeasureSpec(
        sliderHeight, MeasureSpec.EXACTLY
      )
    )
  }

  override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
    super.onLayout(changed, left, top, right, bottom)
  }

  override fun onDraw(canvas: Canvas) {
    super.onDraw(canvas)

    val thumbDx = trackWidth * sliderProgress + trackSidePadding

    when (progressFinalValue) {
      startValue -> {
        canvas.save()
        canvas.translate(trackSidePadding.toFloat(), selectTextHeight - 10)
        canvas.drawText("Low", 0f, 0f, selectPaint)
        canvas.restore()
      }
      endValue -> {
        canvas.save()
        canvas.translate(trackWidth + trackSidePadding.toFloat(), selectTextHeight - 10)
        canvas.drawText("High", 0f, 0f, selectPaint)
        canvas.restore()
      }

      else -> {
        canvas.save()
        canvas.translate(thumbDx, selectTextHeight - 10)
        canvas.drawText(progressFinalValue.toString(), 0f, 0f, selectPaint)
        canvas.restore()
      }
    }

    if (progressFinalValue >= (startValue + 1.5f) || progressFinalValue < startValue) {
      canvas.save()
      canvas.translate(trackSidePadding.toFloat(), selectTextHeight - 10)
      canvas.drawText("Low", 0f, 0f, onSelectPaint)
      canvas.restore()
    }

    if (progressFinalValue <= (endValue - 1.5f) || progressFinalValue > endValue) {
      canvas.save()
      canvas.translate(trackWidth + trackSidePadding.toFloat(), selectTextHeight - 10)
      canvas.drawText("High", 0f, 0f, onSelectPaint)
      canvas.restore()
    }

    canvas.save()
    canvas.translate(0f, selectTextHeight)
    trackBackgroundDrawable.draw(canvas)

    for (i in 0 until ZEEKR_DOCK_SLIDER_COUNT - 1) {
      drawTrackCircle(canvas, i)
    }

    canvas.save()
    canvas.translate(thumbDx, 0f)
    defaultThumbDrawable.draw(canvas)
    canvas.restore()

    canvas.save()
    canvas.translate(thumbDx + 2.dpf, 2.dpf)
    defaultThumbInnerDrawable.draw(canvas)
    canvas.restoreToCount(2)
  }

  private fun drawTrackCircle(canvas: Canvas, position: Int) {
    val selection = (trackWidth + 2 * thumbRadius).toFloat() / 14
    val circleX = trackSidePadding + (position + 1) * selection
    val circleY = sliderSingleHeight / 2
    val thumbDx = trackWidth * sliderProgress + trackSidePadding
    val multi = (SLIDER_CIRCLE_MAX_RADIUS - SLIDER_CIRCLE_MIN_RADIUS)
    val distance = abs(thumbDx - circleX) / (selection * SLIDER_CIRCLE_CHANGE_ZERO)
    // logDebug("drawTrackCircle  pos:$position  distance: $distance")
    val distanceMulti = max((1 - distance), 0f)
    val calRadius = (SLIDER_CIRCLE_MIN_RADIUS + multi * distanceMulti)
    val radios = calRadius.takeIf { !trackCircleRevert }
      ?: (SLIDER_CIRCLE_MIN_RADIUS + (calRadius - SLIDER_CIRCLE_MIN_RADIUS) * revertAnimateValue)
    canvas.drawCircle(
      circleX, circleY.toFloat(), radios, circlePaint
    )
  }

  @SuppressLint("ClickableViewAccessibility")
  override fun onTouchEvent(event: MotionEvent): Boolean {
    mVelocityTracker.addMovement(event)

    val eventX = event.x
    var touchPosition = (eventX - thumbRadius - trackSidePadding) / trackWidth
    touchPosition = max(0f, touchPosition)
    touchPosition = min(1f, touchPosition)
    when (event.actionMasked) {
      MotionEvent.ACTION_DOWN -> {
        thumbIsPressed = true
        trackCircleRevert = false
        circleRevertAnimation?.cancel()
        val beforeProgressValue = progressValue
        snapTouchPosition(touchPosition)
//        if (abs(progressValue - beforeProgressValue) >= 1) {
//          playSound()
//        }
        lastProgressValueForSound = progressValue
        invalidate()
      }
      MotionEvent.ACTION_MOVE -> {
        thumbIsPressed = true
        trackCircleRevert = false
        circleRevertAnimation?.cancel()
        snapTouchPosition(touchPosition)
//        if (abs(progressValue - lastProgressValueForSound) >= 1) {
//          lastProgressValueForSound = progressValue
//          playSound()
//        }
        invalidate()
      }
      MotionEvent.ACTION_CANCEL,
      MotionEvent.ACTION_UP -> {
        thumbIsPressed = false
        postDelayed({
          trackCircleRevert = true
          circleRevertAnimate()
        }, CIRCLE_REVERT_ANIMATE_DURATION)
        snapTouchPosition(touchPosition(touchPosition))
        invalidate()
        mVelocityTracker.clear()
      }
      else -> {}
    }
    touchListener?.invoke(event)
    return true
  }

  private fun circleRevertAnimate() {
    circleRevertAnimation = ValueAnimator.ofFloat(1f, 0f).apply {
      addUpdateListener {
        revertAnimateValue = it.animatedValue as Float
        invalidate()
      }
      duration = CIRCLE_REVERT_ANIMATE_DURATION
      start()
    }
  }

  private fun stopDrag() {
    mTouchMode = TOUCH_MODE_IDLE
    mVelocityTracker.computeCurrentVelocity(1000)
  }

  private fun snapTouchPosition(progress: Float) {
    sliderProgress = progress
    progressListener?.invoke(progressFinalValue)
    logDebug("progressListener: $progressFinalValue")
  }

  private fun fetchProgressValue(): Int {
    return valueRange.getValue(sliderProgress)
  }

  private fun touchPosition(position: Float) = (position * valueRange.last).roundToInt().toFloat() / valueRange.last

//  private fun playSound() {
//    logDebug("playSound  11  progressValue:$progressFinalValue")
//    soundPool.play(soundId, 1f, 1f, 16, 0, 1.0f)
//  }

  fun increaseHalfGrid() {
    progressValue++
    // playSound()
  }

  fun decreaseHalfGrid() {
    progressValue--
    // playSound()
  }

  fun setValueRange(start: Float, end: Float) {
    startValue = start
    endValue = end
    valueRange = IntRange(0, ((end - start) * 2).toInt())
    invalidate()
  }

//  fun loadSoundRaw(resId: Int) {
//    soundId = soundPool.load(context, resId, 1)
//  }

  override fun onDetachedFromWindow() {
    super.onDetachedFromWindow()
//    with(soundPool) {
//      autoPause()
//      unload(soundId)
//      soundId = -1
//      soundPool.release()
//    }
  }

  fun progressListener(listener: (Float) -> Unit) {
    progressListener = listener
  }

  fun touchListener(listener: SliderTouchListener) {
    touchListener = listener
  }

  fun themeApply() {
    selectPaint.color = selectedTextColor
    onSelectPaint.color = onSelectedTextColor
    invalidate()
  }

  companion object {
    private const val TOUCH_MODE_IDLE = 0
    private const val ZEEKR_DOCK_SLIDER_COUNT = 14
    private const val SLIDER_CIRCLE_MIN_RADIUS = 2f
    private const val SLIDER_CIRCLE_MAX_RADIUS = 8f
    private const val SLIDER_CIRCLE_CHANGE_ZERO = 5
    private const val TRACK_CIRCLE_REVERT_DURATION = 1000L
    private const val CIRCLE_REVERT_ANIMATE_DURATION = 150L
  }
}
