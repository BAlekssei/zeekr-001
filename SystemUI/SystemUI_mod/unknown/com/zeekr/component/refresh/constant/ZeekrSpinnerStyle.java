package com.zeekr.component.refresh.constant;

/**
 * 顶部和底部的组件在拖动时候的变换方式
 */
@SuppressWarnings("DeprecatedIsStillUsed")
public class ZeekrSpinnerStyle {

    public static final ZeekrSpinnerStyle TRANSLATE = new ZeekrSpinnerStyle(0, true, false);
    /**
     * Scale 下拉过程中会动态 【测量】（header）和 【布局】（layout）降低app 性能，
     * 官方自带的 Header 都已经从【Scale】转向【FixedBehind】来提高性能
     * 自定义可以参考官方的 【飞机】【贝塞尔】【快递】等 Header
     * @deprecated use {@link ZeekrSpinnerStyle#FIXED_BEHIND}
     */
    @Deprecated
    public static final ZeekrSpinnerStyle SCALE = new ZeekrSpinnerStyle(1, true, true);
    public static final ZeekrSpinnerStyle FIXED_BEHIND = new ZeekrSpinnerStyle(2, false, false);
    public static final ZeekrSpinnerStyle FIXED_FRONT = new ZeekrSpinnerStyle(3, true, false);
    public static final ZeekrSpinnerStyle MATCH_LAYOUT = new ZeekrSpinnerStyle(4, true, false);

    public static final ZeekrSpinnerStyle[] VALUES = new ZeekrSpinnerStyle[] {
            TRANSLATE, //平行移动        特点: HeaderView高度不会改变，
            SCALE, //拉伸形变            特点：在下拉和上弹（HeaderView高度改变）时候，会自动触发OnDraw事件
            FIXED_BEHIND, //固定在背后    特点：HeaderView高度不会改变，
            FIXED_FRONT, //固定在前面     特点：HeaderView高度不会改变，
            MATCH_LAYOUT//填满布局        特点：HeaderView高度不会改变，尺寸充满 RefreshLayout
    };

    public final int ordinal;
    public final boolean front;
    public final boolean scale;

    protected ZeekrSpinnerStyle(int ordinal, boolean front, boolean scale) {
        this.ordinal = ordinal;
        this.front = front;
        this.scale = scale;
    }
}
