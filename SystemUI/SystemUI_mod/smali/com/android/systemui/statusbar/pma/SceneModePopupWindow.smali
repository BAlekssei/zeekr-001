.class public Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;
.super Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;
.source "SceneModePopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private background:Landroid/view/View;

.field private btn1:Landroid/widget/Button;

.field private btn2:Landroid/widget/Button;

.field private currentMode:I

.field private mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mPositionX:I

.field private more:Landroid/widget/Button;

.field private tvSceneMode:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;-><init>(Landroid/content/Context;I)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->mPositionX:I

    .line 49
    iput v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->currentMode:I

    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->mContext:Landroid/content/Context;

    .line 63
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->mContentResolver:Landroid/content/ContentResolver;

    .line 65
    const/16 v0, 0x224

    const/16 v1, 0x15e

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->updateAnimation(II)Z

    .line 66
    return-void
.end method

.method private initScene()V
    .locals 6

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->background:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 116
    .local v0, "backgroundParams":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->currentMode:I

    const/4 v2, 0x6

    const/16 v3, 0x15e

    const/16 v4, 0x8

    const/16 v5, 0x224

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 124
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->tvSceneMode:Landroid/widget/TextView;

    const-string/jumbo v2, "\u4f11\u61a9\u6a21\u5f0f\u5df2\u6fc0\u6d3b"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->btn1:Landroid/widget/Button;

    const-string/jumbo v2, "\u8fd4\u56de\u4f11\u61a9\u6a21\u5f0f"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->more:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 127
    const/16 v1, 0x1b6

    invoke-virtual {p0, v5, v1}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->updateAnimation(II)Z

    .line 128
    goto :goto_0

    .line 118
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->tvSceneMode:Landroid/widget/TextView;

    const-string/jumbo v2, "\u6d17\u8f66\u6a21\u5f0f\u5df2\u6fc0\u6d3b"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->btn1:Landroid/widget/Button;

    const-string/jumbo v2, "\u8fd4\u56de\u6d17\u8f66\u6a21\u5f0f"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->more:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 121
    invoke-virtual {p0, v5, v3}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->updateAnimation(II)Z

    .line 122
    goto :goto_0

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->tvSceneMode:Landroid/widget/TextView;

    const-string/jumbo v2, "\u9732\u8425\u6a21\u5f0f\u5df2\u6fc0\u6d3b"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->btn1:Landroid/widget/Button;

    const-string/jumbo v2, "\u8fd4\u56de\u9732\u8425\u6a21\u5f0f"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->more:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 133
    invoke-virtual {p0, v5, v3}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->updateAnimation(II)Z

    .line 136
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initView(ZI)V
    .locals 3
    .param p1, "isFullScreen"    # Z
    .param p2, "layoutMode"    # I

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->setCanceledOnTouchOutside(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 99
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 100
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    const v1, 0x7f1200c9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 102
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 103
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x700

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 106
    const v2, 0x800033

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 107
    const/16 v2, 0x224

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 108
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->more:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x1b6

    goto :goto_0

    :cond_0
    const/16 v2, 0x15e

    :goto_0
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 109
    iget v2, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->mPositionX:I

    add-int/lit8 v2, v2, -0x18

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 110
    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 111
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 112
    return-void
.end method


# virtual methods
.method public changeTheme(I)V
    .locals 3
    .param p1, "value"    # I

    .line 139
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->background:Landroid/view/View;

    const v1, 0x7f080491

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->tvSceneMode:Landroid/widget/TextView;

    const v1, -0xc7c5c3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->btn1:Landroid/widget/Button;

    const v2, 0x7f08068f

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->btn1:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->more:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->more:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->btn2:Landroid/widget/Button;

    const v1, 0x7f080691

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->btn2:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->background:Landroid/view/View;

    const v1, 0x7f080492

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->tvSceneMode:Landroid/widget/TextView;

    const v1, -0x4b4642

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->btn1:Landroid/widget/Button;

    const v2, 0x7f080690

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->btn1:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->more:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->more:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->btn2:Landroid/widget/Button;

    const v1, 0x7f080692

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->btn2:Landroid/widget/Button;

    const v1, -0xd7d7d2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 158
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a03ae

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 180
    :pswitch_0
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->currentMode:I

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ne v0, v3, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "zeekr_bs_wash_mode_enable"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 182
    .local v0, "enable":I
    if-nez v0, :cond_5

    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "zeekr_bs_wash_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 184
    const-string v1, "launcher_statusbar_washing_mode_exit"

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackOperationTime(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    .end local v0    # "enable":I
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->currentMode:I

    if-ne v0, v2, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "zeekr_bs_rest_mode_enable"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 188
    .restart local v0    # "enable":I
    if-nez v0, :cond_5

    .line 189
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "zeekr_bs_rest_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 190
    const-string v1, "launcher_statusbar_rest_mode_exit"

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackOperationTime(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    .end local v0    # "enable":I
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->currentMode:I

    if-ne v0, v1, :cond_5

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "zeekr_bs_camp_mode_enable"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 194
    .restart local v0    # "enable":I
    if-nez v0, :cond_5

    .line 195
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "zeekr_bs_camp_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 168
    .end local v0    # "enable":I
    :pswitch_1
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->currentMode:I

    if-ne v0, v3, :cond_2

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "ecarx.launcher3.action.ENTER_WASH_CAR_SCENE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 170
    const-string v0, "launcher_statusbar_washing_mode_open"

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackOperationTime(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->currentMode:I

    if-ne v0, v2, :cond_3

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "ecarx.launcher3.action.ENTER_REST_SCENE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 173
    const-string v0, "launcher_statusbar_rest_mode_open"

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackOperationTime(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->currentMode:I

    if-ne v0, v1, :cond_5

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "ecarx.launcher3.action.ENTER_CAMP_SCENE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 200
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 201
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.geely.pma.nap"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v1, "nap://com.geely.pma.nap/route?source=systemui&act=1"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 203
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 207
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->setDialogDismiss()V

    .line 208
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a009f
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 70
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f0d0135

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->setContentView(I)V

    .line 72
    const v0, 0x7f0a04dd

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->tvSceneMode:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0a009f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->btn1:Landroid/widget/Button;

    .line 74
    const v0, 0x7f0a00a0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->btn2:Landroid/widget/Button;

    .line 75
    const v0, 0x7f0a03ae

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->more:Landroid/widget/Button;

    .line 76
    const v0, 0x7f0a03da

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->background:Landroid/view/View;

    .line 77
    const/16 v0, 0x1b6

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->paramsHeight:I

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->background:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->setOpenAnimationView(Landroid/view/View;)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->btn1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->more:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->btn2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->initView(ZI)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->changeTheme(I)V

    .line 84
    return-void
.end method

.method public setDialogShow()V
    .locals 0

    .line 161
    invoke-super {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->setDialogShow()V

    .line 162
    return-void
.end method

.method public setPositionX(IZI)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "isFullScreen"    # Z
    .param p3, "layoutMode"    # I

    .line 87
    const-string v0, "SceneModePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPositionX isFullScreen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->mPositionX:I

    .line 89
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->currentMode:I

    if-eq v0, p3, :cond_0

    .line 90
    iput p3, p0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->currentMode:I

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->initScene()V

    .line 93
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->initView(ZI)V

    .line 94
    return-void
.end method
