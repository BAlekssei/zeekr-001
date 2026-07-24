package com.zeekr.component.refresh.simple;


import androidx.annotation.NonNull;

import com.zeekr.component.refresh.api.ZeekrRefreshFooter;
import com.zeekr.component.refresh.api.ZeekrRefreshHeader;
import com.zeekr.component.refresh.api.ZeekrRefreshLayout;
import com.zeekr.component.refresh.constant.ZeekrRefreshState;
import com.zeekr.component.refresh.listener.ZeekrOnMultiListener;

/**
 * 多功能监听器
 */
public class ZeekrSimpleMultiListener implements ZeekrOnMultiListener {

    @Override
    public void onHeaderMoving(ZeekrRefreshHeader header, boolean isDragging, float percent, int offset, int headerHeight, int maxDragHeight) {

    }

    @Override
    public void onHeaderReleased(ZeekrRefreshHeader header, int headerHeight, int maxDragHeight) {

    }

    @Override
    public void onHeaderStartAnimator(ZeekrRefreshHeader header, int footerHeight, int maxDragHeight) {

    }

    @Override
    public void onHeaderFinish(ZeekrRefreshHeader header, boolean success) {

    }

    @Override
    public void onFooterMoving(ZeekrRefreshFooter footer, boolean isDragging, float percent, int offset, int footerHeight, int maxDragHeight) {

    }

    @Override
    public void onFooterReleased(ZeekrRefreshFooter footer, int footerHeight, int maxDragHeight) {

    }

    @Override
    public void onFooterStartAnimator(ZeekrRefreshFooter footer, int headerHeight, int maxDragHeight) {

    }

    @Override
    public void onFooterFinish(ZeekrRefreshFooter footer, boolean success) {

    }

    @Override
    public void onRefresh(@NonNull ZeekrRefreshLayout zeekrRefreshLayout) {

    }

    @Override
    public void onLoadMore(@NonNull ZeekrRefreshLayout zeekrRefreshLayout) {

    }

    @Override
    public void onStateChanged(@NonNull ZeekrRefreshLayout zeekrRefreshLayout, @NonNull ZeekrRefreshState oldState, @NonNull ZeekrRefreshState newState) {

    }

}
