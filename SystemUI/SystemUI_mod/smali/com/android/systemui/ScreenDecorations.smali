.class public Lcom/android/systemui/ScreenDecorations;
.super Lcom/android/systemui/SystemUI;
.source "ScreenDecorations.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;,
        Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;,
        Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;,
        Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;
    }
.end annotation


# static fields
.field private static final DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z


# instance fields
.field private mBottomOverlay:Landroid/view/View;

.field private mCutoutBottom:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

.field private mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

.field private mDensity:F

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mHandler:Landroid/os/Handler;

.field private mOverlay:Landroid/view/View;

.field private mPendingRotationChange:Z

.field private mRotation:I

.field protected mRoundedDefault:I

.field protected mRoundedDefaultBottom:I

.field protected mRoundedDefaultTop:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 86
    const-string v0, "debug.screenshot_rounded_corners"

    .line 87
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/ScreenDecorations;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/ScreenDecorations;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/ScreenDecorations;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/ScreenDecorations;

    .line 80
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/ScreenDecorations;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/ScreenDecorations;

    .line 80
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/ScreenDecorations;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/ScreenDecorations;
    .param p1, "x1"    # Z

    .line 80
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/ScreenDecorations;

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/ScreenDecorations;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/ScreenDecorations;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutBottom:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    return-object v0
.end method

.method private getBottomLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .line 428
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 429
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "ScreenDecorOverlayBottom"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 430
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 434
    :cond_0
    const/16 v1, 0x55

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    .line 432
    :cond_1
    :goto_0
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 436
    :goto_1
    return-object v0
.end method

