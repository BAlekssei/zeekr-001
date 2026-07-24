package com.zeekr.component.scroll

import android.animation.Animator
import android.animation.AnimatorSet
import android.animation.ObjectAnimator
import android.animation.ValueAnimator
import android.animation.ValueAnimator.AnimatorUpdateListener
import android.annotation.SuppressLint
import android.content.Context
import android.util.AttributeSet
import android.util.Log
import android.util.Property
import android.view.MotionEvent
import android.view.View
import android.view.View.OnTouchListener
import android.view.animation.DecelerateInterpolator
import android.view.animation.Interpolator
import androidx.core.widget.NestedScrollView
import kotlin.math.abs

class OverNestedScrollView @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : NestedScrollView(context, attrs), OnTouchListener {
  private var mCurrentState: IDecoratorState? = null
  private var mIdleState: IdleState? = null
  private var mOverScrollingState: OverScrollingState? = null
  private var mBounceBackState: BounceBackState? = null
  private val mStartAttr = OverScrollStartAttributes()
  private var mVelocity = 0f
  private val mScrollView: NestedScrollView = this
  private var isEnableAttachScroll = true

  init {
    initParams()
  }

  override fun onTouch(v: View, event: MotionEvent): Boolean {
    when (event.action) {
      MotionEvent.ACTION_MOVE -> return mCurrentState!!.handleMoveTouchEvent(event)
      MotionEvent.ACTION_CANCEL, MotionEvent.ACTION_UP -> return mCurrentState!!.handleUpTouchEvent(
        event
      )
    }
    return false
  }

  override fun awakenScrollBars(startDelay: Int, invalidate: Boolean): Boolean {
    return super.awakenScrollBars(startDelay, invalidate)
  }

  override fun onDetachedFromWindow() {
    super.onDetachedFromWindow()
    detach()
  }

  @SuppressLint("ClickableViewAccessibility")
  fun attach() {
    mScrollView.setOnTouchListener(this)
    mScrollView.overScrollMode = OVER_SCROLL_NEVER
  }

  @SuppressLint("ClickableViewAccessibility")
  fun detach() {
    mScrollView.setOnTouchListener(null)
    mScrollView.overScrollMode = OVER_SCROLL_ALWAYS
  }

  /**
   * 组件库内部方法，请勿调用 *************
   * 此方法为了兼容回弹刷新布局
   */
  fun isPrivateDisableOverScroll() {
    Log.i("overNestedScrollView", "isPrivateDisableOverScroll: ")
    isEnableAttachScroll = false
    detach()
  }

  private fun initParams() {
    mBounceBackState = BounceBackState()
    mOverScrollingState = OverScrollingState()
    mIdleState = IdleState()
    mCurrentState = mIdleState
    attach()
  }

  private fun issueStateTransition(state: IDecoratorState?) {
    val oldState = mCurrentState
    mCurrentState = state
    // 处理动画
    mCurrentState!!.handleTransitionAnim(oldState)
  }

  private class MotionAttributes {
    // 相对于父的偏移量view.getTranslationY
    var mAbsOffset = 0f

    // 移动的偏移量
    var mDeltaOffset = 0f

    // mDir: true 下拉, false:上拉
    var mDir = false
  }

  private class OverScrollStartAttributes {
    var mPointerId = 0
    var mAbsOffset = 0f
    var mDir = false
  }

  private class AnimationAttributes {
    var mProperty: Property<View, Float>? = null
    var mAbsOffset = 0f
    var mMaxOffset = 0f
  }

  private fun initAnimationAttributes(view: View, attributes: AnimationAttributes) {
    attributes.mProperty = TRANSLATION_Y
    attributes.mAbsOffset = view.translationY
    attributes.mMaxOffset = view.height.toFloat()
  }

  private fun initMotionAttributes(
    view: View,
    attributes: MotionAttributes,
    event: MotionEvent
  ): Boolean {
    if (event.historySize == 0) {
      return false
    }

    // 像素偏移量
    val dy = event.getY(0) - event.getHistoricalY(0, 0)
    val dx = event.getX(0) - event.getHistoricalX(0, 0)
    if (abs(dy) < abs(dx)) {
      return false
    }
    attributes.mAbsOffset = view.translationY
    attributes.mDeltaOffset = dy
    attributes.mDir = attributes.mDeltaOffset > 0
    return true
  }

