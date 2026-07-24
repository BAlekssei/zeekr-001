package com.zeekr.component.refresh.wrapper;

import static android.view.ViewGroup.LayoutParams.MATCH_PARENT;
import static com.zeekr.component.refresh.util.ZeekrSmartUtil.isContentView;
import static com.zeekr.component.refresh.util.ZeekrSmartUtil.isTransformedTouchPointInView;
import static com.zeekr.component.refresh.util.ZeekrSmartUtil.measureViewHeight;
import static com.zeekr.component.refresh.util.ZeekrSmartUtil.scrollListBy;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.PointF;
import android.util.Log;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.Space;

import androidx.annotation.NonNull;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingParent;
import androidx.viewpager.widget.ViewPager;

import com.zeekr.component.R;
import com.zeekr.component.refresh.api.ZeekrRefreshContent;
import com.zeekr.component.refresh.api.ZeekrRefreshKernel;
import com.zeekr.component.refresh.listener.ZeekrCoordinatorLayoutListener;
import com.zeekr.component.refresh.listener.ZeekrScrollBoundaryDecider;
import com.zeekr.component.refresh.simple.ZeekrSimpleBoundaryDecider;
import com.zeekr.component.refresh.util.ZeekrDesignUtil;
import com.zeekr.component.scroll.OverNestedScrollView;

import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

/**
 * 刷新内容包装
 */
@SuppressWarnings("WeakerAccess")
public class ZeekrRefreshContentWrapper implements ZeekrRefreshContent, ZeekrCoordinatorLayoutListener, AnimatorUpdateListener {

    protected View mContentView;//直接内容视图
    protected View mOriginalContentView;//被包裹的原真实视图
    protected View mScrollableView;
    protected View mFixedHeader;
    protected View mFixedFooter;
    protected int mLastSpinner = 0;
    protected boolean mEnableRefresh = true;
    protected boolean mEnableLoadMore = true;
    protected ZeekrSimpleBoundaryDecider mBoundaryAdapter = new ZeekrSimpleBoundaryDecider();


    public ZeekrRefreshContentWrapper(@NonNull View view) {
        this.mContentView = mOriginalContentView = mScrollableView = view;
    }

    //<editor-fold desc="findScrollableView">
    protected void findScrollableView(View content, ZeekrRefreshKernel kernel) {
        View scrollableView = null;
        boolean isInEditMode = mContentView.isInEditMode();
        while (scrollableView == null || (scrollableView instanceof NestedScrollingParent
                && !(scrollableView instanceof NestedScrollingChild))) {
            if (content instanceof OverNestedScrollView) {
                ((OverNestedScrollView) content).isPrivateDisableOverScroll();
            }
            content = findScrollableViewInternal(content, scrollableView == null);
            if (content == scrollableView) {
                break;
            }
            if (!isInEditMode) {
                ZeekrDesignUtil.checkCoordinatorLayout(content, kernel, this);
            }
            scrollableView = content;
        }
        if (scrollableView != null) {
            mScrollableView = scrollableView;
        }
    }

    @Override
    public void onCoordinatorUpdate(boolean enableRefresh, boolean enableLoadMore) {
        mEnableRefresh = enableRefresh;
        mEnableLoadMore = enableLoadMore;
    }

    protected View findScrollableViewInternal(View content, boolean selfAble) {
        View scrollableView = null;
        Queue<View> views = new LinkedList<>();
        //noinspection unchecked
        List<View> list = (List<View>)views;
        list.add(content);
        while (list.size() > 0 && scrollableView == null) {
            View view = views.poll();
            if (view != null) {
                if ((selfAble || view != content) && isContentView(view)) {
                    scrollableView = view;
                } else if (view instanceof ViewGroup) {
                    ViewGroup group = (ViewGroup) view;
                    for (int j = 0; j < group.getChildCount(); j++) {
                        list.add(group.getChildAt(j));
                    }
                }
            }
        }
        return scrollableView == null ? content : scrollableView;
    }

    protected View findScrollableViewByPoint(View content, PointF event, View orgScrollableView) {
        if (content instanceof ViewGroup && event != null) {
            ViewGroup viewGroup = (ViewGroup) content;
            final int childCount = viewGroup.getChildCount();
            PointF point = new PointF();
            for (int i = childCount; i > 0; i--) {
                View child = viewGroup.getChildAt(i - 1);
                if (isTransformedTouchPointInView(viewGroup, child, event.x, event.y, point)) {
                    if (child instanceof ViewPager || !isContentView(child)) {
                        event.offset(point.x, point.y);
                        child = findScrollableViewByPoint(child, event, orgScrollableView);
                        event.offset(-point.x, -point.y);
                    }
                    return child;
                }
            }
        }
        return orgScrollableView;
    }
    //</editor-fold>

    //<editor-fold desc="implements">
    @NonNull
    public View getView() {
        return mContentView;
    }

    @Override
    @NonNull
    public View getScrollableView() {
        return mScrollableView;
    }

