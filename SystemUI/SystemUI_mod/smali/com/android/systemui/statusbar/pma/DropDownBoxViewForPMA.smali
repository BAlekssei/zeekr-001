.class public Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;
.super Lcom/android/systemui/statusbar/pma/PanelViewForPMA;
.source "DropDownBoxViewForPMA.java"

# interfaces
.implements Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;


# static fields
.field private static final DEBUG:Z

.field private static mContext:Landroid/content/Context;


# instance fields
.field private imgCollapsePanel:Landroid/widget/ImageView;

.field private mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private mCollapseReceiver:Landroid/content/BroadcastReceiver;

.field private mDropDownBoxContentView:Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;

.field private mPanelExpanded:Z

.field private mSearchInputView:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/PanelViewForPMA;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 152
    new-instance v0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA$1;-><init>(Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mCollapseReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    sput-object p1, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mContext:Landroid/content/Context;

    .line 86
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 87
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 70
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->DEBUG:Z

    return v0
.end method

.method private changeTheme()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mDropDownBoxContentView:Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;

    sget-object v1, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mContext:Landroid/content/Context;

    const v2, 0x7f0805e3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mDropDownBoxContentView:Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;

    sget-object v1, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mContext:Landroid/content/Context;

    const v2, 0x7f0805e4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->isFullyExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mSearchInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    check-cast v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    .line 105
    .local v0, "statusBarForPMA":Lcom/android/systemui/statusbar/pma/StatusBarForPMA;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mSearchInputView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->hideSoftInput(Landroid/view/View;)V

    .line 106
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mSearchInputView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 108
    .end local v0    # "statusBarForPMA":Lcom/android/systemui/statusbar/pma/StatusBarForPMA;
    :cond_0
    return-void
.end method

.method public static synthetic lambda$onFinishInflate$1(Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->isFullyExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->collapse(ZF)V

    .line 113
    :cond_0
    return-void
.end method

.method private registerCollapseReceiver()V
    .locals 3

    .line 145
    const-string v0, "DropDownBoxViewForPMA"

    const-string/jumbo v1, "registerCollapseReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.ecarx.intent.action.CONTROL_BOARD_CLOSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    sget-object v1, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mCollapseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    return-void
.end method

.method private updatePanelExpanded()V
    .locals 2

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->isFullyCollapsed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 188
    .local v0, "isExpanded":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mPanelExpanded:Z

    if-eq v1, v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setIsPanelExpanded(Z)V

    .line 191
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelExpanded(Z)V

    .line 192
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mPanelExpanded:Z

    .line 194
    :cond_0
    return-void
.end method


# virtual methods
.method public closeSelf()V
    .locals 2

    .line 218
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->isFullyExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->collapse(ZF)V

    .line 221
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/systemui/statusbar/pma/PanelViewForPMA;->onAttachedToWindow()V

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->addCallback(Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;)V

    .line 122
    return-void
.end method

.method public onDayNightModeChange(I)V
    .locals 0
    .param p1, "dayNightMode"    # I

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->changeTheme()V

    .line 92
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 126
    invoke-super {p0}, Lcom/android/systemui/statusbar/pma/PanelViewForPMA;->onDetachedFromWindow()V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->removeCallback(Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;)V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 131
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 132
    sget-object v0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mCollapseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 96
    invoke-super {p0}, Lcom/android/systemui/statusbar/pma/PanelViewForPMA;->onFinishInflate()V

    .line 97
    const-string v0, "DropDownBoxViewForPMA"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const v0, 0x7f0a0137

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mDropDownBoxContentView:Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;

    .line 99
    const v0, 0x7f0a00da

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->imgCollapsePanel:Landroid/widget/ImageView;

    .line 100
    const v0, 0x7f0a0403

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mSearchInputView:Landroid/widget/EditText;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mDropDownBoxContentView:Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$DropDownBoxViewForPMA$HkuUqI1x-cMIMLX6Ynqmo2FFR-8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$DropDownBoxViewForPMA$HkuUqI1x-cMIMLX6Ynqmo2FFR-8;-><init>(Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->imgCollapsePanel:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$DropDownBoxViewForPMA$sp_xpEkAre2pg33GdbEJ67sYaR4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$DropDownBoxViewForPMA$sp_xpEkAre2pg33GdbEJ67sYaR4;-><init>(Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->registerCollapseReceiver()V

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->changeTheme()V

    .line 116
    return-void
.end method

.method protected onHeightUpdated(F)V
    .locals 4
    .param p1, "expandedHeight"    # F

    .line 177
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/pma/PanelViewForPMA;->onHeightUpdated(F)V

    .line 178
    iget v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->getMaxPanelHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 179
    .local v0, "translationY":F
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 180
    const-string v1, "DropDownBoxViewForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Drop down Box new height is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "   translationY is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mDropDownBoxContentView:Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->setTranslationY(F)V

    .line 183
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->updatePanelExpanded()V

    .line 184
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 171
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/pma/PanelViewForPMA;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public openNotification()V
    .locals 1

    .line 224
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->setExpandedHeight(F)V

    .line 225
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 214
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 215
    return-void
.end method