  private fun isInAbsoluteStart(view: View): Boolean {
    return !view.canScrollVertically(-1)
  }

  private fun isInAbsoluteEnd(view: View): Boolean {
    return !view.canScrollVertically(1)
  }

  private fun translateView(view: View, offset: Float) {
    view.translationY = offset
  }

  private fun translateViewAndEvent(view: View, offset: Float, event: MotionEvent) {
    view.translationY = offset
    event.offsetLocation(0f, offset - event.getY(0))
  }

  interface IDecoratorState {
    // 处理move事件
    fun handleMoveTouchEvent(event: MotionEvent?): Boolean

    // 处理up事件
    fun handleUpTouchEvent(event: MotionEvent?): Boolean

    // 事件结束后的动画处理
    fun handleTransitionAnim(fromState: IDecoratorState?)
  }

  internal inner class IdleState : IDecoratorState {
    private val mMoveAttr = MotionAttributes()
    override fun handleMoveTouchEvent(event: MotionEvent?): Boolean {
      // 是否符合move要求，不符合不拦截事件
      if (!initMotionAttributes(mScrollView, mMoveAttr, event!!)) {
        return false
      }

      // 在RecyclerView顶部但不能下拉 或 在RecyclerView底部但不能上拉
      if (!(
        isInAbsoluteStart(mScrollView) && mMoveAttr.mDir ||
          isInAbsoluteEnd(mScrollView) && !mMoveAttr.mDir
        )
      ) {
        return false
      }

      // 保存当前Motion信息
      mStartAttr.mPointerId = event.getPointerId(0)
      mStartAttr.mAbsOffset = mMoveAttr.mAbsOffset
      mStartAttr.mDir = mMoveAttr.mDir

      // 初始状态->滑动状态
      issueStateTransition(mOverScrollingState)
      return mOverScrollingState!!.handleMoveTouchEvent(event)
    }

    override fun handleUpTouchEvent(event: MotionEvent?): Boolean {
      return false
    }

    override fun handleTransitionAnim(fromState: IDecoratorState?) {}
  }

  internal inner class OverScrollingState : IDecoratorState {
    private val mTouchDragRatioFwd: Float = DEFAULT_TOUCH_DRAG_MOVE_RATIO_FWD
    private val mTouchDragRatioBck: Float = DEFAULT_TOUCH_DRAG_MOVE_RATIO_BCK
    private val mMoveAttr: MotionAttributes = MotionAttributes()

    override fun handleMoveTouchEvent(event: MotionEvent?): Boolean {
      val startAttr = mStartAttr
      // 不是一个触摸点事件，则直接切到回弹状态
      if (startAttr.mPointerId != event!!.getPointerId(0)) {
        issueStateTransition(mBounceBackState)
        return true
      }
      val view: View = mScrollView

      // 是否符合move要求
      if (!initMotionAttributes(view, mMoveAttr, event)) {
        return true
      }

      // mDeltaOffset: 实际要移动的像素，可以为下拉和上拉设置不同移动比
      val deltaOffset =
        mMoveAttr.mDeltaOffset / if (mMoveAttr.mDir == startAttr.mDir) mTouchDragRatioFwd else mTouchDragRatioBck
      // 计算偏移
      val newOffset = mMoveAttr.mAbsOffset + deltaOffset

      // 上拉下拉状态与滑动方向不符，则回到初始状态，并将视图归位
      if (startAttr.mDir && !mMoveAttr.mDir && newOffset <= startAttr.mAbsOffset ||
        !startAttr.mDir && mMoveAttr.mDir && newOffset >= startAttr.mAbsOffset
      ) {
        translateViewAndEvent(view, startAttr.mAbsOffset, event)
        issueStateTransition(mIdleState)
        return true
      }

      // 不让父类截获move事件
      if (view.parent != null) {
        view.parent.requestDisallowInterceptTouchEvent(true)
      }

      // 计算速度
      val dt = event.eventTime - event.getHistoricalEventTime(0)
      if (dt > 0) {
        mVelocity = deltaOffset / dt
      }

      // 改变控件位置
      translateView(view, newOffset)
      return true
    }

    override fun handleUpTouchEvent(event: MotionEvent?): Boolean {
      // 事件up切换状态
      issueStateTransition(mBounceBackState)
      return false
    }

    override fun handleTransitionAnim(fromState: IDecoratorState?) {}
  }

