package com.zeekr.component.refresh.constant;

/**
 * 尺寸值的定义状态，用于在值覆盖的时候决定优先级
 * 越往下优先级越高
 */
@SuppressWarnings("WeakerAccess")
public class ZeekrDimensionStatus {

    public static final ZeekrDimensionStatus DefaultUnNotify = new ZeekrDimensionStatus(0,false);//默认值，但是还没通知确认
    public static final ZeekrDimensionStatus Default = new ZeekrDimensionStatus(1,true);//默认值
    public static final ZeekrDimensionStatus XmlWrapUnNotify = new ZeekrDimensionStatus(2,false);//Xml计算，但是还没通知确认
    public static final ZeekrDimensionStatus XmlWrap = new ZeekrDimensionStatus(3,true);//Xml计算
    public static final ZeekrDimensionStatus XmlExactUnNotify = new ZeekrDimensionStatus(4,false);//Xml 的view 指定，但是还没通知确认
    public static final ZeekrDimensionStatus XmlExact = new ZeekrDimensionStatus(5,true);//Xml 的view 指定
    public static final ZeekrDimensionStatus XmlLayoutUnNotify = new ZeekrDimensionStatus(6,false);//Xml 的layout 中指定，但是还没通知确认
    public static final ZeekrDimensionStatus XmlLayout = new ZeekrDimensionStatus(7,true);//Xml 的layout 中指定
    public static final ZeekrDimensionStatus CodeExactUnNotify = new ZeekrDimensionStatus(8,false);//代码指定，但是还没通知确认
    public static final ZeekrDimensionStatus CodeExact = new ZeekrDimensionStatus(9,true);//代码指定
    public static final ZeekrDimensionStatus DeadLockUnNotify = new ZeekrDimensionStatus(10,false);//锁死，但是还没通知确认
    public static final ZeekrDimensionStatus DeadLock = new ZeekrDimensionStatus(10,true);//锁死

    public final int ordinal;
    public final boolean notified;

    public static final ZeekrDimensionStatus[] values = new ZeekrDimensionStatus[]{
            DefaultUnNotify,
            Default,
            XmlWrapUnNotify,
            XmlWrap,
            XmlExactUnNotify,
            XmlExact,
            XmlLayoutUnNotify,
            XmlLayout,
            CodeExactUnNotify,
            CodeExact,
            DeadLockUnNotify,
            DeadLock
    };

    private ZeekrDimensionStatus(int ordinal, boolean notified) {
        this.ordinal = ordinal;
        this.notified = notified;
    }

    /**
     * 转换为未通知状态
     * @return 未通知状态
     */
    public ZeekrDimensionStatus unNotify() {
        if (notified) {
            ZeekrDimensionStatus prev = values[ordinal - 1];
            if (!prev.notified) {
                return prev;
            }
            return DefaultUnNotify;
        }
        return this;
    }

    /**
     * 转换为通知状态
     * @return 通知状态
     */
    public ZeekrDimensionStatus notified() {
        if (!notified) {
            return values[ordinal + 1];
        }
        return this;
    }

    /**
     * 是否可以被新的状态替换
     * @param status 新转台
     * @return 小于等于
     */
    public boolean canReplaceWith(ZeekrDimensionStatus status) {
        return ordinal < status.ordinal || ((!notified || CodeExact == this) && ordinal == status.ordinal);
    }

}