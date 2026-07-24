package com.zeekr.component.refresh.listener;

import android.content.Context;

import androidx.annotation.NonNull;

import com.zeekr.component.refresh.api.ZeekrRefreshLayout;

/**
 * 默认全局初始化器
 */
public interface ZeekrDefaultRefreshInitializer {
    void initialize(@NonNull Context context, @NonNull ZeekrRefreshLayout layout);
}
