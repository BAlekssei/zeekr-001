.class public Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;
.super Landroid/app/AlertDialog;
.source "DvrUserAgreementDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog$OnConfirmedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private btnNo:Landroid/widget/TextView;

.field private btnYes:Landroid/widget/TextView;

.field private dialogContent:Landroid/widget/LinearLayout;

.field private isDay:Z

.field private mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private mConfirmedListener:Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog$OnConfirmedListener;

.field private mContext:Landroid/content/Context;

.field private title:Landroid/widget/TextView;

.field private tvContent:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->isDay:Z

    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->mContext:Landroid/content/Context;

    .line 39
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 40
    return-void
.end method

.method private initView()V
    .locals 3

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->setCanceledOnTouchOutside(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 72
    .local v1, "window":Landroid/view/Window;
    const/16 v2, 0x7e0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 73
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 75
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x508

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 76
    const/16 v2, 0x2a8

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 77
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 78
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 79
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 80
    return-void
.end method

.method private setViewColor(Z)V
    .locals 4
    .param p1, "isDay"    # Z

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->title:Landroid/widget/TextView;

    const v1, -0x4b4642

    const v2, -0xc7c5c3

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->tvContent:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->btnNo:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->btnYes:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const/4 v1, -0x1

    goto :goto_2

    :cond_3
    const v1, -0xd7d7d2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->btnNo:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    const v1, 0x7f0803e8

    goto :goto_3

    :cond_4
    const v1, 0x7f0803e9

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->btnYes:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    const v1, 0x7f0803e5

    goto :goto_4

    :cond_5
    const v1, 0x7f0803e6

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->dialogContent:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    const v1, 0x7f0803e7

    goto :goto_5

    :cond_6
    const v1, 0x7f0803ea

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 67
    return-void
.end method


# virtual methods
.method public changeTheme(I)V
    .locals 1
    .param p1, "value"    # I

    .line 83
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 84
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->isDay:Z

    goto :goto_0

    .line 86
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->isDay:Z

    .line 88
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->isDay:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->setViewColor(Z)V

    .line 89
    return-void
.end method

.method public getIsShowing()Z
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00a8

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a00ab

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    const-string v0, "DvrPopupWindow"

    const-string v1, "click btn_yes"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v0, "persist.dvr.agree"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->mConfirmedListener:Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog$OnConfirmedListener;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->mConfirmedListener:Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog$OnConfirmedListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog$OnConfirmedListener;->onConfirmed()V

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->setDialogShow()V

    goto :goto_0

    .line 103
    :cond_2
    const-string v0, "DvrPopupWindow"

    const-string v1, "click btn_no"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v0, "persist.dvr.agree"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->setDialogShow()V

    .line 106
    nop

    .line 116
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 44
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f0d010c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->setContentView(I)V

    .line 46
    const v0, 0x7f0a00a8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->btnNo:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0a00ab

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->btnYes:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0a04e3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->title:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0a04b8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->tvContent:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0a013a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->dialogContent:Landroid/widget/LinearLayout;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->btnNo:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$e-WDCxOwKQjCh9DSvoZSQ_X6ORE;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$e-WDCxOwKQjCh9DSvoZSQ_X6ORE;-><init>(Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->btnYes:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$e-WDCxOwKQjCh9DSvoZSQ_X6ORE;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$e-WDCxOwKQjCh9DSvoZSQ_X6ORE;-><init>(Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->isDay:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->setViewColor(Z)V

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->initView()V

    .line 56
    return-void
.end method

.method public onLanguageChange(I)V
    .locals 3
    .param p1, "language"    # I

    .line 94
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "DvrPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLanguageChange , language = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isDay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->isDay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 133
    const-string v0, "DvrPopupWindow"

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

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v2, 0x44a10000    # 1288.0f

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/high16 v1, 0x442a0000    # 680.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->btnNo:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->playSoundEffect(I)V

    .line 139
    :cond_1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setDialogShow()V
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->dismiss()V

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->show()V

    .line 124
    :goto_0
    return-void
.end method

.method public setOnConfirmedListener(Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog$OnConfirmedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog$OnConfirmedListener;

    .line 143
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->mConfirmedListener:Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog$OnConfirmedListener;

    .line 144
    return-void
.end method
