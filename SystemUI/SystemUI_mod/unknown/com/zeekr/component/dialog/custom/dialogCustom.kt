package com.zeekr.component.dialog.custom

import android.view.ViewGroup
import com.zeekr.component.databinding.ZeekrDialogCustomWebviewLayoutBinding
import com.zeekr.component.dialog.common.getServiceInflate

@JvmOverloads
fun ViewGroup.inflateDialogWebViewLayout(url: String? = null) =
  ZeekrDialogCustomWebviewLayoutBinding.inflate(context.getServiceInflate(), this).run {
    if (!url.isNullOrEmpty()) {
      zeekrDialogWebView.loadUrl(url)
    }
    zeekrDialogWebView
  }
/*fun ViewGroup.inflateDialogInputLayout() = ZeekrDialogCustomInputLayoutBinding.inflate(
    context.getServiceInflate(), this
)*/

/*fun ViewGroup.inflateDialogTimerLayout() = ZeekrDialogCustomTimerLayoutBinding.inflate(
    context.getServiceInflate(), this
)*/
/*
data class ZeekrDialogSelectModel(
    val content: String,
    val checked: Boolean = false,
    val tag: String = ""
)

fun ViewGroup.inflateDialogSelectLayout(itemList: Array<ZeekrDialogSelectModel>,
                                        subtitle: String? = null) =
    ZeekrDialogCustomSelectLayoutBinding.inflate(
        context.getServiceInflate(), this
    ).apply {
        subtitle?.let {
            zeekrDialogSelectSubtitle.text = it
            zeekrDialogSelectSubtitle.isVisible = true
        }
        zeekrDialogScrollBar.attachScrollView(zeekrDialogSelectScroll)
        var selectId = 0
        itemList.find { it.checked } ?: let {
            itemList[0] = itemList[0].copy(checked = true)
        }
        itemList.forEachIndexed { index, item ->
            val viewItem = ZeekrListRT(context).apply {
                id = View.generateViewId()
                binding.run {
                    zeekrListItemText.text = item.content
                    zeekrListDialogItemTag.isVisible = item.tag.isNotEmpty()
                    zeekrListDialogItemTag.text = item.tag
                }
                setChecked(item.checked)
                takeIf { item.checked }?.let { selectId = id }
            }
            viewItem.setOnClickListener {
                val currentItem = itemList[index]
                if(!currentItem.checked) {
                    val oldSelectIndex = itemList.indexOfFirst { it.checked }
                    itemList[oldSelectIndex] = itemList[oldSelectIndex].copy(checked = false)
                    itemList[index] = currentItem.copy(checked = true)
                    viewItem.setChecked(true)
                    zeekrDialogSelectGroup.children.find {
                        it is ZeekrListRT && it.id == selectId
                    }?.let {
                        it as ZeekrListRT
                        it.setChecked(false)
                    }
                    selectId = viewItem.id
                }
            }
            zeekrDialogSelectGroup.addView(viewItem)
        }
    }*/
