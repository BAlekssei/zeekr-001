package com.zeekr.component.webview

import android.annotation.SuppressLint
import android.content.Context
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Point
import android.os.SystemClock
import android.util.AttributeSet
import android.view.MotionEvent
import android.view.View.OnClickListener
import android.view.ViewGroup.LayoutParams
import android.view.WindowManager
import android.webkit.WebView
import android.widget.ImageView
import android.widget.TextView
import androidx.core.content.res.use
import androidx.core.util.Consumer
import androidx.core.view.children
import androidx.core.view.isVisible
import com.zeekr.component.R
import com.zeekr.component.extention.dp
import com.zeekr.component.extention.isNight
import com.zeekr.component.extention.logDebug
import com.zeekr.component.extention.measureSpecBySize
import com.zeekr.component.extention.themeColor
import com.zeekr.component.rebound.ZeekrReboundRefreshLayout
import com.zeekr.component.scroll.ZeekrScrollBar
import com.zeekr.lottie.ZeekrLoadingInfiniteView

internal const val ERROR = -1
internal const val INIT = 0
internal const val LOADING = 1
internal const val SUCCESS = 2
internal const val BlANK_URL = "about:blank"

open class ZeekrWebView @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : WebView(context, attrs) {

  val loadingView = ZeekrLoadingInfiniteView(context).apply {
    id = generateViewId()
    addView(this, LayoutParams(150.dp, 150.dp))
  }

  val errorView = ImageView(context).apply {
    id = generateViewId()
    visibility = GONE
    addView(this, LayoutParams(192.dp, 192.dp))
  }

  val statusText = TextView(context, attrs).apply {
    id = generateViewId()
    textSize = 24f
    addView(this)
  }

  val zeekrScrollBar = ZeekrScrollBar(context).apply {
    addView(this, LayoutParams(3.dp, LayoutParams.MATCH_PARENT))
  }

  var onClickWhenEmptyUrlError: Consumer<ZeekrWebView>? = null

  private val reloadOnError = OnClickListener {
    if (status == ERROR) {
      if (url.isNullOrEmpty()) {
        onClickWhenEmptyUrlError?.accept(this)
      } else {
        reload()
      }
    }
  }

  internal var status = INIT
  internal var canDraw = false

  internal var textOnLoading: String? = null
  internal var textOnError: String? = null
  internal var drawableResOnError: Int = R.drawable.ic_refresh
  internal var lastUrl: String? = null
  // 内部超时error回调
  private var timerOutErrorListener: (() -> Unit)? = null

  private val windowManager =
    context.applicationContext.getSystemService(Context.WINDOW_SERVICE) as WindowManager

  init {
    context.obtainStyledAttributes(attrs, R.styleable.ZeekrWebView).use {
      textOnLoading = it.getString(R.styleable.ZeekrWebView_textOnLoading) ?: "加载中..."
      textOnError =
        it.getString(R.styleable.ZeekrWebView_textOnError) ?: "网络不佳，请点击重试"
      val errorDrawable =
        it.getResourceId(R.styleable.ZeekrWebView_errorDrawable, R.drawable.ic_refresh)
      errorView.setImageResource(errorDrawable)
    }

    setBackgroundColor(Color.TRANSPARENT)
    errorView.setOnClickListener(reloadOnError)
    statusText.setOnClickListener(reloadOnError)
    webChromeClient = ZeekrWebChromeClient()
    webViewClient = ZeekrWebViewClient()
    settings.apply {
      this.javaScriptEnabled = true
      this.allowFileAccess = true
      this.allowFileAccessFromFileURLs = false
      this.allowUniversalAccessFromFileURLs = false
      this.savePassword = false
    }
    // verticalScrollbarThumbDrawable = context.getDrawable(R.drawable.scroll_bar)
    zeekrScrollBar.attachScrollView(this)
  }

  @JvmOverloads
  fun setError(
    errorText: String? = "网络不佳，请点击重试",
    errorDrawable: Int = R.drawable.ic_refresh
  ) {
    drawableResOnError = errorDrawable
    textOnError = errorText
  }

  fun setErrorState() {
    timerOutErrorListener?.invoke()
    canDraw = false
    status = ERROR
    loadingView.isVisible = false
    errorView.isVisible = true
    errorView.setImageResource(drawableResOnError)
    statusText.isVisible = true
    statusText.text = textOnError
    stopLoading()
    requestLayout()
    (parent as? ZeekrReboundRefreshLayout)?.setSpringBackMode(ZeekrReboundRefreshLayout.SPRING_CLOSE)
  }

  @JvmOverloads
  fun setLoading(loadingText: String? = "加载中...") {
    textOnLoading = loadingText
  }

  fun setTimerOutErrorListener(listener: (() -> Unit)) {
    timerOutErrorListener = listener
  }

  fun setLoadingState() {
    if (status != LOADING) {
      logDebug(" postDelayed ")
      removeCallbacks(loadingTimeout)
      loadingTimeout.timeoutFlag = SystemClock.uptimeMillis()
      postDelayed(loadingTimeout, WEB_LOADING_TIMEOUT)
      requestLayout()
    }
    (parent as? ZeekrReboundRefreshLayout)?.setSpringBackMode(ZeekrReboundRefreshLayout.SPRING_CLOSE)
    canDraw = false
    status = LOADING
    errorView.isVisible = false
    loadingView.isVisible = true
    statusText.isVisible = true
    statusText.text = textOnLoading
    if (!loadingView.isAnimating) {
      loadingView.playAnimation()
    }
  }

  private val loadingTimeout = object : Runnable {
    var timeoutFlag = 0L

    override fun run() {
      val interval = SystemClock.uptimeMillis() - timeoutFlag
      val current = interval > WEB_LOADING_TIMEOUT
      logDebug(" interval: $interval  current:$current ")
      if (status == LOADING && current) {
        setErrorState()
      }
    }
  }

