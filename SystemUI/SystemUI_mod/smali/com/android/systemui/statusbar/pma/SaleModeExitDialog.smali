.class public Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;
.super Landroid/app/AlertDialog;
.source "SaleModeExitDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private btnNo:Landroid/widget/TextView;

.field private btnYes:Landroid/widget/TextView;

.field private dialogContent:Landroid/widget/FrameLayout;

.field private isDay:Z

.field private mContext:Landroid/content/Context;

.field private note:Landroid/widget/TextView;

.field private showHandler:Landroid/os/Handler;

.field private title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->isDay:Z

    .line 144
    new-instance v0, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog$1;-><init>(Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->showHandler:Landroid/os/Handler;

    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method private initView()V
    .locals 3

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->setCanceledOnTouchOutside(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 96
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x7f6

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 97
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 99
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x480

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 100
    const/16 v2, 0x2e0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 101
    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 102
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 103
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 104
    return-void
.end method

.method private setViewColor(Z)V
    .locals 4
    .param p1, "isDay"    # Z

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->title:Landroid/widget/TextView;

    const/4 v1, -0x1

    const/high16 v2, -0x1000000

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->note:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->btnNo:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const v1, -0xd1d1d2

    goto :goto_1

    :cond_2
    const v1, -0x333334

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->btnYes:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->btnNo:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const v1, 0x7f08014e

    goto :goto_2

    :cond_3
    const v1, 0x7f08014f

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->btnYes:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    const v1, 0x7f080150

    goto :goto_3

    :cond_4
    const v1, 0x7f080151

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->dialogContent:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_5

    const v1, 0x7f0800e1

    goto :goto_4

    :cond_5
    const v1, 0x7f0800e2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 91
    return-void
.end method


# virtual methods
.method public changeTheme(I)V
    .locals 1
    .param p1, "value"    # I

    .line 107
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 108
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->isDay:Z

    goto :goto_0

    .line 110
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->isDay:Z

    .line 112
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->isDay:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->setViewColor(Z)V

    .line 113
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->showHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00a8

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a00ab

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    const-string v0, "SaleModeExitDialog"

    const-string v1, "click ACTION_EXIT_OTA_PRE_SALE_STATE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yfve.action.exit.premode"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x11000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->setDialogShow()V

    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->setDialogShow()V

    .line 121
    nop

    .line 130
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 69
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f0d0133

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->setContentView(I)V

    .line 71
    const v0, 0x7f0a00a8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->btnNo:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f0a00ab

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->btnYes:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0a04e3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->title:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f0a04cb

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->note:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0a03cd

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->dialogContent:Landroid/widget/FrameLayout;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->btnNo:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$WPRCE8E2UTJqjR8gKbsiCgI1OOc;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$WPRCE8E2UTJqjR8gKbsiCgI1OOc;-><init>(Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->btnYes:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$WPRCE8E2UTJqjR8gKbsiCgI1OOc;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$WPRCE8E2UTJqjR8gKbsiCgI1OOc;-><init>(Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->isDay:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->setViewColor(Z)V

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->initView()V

    .line 81
    return-void
.end method

.method public setDialogShow()V
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->dismiss()V

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->show()V

    .line 138
    :goto_0
    return-void
.end method
