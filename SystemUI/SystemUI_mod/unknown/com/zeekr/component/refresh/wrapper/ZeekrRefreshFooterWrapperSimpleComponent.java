package com.zeekr.component.refresh.wrapper;

import android.annotation.SuppressLint;
import android.view.View;

import com.zeekr.component.refresh.api.ZeekrRefreshFooter;
import com.zeekr.component.refresh.simple.ZeekrSimpleComponent;

/**
 * 刷新底部包装
 */
@SuppressLint("ViewConstructor")
public class ZeekrRefreshFooterWrapperSimpleComponent extends ZeekrSimpleComponent implements ZeekrRefreshFooter {

    public ZeekrRefreshFooterWrapperSimpleComponent(View wrapper) {
        super(wrapper);
    }

}
