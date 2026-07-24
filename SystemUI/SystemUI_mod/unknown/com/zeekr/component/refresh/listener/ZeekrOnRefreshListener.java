package com.zeekr.component.refresh.listener;


import androidx.annotation.NonNull;

import com.zeekr.component.refresh.api.ZeekrRefreshLayout;

/**
 * 刷新监听器
 */
public interface ZeekrOnRefreshListener {
    void onRefresh(@NonNull ZeekrRefreshLayout zeekrRefreshLayout);
}