  internal inner class BounceBackState :
    IDecoratorState,
    Animator.AnimatorListener,
    AnimatorUpdateListener {
    private val mBounceBackInterpolator: Interpolator = DecelerateInterpolator()
    private val mDecelerateFactor: Float = DEFAULT_DECELERATE_FACTOR
    private val mDoubleDecelerateFactor: Float = 2f * DEFAULT_DECELERATE_FACTOR
    private val mAnimAttributes: AnimationAttributes = AnimationAttributes()
    val view: View = mScrollView

    override fun handleTransitionAnim(fromState: IDecoratorState?) {
      val bounceBackAnim = createAnimator()
      bounceBackAnim.addListener(this)
      bounceBackAnim.start()
    }

    override fun handleMoveTouchEvent(event: MotionEvent?): Boolean {
      return true
    }

    override fun handleUpTouchEvent(event: MotionEvent?): Boolean {
      return true
    }

    override fun onAnimationEnd(animation: Animator) {
      // 动画结束改变状态
      issueStateTransition(mIdleState)
    }

    private fun createAnimator(): Animator {
      initAnimationAttributes(view, mAnimAttributes)

      // 速度为0了或手势记录的状态与mDir不符合，直接回弹
      if (mVelocity == 0f || mVelocity < 0 && mStartAttr.mDir ||
        mVelocity > 0 && !mStartAttr.mDir
      ) {
        return createBounceBackAnimator(mAnimAttributes.mAbsOffset)
      }

      // 速度减到0，即到达最大距离时，需要的动画事件
      var slowdownDuration = (0 - mVelocity) / mDecelerateFactor
      slowdownDuration = if (slowdownDuration < 0) 0F else slowdownDuration

      // 速度减到0，动画的距离，dx = (Vt^2 - Vo^2) / 2a
      val slowdownDistance = -mVelocity * mVelocity / mDoubleDecelerateFactor
      val slowdownEndOffset = mAnimAttributes.mAbsOffset + slowdownDistance

      // 开始动画，减速->回弹
      val slowdownAnim = createSlowdownAnimator(
        view, slowdownDuration.toInt(), slowdownEndOffset
      )
      val bounceBackAnim = createBounceBackAnimator(slowdownEndOffset)
      val wholeAnim = AnimatorSet()
      wholeAnim.playSequentially(slowdownAnim, bounceBackAnim)
      return wholeAnim
    }

    private fun createSlowdownAnimator(
      view: View,
      slowdownDuration: Int,
      slowdownEndOffset: Float
    ): ObjectAnimator {
      val slowdownAnim = ObjectAnimator.ofFloat(
        view, mAnimAttributes.mProperty, slowdownEndOffset
      )
      slowdownAnim.duration = slowdownDuration.toLong()
      slowdownAnim.interpolator = mBounceBackInterpolator
      slowdownAnim.addUpdateListener(this)
      return slowdownAnim
    }

    private fun createBounceBackAnimator(startOffset: Float): ObjectAnimator {
      val bounceBackDuration = (
        abs(startOffset) /
          mAnimAttributes.mMaxOffset
        ) * MAX_BOUNCE_BACK_DURATION_MS
      val bounceBackAnim = ObjectAnimator.ofFloat(
        view, mAnimAttributes.mProperty, mStartAttr.mAbsOffset
      )
      bounceBackAnim.duration =
        bounceBackDuration.toInt().coerceAtLeast(MIN_BOUNCE_BACK_DURATION_MS).toLong()
      bounceBackAnim.interpolator = mBounceBackInterpolator
      bounceBackAnim.addUpdateListener(this)
      return bounceBackAnim
    }

    override fun onAnimationUpdate(animation: ValueAnimator) {}
    override fun onAnimationStart(animation: Animator) {}
    override fun onAnimationCancel(animation: Animator) {}
    override fun onAnimationRepeat(animation: Animator) {}
  }

  companion object {
    // 下拉与上拉，move px / view Translation
    private const val DEFAULT_TOUCH_DRAG_MOVE_RATIO_FWD = 2f
    private const val DEFAULT_TOUCH_DRAG_MOVE_RATIO_BCK = 1f

    // 默认减速系数
    private const val DEFAULT_DECELERATE_FACTOR = -2f

    // 最大反弹时间
    private const val MAX_BOUNCE_BACK_DURATION_MS = 800
    private const val MIN_BOUNCE_BACK_DURATION_MS = 200
  }
}
