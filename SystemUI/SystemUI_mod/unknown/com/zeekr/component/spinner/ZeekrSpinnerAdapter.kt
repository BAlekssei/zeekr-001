package com.zeekr.component.spinner

import android.view.LayoutInflater
import android.view.ViewGroup
import android.widget.ImageView
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import com.zeekr.component.databinding.ZeekrSpinnerItemBinding

internal class ZeekrSpinnerAdapter(
  private val callback: (ZeekrSpinnerModel) -> Unit,
  private val netIconListener: ((Int, ImageView) -> Unit),
  private val listener: (Int) -> Unit
) :
  ListAdapter<ZeekrSpinnerModel, ZeekrSpinnerViewHolder>(ZeekrSpinnerDiff) {

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ZeekrSpinnerViewHolder {
    return ZeekrSpinnerViewHolder(
      ZeekrSpinnerItemBinding.inflate(
        LayoutInflater.from(parent.context),
        parent,
        false
      )
    )
  }

  override fun onBindViewHolder(holder: ZeekrSpinnerViewHolder, position: Int) {
    getItem(position)?.let { model ->
      holder.bind(model, netIconListener, position)
      holder.itemView.setOnClickListener {
        if (!model.select) {
          val oldSelectIndex = currentList.indexOfFirst {
            it.select
          }
          val list = currentList.toMutableList()
          list[oldSelectIndex] = currentList[oldSelectIndex].copy(select = false)
          list[position] = currentList[position].copy(select = true)
          submitList(list)
          listener.invoke(position)
          callback.invoke(list[position])
        } else {
          listener.invoke(position)
        }
      }
    }
  }

  object ZeekrSpinnerDiff : DiffUtil.ItemCallback<ZeekrSpinnerModel>() {
    override fun areItemsTheSame(
      oldItem: ZeekrSpinnerModel,
      newItem: ZeekrSpinnerModel
    ) = oldItem.name == newItem.name

    override fun areContentsTheSame(
      oldItem: ZeekrSpinnerModel,
      newItem: ZeekrSpinnerModel
    ) = oldItem == newItem
  }
}
