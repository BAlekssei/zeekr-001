package com.zeekr.component.refresh.listener;

import android.content.Context;

import androidx.annotation.NonNull;

import com.zeekr.component.refresh.api.ZeekrRefreshHeader;
import com.zeekr.component.refresh.api.ZeekrRefreshLayout;

/**
 * 默认Header创建器
 */
public interface ZeekrDefaultRefreshHeaderCreator {
    @NonNull
    ZeekrRefreshHeader createRefreshHeader(@NonNull Context context, @NonNull ZeekrRefreshLayout layout);
}
