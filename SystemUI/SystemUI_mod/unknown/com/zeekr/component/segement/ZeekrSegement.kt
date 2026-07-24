package com.zeekr.component.segement

import android.animation.Animator
import android.animation.ValueAnimator
import android.annotation.SuppressLint
import android.content.Context
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.Rect
import android.util.AttributeSet
import android.util.SparseArray
import android.view.MotionEvent
import android.view.View
import android.view.animation.DecelerateInterpolator
import androidx.annotation.RawRes
import androidx.core.animation.doOnEnd
import androidx.core.util.size
import com.airbnb.lottie.LottieDrawable
import com.google.android.material.shape.CornerFamily
import com.google.android.material.shape.MaterialShapeDrawable
import com.google.android.material.shape.ShapeAppearanceModel
import com.zeekr.component.colors.colorOutlineBackground
import com.zeekr.component.colors.createColorStateList
import com.zeekr.component.colors.primary
import com.zeekr.component.colors.secondary
import com.zeekr.component.colors.toggleButtonChecked
import com.zeekr.component.constant.DEFAULT_ITEM_SELECT
import com.zeekr.component.constant.NO_ITEM_SELECT
import com.zeekr.component.constant.TIMER_VALUE
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.listStringEditMode
import com.zeekr.component.extention.logDebug
import com.zeekr.component.extention.measureSpecBySize
import com.zeekr.component.extention.sizeWhenExactly
import com.zeekr.component.extention.themeColorStateList
import com.zeekr.lottie.toggleEffectDrawable

class ZeekrSegement @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : View(context, attrs) {
  private val selectWidth = 104.dp
  private val selectHeight = 100.dp
  private val selectDrawable = MaterialShapeDrawable()
  private val backgroundDrawable = MaterialShapeDrawable()
  private val cornerSize = 6.dp
  private val contentList = listStringEditMode()
  private val iconLists = mutableListOf<Int>()
  private val lottieMap: SparseArray<LottieDrawable> = SparseArray()
  private var contentPaint: Paint = Paint()
  private var selectAnimator: ValueAnimator? = null
  private var movePosition = 0f
  private var motionEventX = 0f
  private val contentRect = Rect()
  private var selectIndexListener: ((Int) -> Unit)? = null
  private var targetIndex = NO_ITEM_SELECT
  private var lottieRunning = false

  private val contentCount: Int
    get() = contentList.size

  private val iconCount: Int
    get() = iconLists.size

  private var segmentHeight = 100.dp
  private val segmentWidth: Int
    get() = contentCount * selectWidth

  var selectIndex = DEFAULT_ITEM_SELECT
    private set(value) {
      if (value == targetIndex) {
        return
      }
      targetIndex = 0.coerceAtLeast(value).coerceAtMost(contentCount - 1)
      if (field == NO_ITEM_SELECT) {
        movePosition = value.toFloat()
        invalidate()
      } else {
        selectAnimator(field, targetIndex)
      }
      field = targetIndex
    }

  init {
    with(backgroundDrawable) {
      shapeAppearanceModel = ShapeAppearanceModel.builder()
        .setAllCorners(CornerFamily.ROUNDED, cornerSize.toFloat()).build()
      fillColor =
        context.themeColorStateList(com.zeekr.theme.R.attr.colorOutlineBackground)
    }

    with(selectDrawable) {
      shapeAppearanceModel = ShapeAppearanceModel.builder()
        .setAllCorners(CornerFamily.ROUNDED, cornerSize.toFloat()).build()
      strokeWidth = 2f
      strokeColor = context.themeColorStateList(com.google.android.material.R.attr.colorSecondary)
      fillColor =
        context.themeColorStateList(com.zeekr.theme.R.attr.colorToggleButtonChecked)
    }

    contentPaint.run {
      isAntiAlias = true
      textSize = 22.toFloat()
      textAlign = Paint.Align.CENTER
      style = Paint.Style.FILL_AND_STROKE
    }
    setOnClickListener { }
  }

  fun setSelectIndexListener(listener: (Int) -> Unit) {
    this.selectIndexListener = listener
  }

  fun submitData(list: List<String>, @RawRes iconList: List<Int>) {
    contentList.clear()
    iconLists.clear()
    contentList.addAll(list)
    iconLists.addAll(iconList)
    lottieMap.clear()
    loadLottieList()
  }

