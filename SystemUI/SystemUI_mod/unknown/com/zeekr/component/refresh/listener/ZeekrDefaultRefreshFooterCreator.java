package com.zeekr.component.refresh.listener;

import android.content.Context;

import androidx.annotation.NonNull;

import com.zeekr.component.refresh.api.ZeekrRefreshFooter;
import com.zeekr.component.refresh.api.ZeekrRefreshLayout;

/**
 * 默认Footer创建器
 */
public interface ZeekrDefaultRefreshFooterCreator {
    @NonNull
    ZeekrRefreshFooter createRefreshFooter(@NonNull Context context, @NonNull ZeekrRefreshLayout layout);
}
