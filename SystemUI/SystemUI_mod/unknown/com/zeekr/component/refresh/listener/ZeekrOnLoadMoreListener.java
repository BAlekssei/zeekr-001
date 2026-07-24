package com.zeekr.component.refresh.listener;


import androidx.annotation.NonNull;

import com.zeekr.component.refresh.api.ZeekrRefreshLayout;

/**
 * 加载更多监听器
 */
public interface ZeekrOnLoadMoreListener {
    void onLoadMore(@NonNull ZeekrRefreshLayout zeekrRefreshLayout);
}
