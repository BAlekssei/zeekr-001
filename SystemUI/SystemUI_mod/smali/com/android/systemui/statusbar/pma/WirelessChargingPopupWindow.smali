.class public Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;
.super Landroid/app/AlertDialog;
.source "WirelessChargingPopupWindow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private layoutWirelessCharge:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDialogListener:Lcom/android/systemui/statusbar/pma/PopupDialogListener;

.field private mWirelessChargePositionX:I

.field private showHandler:Landroid/os/Handler;

.field private tvWirelessCharge:Landroid/widget/TextView;

.field private wpcStatus:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->mWirelessChargePositionX:I

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->wpcStatus:I

    .line 130
    new-instance v0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow$1;-><init>(Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->showHandler:Landroid/os/Handler;

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;)Lcom/android/systemui/statusbar/pma/PopupDialogListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->mDialogListener:Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    return-object v0
.end method

.method private initView(Z)V
    .locals 4
    .param p1, "isFullScreen"    # Z

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->setCanceledOnTouchOutside(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 64
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 65
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    const v1, 0x7f1200c9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 67
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 68
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const v2, 0x800033

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 69
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 70
    const/16 v2, 0x80

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 71
    iget v2, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->mWirelessChargePositionX:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->layoutWirelessCharge:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x64

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 72
    if-eqz p1, :cond_0

    const/16 v2, 0x48

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 74
    return-void
.end method

.method private isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 190
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 191
    .local v0, "dialogBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 192
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method


# virtual methods
.method public changeTheme(I)V
    .locals 2
    .param p1, "dayNightMode"    # I

    .line 86
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->tvWirelessCharge:Landroid/widget/TextView;

    const v1, -0xc7c5c3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->layoutWirelessCharge:Landroid/view/View;

    const v1, 0x7f08064c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->tvWirelessCharge:Landroid/widget/TextView;

    const v1, -0x4b4642

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->layoutWirelessCharge:Landroid/view/View;

    const v1, 0x7f08064d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 93
    :goto_0
    return-void
.end method

.method public getIsShowing()Z
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public getWirelessWidth()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->layoutWirelessCharge:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->mDialogListener:Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->mDialogListener:Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/PopupDialogListener;->windowShow(Z)V

    .line 100
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 48
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f0d0149

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->setContentView(I)V

    .line 50
    const v0, 0x7f0a0270

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->layoutWirelessCharge:Landroid/view/View;

    .line 51
    const v0, 0x7f0a04ec

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->tvWirelessCharge:Landroid/widget/TextView;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->initView(Z)V

    .line 53
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->tvWirelessCharge:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->playSoundEffect(I)V

    .line 202
    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setDialogListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    .line 81
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->mDialogListener:Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    .line 82
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 83
    return-void
.end method

.method public setDialogShow()V
    .locals 5

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->isShowing()Z

    move-result v0

    const-wide/16 v1, 0x2710

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->showHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 106
    .local v0, "message":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 107
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->showHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 108
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->mDialogListener:Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->mDialogListener:Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/pma/PopupDialogListener;->windowShow(Z)V

    .line 111
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    goto :goto_0

    .line 112
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->wpcStatus:I

    const/16 v4, 0x9

    if-eq v0, v4, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->wpcStatus:I

    if-eq v0, v3, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->wpcStatus:I

    const/4 v4, 0x7

    if-ne v0, v4, :cond_2

    goto :goto_1

    .line 115
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->show()V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->showHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 117
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 118
    .restart local v0    # "message":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 119
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->showHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->mDialogListener:Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    if-eqz v1, :cond_3

    .line 121
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->mDialogListener:Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/pma/PopupDialogListener;->windowShow(Z)V

    .line 124
    .end local v0    # "message":Landroid/os/Message;
    :cond_3
    :goto_0
    return-void

    .line 113
    :cond_4
    :goto_1
    return-void
.end method

.method public setPositionX(IZ)V
    .locals 3
    .param p1, "wirelessChargePositionX"    # I
    .param p2, "isFullScreen"    # Z

    .line 56
    const-string v0, "WirelessChargingPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPositionX isFullScreen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iput p1, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->mWirelessChargePositionX:I

    .line 58
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->initView(Z)V

    .line 59
    return-void
.end method

.method public setWirelessCharge(I)V
    .locals 2
    .param p1, "state"    # I

    .line 148
    iput p1, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->wpcStatus:I

    .line 149
    iget v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->wpcStatus:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->wpcStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->wpcStatus:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 156
    :cond_0
    if-eqz p1, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->tvWirelessCharge:Landroid/widget/TextView;

    const-string/jumbo v1, "\u624b\u673a\u65e0\u6cd5\u5145\u7535"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 176
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->tvWirelessCharge:Landroid/widget/TextView;

    const-string/jumbo v1, "\u7535\u6d41\u5f02\u5e38\uff0c\u505c\u6b62\u5145\u7535"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    goto :goto_0

    .line 173
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->tvWirelessCharge:Landroid/widget/TextView;

    const-string/jumbo v1, "\u7535\u538b\u5f02\u5e38\uff0c\u505c\u6b62\u5145\u7535"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    goto :goto_0

    .line 164
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->tvWirelessCharge:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5145\u7535\u677f\u4e0a\u5b58\u5728NFC\u5361\u7247\u7b49\u7269\u54c1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    goto :goto_0

    .line 158
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->tvWirelessCharge:Landroid/widget/TextView;

    const-string/jumbo v1, "\u624b\u673a\u5145\u7535\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->tvWirelessCharge:Landroid/widget/TextView;

    const-string/jumbo v1, "\u8bf7\u79fb\u8d70\u5145\u7535\u677f\u4e0a\u7684\u5361\u7247\uff0c\u786c\u5e01\u7b49\u7269\u54c1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    goto :goto_0

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->tvWirelessCharge:Landroid/widget/TextView;

    const-string/jumbo v1, "\u624b\u673a\u5145\u7535\u5b8c\u6210"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    goto :goto_0

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->tvWirelessCharge:Landroid/widget/TextView;

    const-string/jumbo v1, "\u624b\u673a\u6216\u5145\u7535\u677f\u8fc7\u70ed\uff0c\u8bf7\u79fb\u9664\u624b\u673a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    nop

    .line 183
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->dismiss()V

    .line 185
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->show()V

    .line 187
    :cond_4
    return-void

    .line 150
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->dismiss()V

    .line 153
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->tvWirelessCharge:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