.method private hasRoundedCorners()Z
    .locals 1

    .line 353
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isLandscape(I)Z
    .locals 2
    .param p1, "rotation"    # I

    .line 759
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method public static synthetic lambda$IfAux2ksmJXT9o9i38WaSEQXJTQ(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->startOnScreenDecorationsThread()V

    return-void
.end method

.method public static synthetic lambda$aq1MVJyy_LkZ11q5t5cPVZOqbG0(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibilities()V

    return-void
.end method

.method public static synthetic lambda$onConfigurationChanged$1(Lcom/android/systemui/ScreenDecorations;)V
    .locals 2

    .line 244
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 245
    .local v0, "oldRotation":I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    .line 246
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    .line 247
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerRadii()V

    .line 249
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-nez v1, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 257
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    .line 259
    :cond_1
    return-void
.end method

.method public static synthetic lambda$onTuningChanged$2(Lcom/android/systemui/ScreenDecorations;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 447
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 448
    :cond_0
    const-string/jumbo v0, "sysui_rounded_size"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 449
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    .line 450
    .local v0, "size":I
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    .line 451
    .local v1, "sizeTop":I
    iget v2, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    .line 452
    .local v2, "sizeBottom":I
    if-eqz p2, :cond_1

    .line 454
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/ScreenDecorations;->mDensity:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 456
    goto :goto_0

    .line 455
    :catch_0
    move-exception v3

    .line 459
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 460
    move v1, v0

    .line 462
    :cond_2
    if-nez v2, :cond_3

    .line 463
    move v2, v0

    .line 466
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    const v4, 0x7f0a0291

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    .line 467
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    const v5, 0x7f0a03b4

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    .line 468
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    .line 469
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    .line 471
    .end local v0    # "size":I
    .end local v1    # "sizeTop":I
    .end local v2    # "sizeBottom":I
    :cond_4
    return-void
.end method

.method public static synthetic lambda$setupDecorations$0(Lcom/android/systemui/ScreenDecorations;)V
    .locals 2

    .line 198
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v1, "sysui_rounded_size"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method private setSize(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pixelSize"    # I

    .line 475
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 476
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 477
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 478
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    return-void
.end method

.method private setupDecorations()V
    .locals 7

    .line 171
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 172
    const/4 v1, 0x0

    const v2, 0x7f0d0195

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    .line 173
    new-instance v0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/systemui/-$$Lambda$ScreenDecorations$aq1MVJyy_LkZ11q5t5cPVZOqbG0;

    invoke-direct {v4, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$aq1MVJyy_LkZ11q5t5cPVZOqbG0;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    const/4 v5, 0x1

    invoke-direct {v0, v3, v5, v4, p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;-><init>(Landroid/content/Context;ZLjava/lang/Runnable;Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    .line 175
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 177
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    .line 178
    new-instance v0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/-$$Lambda$ScreenDecorations$aq1MVJyy_LkZ11q5t5cPVZOqbG0;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$aq1MVJyy_LkZ11q5t5cPVZOqbG0;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;-><init>(Landroid/content/Context;ZLjava/lang/Runnable;Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutBottom:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    .line 180
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutBottom:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 188
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateViews()V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->getBottomLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 194
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 195
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/systemui/ScreenDecorations;->mDensity:F

    .line 197
    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/-$$Lambda$ScreenDecorations$ItnW8ZEHeCqCHue6f8abcXewifU;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$ItnW8ZEHeCqCHue6f8abcXewifU;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    new-instance v1, Lcom/android/systemui/ScreenDecorations$2;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    const-string v6, "accessibility_display_inversion_enabled"

    invoke-direct {v1, p0, v2, v4, v6}, Lcom/android/systemui/ScreenDecorations$2;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 215
    .local v1, "setting":Lcom/android/systemui/qs/SecureSetting;
    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 216
    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/SecureSetting;->onChange(Z)V

    .line 218
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/ScreenDecorations$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/ScreenDecorations$3;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 235
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 237
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 239
    return-void
.end method

.method private setupStatusBarPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .line 391
    return-void
.end method

.method private setupStatusBarPaddingIfNeeded()V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070409

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 371
    .local v0, "padding":I
    if-eqz v0, :cond_0

    .line 372
    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->setupStatusBarPadding(I)V

    .line 375
    :cond_0
    return-void
.end method

.method private shouldDrawCutout()Z
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static shouldDrawCutout(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 361
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private startOnScreenDecorationsThread()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 121
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerRadii()V

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hasRoundedCorners()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    .line 127
    :cond_1
    new-instance v0, Lcom/android/systemui/ScreenDecorations$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/ScreenDecorations$1;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 164
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 166
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 167
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    .line 168
    return-void
.end method

.method private updateLayoutParams()V
    .locals 3

    .line 440
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->getBottomLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    return-void
.end method

.method private updateOrientation()V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "must call on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 264
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 266
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    if-eqz v0, :cond_1

    .line 267
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result v0

    .line 270
    .local v0, "newRotation":I
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    if-eq v0, v1, :cond_2

    .line 271
    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 273
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 274
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    .line 275
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateViews()V

    .line 278
    :cond_2
    return-void
.end method

.method private updateRoundedCornerRadii()V
    .locals 6

    .line 281
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07040a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 283
    .local v0, "newRoundedDefault":I
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07040c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 285
    .local v1, "newRoundedDefaultTop":I
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07040b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 288
    .local v2, "newRoundedDefaultBottom":I
    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    if-ne v3, v0, :cond_1

    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    if-ne v3, v2, :cond_1

    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    if-eq v3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 292
    .local v3, "roundedCornersChanged":Z
    :goto_1
    if-eqz v3, :cond_2

    .line 293
    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    .line 294
    iput v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    .line 295
    iput v2, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    .line 296
    const-string/jumbo v4, "sysui_rounded_size"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/ScreenDecorations;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_2
    return-void
.end method

.method private updateView(Landroid/view/View;II)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "rotation"    # I

    .line 335
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 336
    int-to-float v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 337
    return-void
.end method

.method private updateViews()V
    .locals 14

    .line 301
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    const v1, 0x7f0a0291

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 302
    .local v0, "topLeft":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    const v3, 0x7f0a03b4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 303
    .local v2, "topRight":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 304
    .local v1, "bottomLeft":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 306
    .local v3, "bottomRight":Landroid/view/View;
    iget v4, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/16 v5, 0xb4

    const/16 v6, 0x55

    const/16 v7, 0x10e

    const/16 v8, 0x53

    const/16 v9, 0x5a

    const/16 v10, 0x35

    const/4 v11, 0x0

    const/16 v12, 0x33

    if-nez v4, :cond_0

    .line 307
    invoke-direct {p0, v0, v12, v11}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 308
    invoke-direct {p0, v2, v10, v9}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 309
    invoke-direct {p0, v1, v8, v7}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 310
    invoke-direct {p0, v3, v6, v5}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    goto :goto_0

    .line 311
    :cond_0
    iget v4, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v13, 0x1

    if-ne v4, v13, :cond_1

    .line 312
    invoke-direct {p0, v0, v12, v11}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 313
    invoke-direct {p0, v2, v8, v7}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 314
    invoke-direct {p0, v1, v10, v9}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 315
    invoke-direct {p0, v3, v6, v5}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    goto :goto_0

    .line 316
    :cond_1
    iget v4, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v13, 0x3

    if-ne v4, v13, :cond_2

    .line 317
    invoke-direct {p0, v0, v8, v7}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 318
    invoke-direct {p0, v2, v6, v5}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 319
    invoke-direct {p0, v1, v12, v11}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 320
    invoke-direct {p0, v3, v10, v9}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    goto :goto_0

    .line 321
    :cond_2
    iget v4, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v13, 0x2

    if-ne v4, v13, :cond_3

    .line 322
    invoke-direct {p0, v0, v6, v5}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 323
    invoke-direct {p0, v2, v10, v9}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 324
    invoke-direct {p0, v1, v8, v7}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 325
    invoke-direct {p0, v3, v12, v11}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 328
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget v5, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setRotation(I)V

    .line 329
    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutBottom:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget v5, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setRotation(I)V

    .line 331
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibilities()V

    .line 332
    return-void
.end method

.method private updateWindowVisibilities()V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibility(Landroid/view/View;)V

    .line 341
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibility(Landroid/view/View;)V

    .line 342
    return-void
.end method

.method private updateWindowVisibility(Landroid/view/View;)V
    .locals 3
    .param p1, "overlay"    # Landroid/view/View;

    .line 345
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f0a0124

    .line 346
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 347
    .local v0, "visibleForCutout":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hasRoundedCorners()Z

    move-result v2

    .line 348
    .local v2, "visibleForRoundedCorners":Z
    if-nez v0, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 349
    :cond_1
    const/16 v1, 0x8

    nop

    .line 348
    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 350
    return-void
.end method


# virtual methods
.method getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 395
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7e8

    const v4, 0x20800128

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 405
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 408
    sget-boolean v1, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    if-nez v1, :cond_0

    .line 409
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 412
    :cond_0
    const-string v1, "ScreenDecorOverlay"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 413
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 417
    :cond_1
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    .line 415
    :cond_2
    :goto_0
    const/16 v1, 0x55

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 419
    :goto_1
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 420
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-direct {p0, v1}, Lcom/android/systemui/ScreenDecorations;->isLandscape(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 421
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 422
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 424
    :cond_3
    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 243
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$s7DjNkOkUJ7fiS8MVJdfJI0DZDc;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$s7DjNkOkUJ7fiS8MVJdfJI0DZDc;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 446
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$kEfyTU3ITFOJcyBiuNXOBVEPPYk;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$kEfyTU3ITFOJcyBiuNXOBVEPPYk;-><init>(Lcom/android/systemui/ScreenDecorations;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 472
    return-void
.end method

.method public start()V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->startHandlerThread()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$IfAux2ksmJXT9o9i38WaSEQXJTQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$IfAux2ksmJXT9o9i38WaSEQXJTQ;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupStatusBarPaddingIfNeeded()V

    .line 110
    return-void
.end method

.method startHandlerThread()Landroid/os/Handler;
    .locals 2

    .line 114
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ScreenDecorations"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 116
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    return-object v1
.end method
