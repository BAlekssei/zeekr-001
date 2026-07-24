package com.zeekr.component.slider

import android.annotation.SuppressLint
import android.content.Context
import android.util.AttributeSet
import android.util.Log
import android.view.LayoutInflater
import android.view.MotionEvent
import android.view.View
import androidx.constraintlayout.motion.widget.MotionLayout
import androidx.constraintlayout.widget.ConstraintLayout
import com.zeekr.component.R
import com.zeekr.component.databinding.ZeekrLevelSliderLayoutBinding
import com.zeekr.component.extention.getViewRect
import kotlin.math.roundToInt

@SuppressLint("ClickableViewAccessibility")
class ZeekrLevelSlider @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : ConstraintLayout(context, attrs) {

  private val binding = ZeekrLevelSliderLayoutBinding.inflate(
    LayoutInflater.from(context),
    this,
    true
  )

  private fun logger(message: String) {
    Log.d("ZeekrLevelSlider", message)
  }

  init {
    clipChildren = false
    clipToPadding = false

    binding.run {

      // root.currentState
      val runnable = Runnable {
        logger("runnable  ")
      }

      var touchActionLast = MotionEvent.ACTION_UP
      val circleList = listOf(
        zeekrLevelSliderCircle1, zeekrLevelSliderCircle2, zeekrLevelSliderCircle3,
        zeekrLevelSliderCircle4, zeekrLevelSliderCircle5, zeekrLevelSliderCircle6,
        zeekrLevelSliderCircle7, zeekrLevelSliderCircle8, zeekrLevelSliderCircle9,
        zeekrLevelSliderCircle10, zeekrLevelSliderCircle11, zeekrLevelSliderCircle12,
        zeekrLevelSliderCircle13
      )
      val stateList = listOf(
        R.id.start, R.id.level1, R.id.level2, R.id.level3, R.id.level4,
        R.id.level5, R.id.level6, R.id.level7, R.id.level8, R.id.level9, R.id.level10,
        R.id.level11, R.id.level12, R.id.level13, R.id.end
      )
      var lastState = R.id.origin

      circleList.forEachIndexed { index, view ->
        view.setOnClickListener {
          root.transitionToState(stateList[index])
        }
      }

      root.addTransitionListener(object : MotionLayout.TransitionListener {
        override fun onTransitionStarted(
          motionLayout: MotionLayout,
          beginState: Int,
          endState: Int
        ) {
          logger("onTransitionStarted  beginState:$beginState   endState:$endState ")
          motionLayout.removeCallbacks(runnable)
        }

        override fun onTransitionChange(
          motionLayout: MotionLayout,
          beginState: Int,
          endState: Int,
          transitionPosition: Float
        ) {
          // logger("onTransitionChange    beginState $beginState   endState: $endState  transitionPosition:$transitionPosition ")
        }

        override fun onTransitionCompleted(motionLayout: MotionLayout, state: Int) {
          logger("onTransitionCompleted    state:$state  ${motionLayout.progress} ")
          // motionLayout.postDelayed(runnable, 500)
        }

        override fun onTransitionTrigger(
          motionLayout: MotionLayout,
          triggerId: Int,
          positive: Boolean,
          progress: Float
        ) {
          logger("onTransitionTrigger  triggerId: $triggerId   positive:$positive  progress:$progress ")
        }
      })

      root.setOnTouchListener { view, ev ->
        logger("setOnTouchListener  ev.action: ${ev.action}  ")
        when (ev.action) {

          MotionEvent.ACTION_DOWN -> {
            // root.removeCallbacks(runnable)
            if (lastState != R.id.origin) {
              // root.transitionToState(lastState)
            }
          }
          MotionEvent.ACTION_MOVE -> {
          }
          MotionEvent.ACTION_UP -> {
            lastState = root.currentState
            val position = root.targetPosition
            logger("setOnTouchListener  lastState: $lastState  position: $position")
            // root.transitionToState(R.id.origin)
            if (touchActionLast == MotionEvent.ACTION_DOWN) {
              val percent = ev.x / view.getViewRect().width()
              val level = (percent * 14).roundToInt()
              Log.d(
                "ZeekrLevelSlider",
                "setOnTouchListener  percent: $percent   level:$level "
              )
              root.transitionToState(stateList[level])
            }
          }
        }
        touchActionLast = ev.action
        false
      }
    }
  }

  private fun View.scaleValueAnimator(value: Float, originScale: Float) {
    val scale = originScale - (originScale - POINT_SCALE) * value
    scaleX = scale
    scaleY = scale
  }

  companion object {
    private const val POINT_SCALE = 0.27f
  }
}
