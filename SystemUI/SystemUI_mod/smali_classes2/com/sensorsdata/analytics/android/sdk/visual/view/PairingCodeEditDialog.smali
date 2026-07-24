.class public Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;
.super Landroid/app/Dialog;
.source "PairingCodeEditDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.PairingCodeEditDialog"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;

    .line 36
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dpValue"    # F

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 150
    .local v0, "scale":F
    mul-float v1, p2, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private isActivityFinishingOrDestroyed(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 137
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 138
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const-string v1, "SA.PairingCodeEditDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity is finish,name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v1, 0x1

    return v1

    .line 142
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 143
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    return v1

    .line 145
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isLiving()Z
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 127
    return v1

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->isActivityFinishingOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    return v1

    .line 133
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 111
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->isActivityFinishingOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "SA.PairingCodeEditDialog"

    const-string v1, "Activity is finish"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    :try_start_0
    const-string v0, "SA.PairingCodeEditDialog"

    const-string v1, "isShowing() == true, dismiss"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 123
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 48
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$layout;->sensors_analytics_verification_code:I

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 51
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 53
    .local v1, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x43af0000    # 350.0f

    invoke-direct {p0, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 55
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 56
    .local v2, "bg":Landroid/graphics/drawable/GradientDrawable;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 57
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 58
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-direct {p0, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->dip2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 59
    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 62
    .end local v1    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "bg":Landroid/graphics/drawable/GradientDrawable;
    :cond_0
    sget v1, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_pairing_code:I

    invoke-virtual {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;

    .line 63
    .local v1, "pairingCodeEditText":Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog$1;

    invoke-direct {v2, p0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;)V

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->setOnPairingCodeChangedListener(Lcom/sensorsdata/analytics/android/sdk/visual/view/IPairingCodeInterface$OnPairingCodeChangedListener;)V

    .line 97
    return-void
.end method

.method public show()V
    .locals 3

    .line 101
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->isLiving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const-string v0, "SA.PairingCodeEditDialog"

    const-string v1, "Activity is finish"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_0
    const-string v0, "SA.PairingCodeEditDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 107
    :goto_0
    return-void
.end method
