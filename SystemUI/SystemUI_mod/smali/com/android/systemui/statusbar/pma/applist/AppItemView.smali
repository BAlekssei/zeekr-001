.class public Lcom/android/systemui/statusbar/pma/applist/AppItemView;
.super Landroid/widget/FrameLayout;
.source "AppItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private H:Landroid/os/Handler;

.field private animationBig:Landroid/animation/ValueAnimator;

.field private animationDown:Landroid/animation/ValueAnimator;

.field private animationsmall:Landroid/animation/ValueAnimator;

.field private appDelete:Landroid/widget/TextView;

.field private appIcon:Landroid/widget/FrameLayout;

.field private appIconBitmap:Landroid/graphics/Bitmap;

.field appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

.field private appName:Landroid/widget/TextView;

.field private appPStatus:Landroid/widget/ImageView;

.field private background:Landroid/widget/FrameLayout;

.field private clickFunction:I

.field downLoading:F

.field private downloadingIcon:Z

.field private forcedUpdate:Z

.field private imageView:Landroid/widget/ImageView;

.field private imgPrepareDownload:Landroid/widget/ImageView;

.field private isDay:Z

.field private isPrepare:Z

.field private label:Ljava/lang/String;

.field private logVerboseCounter:I

.field private mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

.field private mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private mContext:Landroid/content/Context;

.field private mDownLoadAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private newApp:Landroid/widget/ImageView;

.field pState:I

.field private packageName:Ljava/lang/String;

.field private taskId:Ljava/lang/String;

