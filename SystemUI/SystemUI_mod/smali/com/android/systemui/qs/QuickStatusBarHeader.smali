.class public Lcom/android/systemui/qs/QuickStatusBarHeader;
.super Landroid/widget/RelativeLayout;
.source "QuickStatusBarHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# instance fields
.field private mAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private final mAutoFadeOutTooltipRunnable:Ljava/lang/Runnable;

.field private mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

.field private mClockView:Lcom/android/systemui/statusbar/policy/Clock;

.field private mDateView:Lcom/android/systemui/statusbar/policy/DateView;

.field private final mHandler:Landroid/os/Handler;

.field protected mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private mHeaderTextContainerAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mHeaderTextContainerView:Landroid/view/View;

.field private mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

.field private mListening:Z

.field private mLongPressTooltipView:Landroid/view/View;

.field private mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

.field private mNextAlarmIcon:Landroid/widget/ImageView;

.field private mNextAlarmTextView:Landroid/widget/TextView;

.field private mQsDisabled:Z

.field private mQuickQsStatusIcons:Landroid/view/View;

.field private mRingerMode:I

.field private mRingerModeIcon:Landroid/widget/ImageView;

.field private mRingerModeTextView:Landroid/widget/TextView;

.field private final mRingerReceiver:Landroid/content/BroadcastReceiver;

.field private mShownCount:I

.field private mStatusContainer:Landroid/view/View;

.field private mStatusIconsAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mStatusSeparator:Landroid/view/View;

.field private mSystemIconsView:Landroid/view/View;

.field private mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHandler:Landroid/os/Handler;

    .line 109
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerMode:I

    .line 127
    new-instance v0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader$1;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$QuickStatusBarHeader$FnPQlf4H1pC9aZZ4M1B32cjPajs;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/-$$Lambda$QuickStatusBarHeader$FnPQlf4H1pC9aZZ4M1B32cjPajs;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mAutoFadeOutTooltipRunnable:Ljava/lang/Runnable;

    .line 142
    const-class v0, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 143
    const-class v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getStoredShownCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mShownCount:I

    .line 145
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/QuickStatusBarHeader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QuickStatusBarHeader;
    .param p1, "x1"    # I

    .line 75
    iput p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QuickStatusBarHeader;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusText()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QuickStatusBarHeader;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 75
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mLongPressTooltipView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QuickStatusBarHeader;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->showStatus()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QuickStatusBarHeader;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 75
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusContainer:Landroid/view/View;

    return-object v0
.end method

.method private applyDarkness(ILandroid/graphics/Rect;FI)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "tintArea"    # Landroid/graphics/Rect;
    .param p3, "intensity"    # F
    .param p4, "color"    # I

    .line 242
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 243
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    if-eqz v1, :cond_0

    .line 244
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    invoke-interface {v1, p2, p3, p4}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 246
    :cond_0
    return-void
.end method

.method private fillColorForIntensity(FLandroid/content/Context;)I
    .locals 1
    .param p1, "intensity"    # F
    .param p2, "context"    # Landroid/content/Context;

    .line 249
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 250
    const v0, 0x7f06010d

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    return v0

    .line 252
    :cond_0
    const v0, 0x7f0600a7

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    return v0
.end method

.method private formatNextAlarm(Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .line 608
    if-nez p1, :cond_0

    .line 609
    const-string v0, ""

    return-object v0

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EHm"

    goto :goto_0

    :cond_1
    const-string v0, "Ehma"

    .line 614
    .local v0, "skeleton":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, "pattern":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getColorIntensity(I)F
    .locals 1
    .param p0, "color"    # I

    .line 619
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method private getStoredShownCount()I
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    const-string v1, "QsLongPressTooltipShownCount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private hasStatusText()Z
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    .line 476
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 475
    :goto_1
    return v0
.end method

.method private hideLongPressTooltip(Z)V
    .locals 3
    .param p1, "shouldShowStatusText"    # Z

    .line 520
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mLongPressTooltipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 521
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mLongPressTooltipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mLongPressTooltipView:Landroid/view/View;

    .line 522
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mAutoFadeOutTooltipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 524
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mLongPressTooltipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 525
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 526
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QuickStatusBarHeader$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader$3;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;Z)V

    .line 527
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mLongPressTooltipView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 541
    if-eqz p1, :cond_1

    .line 542
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->showStatus()V

    .line 545
    :cond_1
    :goto_0
    return-void
.end method

.method private hideStatusText()V
    .locals 2

    .line 565
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 567
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QuickStatusBarHeader$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader$4;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    .line 568
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 579
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 581
    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/qs/QuickStatusBarHeader;)V
    .locals 1

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->hideLongPressTooltip(Z)V

    return-void
