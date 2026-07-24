package com.zeekr.component.toggle

import android.animation.ValueAnimator
import android.annotation.SuppressLint
import android.content.Context
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.Rect
import android.graphics.drawable.Animatable
import android.graphics.drawable.Drawable
import android.os.SystemClock
import android.util.AttributeSet
import android.view.MotionEvent
import android.view.View
import android.view.animation.DecelerateInterpolator
import androidx.annotation.DrawableRes
import androidx.core.animation.doOnEnd
import com.google.android.material.shape.CornerFamily
import com.google.android.material.shape.MaterialShapeDrawable
import com.google.android.material.shape.ShapeAppearanceModel
import com.zeekr.component.R
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.dpf
import com.zeekr.component.extention.getDrawableOrNull
import com.zeekr.component.extention.themeColor
import com.zeekr.component.extention.themeColorStateList
import com.zeekr.component.extention.themeColorStateListSelectId
import com.zeekr.component.ripple.ZeekrVoiceListInterface
import com.zeekr.component.ripple.refreshScreenLocation
import com.zeekr.component.ripple.refreshViewRect
import com.zeekr.component.ripple.rippleDisplay
import com.zeekr.component.touch.expandTouchArea

class ZeekrSingleToggleRight @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : View(context, attrs), ZeekrVoiceListInterface {

  private val toggleHeight = 64.dp
  private val arrowIconWidth = 72.dp
  private val itemWidth = 104.dp
  private val iconSide = 40.dp
  private val itemPadding = 16.dp

  @DrawableRes
  private val iconList = mutableListOf<Int>()
  private val itemCount: Int
    get() = iconList.size
  private val iconDrawableList: List<Drawable>
    get() = iconList.map {
      context.getDrawableOrNull(it)?.mutate()!!.apply {
        setTintList(context.themeColorStateList(com.google.android.material.R.attr.colorPrimary))
        setBounds(0, 0, iconSide, iconSide)
      }
    }
  var selectIndex: Int = 0
    private set(value) {
      field = value
      invalidate()
    }
  private var moveAnimatorValue: Float = 0f
  private var toggleState: Int = COLLAPSE_STATE
  private var collapseTime = 0L
  private var translationAnimation: ValueAnimator? = null
  private var motionEventX = 0f
  private var selectIndexListener: ((Int) -> Unit)? = null
  private val rippleRect = Rect()
  private val expandRect = Rect(6, 9, 6, 9)
  private var arrowDrawable: Drawable =
    context.getDrawableOrNull(R.drawable.arrow_left_to_right)?.mutate()!!.apply {
      setBounds(0, 0, 40.dp, 40.dp)
    }

  private val selectDrawable = MaterialShapeDrawable().apply {
    shapeAppearanceModel =
      ShapeAppearanceModel.builder()
        .setAllCorners(CornerFamily.ROUNDED, 6.dpf).build()
    fillColor =
      context.themeColorStateList(com.google.android.material.R.attr.colorSurface)
    strokeColor =
      context.themeColorStateListSelectId(com.zeekr.theme.R.color.secondary_80)
    strokeWidth = 2.dpf
    setBounds(0, 0, itemWidth, toggleHeight)
  }
  private val backgroundDrawable = MaterialShapeDrawable().apply {
    shapeAppearanceModel =
      ShapeAppearanceModel.builder()
        .setAllCorners(CornerFamily.ROUNDED, 6.dpf).build()
    fillColor =
      context.themeColorStateListSelectId(com.zeekr.theme.R.color.surface_60)
    strokeColor =
      context.themeColorStateListSelectId(com.zeekr.theme.R.color.primary_40)
    strokeWidth = 1.dpf
  }

  private val inactiveTrackPaint: Paint = Paint().apply {
    style = Paint.Style.STROKE
    strokeCap = Paint.Cap.ROUND
    color = context.themeColor(com.google.android.material.R.attr.colorPrimary)
    strokeWidth = 10.toFloat()
  }

  init {
    setOnClickListener { }
  }

