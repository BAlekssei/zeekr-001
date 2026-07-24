package com.zeekr.component.refresh.api;

import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.MotionEvent;
import android.view.View;

import androidx.annotation.NonNull;

import com.zeekr.component.refresh.listener.ZeekrScrollBoundaryDecider;


/**
 * 刷新内容组件
 */
public interface ZeekrRefreshContent {

    @NonNull
    View getView();
    @NonNull
    View getScrollableView();

    void onActionDown(MotionEvent e);

    void setUpComponent(ZeekrRefreshKernel kernel, View fixedHeader, View fixedFooter);
    void setScrollBoundaryDecider(ZeekrScrollBoundaryDecider boundary);

    void setEnableLoadMoreWhenContentNotFull(boolean enable);

    void moveSpinner(int spinner, int headerTranslationViewId, int footerTranslationViewId);

    boolean canRefresh();
    boolean canLoadMore();

    AnimatorUpdateListener scrollContentWhenFinished(int spinner);
}