.field uninstallable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 124
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->label:Ljava/lang/String;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->taskId:Ljava/lang/String;

    .line 116
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->pState:I

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->uninstallable:Z

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->forcedUpdate:Z

    .line 119
    iput v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    .line 121
    const v1, 0x40066666    # 2.1f

    iput v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    .line 241
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downloadingIcon:Z

    .line 713
    new-instance v1, Lcom/android/systemui/statusbar/pma/applist/AppItemView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView$3;-><init>(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 722
    new-instance v1, Lcom/android/systemui/statusbar/pma/applist/AppItemView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView$4;-><init>(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mDownLoadAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1073
    new-instance v1, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;-><init>(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->H:Landroid/os/Handler;

    .line 1108
    iput v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->logVerboseCounter:I

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->label:Ljava/lang/String;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->taskId:Ljava/lang/String;

    .line 116
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->pState:I

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->uninstallable:Z

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->forcedUpdate:Z

    .line 119
    iput v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    .line 121
    const v1, 0x40066666    # 2.1f

    iput v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    .line 241
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downloadingIcon:Z

    .line 713
    new-instance v1, Lcom/android/systemui/statusbar/pma/applist/AppItemView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView$3;-><init>(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 722
    new-instance v1, Lcom/android/systemui/statusbar/pma/applist/AppItemView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView$4;-><init>(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mDownLoadAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1073
    new-instance v1, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;-><init>(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->H:Landroid/os/Handler;

    .line 1108
    iput v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->logVerboseCounter:I

    .line 129
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mContext:Landroid/content/Context;

    .line 130
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->addCallback(Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->sizeAnimationInit()V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 137
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->label:Ljava/lang/String;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->taskId:Ljava/lang/String;

    .line 116
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->pState:I

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->uninstallable:Z

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->forcedUpdate:Z

    .line 119
    iput v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    .line 121
    const v1, 0x40066666    # 2.1f

    iput v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    .line 241
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downloadingIcon:Z

    .line 713
    new-instance v1, Lcom/android/systemui/statusbar/pma/applist/AppItemView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView$3;-><init>(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 722
    new-instance v1, Lcom/android/systemui/statusbar/pma/applist/AppItemView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView$4;-><init>(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mDownLoadAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1073
    new-instance v1, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;-><init>(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->H:Landroid/os/Handler;

    .line 1108
    iput v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->logVerboseCounter:I

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->H:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appIcon:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appIconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/pma/applist/AppItemView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/applist/AppItemView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appIconBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    .line 56
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downloadingIcon:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/pma/applist/AppItemView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/applist/AppItemView;
    .param p1, "x1"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downloadingIcon:Z

    return p1
.end method

.method private getIconFromPackageName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1, "activity"    # Ljava/lang/String;

    .line 300
    const/4 v0, 0x0

    .line 302
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 303
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 304
    .local v2, "otherAppCtx":Landroid/content/Context;
    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    .line 305
    .local v4, "displayMetrics":[I
    array-length v5, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v6, v0

    move v0, v3

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-ge v0, v5, :cond_3

    :try_start_1
    aget v7, v4, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 307
    .local v7, "displayMetric":I
    :try_start_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    invoke-direct {v9, v10, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ActivityInfo;->icon:I

    .line 308
    .local v8, "icon":I
    if-eqz v8, :cond_0

    .line 309
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8, v7}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    move-object v6, v9

    .line 311
    :cond_0
    if-nez v6, :cond_1

    .line 312
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v9, v10, v7}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v9

    .line 314
    :cond_1
    if-eqz v6, :cond_2

    .line 315
    goto :goto_2

    .line 319
    .end local v8    # "icon":I
    :cond_2
    goto :goto_1

    .line 317
    :catch_0
    move-exception v8

    .line 318
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v9, "AppItemView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getIconFromPackageName: error"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 305
    .end local v7    # "displayMetric":I
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .end local v2    # "otherAppCtx":Landroid/content/Context;
    .end local v4    # "displayMetrics":[I
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    .line 321
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v2    # "otherAppCtx":Landroid/content/Context;
    .restart local v4    # "displayMetrics":[I
    :cond_3
    :goto_2
    move-object v0, v6

    if-nez v0, :cond_5

    .line 322
    :try_start_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    if-eqz v3, :cond_4

    .line 323
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    .line 325
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v3

    .line 330
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .end local v2    # "otherAppCtx":Landroid/content/Context;
    .end local v4    # "displayMetrics":[I
    :cond_5
    goto :goto_4

    .line 328
    :catch_2
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 331
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    if-eqz v0, :cond_7

    .line 332
    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 333
    .local v1, "b":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_6

    .line 334
    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appIconBitmap:Landroid/graphics/Bitmap;

    .line 336
    .end local v1    # "b":Landroid/graphics/Bitmap;
    :cond_6
    goto :goto_5

    .line 337
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getIconBytes()[B

    move-result-object v1

    if-eqz v1, :cond_8

    .line 338
    const-string v1, "AppItemView"

    const-string v2, " getIconBytes != null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getIconBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->byteToBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 340
    .restart local v1    # "b":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_8

    .line 341
    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appIconBitmap:Landroid/graphics/Bitmap;

    .line 342
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v0, v2

    .line 346
    .end local v1    # "b":Landroid/graphics/Bitmap;
    :cond_8
    :goto_5
    return-object v0

    nop

    :array_0
    .array-data 4
        0x280
        0x1e0
        0x140
        0xf0
        0xd5
        0xa0
        0x78
    .end array-data
.end method

.method private isPrepare()Z
    .locals 5

    .line 563
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getInstall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 564
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 565
    .local v1, "v":I
    const-string v2, "AppItemView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPrepare: versionCode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    return v0

    .line 570
    .end local v1    # "v":I
    :cond_2
    goto :goto_2

    .line 568
    :catch_0
    move-exception v1

    .line 569
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 571
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return v0
.end method

.method private isSystemApp()Z
    .locals 3

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 232
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 233
    return v2

    .line 237
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 238
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private openHiCarAppList(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)V
    .locals 5
    .param p1, "appInfo"    # Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    .line 685
    if-nez p1, :cond_0

    .line 686
    return-void

    .line 687
    :cond_0
    const-string v0, "AppItemView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openHiCarAppList appInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 690
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 691
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "type"

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v1, "packageName"

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 694
    .local v1, "mHiCarAppListResolver":Landroid/content/ContentResolver;
    const-string v2, "content://com.zeekrlife.connect.core.HiCarAppListPropertiesProvider/query/all"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "startHiCarApp"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 695
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;->hideAppList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "mHiCarAppListResolver":Landroid/content/ContentResolver;
    :cond_1
    goto :goto_0

    .line 697
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 700
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private pauseDownload()V
    .locals 4

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->taskId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->setAppTaskId()V

    .line 496
    :cond_0
    invoke-static {}, Lcom/zeekrlife/market/update/ZKMarketManager;->getInstance()Lcom/zeekrlife/market/update/ZKMarketManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zeekrlife/market/update/ZKMarketManager;->pauseDownload(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    goto :goto_0

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppItemView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseDownload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private resumeDownload()V
    .locals 4

    .line 505
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->taskId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->setAppTaskId()V

    .line 508
    :cond_0
    invoke-static {}, Lcom/zeekrlife/market/update/ZKMarketManager;->getInstance()Lcom/zeekrlife/market/update/ZKMarketManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zeekrlife/market/update/ZKMarketManager;->resumeDownload(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    goto :goto_0

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppItemView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resumeDownload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setNormalIconBitmap()V
    .locals 2

    .line 1053
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->endAnimationDown()V

    .line 1054
    const v0, 0x40066666    # 2.1f

    iput v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    .line 1055
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imgPrepareDownload:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1057
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1058
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1060
    :cond_0
    return-void
.end method

.method private sizeAnimationInit()V
    .locals 6

    .line 736
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationBig:Landroid/animation/ValueAnimator;

    .line 737
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationBig:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 738
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationBig:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 739
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationBig:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 740
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationBig:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 742
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationsmall:Landroid/animation/ValueAnimator;

    .line 743
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationsmall:Landroid/animation/ValueAnimator;

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 744
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationsmall:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 745
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationsmall:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 746
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationsmall:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 748
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationDown:Landroid/animation/ValueAnimator;

    .line 749
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationDown:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 750
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationDown:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 751
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationDown:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mDownLoadAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 752
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationDown:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/pma/applist/AppItemView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView$5;-><init>(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 767
    return-void

    nop

    :array_0
    .array-data 4
        0x68
        0x78
    .end array-data

    :array_1
    .array-data 4
        0x78
        0x68
    .end array-data

    :array_2
    .array-data 4
        0x3c621965    # 0.0138f
        0x3f4872b0    # 0.783f
    .end array-data
.end method


# virtual methods
.method public checkStartup()I
    .locals 4

    .line 437
    :try_start_0
    invoke-static {}, Lcom/zeekr/sdk/policy/impl/PolicyProxy;->get()Lcom/zeekr/sdk/policy/impl/PolicyAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/policy/impl/PolicyAPI;->getAppPolicy()Lcom/zeekr/sdk/policy/ability/IAppPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/zeekr/sdk/policy/ability/IAppPolicy;->checkStartup(Ljava/lang/String;)Lcom/zeekr/sdk/policy/bean/AppPolicyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/policy/bean/AppPolicyInfo;->getCode()I

    move-result v0

    .line 438
    .local v0, "code":I
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 439
    const-string v1, "AppItemView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkStartup: code"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :cond_0
    return v0

    .line 442
    .end local v0    # "code":I
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppItemView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkStartup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x4

    return v0
.end method

.method public endAnimationDown()V
    .locals 1

    .line 770
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 773
    :cond_0
    return-void
.end method

.method public getClickFunction()I
    .locals 1

    .line 862
    iget v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    return v0
.end method

.method public getIconBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 854
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appIconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUninstallable()Z
    .locals 3

    .line 593
    const-string v0, "AppItemView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUninstallable: clickFunction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->uninstallable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 597
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->uninstallable:Z

    return v0

    .line 595
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWholeView()Landroid/view/View;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->background:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 616
    const-string v0, "AppItemView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: p "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->pState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " clickFunction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackApp(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->startAnimationSmall()V

    .line 619
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->checkStartup()I

    move-result v0

    .line 620
    .local v0, "code":I
    iget v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    packed-switch v1, :pswitch_data_0

    .line 652
    :pswitch_0
    const/4 v1, 0x1

    const/4 v2, 0x5

    if-ne v0, v1, :cond_1

    .line 653
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    if-eqz v1, :cond_0

    .line 654
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;->showToast(I)V

    goto :goto_0

    .line 639
    :pswitch_1
    invoke-static {}, Lcom/zeekrlife/market/update/ZKMarketManager;->getInstance()Lcom/zeekrlife/market/update/ZKMarketManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    new-instance v4, Lcom/android/systemui/statusbar/pma/applist/AppItemView$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView$1;-><init>(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/zeekrlife/market/update/ZKMarketManager;->checkAppUpdate(Landroid/content/Context;Ljava/lang/String;Lcom/zeekrlife/market/update/ZKMarketManager$AppCheckUpdateCallback;)V

    .line 649
    goto/16 :goto_2

    .line 624
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    if-eqz v1, :cond_6

    .line 625
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;->showToast(I)V

    goto :goto_2

    .line 634
    :pswitch_3
    invoke-static {}, Lcom/zeekrlife/market/update/ZKMarketManager;->getInstance()Lcom/zeekrlife/market/update/ZKMarketManager;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 635
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->resumeDownload()V

    goto :goto_2

    .line 629
    :pswitch_4
    invoke-static {}, Lcom/zeekrlife/market/update/ZKMarketManager;->getInstance()Lcom/zeekrlife/market/update/ZKMarketManager;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 630
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->pauseDownload()V

    goto :goto_2

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    if-ne v0, v2, :cond_3

    .line 658
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    if-eqz v1, :cond_2

    .line 659
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;->showToast(I)V

    .line 661
    :cond_2
    return-void

    .line 663
    :cond_3
    invoke-static {}, Lcom/zeekrlife/market/update/ZKMarketManager;->getInstance()Lcom/zeekrlife/market/update/ZKMarketManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    new-instance v4, Lcom/android/systemui/statusbar/pma/applist/AppItemView$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView$2;-><init>(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/zeekrlife/market/update/ZKMarketManager;->checkAppUpdate(Landroid/content/Context;Ljava/lang/String;Lcom/zeekrlife/market/update/ZKMarketManager$AppCheckUpdateCallback;)V

    .line 670
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    if-eqz v1, :cond_5

    .line 671
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getIconBytes()[B

    move-result-object v1

    if-eqz v1, :cond_4

    .line 672
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->openHiCarAppList(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)V

    goto :goto_1

    .line 674
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getActivity()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;->startActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->newApp:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 678
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->newApp:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 682
    :cond_6
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDayNightModeChange(I)V
    .locals 1
    .param p1, "dayNightMode"    # I

    .line 1064
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1065
    return-void

    .line 1067
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->isDay:Z

    .line 1068
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1069
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->isDay:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->setImageButtonResource(Z)V

    .line 1071
    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 142
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 143
    const-string v0, "AppItemView"

    const-string v1, "AppItemView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const v0, 0x7f0a01c8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    .line 145
    const v0, 0x7f0a0173

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appIcon:Landroid/widget/FrameLayout;

    .line 146
    const v0, 0x7f0a04a8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f0a04a7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appDelete:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f0a0052

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->background:Landroid/widget/FrameLayout;

    .line 149
    const v0, 0x7f0a04d4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appPStatus:Landroid/widget/ImageView;

    .line 150
    const v0, 0x7f0a01f0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->newApp:Landroid/widget/ImageView;

    .line 151
    const v0, 0x7f0a0205

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imgPrepareDownload:Landroid/widget/ImageView;

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->isDay:Z

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/pma/applist/-$$Lambda$qj8eY7mKJV34wFUMEZVtt0caGmQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/applist/-$$Lambda$qj8eY7mKJV34wFUMEZVtt0caGmQ;-><init>(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->onDayNightModeChange(I)V

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->pState()V

    .line 156
    return-void
.end method

.method public pState()V
    .locals 5

    .line 449
    const-string v0, "AppItemView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appPStatus:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 451
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    if-eqz v0, :cond_4

    .line 454
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->isHiCarApp()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appPStatus:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 456
    return-void

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getInstall()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;->isPState(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 459
    const-string v0, "AppItemView"

    const-string v1, "pState: VISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appPStatus:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 462
    :cond_3
    const-string v0, "AppItemView"

    const-string v2, "pState: INVISIBLE"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appPStatus:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 466
    :cond_4
    :goto_0
    return-void
.end method

.method public refresh(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "a"    # Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    .line 358
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 359
    const-string v0, "AppItemView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refresh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    .line 362
    const/4 v0, 0x0

    .line 363
    .local v0, "activity":Ljava/lang/String;
    const-string v1, ""

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->taskId:Ljava/lang/String;

    .line 365
    const-string v1, "com.ecarx.multimedia"

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 367
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 369
    .local v1, "it":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 370
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 371
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setActivity(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .end local v1    # "it":Landroid/content/Intent;
    :cond_1
    goto :goto_0

    .line 373
    :catch_0
    move-exception v1

    .line 374
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 375
    const-string v2, "AppItemView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refresh: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->isSystemApp()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->uninstallable:Z

    .line 381
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    .line 382
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->label:Ljava/lang/String;

    .line 384
    if-eqz v0, :cond_3

    :try_start_1
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 385
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->endAnimationDown()V

    .line 386
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->getIconFromPackageName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 391
    :catch_1
    move-exception v1

    goto :goto_2

    .line 388
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->endAnimationDown()V

    .line 389
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->getIconFromPackageName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 393
    :goto_1
    goto :goto_3

    .line 391
    :goto_2
    nop

    .line 392
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 394
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downloadingIcon:Z

    .line 396
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setInstall(Z)V

    .line 397
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setState(I)V

    .line 400
    :try_start_2
    invoke-static {}, Lcom/zeekrlife/market/update/ZKMarketManager;->getInstance()Lcom/zeekrlife/market/update/ZKMarketManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/zeekrlife/market/update/ZKMarketManager;->getAppTaskInfo(Ljava/lang/String;)Lcom/zeekrlife/market/update/AppTaskInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zeekrlife/market/update/AppTaskInfo;->isForcedUpdate()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->forcedUpdate:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 404
    goto :goto_4

    .line 401
    :catch_2
    move-exception v2

    .line 402
    .local v2, "e":Ljava/lang/Exception;
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->forcedUpdate:Z

    .line 403
    const-string v3, "AppItemView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refresh: p forcedUpdate uninstallable setAppTaskId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->isPrepare()Z

    move-result v2

    const v3, 0x40066666    # 2.1f

    if-eqz v2, :cond_4

    .line 407
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    .line 408
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->endAnimationDown()V

    .line 409
    iput v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    .line 410
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_8

    .line 411
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imgPrepareDownload:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 412
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appIconBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getColorFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 413
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 416
    :cond_4
    iput v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    .line 417
    iget v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_5

    .line 418
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->startAnimationInstallComplete()V

    goto :goto_5

    .line 419
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 420
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->startAnimationInstallComplete()V

    goto :goto_5

    .line 422
    :cond_6
    iput v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    .line 423
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    .line 424
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 427
    :cond_7
    :goto_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    .line 428
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    :cond_8
    :goto_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->pState()V

    .line 432
    return-object v0
.end method

.method public removeDownload(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 529
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->taskId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    const-string v0, "AppItemView"

    const-string/jumbo v1, "removeDownload taskId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->setAppTaskId()V

    .line 534
    :cond_0
    invoke-static {}, Lcom/zeekrlife/market/update/ZKMarketManager;->getInstance()Lcom/zeekrlife/market/update/ZKMarketManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zeekrlife/market/update/ZKMarketManager;->getAppTaskInfo(Ljava/lang/String;)Lcom/zeekrlife/market/update/AppTaskInfo;

    move-result-object v0

    .line 535
    .local v0, "a":Lcom/zeekrlife/market/update/AppTaskInfo;
    const-string v1, "AppItemView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeDownload pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/zeekrlife/market/update/AppTaskInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", taskId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->taskId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-static {}, Lcom/zeekrlife/market/update/ZKMarketManager;->getInstance()Lcom/zeekrlife/market/update/ZKMarketManager;

    move-result-object v1

    iget-object v2, v0, Lcom/zeekrlife/market/update/AppTaskInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/zeekrlife/market/update/ZKMarketManager;->removeDownload(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    .end local v0    # "a":Lcom/zeekrlife/market/update/AppTaskInfo;
    goto :goto_0

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppItemView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeDownload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public removeTask(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 545
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getInstall()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 546
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    if-eqz v1, :cond_2

    .line 547
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;->removeApp(Ljava/lang/String;)V

    .line 548
    return v0

    .line 550
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getInstall()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 551
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->setStateLabel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    const/4 v0, 0x1

    return v0

    .line 557
    :cond_2
    goto :goto_0

    .line 554
    :catch_0
    move-exception v1

    .line 555
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AppItemView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeDownload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public setApp(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)V
    .locals 7
    .param p1, "a"    # Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    .line 167
    const-string v0, "AppItemView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setApp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    .line 170
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setState(I)V

    .line 174
    :cond_0
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "vacancy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 185
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->label:Ljava/lang/String;

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->endAnimationDown()V

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getActivity()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->getIconFromPackageName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 192
    invoke-static {}, Lcom/zeekrlife/market/update/ZKMarketManager;->getInstance()Lcom/zeekrlife/market/update/ZKMarketManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/zeekrlife/market/update/ZKMarketManager;->getAppTaskInfo(Ljava/lang/String;)Lcom/zeekrlife/market/update/AppTaskInfo;

    move-result-object v0

    .line 193
    .local v0, "mAppTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    if-eqz v0, :cond_5

    .line 194
    invoke-virtual {v0}, Lcom/zeekrlife/market/update/AppTaskInfo;->getState()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setState(I)V

    .line 195
    invoke-virtual {v0}, Lcom/zeekrlife/market/update/AppTaskInfo;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_5

    invoke-virtual {v0}, Lcom/zeekrlife/market/update/AppTaskInfo;->getState()I

    move-result v2

    const/16 v4, 0xe

    if-ge v2, v4, :cond_5

    .line 196
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v2

    const v4, 0x3c621965    # 0.0138f

    if-eq v2, v3, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    goto :goto_0

    .line 199
    :cond_3
    iget-wide v2, v0, Lcom/zeekrlife/market/update/AppTaskInfo;->soFar:J

    long-to-double v2, v2

    iget-wide v5, v0, Lcom/zeekrlife/market/update/AppTaskInfo;->total:J

    long-to-double v5, v5

    div-double/2addr v2, v5

    double-to-float v2, v2

    const v3, 0x3f44ea4a    # 0.76919997f

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    iput v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    goto :goto_1

    .line 197
    :cond_4
    :goto_0
    iput v4, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    .line 201
    :goto_1
    invoke-virtual {v0}, Lcom/zeekrlife/market/update/AppTaskInfo;->getAppIcon()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "url":Ljava/lang/String;
    if-eqz v2, :cond_5

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 203
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setIcon(Ljava/lang/String;)V

    .line 204
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->H:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v0    # "mAppTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    .end local v2    # "url":Ljava/lang/String;
    :cond_5
    goto :goto_2

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AppItemView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPackageName ICON"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->setStateLabel(I)V

    .line 214
    :try_start_1
    invoke-static {}, Lcom/zeekrlife/market/update/ZKMarketManager;->getInstance()Lcom/zeekrlife/market/update/ZKMarketManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/zeekrlife/market/update/ZKMarketManager;->getAppTaskInfo(Ljava/lang/String;)Lcom/zeekrlife/market/update/AppTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekrlife/market/update/AppTaskInfo;->isForcedUpdate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->forcedUpdate:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 217
    goto :goto_3

    .line 215
    :catch_1
    move-exception v0

    .line 216
    .restart local v0    # "e":Ljava/lang/Exception;
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->forcedUpdate:Z

    .line 218
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->isSystemApp()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->uninstallable:Z

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 221
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->isDay:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->setImageButtonResource(Z)V

    .line 223
    :cond_6
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v0

    if-gtz v0, :cond_7

    .line 224
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setState(I)V

    .line 226
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->pState()V

    .line 227
    return-void

    .line 175
    :cond_8
    :goto_4
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->label:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    if-nez v0, :cond_9

    .line 177
    return-void

    .line 179
    :cond_9
    const-string/jumbo v0, "vacancy"

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appIconBitmap:Landroid/graphics/Bitmap;

    .line 181
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    return-void
.end method

.method public setAppClickListener(Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    .line 703
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    .line 704
    return-void
.end method

.method public setAppDeleteIconVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 159
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->uninstallable:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appDelete:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appDelete:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    :goto_0
    return-void
.end method

.method public setAppTaskId()V
    .locals 3

    .line 473
    invoke-static {}, Lcom/zeekrlife/market/update/ZKMarketManager;->getInstance()Lcom/zeekrlife/market/update/ZKMarketManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zeekrlife/market/update/ZKMarketManager;->getAppTaskInfo(Ljava/lang/String;)Lcom/zeekrlife/market/update/AppTaskInfo;

    move-result-object v0

    .line 474
    .local v0, "a":Lcom/zeekrlife/market/update/AppTaskInfo;
    if-eqz v0, :cond_0

    .line 475
    iget-object v1, v0, Lcom/zeekrlife/market/update/AppTaskInfo;->id:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->taskId:Ljava/lang/String;

    goto :goto_0

    .line 477
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;->removeTask(Ljava/lang/String;)V

    .line 479
    :goto_0
    return-void
.end method

.method public setDownloadProgress(ZF)V
    .locals 8
    .param p1, "hasValue"    # Z
    .param p2, "percent"    # F

    .line 1110
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    const v1, 0x3c621965    # 0.0138f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v0

    const/16 v2, 0xe

    if-le v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    .line 1111
    return-void

    .line 1113
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->forcedUpdate:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->isPrepare:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getInstall()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1114
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    const v2, 0x3f4872b0    # 0.783f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 1115
    iput v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    .line 1117
    :cond_3
    const v0, 0x3f44ea4a    # 0.76919997f

    mul-float v2, p2, v0

    add-float/2addr v2, v1

    .line 1118
    .local v2, "downLoadProcess":F
    if-eqz p1, :cond_6

    .line 1119
    iget v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->logVerboseCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->logVerboseCounter:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_4

    .line 1120
    const-string v0, "AppItemView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDownloadProgress: downLoadProcess = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_4
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v1, v2, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 1123
    .end local v2    # "downLoadProcess":F
    .local v1, "downLoadProcess":F
    iget v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 1124
    return-void

    .line 1126
    :cond_5
    iput v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    goto :goto_2

    .line 1128
    .end local v1    # "downLoadProcess":F
    .restart local v2    # "downLoadProcess":F
    :cond_6
    invoke-static {}, Lcom/zeekrlife/market/update/ZKMarketManager;->getInstance()Lcom/zeekrlife/market/update/ZKMarketManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/zeekrlife/market/update/ZKMarketManager;->getAppTaskInfo(Ljava/lang/String;)Lcom/zeekrlife/market/update/AppTaskInfo;

    move-result-object v3

    .line 1129
    .local v3, "a":Lcom/zeekrlife/market/update/AppTaskInfo;
    if-eqz v3, :cond_a

    .line 1130
    iget-wide v4, v3, Lcom/zeekrlife/market/update/AppTaskInfo;->soFar:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    iget-wide v4, v3, Lcom/zeekrlife/market/update/AppTaskInfo;->total:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    goto :goto_0

    .line 1133
    :cond_7
    iget-wide v4, v3, Lcom/zeekrlife/market/update/AppTaskInfo;->soFar:J

    long-to-double v4, v4

    iget-wide v6, v3, Lcom/zeekrlife/market/update/AppTaskInfo;->total:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    double-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v1

    .line 1135
    .end local v2    # "downLoadProcess":F
    .local v4, "downLoadProcess":F
    move v1, v4

    goto :goto_1

    .line 1131
    .end local v4    # "downLoadProcess":F
    .restart local v2    # "downLoadProcess":F
    :cond_8
    :goto_0
    const v0, 0x3c621965    # 0.0138f

    .line 1135
    .end local v2    # "downLoadProcess":F
    .local v0, "downLoadProcess":F
    move v1, v0

    .line 1135
    .end local v0    # "downLoadProcess":F
    .restart local v1    # "downLoadProcess":F
    :goto_1
    const-string v0, "AppItemView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDownloadProgress: downLoadProcess get"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iput v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    .line 1142
    .end local v3    # "a":Lcom/zeekrlife/market/update/AppTaskInfo;
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 1143
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appIconBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getColorFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1146
    .end local v1    # "downLoadProcess":F
    :cond_9
    return-void

    .line 1138
    .restart local v2    # "downLoadProcess":F
    .restart local v3    # "a":Lcom/zeekrlife/market/update/AppTaskInfo;
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;->removeTask(Ljava/lang/String;)V

    .line 1139
    return-void
.end method

.method public setIconBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .line 858
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appIconBitmap:Landroid/graphics/Bitmap;

    .line 859
    return-void
.end method

.method public setImageButtonResource(Z)V
    .locals 3
    .param p1, "isday"    # Z

    .line 601
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->isDay:Z

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    const-string v1, "#00000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 603
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->newApp:Landroid/widget/ImageView;

    const v1, 0x7f0805dd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 604
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060155

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 605
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appPStatus:Landroid/widget/ImageView;

    const v1, 0x7f0803ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    const-string v1, "#4d000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 608
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 609
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appPStatus:Landroid/widget/ImageView;

    const v1, 0x7f0803af

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 610
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->newApp:Landroid/widget/ImageView;

    const v1, 0x7f0805de

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 612
    :goto_0
    return-void
.end method

.method public setNewApp()V
    .locals 3

    .line 707
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->newApp:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 708
    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->newApp:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;->getIsNewApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 711
    return-void
.end method

.method public setStateLabel(I)V
    .locals 10
    .param p1, "state"    # I

    .line 867
    const-string v0, "AppItemView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStateLabel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->isPrepare()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->isPrepare:Z

    .line 869
    const/16 v0, 0xe

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-lt p1, v1, :cond_0

    if-ge p1, v0, :cond_0

    .line 870
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imgPrepareDownload:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 871
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v3

    if-nez v3, :cond_0

    .line 872
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->H:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 875
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    const/4 v4, 0x0

    if-ne p1, v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setState(I)V

    .line 876
    const v0, 0x40066666    # 2.1f

    const/4 v3, 0x7

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1035
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->isPrepare:Z

    if-eqz v1, :cond_20

    .line 1036
    iput v8, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    .line 1037
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->endAnimationDown()V

    .line 1038
    iput v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    .line 1039
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_21

    .line 1040
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imgPrepareDownload:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1041
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v7}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getColorFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1042
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 976
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getInstall()Z

    move-result v0

    if-nez v0, :cond_2

    .line 977
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;->removeTask(Ljava/lang/String;)V

    .line 978
    return-void

    .line 980
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->isPrepare:Z

    if-eqz v0, :cond_3

    .line 981
    iput v8, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    goto :goto_1

    .line 982
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->forcedUpdate:Z

    if-eqz v0, :cond_4

    .line 983
    iput v6, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    goto :goto_1

    .line 985
    :cond_4
    iput v4, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    .line 987
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->endAnimationDown()V

    .line 988
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->refresh(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)Ljava/lang/String;

    .line 989
    goto/16 :goto_a

    .line 1031
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->refresh(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)Ljava/lang/String;

    .line 1032
    goto/16 :goto_a

    .line 1021
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 1022
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6b63\u5728\u5b89\u88c5..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1024
    :cond_5
    invoke-virtual {p0, v9, v5}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->setDownloadProgress(ZF)V

    .line 1025
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getInstall()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1026
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setActivity(Ljava/lang/String;)V

    .line 1028
    :cond_6
    iput v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    .line 1029
    goto/16 :goto_a

    .line 1013
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 1014
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    const-string/jumbo v1, "\u51c6\u5907\u5b89\u88c5..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1016
    :cond_7
    invoke-virtual {p0, v9, v5}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->setDownloadProgress(ZF)V

    .line 1017
    iput v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    .line 1018
    goto/16 :goto_a

    .line 991
    :pswitch_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->isPrepare:Z

    if-eqz v1, :cond_8

    .line 992
    iput v8, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    goto :goto_3

    .line 993
    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->forcedUpdate:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getInstall()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_2

    .line 996
    :cond_9
    iput v4, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    goto :goto_3

    .line 994
    :cond_a
    :goto_2
    iput v6, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    .line 998
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->endAnimationDown()V

    .line 999
    iput v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    .line 1000
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getInstall()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1001
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->refresh(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)Ljava/lang/String;

    goto/16 :goto_a

    .line 1003
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    if-nez v0, :cond_c

    .line 1004
    return-void

    .line 1006
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imgPrepareDownload:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1007
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v7}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getColorFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1008
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    const-string/jumbo v1, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1010
    goto/16 :goto_a

    .line 958
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->forcedUpdate:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->isPrepare:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getInstall()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_4

    .line 969
    :cond_d
    iput v4, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    .line 970
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    .line 971
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 959
    :cond_e
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 960
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    const-string/jumbo v1, "\u51c6\u5907\u5b89\u88c5..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 962
    :cond_f
    invoke-virtual {p0, v9, v5}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->setDownloadProgress(ZF)V

    .line 963
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->isPrepare:Z

    if-eqz v0, :cond_10

    .line 964
    iput v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    goto/16 :goto_a

    .line 966
    :cond_10
    iput v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    goto/16 :goto_a

    .line 942
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->endAnimationDown()V

    .line 943
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->forcedUpdate:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->isPrepare:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getInstall()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_5

    .line 949
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getInstall()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 950
    iput v4, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    .line 951
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    .line 952
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 953
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_a

    .line 944
    :cond_12
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 945
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5df2\u6682\u505c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 947
    :cond_13
    invoke-virtual {p0, v4, v7}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->setDownloadProgress(ZF)V

    .line 948
    iput v6, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    goto/16 :goto_a

    .line 921
    :pswitch_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->forcedUpdate:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->isPrepare:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getInstall()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_6

    .line 933
    :cond_14
    iput v4, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    .line 934
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    if-eqz v0, :cond_15

    .line 935
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 936
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 938
    :cond_15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->endAnimationDown()V

    .line 940
    goto/16 :goto_a

    .line 922
    :cond_16
    :goto_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->isPrepare:Z

    if-eqz v0, :cond_17

    .line 923
    iput v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    goto :goto_7

    .line 924
    :cond_17
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->forcedUpdate:Z

    if-eqz v0, :cond_18

    .line 925
    iput v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    goto :goto_7

    .line 927
    :cond_18
    iput v9, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    .line 929
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    .line 930
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6b63\u5728\u4e0b\u8f7d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 895
    :pswitch_8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->forcedUpdate:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->isPrepare:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getInstall()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_8

    .line 910
    :cond_19
    iput v4, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    .line 911
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    .line 912
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 913
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 915
    :cond_1a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->endAnimationDown()V

    .line 917
    goto :goto_a

    .line 896
    :cond_1b
    :goto_8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->isPrepare:Z

    if-eqz v0, :cond_1c

    .line 897
    iput v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    goto :goto_9

    .line 898
    :cond_1c
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->forcedUpdate:Z

    if-eqz v0, :cond_1d

    .line 899
    iput v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    goto :goto_9

    .line 901
    :cond_1d
    iput v9, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    .line 903
    :goto_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->endAnimationDown()V

    .line 904
    const v0, 0x3c621965    # 0.0138f

    iput v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    .line 905
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    .line 906
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    const-string/jumbo v1, "\u51c6\u5907\u4e0b\u8f7d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 907
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appIconBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getColorFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_a

    .line 879
    :pswitch_9
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->forcedUpdate:Z

    if-eqz v0, :cond_1e

    .line 880
    iput v6, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    goto :goto_a

    .line 881
    :cond_1e
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->isPrepare:Z

    if-eqz v0, :cond_1f

    .line 882
    iput v8, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    .line 883
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->endAnimationDown()V

    .line 884
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_21

    .line 885
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imgPrepareDownload:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 886
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v7}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getColorFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 887
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 890
    :cond_1f
    iput v4, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    .line 891
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->setNormalIconBitmap()V

    .line 893
    goto :goto_a

    .line 1045
    :cond_20
    iput v4, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->clickFunction:I

    .line 1046
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->setNormalIconBitmap()V

    .line 1050
    :cond_21
    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setUninstallApp(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)V
    .locals 8
    .param p1, "a"    # Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    .line 243
    const-string v0, "AppItemView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUninstallApp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "vacancy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->pState()V

    .line 259
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 260
    const-string v0, "AppItemView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUninstallApp: old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downloadingIcon:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->label:Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0803a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    .line 270
    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appIconBitmap:Landroid/graphics/Bitmap;

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->H:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 273
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_6

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v0

    const/4 v3, 0x7

    if-gt v0, v3, :cond_6

    .line 274
    invoke-static {}, Lcom/zeekrlife/market/update/ZKMarketManager;->getInstance()Lcom/zeekrlife/market/update/ZKMarketManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/zeekrlife/market/update/ZKMarketManager;->getAppTaskInfo(Ljava/lang/String;)Lcom/zeekrlife/market/update/AppTaskInfo;

    move-result-object v0

    .line 275
    .local v0, "mAppTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    const v3, 0x3c621965    # 0.0138f

    if-eqz v0, :cond_5

    .line 276
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v4

    if-eq v4, v2, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_3

    goto :goto_0

    .line 279
    :cond_3
    iget-wide v4, v0, Lcom/zeekrlife/market/update/AppTaskInfo;->soFar:J

    long-to-double v4, v4

    iget-wide v6, v0, Lcom/zeekrlife/market/update/AppTaskInfo;->total:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    double-to-float v2, v4

    const v4, 0x3f44ea4a    # 0.76919997f

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    goto :goto_1

    .line 277
    :cond_4
    :goto_0
    iput v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    goto :goto_1

    .line 283
    :cond_5
    iput v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    .line 287
    .end local v0    # "mAppTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v0

    if-eq v0, v1, :cond_7

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_7

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_7

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    .line 288
    :cond_7
    iget v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 289
    const v0, 0x3f4872b0    # 0.783f

    iput v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    .line 292
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->setStateLabel(I)V

    .line 293
    return-void

    .line 246
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->endAnimationDown()V

    .line 247
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->label:Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    if-nez v0, :cond_a

    .line 249
    return-void

    .line 251
    :cond_a
    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appIconBitmap:Landroid/graphics/Bitmap;

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 255
    return-void
.end method

.method public startAnimationBig()V
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationsmall:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationsmall:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationBig:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 830
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationBig:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 832
    :cond_1
    return-void
.end method

.method public startAnimationInstallComplete()V
    .locals 5

    .line 803
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imgPrepareDownload:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imgPrepareDownload:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 807
    iget v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    const v1, 0x3f4872b0    # 0.783f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 808
    return-void

    .line 810
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 812
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 813
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationDown:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 814
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationDown:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 815
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 817
    :cond_3
    const v0, 0x40066666    # 2.1f

    iput v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    .line 818
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 819
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 822
    :cond_4
    :goto_0
    return-void
.end method

.method public startAnimationSmall()V
    .locals 2

    .line 835
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationBig:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationBig:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationsmall:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 840
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_1

    .line 841
    return-void

    .line 843
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->animationsmall:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 845
    :cond_2
    return-void
.end method
