.class public Lcom/android/systemui/statusbar/pma/AccountExitDialog;
.super Landroid/app/AlertDialog;
.source "AccountExitDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/pma/AccountExitDialog$ExitDialogClickLister;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private btnNo:Landroid/widget/TextView;

.field private btnYes:Landroid/widget/TextView;

.field private dialogContent:Landroid/widget/FrameLayout;

.field private isDay:Z

.field private lisenter:Lcom/android/systemui/statusbar/pma/AccountExitDialog$ExitDialogClickLister;

.field private mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private mContext:Landroid/content/Context;

.field private showHandler:Landroid/os/Handler;

.field private title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->isDay:Z

    .line 162
    new-instance v0, Lcom/android/systemui/statusbar/pma/AccountExitDialog$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/AccountExitDialog$1;-><init>(Lcom/android/systemui/statusbar/pma/AccountExitDialog;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->showHandler:Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->mContext:Landroid/content/Context;

    .line 73
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 74
    return-void
.end method

.method private initView()V
    .locals 3

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->setCanceledOnTouchOutside(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 103
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 104
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 106
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x328

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 107
    const/16 v2, 0x150

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 108
    const/16 v2, 0x31

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 109
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 110
    const/16 v2, 0x138

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 111
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 112
    return-void
.end method

.method private setViewColor(Z)V
    .locals 4
    .param p1, "isDay"    # Z

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->title:Landroid/widget/TextView;

    const v1, -0x4b4642

    const v2, -0xc7c5c2

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->btnNo:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->btnYes:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/4 v1, -0x1

    goto :goto_1

    :cond_2
    const v1, -0xd7d7d2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->btnYes:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const v1, 0x7f0800f0

    goto :goto_2

    :cond_3
    const v1, 0x7f0800f1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->btnNo:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    const v1, 0x7f0800ee

    goto :goto_3

    :cond_4
    const v1, 0x7f0800ef

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->dialogContent:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_5

    const v1, 0x7f0800e1

    goto :goto_4

    :cond_5
    const v1, 0x7f0800e2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 98
    return-void
.end method


# virtual methods
.method public changeTheme(I)V
    .locals 1
    .param p1, "value"    # I

    .line 115
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 116
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->isDay:Z

    goto :goto_0

    .line 118
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->isDay:Z

    .line 120
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->isDay:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->setViewColor(Z)V

    .line 121
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->showHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00a8

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a00ab

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    const-string v0, "AccountExitDialog"

    const-string v1, "click btn_yes"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->setDialogShow()V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->lisenter:Lcom/android/systemui/statusbar/pma/AccountExitDialog$ExitDialogClickLister;

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->lisenter:Lcom/android/systemui/statusbar/pma/AccountExitDialog$ExitDialogClickLister;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pma/AccountExitDialog$ExitDialogClickLister;->ensureExitUserAccount()V

    goto :goto_0

    .line 137
    :cond_1
    const-string v0, "AccountExitDialog"

    const-string v1, "click btn_no"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->setDialogShow()V

    .line 139
    nop

    .line 148
    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 78
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f0d0147

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->setContentView(I)V

    .line 80
    const v0, 0x7f0a00a8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->btnNo:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f0a00ab

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->btnYes:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0a04e3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->title:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f0a0516

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->dialogContent:Landroid/widget/FrameLayout;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->btnNo:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$70rFnIgsklVw6B27gAGltUEaNCg;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$70rFnIgsklVw6B27gAGltUEaNCg;-><init>(Lcom/android/systemui/statusbar/pma/AccountExitDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->btnYes:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$70rFnIgsklVw6B27gAGltUEaNCg;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$70rFnIgsklVw6B27gAGltUEaNCg;-><init>(Lcom/android/systemui/statusbar/pma/AccountExitDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->isDay:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->setViewColor(Z)V

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->initView()V

    .line 89
    return-void
.end method

.method public onLanguageChange(I)V
    .locals 3
    .param p1, "language"    # I

    .line 126
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "AccountExitDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLanguageChange , language = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isDay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->isDay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 185
    const-string v0, "AccountExitDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent: x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " y "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, -0x3ee00000    # -10.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const v2, 0x44914000    # 1162.0f

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const v1, 0x443a8000    # 746.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->btnNo:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->playSoundEffect(I)V

    .line 191
    :cond_1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setDialogShow()V
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->dismiss()V

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->show()V

    .line 156
    :goto_0
    return-void
.end method

.method public setExitDialogClickLister(Lcom/android/systemui/statusbar/pma/AccountExitDialog$ExitDialogClickLister;)V
    .locals 0
    .param p1, "lisenter"    # Lcom/android/systemui/statusbar/pma/AccountExitDialog$ExitDialogClickLister;

    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->lisenter:Lcom/android/systemui/statusbar/pma/AccountExitDialog$ExitDialogClickLister;

    .line 62
    return-void
.end method