  private fun loadLottieList() {
    iconLists.forEachIndexed { index, rawId ->
      context.toggleEffectDrawable(rawId) {
        lottieMap[index] = it
        if (lottieMap.size == iconCount) {
          invalidate()
        }
      }
    }
  }

  fun setSelectDefault(index: Int) {
    selectIndex = index
    invalidate()
  }

  private fun selectAnimator(field: Int, target: Int) {
    selectAnimator?.cancel()
    lottieMap[field]?.let {
      it.removeAllAnimatorListeners()
    }
    lottieRunning = false
    selectAnimator = ValueAnimator.ofFloat(field.toFloat(), target.toFloat()).apply {
      addUpdateListener {
        movePosition = it.animatedValue as Float
        invalidate()
      }
      doOnEnd {
        lottieRunning = true
        refreshLoading()
        if (lottieMap.size == iconCount) {
          lottieMap[target].playAnimation()
          lottieMap[target].addAnimatorListener(object : Animator.AnimatorListener {
            override fun onAnimationStart(animation: Animator) {
            }

            override fun onAnimationEnd(animation: Animator) {
              lottieRunning = false
            }

            override fun onAnimationCancel(animation: Animator) {
              lottieRunning = false
            }

            override fun onAnimationRepeat(animation: Animator) {
            }
          })
        }
      }
      interpolator = DecelerateInterpolator(3f)
      duration = 250
      start()
    }
  }

  private fun refreshLoading() {
    if (lottieRunning) {
      postDelayed({
        if (lottieRunning) {
          invalidate()
          refreshLoading()
        }
      }, TIMER_VALUE)
    }
  }

  override fun performClick(): Boolean {
    selectIndex = (motionEventX / selectWidth).toInt()
    logDebug("selectIndex  $selectIndex")
    selectIndexListener?.invoke(selectIndex)
    return super.performClick()
  }

  override fun onDraw(canvas: Canvas) {
    super.onDraw(canvas)

    backgroundDrawable.draw(canvas)

    canvas.save()
    canvas.translate(
      movePosition * selectWidth, 0.toFloat()
    )
    selectDrawable.draw(canvas)
    canvas.restore()

    0.until(contentCount).forEach { index ->
      contentPaint.getTextBounds(contentList[index], 0, contentList[index].length, contentRect)
      canvas.drawText(
        contentList[index],
        selectWidth * (index * 2 + 1) / 2.toFloat(),
        80f,
        contentPaint
      )
    }

    0.until(iconCount).forEach { index ->
      canvas.save()
      val icon = (lottieMap[index] ?: return@forEach).also {
        it.setBounds(0, 0, 40, 40)
        // it.setTint(context.themeColor(com.google.android.material.R.attr.colorPrimary))
      }
      canvas.translate(
        ((selectWidth * (index * 2 + 1) / 2) - 40 / 2).toFloat(), 12f
      )
      icon.draw(canvas)
      canvas.restore()
    }
  }

  override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
    super.onLayout(changed, left, top, right, bottom)

    backgroundDrawable.setBounds(
      0, 0, segmentWidth, segmentHeight
    )
    selectDrawable.setBounds(
      0, 0, selectWidth, selectHeight
    )
  }

  override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
    segmentHeight = heightMeasureSpec.sizeWhenExactly(segmentHeight)
    super.onMeasure(
      segmentWidth.measureSpecBySize(),
      segmentHeight.measureSpecBySize()
    )
  }

  @SuppressLint("ClickableViewAccessibility")
  override fun onTouchEvent(event: MotionEvent): Boolean {
    when (event.actionMasked) {
      MotionEvent.ACTION_DOWN -> {
        motionEventX = event.x
      }
      MotionEvent.ACTION_UP -> {
      }
      MotionEvent.ACTION_MOVE -> {
        motionEventX = event.x
      }
    }
    return super.onTouchEvent(event)
  }

  fun themApply() {
    backgroundDrawable.fillColor = createColorStateList(colorOutlineBackground)
    selectDrawable.fillColor = createColorStateList(toggleButtonChecked)
    selectDrawable.strokeColor = createColorStateList(secondary)
    contentPaint.color = primary
    loadLottieList()
  }
}
