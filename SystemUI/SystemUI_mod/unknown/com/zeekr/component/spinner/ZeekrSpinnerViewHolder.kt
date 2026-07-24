package com.zeekr.component.spinner

import android.graphics.Typeface
import android.widget.ImageView
import androidx.core.view.isVisible
import androidx.recyclerview.widget.RecyclerView
import com.zeekr.component.databinding.ZeekrSpinnerItemBinding

internal class ZeekrSpinnerViewHolder(
  private val binding: ZeekrSpinnerItemBinding
) : RecyclerView.ViewHolder(binding.root) {

  fun bind(model: ZeekrSpinnerModel, netIconListener: (Int, ImageView) -> Unit, position: Int) {
    binding.run {
      zeekrSpinnerItemName.text = model.name
      if (model.select) {
        zeekrSpinnerItemName.typeface = Typeface.defaultFromStyle(Typeface.BOLD)
      } else {
        zeekrSpinnerItemName.typeface = Typeface.defaultFromStyle(Typeface.NORMAL)
      }

      if (model.icon != NO_INT_VALUE) {
        zeekrSpinnerItemIcon.setImageResource(model.icon)
      }
      zeekrSpinnerItemSelect.isVisible = model.icon != NO_INT_VALUE
      zeekrSpinnerItemSelect.isVisible = model.select
      netIconListener.invoke(position, zeekrSpinnerItemIcon)
    }
  }
}