  fun setSuccessState() {
    status = SUCCESS
    removeCallbacks(loadingTimeout)
    (parent as? ZeekrReboundRefreshLayout)?.setSpringBackMode(ZeekrReboundRefreshLayout.SPRING_BACK_ONLY)
    zeekrScrollBar.attachScrollView(this)
    canDraw = true
  }

  override fun reload() {
    super.reload()
    postDelayed({ setLoadingState() }, 1L)
  }

  override fun onDraw(canvas: Canvas) {
    super.onDraw(canvas)
    if (!canDraw) {
      val color = context.themeColor(com.zeekr.theme.R.attr.dialogColorBackground)
      canvas.drawColor(color)
    }
  }

  private fun dealUrl(url: String): String {
    if (!url.contains("javascript")) {
      lastUrl = url
      if (!url.isOutLink()) {
        val mode = "night".takeIf { isNight } ?: "day"
        // 新增分辨率判断
        val point = Point()
        windowManager.getDefaultDisplay().getRealSize(point)
        // 屏幕高度
        val heightPixels = point.y
        // 屏幕宽度
        val widthPixels = point.x
        logDebug(" resolvingPower---: $widthPixels*$heightPixels ")
        val resultUrl = url.addParamToUrl("mode=$mode").addParamToUrl(if (heightPixels.equals(RESOLVING_HEIGHT_1200)) "res=$RESOLVING_POWER_1200" else "res=$DEFAULT_RESOLVING_POWER")
        logDebug(" resultUrl---: $resultUrl ")
        return resultUrl
      }
    }
    return url
  }

  @SuppressLint("NewApi")
  override fun loadUrl(url: String, additionalHttpHeaders: MutableMap<String, String>) {
    super.loadUrl(dealUrl(url), additionalHttpHeaders)
    postDelayed({ setLoadingState() }, 1L)
  }

  override fun loadDataWithBaseURL(
    baseUrl: String?,
    data: String,
    mimeType: String?,
    encoding: String?,
    historyUrl: String?
  ) {
    super.loadDataWithBaseURL(baseUrl, data, mimeType, encoding, historyUrl)
    postDelayed({ setLoadingState() }, 1L)
  }

  @SuppressLint("NewApi")
  override fun loadUrl(url: String) {
    super.loadUrl(dealUrl(url))
    postDelayed({ setLoadingState() }, 1L)
  }

  override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
    // 详见clearView注释
    super.onMeasure(widthMeasureSpec, heightMeasureSpec.measureSpecBySize())
  }

  override fun onLayout(changed: Boolean, l: Int, t: Int, r: Int, b: Int) {
    val count = childCount
    var imageLeft = 0
    var imageTop = 0
    var textLeft = 0
    var textTop = 0
    for (i in 0 until count) {
      val child = getChildAt(i)
      if (child.visibility == GONE) {
        continue
      }
      when (child) {
        loadingView, errorView -> {
          val freeSpaceHorizontal =
            measuredWidth - paddingLeft - paddingRight - child.measuredWidth
          imageLeft = paddingLeft + (freeSpaceHorizontal / 2f).toInt()
          val usedSpaceVertical = child.measuredHeight + statusText.measuredHeight
          val freeSpaceVertical =
            measuredHeight - paddingTop - paddingBottom - 40.dp - usedSpaceVertical
          imageTop = paddingTop + (freeSpaceVertical / 2f).toInt()

          child.layout(
            imageLeft,
            imageTop,
            imageLeft + child.measuredWidth,
            imageTop + child.measuredHeight
          )
        }

        statusText -> {
          val freeSpaceHorizontal =
            measuredWidth - paddingLeft - paddingRight - child.measuredWidth
          textLeft = paddingLeft + (freeSpaceHorizontal / 2f).toInt()
          textTop = (imageTop + 145.dp + 70.dp).takeIf { status == ERROR }
            ?: (imageTop + 145.dp)

          child.layout(
            textLeft,
            textTop,
            textLeft + child.measuredWidth,
            textTop + child.measuredHeight
          )
        }

        zeekrScrollBar -> {
          val left = measuredWidth - paddingRight - child.measuredWidth - 36.dp
          child.layout(
            left, 0, left + child.measuredWidth, child.measuredHeight
          )
        }

        else -> {
          // 保持默认实现
          val lp = child.layoutParams as LayoutParams
          val childLeft: Int = paddingLeft + lp.x
          val childTop: Int = paddingTop + lp.y
          child.layout(
            childLeft,
            childTop,
            childLeft + child.measuredWidth,
            childTop + child.measuredHeight
          )
        }
      }
    }
  }

  fun setErrorLoadingTimer(timer: Long) {
    WEB_LOADING_TIMEOUT = timer
    setLoadingState()
  }

  // modify to public
  public override fun computeVerticalScrollRange(): Int {
    return super.computeVerticalScrollRange()
  }

  override fun onTouchEvent(event: MotionEvent?): Boolean {
    if (status == LOADING) {
      return true
    }
    return super.onTouchEvent(event)
  }

  override fun onScrollChanged(l: Int, t: Int, oldl: Int, oldt: Int) {
    super.onScrollChanged(l, t, oldl, oldt)
    children.forEach {
      it.translationY = t.toFloat()
    }
  }

  companion object {
    private var WEB_LOADING_TIMEOUT = 10000L
    private val DEFAULT_RESOLVING_POWER: String = "1920*1080"
    private var RESOLVING_POWER_1200: String = "1920*1200"
    private var RESOLVING_HEIGHT_1080 = 1080
    private var RESOLVING_HEIGHT_1200 = 1200
  }
}
