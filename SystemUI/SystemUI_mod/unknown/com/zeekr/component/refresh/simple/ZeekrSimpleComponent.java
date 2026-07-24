package com.zeekr.component.refresh.simple;

import static android.view.ViewGroup.LayoutParams.MATCH_PARENT;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;

import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.zeekr.component.refresh.ZeekrRefreshLayout;
import com.zeekr.component.refresh.api.ZeekrRefreshComponent;
import com.zeekr.component.refresh.api.ZeekrRefreshFooter;
import com.zeekr.component.refresh.api.ZeekrRefreshHeader;
import com.zeekr.component.refresh.api.ZeekrRefreshKernel;
import com.zeekr.component.refresh.constant.ZeekrRefreshState;
import com.zeekr.component.refresh.constant.ZeekrSpinnerStyle;
import com.zeekr.component.refresh.listener.ZeekrOnStateChangedListener;

/**
 * Component 初步实现
 * 实现 Header 和 Footer 时，继承 ComponentAbstract 的话可以少写很多接口方法
 */
public abstract class ZeekrSimpleComponent extends RelativeLayout implements ZeekrRefreshComponent {

    protected View mWrappedView;
    protected ZeekrSpinnerStyle mSpinnerStyle;
    protected ZeekrRefreshComponent mWrappedInternal;

    protected ZeekrSimpleComponent(@NonNull View wrapped) {
        this(wrapped, wrapped instanceof ZeekrRefreshComponent ? (ZeekrRefreshComponent) wrapped : null);
    }

    protected ZeekrSimpleComponent(@NonNull View wrappedView, @Nullable ZeekrRefreshComponent wrappedInternal) {
        super(wrappedView.getContext(), null, 0);
        this.mWrappedView = wrappedView;
        this.mWrappedInternal = wrappedInternal;
        if (this instanceof ZeekrRefreshFooter && mWrappedInternal instanceof ZeekrRefreshHeader && mWrappedInternal.getSpinnerStyle() == ZeekrSpinnerStyle.MATCH_LAYOUT) {
            wrappedInternal.getView().setScaleY(-1);
        } else if (this instanceof ZeekrRefreshHeader && mWrappedInternal instanceof ZeekrRefreshFooter && mWrappedInternal.getSpinnerStyle() == ZeekrSpinnerStyle.MATCH_LAYOUT) {
            wrappedInternal.getView().setScaleY(-1);
        }
    }