    @Override
    public void moveSpinner(int spinner, int headerTranslationViewId, int footerTranslationViewId) {
        boolean translated = false;
        if (headerTranslationViewId != View.NO_ID) {
            View headerTranslationView = mOriginalContentView.findViewById(headerTranslationViewId);
            if (headerTranslationView != null) {
                if (spinner > 0) {
                    translated = true;
                    headerTranslationView.setTranslationY(spinner);
                } else if (headerTranslationView.getTranslationY() > 0) {
                    headerTranslationView.setTranslationY(0);
                }
            }
        }
        if (footerTranslationViewId != View.NO_ID) {
            View footerTranslationView = mOriginalContentView.findViewById(footerTranslationViewId);
            if (footerTranslationView != null) {
                if (spinner < 0) {
                    translated = true;
                    footerTranslationView.setTranslationY(spinner);
                } else if (footerTranslationView.getTranslationY() < 0) {
                    footerTranslationView.setTranslationY(0);
                }
            }
        }
        if (!translated) {
            mOriginalContentView.setTranslationY(spinner);
        } else {
            mOriginalContentView.setTranslationY(0);
        }
        if (mFixedHeader != null) {
            mFixedHeader.setTranslationY(Math.max(0, spinner));
        }
        if (mFixedFooter != null) {
            mFixedFooter.setTranslationY(Math.min(0, spinner));
        }
    }

    @Override
    public boolean canRefresh() {
        return mEnableRefresh && mBoundaryAdapter.canRefresh(mContentView);
    }

    @Override
    public boolean canLoadMore() {
        return mEnableLoadMore && mBoundaryAdapter.canLoadMore(mContentView);
    }

    @Override
    public void onActionDown(MotionEvent e) {
        PointF point = new PointF(e.getX(), e.getY());
        point.offset(-mContentView.getLeft(), -mContentView.getTop());
        if (mScrollableView != mContentView) {
            //如果内容视图不是 ScrollableView 说明使用了Layout嵌套内容，需要动态搜索 ScrollableView
            mScrollableView = findScrollableViewByPoint(mContentView, point, mScrollableView);
        }
        if (mScrollableView == mContentView) {
            //如果内容视图就是 ScrollableView 就不需要使用事件来动态搜索 而浪费CPU时间和性能了
//            mBoundaryAdapter.setActionEvent(null);
            mBoundaryAdapter.mActionEvent = null;
        } else {
            mBoundaryAdapter.mActionEvent = point;
//            mBoundaryAdapter.setActionEvent(mMotionEvent);
        }
    }

    @Override
    public void setUpComponent(ZeekrRefreshKernel kernel, View fixedHeader, View fixedFooter) {
        findScrollableView(mContentView, kernel);

        if (fixedHeader != null || fixedFooter != null) {
            mFixedHeader = fixedHeader;
            mFixedFooter = fixedFooter;
            ViewGroup frameLayout = new FrameLayout(mContentView.getContext());
            int index = kernel.getRefreshLayout().getLayout().indexOfChild(mContentView);
            kernel.getRefreshLayout().getLayout().removeView(mContentView);
            frameLayout.addView(mContentView, 0, new ViewGroup.LayoutParams(MATCH_PARENT, MATCH_PARENT));
            ViewGroup.LayoutParams layoutParams = mContentView.getLayoutParams();
            kernel.getRefreshLayout().getLayout().addView(frameLayout, index, layoutParams);
            mContentView = frameLayout;
            if (fixedHeader != null) {
                fixedHeader.setTag(R.id.zrl_tag, "fixed-top");
                ViewGroup.LayoutParams lp = fixedHeader.getLayoutParams();
                ViewGroup parent = (ViewGroup) fixedHeader.getParent();
                index = parent.indexOfChild(fixedHeader);
                parent.removeView(fixedHeader);
                lp.height = measureViewHeight(fixedHeader);
                parent.addView(new Space(mContentView.getContext()), index, lp);
                frameLayout.addView(fixedHeader, 1, lp);
            }
            if (fixedFooter != null) {
                fixedFooter.setTag(R.id.zrl_tag,"fixed-bottom");
                ViewGroup.LayoutParams lp = fixedFooter.getLayoutParams();
                ViewGroup parent = (ViewGroup) fixedFooter.getParent();
                index = parent.indexOfChild(fixedFooter);
                parent.removeView(fixedFooter);
                FrameLayout.LayoutParams flp = new FrameLayout.LayoutParams(lp);
                lp.height = measureViewHeight(fixedFooter);
                parent.addView(new Space(mContentView.getContext()), index, lp);
                flp.gravity = Gravity.BOTTOM;
                frameLayout.addView(fixedFooter, 1, flp);
            }
        }
    }

    @Override
    public void setScrollBoundaryDecider(ZeekrScrollBoundaryDecider boundary) {
        if (boundary instanceof ZeekrSimpleBoundaryDecider) {
            mBoundaryAdapter = ((ZeekrSimpleBoundaryDecider) boundary);
        } else {
            mBoundaryAdapter.boundary = (boundary);
        }
    }

    @Override
    public void setEnableLoadMoreWhenContentNotFull(boolean enable) {
        mBoundaryAdapter.mEnableLoadMoreWhenContentNotFull = enable;
    }

    @Override
    public AnimatorUpdateListener scrollContentWhenFinished(final int spinner) {
        if (mScrollableView != null && spinner != 0) {
            if ((spinner < 0 && mScrollableView.canScrollVertically(1)) || (spinner > 0 && mScrollableView.canScrollVertically(-1))) {
                mLastSpinner = spinner;
                return this;
            }
        }
        Log.i("ZeekrRefreshLayout", "scrollContentWhenFinished: ");
        return null;
    }

    @Override
    public void onAnimationUpdate(ValueAnimator animation) {
        int value = (int) animation.getAnimatedValue();
        try {
            float dy = (value - mLastSpinner) * mScrollableView.getScaleY();
            if (mScrollableView instanceof AbsListView) {
                scrollListBy((AbsListView) mScrollableView, (int)dy);
            } else {
                mScrollableView.scrollBy(0, (int)dy);
            }
        } catch (Throwable e) {
            //根据用户反馈，此处可能会有BUG
            e.printStackTrace();
        }
        mLastSpinner = value;
    }
    //</editor-fold>

}
