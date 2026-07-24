.class public Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;
.super Landroid/app/AlertDialog;
.source "UserChangePopupWindow.java"


# instance fields
.field private layoutChangeAccount:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private progressBar:Landroid/widget/ProgressBar;

.field private showHandler:Landroid/os/Handler;

.field private tvUserChange:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 102
    new-instance v0, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow$1;-><init>(Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->showHandler:Landroid/os/Handler;

    .line 45
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private initView()V
    .locals 3

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->setCanceledOnTouchOutside(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 61
    .local v1, "window":Landroid/view/Window;
    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 62
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 64
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x328

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 65
    const/16 v2, 0x178

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 66
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 67
    return-void
.end method

.method private isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 118
    .local v0, "dialogBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 119
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
    .locals 3
    .param p1, "isDay"    # I

    .line 70
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->layoutChangeAccount:Landroid/widget/LinearLayout;

    const v1, 0x7f080635

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->progressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0100a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->progressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->tvUserChange:Landroid/widget/TextView;

    const v1, -0xc7c5c3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->layoutChangeAccount:Landroid/widget/LinearLayout;

    const v1, 0x7f080636

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->progressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0100a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->progressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->tvUserChange:Landroid/widget/TextView;

    const v1, -0x1e1c1b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    :goto_0
    return-void
.end method

.method public getIsShowing()Z
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 50
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f0d0144

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->setContentView(I)V

    .line 52
    const v0, 0x7f0a0261

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->layoutChangeAccount:Landroid/widget/LinearLayout;

    .line 53
    const v0, 0x7f0a0387

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->progressBar:Landroid/widget/ProgressBar;

    .line 54
    const v0, 0x7f0a04e9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->tvUserChange:Landroid/widget/TextView;

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->initView()V

    .line 56
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->tvUserChange:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->playSoundEffect(I)V

    .line 129
    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setDialogShow()V
    .locals 4

    .line 84
    const-string v0, "UserChangePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDialogShow isShowing(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 87
    .local v0, "message":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 88
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->showHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 89
    .end local v0    # "message":Landroid/os/Message;
    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->show()V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->showHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 92
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 93
    .restart local v0    # "message":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 94
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->showHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 96
    .end local v0    # "message":Landroid/os/Message;
    :goto_0
    return-void
.end method