.end method

.method private showStatus()V
    .locals 3

    .line 552
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 553
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 557
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 558
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 559
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 560
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 561
    return-void
.end method

.method private updateAlarmStatus()Z
    .locals 8

    .line 226
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 227
    .local v0, "isOriginalVisible":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 229
    .local v3, "originalAlarmText":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 230
    .local v4, "alarmVisible":Z
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v5, :cond_1

    .line 231
    const/4 v4, 0x1

    .line 232
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-direct {p0, v6}, Lcom/android/systemui/qs/QuickStatusBarHeader;->formatNextAlarm(Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmIcon:Landroid/widget/ImageView;

    const/16 v6, 0x8

    if-eqz v4, :cond_2

    move v7, v2

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    move v6, v2

    nop

    :cond_3
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    if-ne v0, v4, :cond_5

    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    .line 238
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    .line 237
    :cond_4
    move v1, v2

    goto :goto_3

    .line 238
    :cond_5
    :goto_2
    nop

    .line 237
    :goto_3
    return v1
.end method

.method private updateHeaderTextContainerAlphaAnimator()V
    .locals 4

    .line 322
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    .line 323
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 324
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 326
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateMinimumHeight()V
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 280
    .local v0, "sbHeight":I
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 283
    .local v1, "qqsHeight":I
    add-int v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setMinimumHeight(I)V

    .line 284
    return-void
.end method

.method private updateResources()V
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 288
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateMinimumHeight()V

    .line 291
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 292
    const v2, 0x7f0703b4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 293
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const v2, 0x105019c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 297
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 300
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-boolean v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    if-eqz v3, :cond_0

    .line 301
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getMinimumHeight()I

    move-result v2

    const v3, 0x105019d

    .line 305
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 304
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 309
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusIconAlphaAnimator()V

    .line 312
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateHeaderTextContainerAlphaAnimator()V

    .line 313
    return-void
.end method

.method private updateRingerStatus()Z
    .locals 8

    .line 202
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 203
    .local v0, "isOriginalVisible":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 205
    .local v3, "originalRingerText":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 206
    .local v4, "ringerVisible":Z
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 207
    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v6

    .line 206
    invoke-static {v5, v6}, Landroid/service/notification/ZenModeConfig;->isZenOverridingRinger(ILandroid/service/notification/ZenModeConfig;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 208
    iget v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerMode:I

    if-ne v5, v1, :cond_1

    .line 209
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    const v6, 0x7f0806ca

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 210
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    const v6, 0x7f11045f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 211
    const/4 v4, 0x1

    goto :goto_1

    .line 212
    :cond_1
    iget v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerMode:I

    if-nez v5, :cond_2

    .line 213
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    const v6, 0x7f0806c9

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    const v6, 0x7f11045e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 215
    const/4 v4, 0x1

    .line 218
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    const/16 v6, 0x8

    if-eqz v4, :cond_3

    move v7, v2

    goto :goto_2

    :cond_3
    move v7, v6

    :goto_2
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    move v6, v2

    nop

    :cond_4
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    if-ne v0, v4, :cond_6

    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    .line 222
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_3

    .line 221
    :cond_5
    move v1, v2

    goto :goto_4

    .line 222
    :cond_6
    :goto_3
    nop

    .line 221
    :goto_4
    return v1
.end method

.method private updateStatusIconAlphaAnimator()V
    .locals 4

    .line 316
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsStatusIcons:Landroid/view/View;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    .line 317
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusIconsAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 319
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private updateStatusText()V
    .locals 5

    .line 190
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateRingerStatus()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateAlarmStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 192
    .local v0, "changed":Z
    :goto_1
    if-eqz v0, :cond_5

    .line 193
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    .line 194
    .local v3, "alarmVisible":Z
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 195
    .local v1, "ringerVisible":Z
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusSeparator:Landroid/view/View;

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    goto :goto_4

    .line 196
    :cond_4
    const/16 v2, 0x8

    .line 195
    :goto_4
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateTooltipShow()V

    .line 199
    .end local v1    # "ringerVisible":Z
    .end local v3    # "alarmVisible":Z
    :cond_5
    return-void
.end method

.method private updateTooltipShow()V
    .locals 1

    .line 466
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->hasStatusText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->hideLongPressTooltip(Z)V

    goto :goto_0

    .line 469
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->hideStatusText()V

    .line 471
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateHeaderTextContainerAlphaAnimator()V

    .line 472
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 397
    nop

    .line 398
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getDisplay()Landroid/view/Display;

    move-result-object v1

    .line 397
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    move-result-object v0

    .line 399
    .local v0, "padding":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 400
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    .line 401
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070450

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 402
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07044f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 400
    invoke-virtual {v2, v3, v1, v4, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 404
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 407
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 390
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 391
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 392
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->requestApplyInsets()V

    .line 393
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 439
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 440
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SHOW_ALARMS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    if-ne p1, v0, :cond_1

    .line 443
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 446
    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .locals 0
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .line 462
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusText()V

    .line 463
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 257
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 258
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    .line 261
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 263
    .local v0, "shouldUseWallpaperTextColor":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/BatteryMeterView;->useWallpaperTextColor(Z)V

    .line 264
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/Clock;->useWallpaperTextColor(Z)V

    .line 265
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 413
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setListening(Z)V

    .line 414
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 415
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 416
    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    .line 149
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 151
    const v0, 0x7f0a0398

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 152
    const v0, 0x7f0a039f

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    .line 153
    const v0, 0x7f0a0399

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsStatusIcons:Landroid/view/View;

    .line 154
    const v0, 0x7f0a0447

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    .line 155
    .local v0, "iconContainer":Lcom/android/systemui/statusbar/phone/StatusIconContainer;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setShouldRestrictIcons(Z)V

    .line 156
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;-><init>(Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    .line 159
    const v2, 0x7f0a01a9

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    .line 160
    const v2, 0x7f0a02a7

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mLongPressTooltipView:Landroid/view/View;

    .line 161
    const v2, 0x7f0a044e

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusContainer:Landroid/view/View;

    .line 162
    const v2, 0x7f0a044f

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusSeparator:Landroid/view/View;

    .line 163
    const v2, 0x7f0a030d

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmIcon:Landroid/widget/ImageView;

    .line 164
    const v2, 0x7f0a030e

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    .line 165
    const v2, 0x7f0a03bb

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    .line 166
    const v2, 0x7f0a03bc

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    .line 168
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    .line 170
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v2

    .line 171
    .local v1, "tintArea":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1010030

    invoke-static {v2, v3}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v2

    .line 172
    .local v2, "colorForeground":I
    invoke-static {v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getColorIntensity(I)F

    move-result v3

    .line 173
    .local v3, "intensity":F
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->fillColorForIntensity(FLandroid/content/Context;)I

    move-result v4

    .line 176
    .local v4, "fillColor":I
    const v5, 0x7f0a00d2

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-direct {p0, v5, v1, v6, v7}, Lcom/android/systemui/qs/QuickStatusBarHeader;->applyDarkness(ILandroid/graphics/Rect;FI)V

    .line 179
    iget-object v6, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    .line 181
    const v6, 0x7f0a007d

    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/BatteryMeterView;

    iput-object v6, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    .line 182
    iget-object v6, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/systemui/BatteryMeterView;->setForceShowPercent(Z)V

    .line 183
    iget-object v6, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v6, p0}, Lcom/android/systemui/BatteryMeterView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    .line 185
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v5, p0}, Lcom/android/systemui/statusbar/policy/Clock;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v5, 0x7f0a00fd

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/DateView;

    iput-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    .line 187
    return-void
.end method

.method public onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 0
    .param p1, "nextAlarm"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .line 450
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 451
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusText()V

    .line 452
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 269
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRtlPropertiesChanged(I)V

    .line 270
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    .line 271
    return-void
.end method

.method public onZenChanged(I)V
    .locals 0
    .param p1, "zen"    # I

    .line 456
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusText()V

    .line 458
    return-void
.end method

.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .line 419
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mListening:Z

    if-ne p1, v0, :cond_0

    .line 420
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setListening(Z)V

    .line 423
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mListening:Z

    .line 425
    if-eqz p1, :cond_1

    .line 426
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Ljava/lang/Object;)V

    .line 427
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->addCallback(Ljava/lang/Object;)V

    .line 428
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->removeCallback(Ljava/lang/Object;)V

    .line 432
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->removeCallback(Ljava/lang/Object;)V

    .line 433
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 435
    :goto_0
    return-void
.end method

.method public setMargins(I)V
    .locals 3
    .param p1, "sideMargins"    # I

    .line 623
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 624
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 625
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsStatusIcons:Landroid/view/View;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    if-ne v1, v2, :cond_0

    .line 626
    goto :goto_1

    .line 628
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 629
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 630
    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 623
    .end local v1    # "v":Landroid/view/View;
    .end local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 632
    .end local v0    # "i":I
    :cond_2
    return-void
.end method