  override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
    val backgroundWidth = when (toggleState) {
      COLLAPSE_STATE -> arrowIconWidth + itemWidth
      EXPAND_STATE -> itemWidth + itemWidth * itemCount + itemPadding * itemCount
      else -> (arrowIconWidth + itemWidth) + ((itemWidth + itemPadding) * (itemCount - 1) + itemPadding + (itemWidth - arrowIconWidth)) * moveAnimatorValue
    }.toInt()
    super.onMeasure(
      MeasureSpec.makeMeasureSpec(backgroundWidth, MeasureSpec.EXACTLY),
      MeasureSpec.makeMeasureSpec(
        toggleHeight, MeasureSpec.EXACTLY
      )
    )
  }

  override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
    super.onLayout(changed, left, top, right, bottom)

    backgroundDrawable.setBounds(0, 0, measuredWidth, measuredHeight)
    rippleRect.refreshViewRect(right - left, bottom - top)
    refreshScreenLocation(rippleRect)
    if (changed) {
      expandTouchArea(expandRect)
    }
  }

  override fun onDraw(canvas: Canvas) {
    super.onDraw(canvas)

    backgroundDrawable.draw(canvas)

    val needMoveDistance =
      (itemWidth + itemPadding) * (itemCount - 1) + itemPadding + (itemWidth - arrowIconWidth)
    val currentMoveDistance = needMoveDistance * moveAnimatorValue

    val itemY = (toggleHeight - iconSide).toFloat() / 2
    val itemInnerX = (itemWidth - iconSide).toFloat() / 2

    if (toggleState != COLLAPSE_STATE) {
      iconDrawableList.forEachIndexed { index, item ->
        if (index == selectIndex) {
          return@forEachIndexed
        }

        val itemNeedMoveDistance =
          (itemWidth - arrowIconWidth) + itemPadding + (itemCount - 1 - index) * (itemWidth + itemPadding)
        if ((index > 0 && currentMoveDistance < itemNeedMoveDistance) || (index == 0 && currentMoveDistance < itemNeedMoveDistance - itemWidth)) {
          return@forEachIndexed
        }

        canvas.save()
        val itemX =
          (currentMoveDistance + arrowIconWidth).coerceAtMost((itemNeedMoveDistance + arrowIconWidth).toFloat())
        canvas.translate(
          itemX + itemInnerX, itemY
        )
        item.draw(canvas)
        canvas.restore()
      }
    }

    val selectX = when (toggleState) {
      COLLAPSE_STATE -> arrowIconWidth
      EXPAND_STATE -> measuredWidth - (itemWidth + itemPadding) * selectIndex - itemWidth
      else -> {
        val selectNeedMoveDistance =
          (itemWidth - arrowIconWidth) + itemPadding + (itemCount - 1 - selectIndex) * (itemWidth + itemPadding)
/*                val selectToEndDistance =
                    (itemWidth + itemPadding) * (itemCount - 1 - selectIndex) + itemPadding + (itemWidth - arrowIconWidth)*/
        if (currentMoveDistance <= selectNeedMoveDistance) {
          measuredWidth - itemWidth
        } else {
          (currentMoveDistance + arrowIconWidth).coerceAtMost((selectNeedMoveDistance + arrowIconWidth).toFloat())
        }
      }
    }.toFloat()
    canvas.save()
    canvas.translate(
      selectX, 0f
    )
    selectDrawable.draw(canvas)
    canvas.restore()

    canvas.save()
    canvas.translate(
      selectX + itemInnerX, itemY
    )
    iconDrawableList[selectIndex].draw(canvas)
    canvas.restore()

    val arrowX = when (toggleState) {
      COLLAPSE_STATE -> 8.dp
      EXPAND_STATE -> 32.dp
      else -> {
        if (currentMoveDistance < 24.dp) {
          currentMoveDistance + 8.dp
        } else {
          32.dp
        }
      }
    }.toFloat()
    canvas.save()
    canvas.translate(
      arrowX, 12.dpf
    )
    arrowDrawable.draw(canvas)
    canvas.restore()
  }

  override fun performClick(): Boolean {
    val distance = measuredWidth - motionEventX
/*    if (distance.toInt() % (itemWidth + itemPadding) > itemWidth) {
      return false
    }
    val touchIndex = (distance / (itemWidth + itemPadding)).toInt()*/
    if ((distance + (itemPadding / 2)).toInt() % (itemWidth + itemPadding) > itemWidth + itemPadding - 2.dp ||
      (distance + (itemPadding / 2)).toInt() % (itemWidth + itemPadding) < 2.dp
    ) {
      return false
    }
    val touchIndex = ((distance + (itemPadding / 2)) / (itemWidth + itemPadding)).toInt().coerceAtLeast(0)

    when {
      toggleState == COLLAPSE_STATE && touchIndex == 1 -> {
        setAnimateToProgress()
        collapseTime = SystemClock.uptimeMillis()
        postDelayed({
          if (SystemClock.uptimeMillis() - collapseTime >= 4900) {
            collapseItems()
          }
        }, 5000)
      }
      toggleState == EXPAND_STATE && touchIndex == itemCount -> {
        collapseTime = SystemClock.uptimeMillis()
        setAnimateToProgress()
      }
      toggleState == EXPAND_STATE -> {
        collapseTime = SystemClock.uptimeMillis()
        selectIndex = touchIndex
        selectIndexListener?.invoke(selectIndex)
        setAnimateToProgress()
      }
      else -> {}
    }
    return super.performClick()
  }

  @SuppressLint("ClickableViewAccessibility")
  override fun onTouchEvent(event: MotionEvent): Boolean {

    when (event.actionMasked) {
      MotionEvent.ACTION_DOWN -> {
        motionEventX = event.x
      }
      MotionEvent.ACTION_MOVE -> {
        motionEventX = event.x
      }
      MotionEvent.ACTION_UP -> {
      }
    }
    return super.onTouchEvent(event)
  }

  override fun onWindowFocusChanged(hasWindowFocus: Boolean) {
    super.onWindowFocusChanged(hasWindowFocus)
    refreshScreenLocation(rippleRect)
  }

  private fun setAnimateToProgress() {
    val fromPosition = 0f.takeIf { toggleState == COLLAPSE_STATE } ?: 1f
    val toPosition = 0f.takeUnless { toggleState == COLLAPSE_STATE } ?: 1f
    if (toggleState == COLLAPSE_STATE) {
      arrowDrawable =
        context.getDrawableOrNull(R.drawable.arrow_left_to_right)?.mutate()!!.apply {
          setBounds(0, 0, 40.dp, 40.dp)
        }
      (arrowDrawable as? Animatable)?.start()
    } else {
      arrowDrawable =
        context.getDrawableOrNull(R.drawable.arrow_right_to_left)?.mutate()!!.apply {
          setBounds(0, 0, 40.dp, 40.dp)
        }
      (arrowDrawable as? Animatable)?.start()
    }
    toggleState = MOVE_STATE
    translationAnimation = ValueAnimator.ofFloat(fromPosition, toPosition).apply {
      addUpdateListener {
        moveAnimatorValue = it.animatedValue as Float
        requestLayout()
        invalidate()
      }
      doOnEnd {
        toggleState = COLLAPSE_STATE.takeIf { moveAnimatorValue == 0f } ?: EXPAND_STATE
        expandTouchArea(expandRect)
      }
      duration = ANIMATOR_DURATION
      interpolator = DecelerateInterpolator(3f)
      start()
    }
  }

  fun submitData(@DrawableRes list: List<Int>) {
    iconList.clear()
    iconList.addAll(list)
    requestLayout()
    invalidate()
  }

  fun collapseItems() {
    if (toggleState == EXPAND_STATE) {
      setAnimateToProgress()
    }
  }

  fun setSelectIndexListener(listener: (Int) -> Unit) {
    this.selectIndexListener = listener
  }

  fun signalItemClick(index: Int) {
    selectIndex = index
  }

  fun commonItemClick(index: Int) {
    selectIndex = index
  }

  override fun voiceItemClick(index: Int) {
    postDelayed({
      selectIndex = index
    }, 800)
    val rect = when (toggleState) {
      COLLAPSE_STATE ->
        Rect(
          rippleRect.right - itemWidth,
          rippleRect.top,
          rippleRect.right,
          rippleRect.bottom
        )

      EXPAND_STATE -> Rect(
        rippleRect.right - index * (itemWidth + itemPadding) - itemWidth,
        rippleRect.top,
        rippleRect.right - index * (itemWidth + itemPadding),
        rippleRect.bottom
      )
      else -> Rect(
        rippleRect.left,
        rippleRect.top,
        rippleRect.left + itemWidth,
        rippleRect.bottom
      )
    }
    rippleDisplay(rect)
  }

  internal fun themeApply() {
    with(selectDrawable) {
      fillColor = context.themeColorStateList(com.google.android.material.R.attr.colorSurface)
      strokeColor = context.themeColorStateListSelectId(com.zeekr.theme.R.color.secondary_80)
    }
    with(backgroundDrawable) {
      fillColor =
        context.themeColorStateListSelectId(com.zeekr.theme.R.color.surface_60)
      strokeColor =
        context.themeColorStateListSelectId(com.zeekr.theme.R.color.primary_40)
    }
    iconDrawableList.forEach {
      it.setTintList(context.themeColorStateList(com.google.android.material.R.attr.colorPrimary))
      it.setBounds(0, 0, iconSide, iconSide)
    }
    arrowDrawable.setTintList(context.themeColorStateList(com.google.android.material.R.attr.colorPrimary))
    invalidate()
  }

  companion object {
    private const val COLLAPSE_STATE = 101
    private const val EXPAND_STATE = 102
    private const val MOVE_STATE = 103
    private const val ANIMATOR_DURATION = 700L
  }
}
