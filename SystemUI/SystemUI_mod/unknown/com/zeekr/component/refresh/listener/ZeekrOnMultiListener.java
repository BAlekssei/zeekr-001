package com.zeekr.component.refresh.listener;


import com.zeekr.component.refresh.api.ZeekrRefreshFooter;
import com.zeekr.component.refresh.api.ZeekrRefreshHeader;

/**
 * 多功能监听器
 */
public interface ZeekrOnMultiListener extends ZeekrOnRefreshLoadMoreListener, ZeekrOnStateChangedListener {
    /**
     * 手指拖动下拉（会连续多次调用，添加isDragging并取代之前的onPulling、onReleasing）
     * @param header 头部
     * @param isDragging true 手指正在拖动 false 回弹动画
     * @param percent 下拉的百分比 值 = offset/footerHeight (0 - percent - (footerHeight+maxDragHeight) / footerHeight )
     * @param offset 下拉的像素偏移量  0 - offset - (footerHeight+maxDragHeight)
     * @param headerHeight 高度 HeaderHeight or FooterHeight
     * @param maxDragHeight 最大拖动高度
     */
    void onHeaderMoving(ZeekrRefreshHeader header, boolean isDragging, float percent, int offset, int headerHeight, int maxDragHeight);

    void onHeaderReleased(ZeekrRefreshHeader header, int headerHeight, int maxDragHeight);
    void onHeaderStartAnimator(ZeekrRefreshHeader header, int headerHeight, int maxDragHeight);
    void onHeaderFinish(ZeekrRefreshHeader header, boolean success);

    /**
     * 手指拖动上拉（会连续多次调用，添加isDragging并取代之前的onPulling、onReleasing）
     * @param footer 尾部
     * @param isDragging true 手指正在拖动 false 回弹动画
     * @param percent 下拉的百分比 值 = offset/footerHeight (0 - percent - (footerHeight+maxDragHeight) / footerHeight )
     * @param offset 下拉的像素偏移量  0 - offset - (footerHeight+maxDragHeight)
     * @param footerHeight 高度 HeaderHeight or FooterHeight
     * @param maxDragHeight 最大拖动高度
     */
    void onFooterMoving(ZeekrRefreshFooter footer, boolean isDragging, float percent, int offset, int footerHeight, int maxDragHeight);

    void onFooterReleased(ZeekrRefreshFooter footer, int footerHeight, int maxDragHeight);
    void onFooterStartAnimator(ZeekrRefreshFooter footer, int footerHeight, int maxDragHeight);
    void onFooterFinish(ZeekrRefreshFooter footer, boolean success);
}
