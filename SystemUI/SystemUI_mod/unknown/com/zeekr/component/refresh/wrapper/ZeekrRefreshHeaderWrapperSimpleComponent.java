package com.zeekr.component.refresh.wrapper;

import android.annotation.SuppressLint;
import android.view.View;

import com.zeekr.component.refresh.api.ZeekrRefreshHeader;
import com.zeekr.component.refresh.simple.ZeekrSimpleComponent;


/**
 * 刷新头部包装
 */
@SuppressLint("ViewConstructor")
public class ZeekrRefreshHeaderWrapperSimpleComponent extends ZeekrSimpleComponent implements ZeekrRefreshHeader {

    public ZeekrRefreshHeaderWrapperSimpleComponent(View wrapper) {
        super(wrapper);
    }

}
