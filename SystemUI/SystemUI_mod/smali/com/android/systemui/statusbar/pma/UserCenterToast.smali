.class public Lcom/android/systemui/statusbar/pma/UserCenterToast;
.super Landroid/app/AlertDialog;
.source "UserCenterToast.java"

# interfaces
.implements Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private dialogContent:Landroid/widget/FrameLayout;

.field private isDay:Z

.field private mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private mContext:Landroid/content/Context;

.field private showHandler:Landroid/os/Handler;

.field private title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/UserCenterToast;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterToast;->isDay:Z

    .line 156
    new-instance v0, Lcom/android/systemui/statusbar/pma/UserCenterToast$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/UserCenterToast$1;-><init>(Lcom/android/systemui/statusbar/pma/UserCenterToast;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterToast;->showHandler:Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/UserCenterToast;->mContext:Landroid/content/Context;

    .line 64
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterToast;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 65
    return-void
.end method

.method private initView()V
    .locals 3

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterToast;->setCanceledOnTouchOutside(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/UserCenterToast;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 92
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x7e4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 93
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 95
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x1f9

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 96
    const/16 v2, 0x62

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 97
    const/16 v2, 0x31

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 98
    const/16 v2, 0x4b

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 99
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 101
    return-void
.end method

.method private isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 117
    .local v0, "dialogBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/UserCenterToast;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 118
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

.method private setViewColor(Z)V
    .locals 2
    .param p1, "isDay"    # Z

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterToast;->title:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v1, -0xc7c5c3

    goto :goto_0

    :cond_0
    const v1, -0x4b4642

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterToast;->dialogContent:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    const v1, 0x7f080640

    goto :goto_1

    :cond_1
    const v1, 0x7f080641

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 87
    return-void
.end method


# virtual methods
.method public changeTheme(I)V
    .locals 1
    .param p1, "value"    # I

    .line 122
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 123
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterToast;->isDay:Z

    goto :goto_0

    .line 125
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterToast;->isDay:Z

    .line 127
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterToast;->isDay:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterToast;->setViewColor(Z)V

    .line 128
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/UserCenterToast;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/pma/UserCenterToast;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 107
    .local v0, "isOutside":Z
    if-eqz v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterToast;->showHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/UserCenterToast;->dismiss()V

    .line 112
    .end local v0    # "isOutside":Z
    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 75
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v0, 0x7f0d0143

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterToast;->setContentView(I)V

    .line 77
    const v0, 0x7f0a04e3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterToast;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterToast;->title:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0a0504

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterToast;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterToast;->dialogContent:Landroid/widget/FrameLayout;

    .line 80
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterToast;->isDay:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterToast;->setViewColor(Z)V

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/UserCenterToast;->initView()V

    .line 82
    return-void
.end method

.method public onLanguageChange(I)V
    .locals 3
    .param p1, "language"    # I

    .line 133
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/UserCenterToast;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "AccountExitDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLanguageChange , language = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isDay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterToast;->isDay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    return-void
.end method

.method public setDialogShow()V
    .locals 4

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/UserCenterToast;->isShowing()Z

    move-result v0

    const-wide/16 v1, 0x2710

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterToast;->showHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 141
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 142
    .local v0, "message":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 143
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterToast;->showHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 144
    .end local v0    # "message":Landroid/os/Message;
    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/UserCenterToast;->show()V

    .line 146
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 147
    .restart local v0    # "message":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 148
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterToast;->showHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 150
    .end local v0    # "message":Landroid/os/Message;
    :goto_0
    return-void
.end method
