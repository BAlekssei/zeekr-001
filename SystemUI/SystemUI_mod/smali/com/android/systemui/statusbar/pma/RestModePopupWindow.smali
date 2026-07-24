.class public Lcom/android/systemui/statusbar/pma/RestModePopupWindow;
.super Landroid/app/AlertDialog;
.source "RestModePopupWindow.java"

# interfaces
.implements Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;


# instance fields
.field private mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private mContext:Landroid/content/Context;

.field private mRestModePositionX:I

.field private restModeContent:Landroid/view/View;

.field private showHandler:Landroid/os/Handler;

.field private tvRestModeLeftTime:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->mRestModePositionX:I

    .line 121
    new-instance v0, Lcom/android/systemui/statusbar/pma/RestModePopupWindow$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow$1;-><init>(Lcom/android/systemui/statusbar/pma/RestModePopupWindow;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->showHandler:Landroid/os/Handler;

    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->mContext:Landroid/content/Context;

    .line 40
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 41
    return-void
.end method

.method private initView(Z)V
    .locals 3
    .param p1, "isFullScreen"    # Z

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->setCanceledOnTouchOutside(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 61
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 62
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    const v1, 0x7f1200c9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 64
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 65
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const v2, 0x800033

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 66
    const/16 v2, 0x1b0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 67
    const/16 v2, 0x9c

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 68
    iget v2, p0, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->mRestModePositionX:I

    add-int/lit16 v2, v2, -0x15e

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 69
    if-eqz p1, :cond_0

    const/16 v2, 0x50

    goto :goto_0

    :cond_0
    const/16 v2, 0x14

    :goto_0
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 71
    return-void
.end method


# virtual methods
.method public changeTheme(I)V
    .locals 2
    .param p1, "value"    # I

    .line 74
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->tvRestModeLeftTime:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->restModeContent:Landroid/view/View;

    const v1, 0x7f0805f2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->tvRestModeLeftTime:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->restModeContent:Landroid/view/View;

    const v1, 0x7f0805f5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 81
    :goto_0
    return-void
.end method

.method public getIsShowing()Z
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 45
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f0d0132

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->setContentView(I)V

    .line 47
    const v0, 0x7f0a04dc

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->tvRestModeLeftTime:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0a03af

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->restModeContent:Landroid/view/View;

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->initView(Z)V

    .line 50
    return-void
.end method

.method public setDialogShow()V
    .locals 4

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->isShowing()Z

    move-result v0

    const-wide/16 v1, 0x2710

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->showHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 106
    .local v0, "message":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 107
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->showHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 108
    .end local v0    # "message":Landroid/os/Message;
    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->show()V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->showHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 112
    .restart local v0    # "message":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 113
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->showHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 115
    .end local v0    # "message":Landroid/os/Message;
    :goto_0
    return-void
.end method

.method public setRestModeLeftTime(I)V
    .locals 5
    .param p1, "restModeLeftTime"    # I

    .line 93
    const-string v0, "RestModePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRestModeLeftTime restModeLeftTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/16 v0, 0xff

    if-eq p1, v0, :cond_0

    .line 95
    mul-int/lit8 v0, p1, 0x1e

    .line 96
    .local v0, "leftTime":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->tvRestModeLeftTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1104da

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1104d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .end local v0    # "leftTime":I
    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->tvRestModeLeftTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1104db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :goto_0
    return-void
.end method
