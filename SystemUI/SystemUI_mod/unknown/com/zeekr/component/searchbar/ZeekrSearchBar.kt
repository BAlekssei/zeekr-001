package com.zeekr.component.searchbar

import android.content.Context
import android.graphics.Color
import android.text.Editable
import android.text.TextWatcher
import android.util.AttributeSet
import android.view.LayoutInflater
import android.widget.LinearLayout
import androidx.annotation.DrawableRes
import androidx.core.view.isGone
import androidx.core.view.isInvisible
import androidx.core.view.isVisible
import com.zeekr.component.R
import com.zeekr.component.databinding.ZeekrSearchBarLayoutBinding

/**
 * @author e-Xinpeng.Huang
 * 自定义searchbar
 */
class ZeekrSearchBar @JvmOverloads constructor(
  context: Context,
  attrs: AttributeSet? = null
) : LinearLayout(context, attrs) {

  private var textChangesListener: ((String) -> Unit)? = null
  private var isPassShow = true
  val binding = ZeekrSearchBarLayoutBinding.inflate(
    LayoutInflater.from(context), this
  )

  init {
    orientation = VERTICAL
    isFocusable = true
    isFocusableInTouchMode = true
    val attr = context.obtainStyledAttributes(attrs, R.styleable.ZeekrSearchBar)
    val searchVisible = attr.getBoolean(R.styleable.ZeekrSearchBar_SearchVisible, true)
    val closeIcon = attr.getDrawable(R.styleable.ZeekrSearchBar_CloseIcon)
    val closeIconVisible = attr.getBoolean(R.styleable.ZeekrSearchBar_CloseIconVisible, true)
    val searchIcon = attr.getDrawable(R.styleable.ZeekrSearchBar_SearchIcon)
    val showPassIcon = attr.getDrawable(R.styleable.ZeekrSearchBar_ShowPassIcon)
    val errorText = attr.getString(R.styleable.ZeekrSearchBar_ErrorText)
    val showPassIconVisible =
      attr.getBoolean(R.styleable.ZeekrSearchBar_ShowPassIconVisible, true)
    val editTextHint = attr.getString(R.styleable.ZeekrSearchBar_EditTextHint)
    attr.recycle()

    binding.cardView.strokeColor = Color.TRANSPARENT

    binding.searchBarEdit.hint = editTextHint
    binding.searchBarSearch.setImageDrawable(searchIcon)
    binding.searchBarClose.setImageDrawable(closeIcon)
    binding.searchBarShowPass.setImageDrawable(showPassIcon)
    binding.searchBarErrorText.text = errorText

    binding.searchBarShowPass.setOnClickListener {
      if (isPassShow) {
        binding.searchBarEdit.isInvisible = true
        isPassShow = false
      } else {
        binding.searchBarEdit.isInvisible = false
        isPassShow = true
      }
    }

    binding.searchBarEdit.addTextChangedListener(object : TextWatcher {

      override fun beforeTextChanged(s: CharSequence?, start: Int, count: Int, after: Int) {}

      override fun onTextChanged(s: CharSequence?, start: Int, before: Int, count: Int) {}

      override fun afterTextChanged(s: Editable?) {
        textChangesListener?.invoke(s.toString())
      }
    })

    binding.searchBarSearch.isVisible = searchVisible
    binding.searchBarClose.isVisible = closeIconVisible
    binding.searchBarShowPass.isVisible = showPassIconVisible

    binding.searchBarEdit.setOnClickListener {
      binding.searchBarClose.isVisible = true
      binding.searchBarEdit.isFocusable = true
      binding.searchBarEdit.isFocusableInTouchMode = true
      binding.searchBarEdit.requestFocus()
    }

    binding.searchBarClose.setOnClickListener {
      // binding.searchBarClose.visibility = GONE
      binding.searchBarEdit.text = null
//            binding.searchBarEdit.isFocusable = false
//            binding.searchBarEdit.isFocusableInTouchMode = false
//            binding.searchBarEdit.clearFocus()
    }
  }

  fun editChangeListener(editChangeListener: ((String) -> Unit)) {
    this.textChangesListener = editChangeListener
  }

  fun setCloseEditText() {
    binding.searchBarEdit.text = null
  }

  fun setEditText(text: String) {
    binding.searchBarEdit.setText(text)
    textChangesListener?.invoke(text)
  }

  fun setEditTextIsError(text: String) {
    if (binding.searchBarEdit.text.toString() == text) {
      binding.cardView.strokeColor = Color.RED
      binding.searchBarErrorText.isVisible = true
    } else {
      binding.cardView.strokeColor = Color.TRANSPARENT
      binding.searchBarErrorText.isGone = true
    }
  }

  fun setShowCloseIcon(flag: Boolean) {
    binding.searchBarClose.isVisible = flag
  }

  fun setShowPassIcon(flag: Boolean) {
    binding.searchBarShowPass.isVisible = flag
  }

  fun setSearchIcon(@DrawableRes icon: Int) {
    binding.searchBarSearch.setImageResource(icon)
  }
//  private lateinit var view: View
//  private var iconSearch: Drawable? = null
//  private var iconClose: Drawable? = null
//  private var iconShowPass: Drawable? = null
//  private var iconHidePass: Drawable? = null
//  private var content: String? = null
//  private var hint: String? = null
//  private var textSize = 30
//  private var textColor = 0
//  private var textColorHint = 0
//  private var textColorError = 0
//  private var textSizeError = 30
//  private var isPass = false
//  private var isPassVisible = false
//  private var isShowSearch = false
//  private var borderColorDefault = 0
//  private var borderColorError = 0
//  private lateinit var ivSearchBarSearch: ImageView
//  private lateinit var ivSearchBarClose: ImageView
//  private lateinit var ivSearchBarPass: ImageView
//  private lateinit var etSearchBarSearch: EditText
//  private lateinit var tvSearchBarSearchError: TextView
//  private lateinit var layoutSearchBarSearch: LinearLayout
//  private lateinit var cardView: MaterialCardView
//  private var textChangesListener: ((String) -> Unit)? = null
//
//  constructor(context: Context) : super(context) {
//  }
//
//  constructor(context: Context, attributeSet: AttributeSet) : super(context, attributeSet) {
//    getAttrs(context, attributeSet)
//    view = LayoutInflater.from(context).inflate(R.layout.zeekr_search_bar_layout, this)
//    initView()
//  }
//
//  constructor(context: Context, attributeSet: AttributeSet, defStyleAttr: Int) : super(
//    context,
//    attributeSet,
//    defStyleAttr
//  ) {
//  }
//
//  private fun getAttrs(context: Context, attrs: AttributeSet) {
//    val ta = context.obtainStyledAttributes(attrs, R.styleable.ZeekrSearchBar)
//    iconClose = ta.getDrawable(R.styleable.ZeekrSearchBar_ZeekrSearchBarCloseIcon)
//    iconShowPass = ta.getDrawable(R.styleable.ZeekrSearchBar_ZeekrSearchBarShowPassIcon)
//    iconHidePass = ta.getDrawable(R.styleable.ZeekrSearchBar_ZeekrSearchBarHidePassIcon)
//    content = ta.getString(R.styleable.ZeekrSearchBar_ZeekrSearchBarText)
//    hint = ta.getString(R.styleable.ZeekrSearchBar_ZeekrSearchBarTextHint)
//    textSize = ta.getDimensionPixelSize(R.styleable.ZeekrSearchBar_ZeekrSearchBarTextSize, 30)
//    textSizeError =
//      ta.getDimensionPixelSize(R.styleable.ZeekrSearchBar_ZeekrSearchBarTextSizeError, 30)
//    textColor = ta.getColor(R.styleable.ZeekrSearchBar_ZeekrSearchBarTextColor, Color.BLACK)
//    textColorHint =
//      ta.getColor(R.styleable.ZeekrSearchBar_ZeekrSearchBarTextColorHint, Color.GRAY)
//    textColorError =
//      ta.getColor(R.styleable.ZeekrSearchBar_ZeekrSearchBarTextColorError, Color.RED)
//    isPass = ta.getBoolean(R.styleable.ZeekrSearchBar_ZeekrSearchBarPassword, false)
//    isShowSearch = ta.getBoolean(R.styleable.ZeekrSearchBar_ZeekrSearchBarSearchVisible, false)
//    borderColorDefault =
//      ta.getColor(R.styleable.ZeekrSearchBar_ZeekrSearchBarBorderDefaultColor, Color.WHITE)
//    borderColorError =
//      ta.getColor(R.styleable.ZeekrSearchBar_ZeekrSearchBarBorderErrorColor, Color.RED)
//    ta.recycle()
//  }
//
//  private fun initView() {
//    this.orientation = LinearLayout.VERTICAL
//    layoutSearchBarSearch = view.findViewById(R.id.layout_search_bar)
//    cardView = view.findViewById(R.id.card_view)
//    ivSearchBarSearch = view.findViewById(R.id.iv_search_bar_search)
//    etSearchBarSearch = view.findViewById(R.id.et_search_bar_search)
//    ivSearchBarClose = view.findViewById(R.id.iv_search_bar_close)
//    ivSearchBarPass = view.findViewById(R.id.iv_search_bar_pass)
//    tvSearchBarSearchError = view.findViewById(R.id.tv_search_bar_error)
//    etSearchBarSearch.setBackgroundColor(Color.WHITE)
//    cardView.strokeColor = borderColorDefault
//    if (iconClose != null) {
//      ivSearchBarClose.setImageDrawable(iconClose)
//    }
//    if (isShowSearch) {
//      ivSearchBarSearch.visibility = View.VISIBLE
//    }
//    if (content != null) {
//      etSearchBarSearch.setText(content)
//    }
//    if (hint != null) {
//      etSearchBarSearch.setHint(SpannableString(hint))
//    }
//    etSearchBarSearch.setTextSize(textSize.toFloat())
//    if (isPass) {
//      ivSearchBarPass.visibility = View.VISIBLE
//      ivSearchBarPass.setImageDrawable(iconShowPass)
//      etSearchBarSearch.inputType =
//        if (isPassVisible) InputType.TYPE_CLASS_TEXT or InputType.TYPE_TEXT_VARIATION_PASSWORD
//        else InputType.TYPE_TEXT_VARIATION_PASSWORD
//    }
//    textColor.let { etSearchBarSearch.setTextColor(it) }
//    textColorHint.let { etSearchBarSearch.setHintTextColor(it) }
//    textColorError.let { tvSearchBarSearchError.setTextColor(it) }
//    tvSearchBarSearchError.textSize = textSizeError.toFloat()
//    ivSearchBarClose.setOnClickListener {
//      ivSearchBarClose.visibility = View.GONE
//      etSearchBarSearch.setText("")
//    }
//    ivSearchBarPass.setOnClickListener {
//      isPassVisible = !isPassVisible
//      if (isPass) {
//        ivSearchBarPass.visibility = View.VISIBLE
//        etSearchBarSearch.inputType =
//          if (isPassVisible) InputType.TYPE_CLASS_TEXT or InputType.TYPE_TEXT_VARIATION_PASSWORD
//          else InputType.TYPE_TEXT_VARIATION_PASSWORD
//        ivSearchBarPass.setImageDrawable(if (isPassVisible) iconHidePass else iconShowPass)
//      }
//      if (etSearchBarSearch.text != null) {
//        etSearchBarSearch.setSelection(etSearchBarSearch.text.toString().length)
//      }
//    }
//    etSearchBarSearch.doAfterTextChanged {
//      ivSearchBarClose.isVisible = it?.isNotEmpty() == true
//      textChangesListener?.invoke(it.toString())
//    }
//  }
//
//  public fun getCurrentSearchBarText(): String {
//    return etSearchBarSearch.text.toString()
//  }
//
//  public fun setErrorMsg(msg: String) {
//    tvSearchBarSearchError.text = msg
//  }
//
//  public fun setVerify(bool: Boolean) {
//    tvSearchBarSearchError.visibility = (if (bool) View.GONE else View.VISIBLE)
//    if (!bool) {
//      cardView.strokeColor = borderColorError
//    }
//  }
//
//  fun textChanges() {
//  }
//
//  fun setEditTextChanges(listener: (String) -> Unit) {
//    textChangesListener = listener
//  }
//
//  fun setEditMsg(msg: String) {
//    etSearchBarSearch.setText(msg)
//  }
//
//  public fun clearSearchText() {
//    etSearchBarSearch.text = null
//  }
}
