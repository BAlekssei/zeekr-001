package com.zeekr.component.refresh.simple;

import android.graphics.PointF;
import android.view.View;

import com.zeekr.component.refresh.listener.ZeekrScrollBoundaryDecider;
import com.zeekr.component.refresh.util.ZeekrSmartUtil;

/**
 * 滚动边界
 */
public class ZeekrSimpleBoundaryDecider implements ZeekrScrollBoundaryDecider {

    //<editor-fold desc="Internal">
    public PointF mActionEvent;
    public ZeekrScrollBoundaryDecider boundary;
    public boolean mEnableLoadMoreWhenContentNotFull = true;
    //</editor-fold>

    //<editor-fold desc="ScrollBoundaryDecider">
    @Override
    public boolean canRefresh(View content) {
        if (boundary != null) {
            return boundary.canRefresh(content);
        }
        //mActionEvent == null 时 canRefresh 不会动态递归搜索
        return ZeekrSmartUtil.canRefresh(content, mActionEvent);
    }

    @Override
    public boolean canLoadMore(View content) {
        if (boundary != null) {
            return boundary.canLoadMore(content);
        }
        //mActionEvent == null 时 canLoadMore 不会动态递归搜索
        return ZeekrSmartUtil.canLoadMore(content, mActionEvent, mEnableLoadMoreWhenContentNotFull);
    }
    //</editor-fold>
}