    protected ZeekrSimpleComponent(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @Override
    public boolean equals(Object obj) {
        if (!super.equals(obj)) {
            if (obj instanceof ZeekrRefreshComponent) {
                final ZeekrRefreshComponent thisView = this;
                return thisView.getView() == ((ZeekrRefreshComponent)obj).getView();
            }
            return false;
        }
        return true;
    }

    @Override
    public void isRefreshContentScrollView(View view, boolean isScrollView, boolean isShowScrollBar) {

    }

    @NonNull
    public View getView() {
        return mWrappedView == null ? this : mWrappedView;
    }

    @Override
    public int onFinish(@NonNull com.zeekr.component.refresh.api.ZeekrRefreshLayout zeekrRefreshLayout, boolean success) {
        if (mWrappedInternal != null && mWrappedInternal != this) {
            return mWrappedInternal.onFinish(zeekrRefreshLayout, success);
        }
        return 0;
    }

    @Override
    public void setPrimaryColors(@ColorInt int ... colors) {
        if (mWrappedInternal != null && mWrappedInternal != this) {
            mWrappedInternal.setPrimaryColors(colors);
        }
    }

    @NonNull
    @Override
    public ZeekrSpinnerStyle getSpinnerStyle() {
        if (mSpinnerStyle != null) {
            return mSpinnerStyle;
        }
        if (mWrappedInternal != null && mWrappedInternal != this) {
            return mWrappedInternal.getSpinnerStyle();
        }
        if (mWrappedView != null) {
            ViewGroup.LayoutParams params = mWrappedView.getLayoutParams();
            if (params instanceof ZeekrRefreshLayout.LayoutParams) {
                mSpinnerStyle = ((ZeekrRefreshLayout.LayoutParams) params).spinnerStyle;
                if (mSpinnerStyle != null) {
                    return mSpinnerStyle;
                }
            }
            if (params != null) {
                if (params.height == 0 || params.height == MATCH_PARENT) {
                    for (ZeekrSpinnerStyle style : ZeekrSpinnerStyle.VALUES) {
                        if (style.scale) {
                            return mSpinnerStyle = style;
                        }
                    }
                }
            }
        }
        return mSpinnerStyle = ZeekrSpinnerStyle.TRANSLATE;
    }

    @Override
    public void onInitialized(@NonNull ZeekrRefreshKernel kernel, int height, int maxDragHeight) {
        if (mWrappedInternal != null && mWrappedInternal != this) {
            mWrappedInternal.onInitialized(kernel, height, maxDragHeight);
        } else if (mWrappedView != null) {
            ViewGroup.LayoutParams params = mWrappedView.getLayoutParams();
            if (params instanceof ZeekrRefreshLayout.LayoutParams) {
                kernel.requestDrawBackgroundFor(this, ((ZeekrRefreshLayout.LayoutParams) params).backgroundColor);
            }
        }
    }

    @Override
    public boolean isSupportHorizontalDrag() {
        return mWrappedInternal != null && mWrappedInternal != this && mWrappedInternal.isSupportHorizontalDrag();
    }

    @Override
    public void onHorizontalDrag(float percentX, int offsetX, int offsetMax) {
        if (mWrappedInternal != null && mWrappedInternal != this) {
            mWrappedInternal.onHorizontalDrag(percentX, offsetX, offsetMax);
        }
    }

    @Override
    public void onMoving(boolean isDragging, float percent, int offset, int height, int maxDragHeight) {
        if (mWrappedInternal != null && mWrappedInternal != this) {
            mWrappedInternal.onMoving(isDragging, percent, offset, height, maxDragHeight);
        }
    }

    @Override
    public void onReleased(@NonNull com.zeekr.component.refresh.api.ZeekrRefreshLayout zeekrRefreshLayout, int height, int maxDragHeight) {
        if (mWrappedInternal != null && mWrappedInternal != this) {
            mWrappedInternal.onReleased(zeekrRefreshLayout, height, maxDragHeight);
        }
    }

    @Override
    public void onStartAnimator(@NonNull com.zeekr.component.refresh.api.ZeekrRefreshLayout zeekrRefreshLayout, int height, int maxDragHeight) {
        if (mWrappedInternal != null && mWrappedInternal != this) {
            mWrappedInternal.onStartAnimator(zeekrRefreshLayout, height, maxDragHeight);
        }
    }

    @Override
    public void onStateChanged(@NonNull com.zeekr.component.refresh.api.ZeekrRefreshLayout zeekrRefreshLayout, @NonNull ZeekrRefreshState oldState, @NonNull ZeekrRefreshState newState) {
        if (mWrappedInternal != null && mWrappedInternal != this) {
            if (this instanceof ZeekrRefreshFooter && mWrappedInternal instanceof ZeekrRefreshHeader) {
                if (oldState.isFooter) {
                    oldState = oldState.toHeader();
                }
                if (newState.isFooter) {
                    newState = newState.toHeader();
                }
            } else if (this instanceof ZeekrRefreshHeader && mWrappedInternal instanceof ZeekrRefreshFooter) {
                if (oldState.isHeader) {
                    oldState = oldState.toFooter();
                }
                if (newState.isHeader) {
                    newState = newState.toFooter();
                }
            }
            final ZeekrOnStateChangedListener listener = mWrappedInternal;
            if (listener != null) {
                listener.onStateChanged(zeekrRefreshLayout, oldState, newState);
            }
        }
    }

    @SuppressLint("RestrictedApi")
    public boolean setNoMoreData(boolean noMoreData) {
        return mWrappedInternal instanceof ZeekrRefreshFooter && ((ZeekrRefreshFooter) mWrappedInternal).setNoMoreData(noMoreData);
    }
}
