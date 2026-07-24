package com.zeekr.component.refresh.listener;


import static androidx.annotation.RestrictTo.Scope.LIBRARY;
import static androidx.annotation.RestrictTo.Scope.LIBRARY_GROUP;
import static androidx.annotation.RestrictTo.Scope.SUBCLASSES;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

import com.zeekr.component.refresh.api.ZeekrRefreshLayout;
import com.zeekr.component.refresh.constant.ZeekrRefreshState;

/**
 * 刷新状态改变监听器
 */
public interface ZeekrOnStateChangedListener {
    /**
     * 【仅限框架内调用】状态改变事件 {@link ZeekrRefreshState}
     * @param zeekrRefreshLayout RefreshLayout
     * @param oldState 改变之前的状态
     * @param newState 改变之后的状态
     */
    @RestrictTo({LIBRARY,LIBRARY_GROUP,SUBCLASSES})
    void onStateChanged(@NonNull ZeekrRefreshLayout zeekrRefreshLayout, @NonNull ZeekrRefreshState oldState, @NonNull ZeekrRefreshState newState);
}
