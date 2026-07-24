package com.zeekr.component.refresh;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;


import com.zeekr.component.R;
import com.zeekr.component.rebound.content.ZeekrRefreshContentHorizontal;
import com.zeekr.component.refresh.api.ZeekrRefreshComponent;
import com.zeekr.component.refresh.simple.ZeekrScrollBoundaryHorizontal;


/**
 * 请不要直接调用此类
 */
public class ZeekrRefreshHorizontal extends ZeekrRefreshLayout{


    protected boolean isInLayout = false;

    public ZeekrRefreshHorizontal(Context context) {
        this(context, null);
    }

    public ZeekrRefreshHorizontal(Context context, AttributeSet attrs) {
        super(context, attrs);
        setScrollBoundaryDecider(new ZeekrScrollBoundaryHorizontal());
    }



    //</editor-fold>

    //<editor-fold desc="重写方法">

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        final View thisView = this;
        if (mZeekrRefreshContent != null && !(mZeekrRefreshContent instanceof ZeekrRefreshContentHorizontal)) {
            mZeekrRefreshContent = new ZeekrRefreshContentHorizontal(mZeekrRefreshContent.getView());
            View fixedHeaderView = mFixedHeaderViewId > 0 ? thisView.findViewById(mFixedHeaderViewId) : null;
            View fixedFooterView = mFixedFooterViewId > 0 ? thisView.findViewById(mFixedFooterViewId) : null;

            mZeekrRefreshContent.setScrollBoundaryDecider(mScrollBoundaryDecider);
            mZeekrRefreshContent.setEnableLoadMoreWhenContentNotFull(mEnableLoadMoreWhenContentNotFull);
            mZeekrRefreshContent.setUpComponent(mKernel, fixedHeaderView, fixedFooterView);
        }

        thisView.setRotation(-90);
    }

    protected boolean isRefreshComponent(View child) {
        ZeekrRefreshComponent header = mRefreshHeader;
        ZeekrRefreshComponent footer = mRefreshFooter;
        return (header != null && (child == header || child == header.getView())) ||
                (footer != null && (child == footer || child == footer.getView())) ;
    }

    @Override
    @SuppressWarnings("SuspiciousNameCombination")
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        for (int i = 0, len = getChildCount(); i < len; i++) {
            View child = getChildAt(i);
            child.setTag(R.id.zrl_tag, isRefreshComponent(child) ? "GONE" : "VISIBLE");
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        if (MeasureSpec.getMode(widthMeasureSpec) == MeasureSpec.AT_MOST) {
            widthMeasureSpec = MeasureSpec.makeMeasureSpec(getMeasuredWidth(), MeasureSpec.EXACTLY);
        }
        if (MeasureSpec.getMode(heightMeasureSpec) == MeasureSpec.AT_MOST) {
            heightMeasureSpec = MeasureSpec.makeMeasureSpec(getMeasuredHeight(), MeasureSpec.EXACTLY);
        }
        for (int i = 0, len = getChildCount(); i < len; i++) {
            View child = getChildAt(i);
            child.setTag(R.id.zrl_tag, isRefreshComponent(child) ? "VISIBLE" : "GONE");
        }
        super.onMeasure(heightMeasureSpec, widthMeasureSpec);

        // 如果，真的直接颠倒，height width 的测量值，会导致，布局外的同级控件位置发生偏移，必须纠正 测量值
        super.setMeasuredDimension(getMeasuredHeight(), getMeasuredWidth());
    }

    @Override
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        //2020-10-13 setMeasuredDimension 纠正之后，获取宽高值的算法要修改
        int width = bottom - top;
        int height = right - left;
//        int width = right - left;
//        int height = bottom - top;
        int div = (height - width) / 2;
        if (isInLayout) {
            ZeekrRefreshComponent header = mRefreshHeader;
            ZeekrRefreshComponent footer = mRefreshFooter;

            final View thisView = this;
            int paddingLeft = thisView.getPaddingLeft();
            int paddingRight = thisView.getPaddingRight();
            int paddingTop = thisView.getPaddingTop();
            int paddingBottom = thisView.getPaddingBottom();

            for (int i = 0, len = getChildCount(); i < len; i++) {
                View child = getChildAt(i);
                if (!isRefreshComponent(child) && child.getVisibility() != GONE) {
                    int t = paddingLeft;
                    int w = child.getMeasuredWidth();
                    int h = child.getMeasuredHeight();
                    //2020-10-13 setMeasuredDimension 纠正之后，宽高的取值要修改
                    int r = height - paddingTop;
//                    int r = width - paddingTop;
//
                    ViewGroup.LayoutParams params = child.getLayoutParams();
                    if (params instanceof MarginLayoutParams) {
                        MarginLayoutParams lp = (MarginLayoutParams) params;
                        t += lp.leftMargin;
                        r -= lp.topMargin;
                    }
//
                    div = (h - w) / 2;
                    t -= div;
                    r -= div;
//
                    child.setRotation(90);
                    child.setTag(R.id.zrl_tag, "GONE");
                    child.layout(r - w, t, r, t + h);
                }
            }
            super.onLayout(changed, left, top, right, bottom);
        } else {
            top -= div;
            left += div;
            isInLayout = true;
            super.layout(left, top, left + width, top + height);
            isInLayout = false;
        }

    }



}
