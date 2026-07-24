.class Lcom/android/systemui/ImageWallpaper$DrawableEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ImageWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawableEngine"
.end annotation


# instance fields
.field mBackground:Landroid/graphics/Bitmap;

.field mBackgroundHeight:I

.field mBackgroundWidth:I

.field private mDefaultDisplay:Landroid/view/Display;

.field private mDisplayHeightAtLastSurfaceSizeUpdate:I

.field private mDisplayWidthAtLastSurfaceSizeUpdate:I

.field private mLastRequestedHeight:I

.field private mLastRequestedWidth:I

.field mLastRotation:I

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field mLastXTranslation:I

.field mLastYTranslation:I

.field private mLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedsDrawAfterLoadingWallpaper:Z

.field mOffsetsChanged:Z

.field private mRotationAtLastSurfaceSizeUpdate:I

.field mScale:F

.field private mSurfaceRedrawNeeded:Z

.field private mSurfaceValid:Z

.field private final mTmpDisplayInfo:Landroid/view/DisplayInfo;

.field private final mUnloadWallpaperCallback:Ljava/lang/Runnable;

.field mVisible:Z

.field mXOffset:F

.field mYOffset:F

.field final synthetic this$0:Lcom/android/systemui/ImageWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/ImageWallpaper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/ImageWallpaper;

    .line 106
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    .line 107
    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 75
    new-instance v0, Lcom/android/systemui/-$$Lambda$ImageWallpaper$DrawableEngine$NJnw285KGKe6wEAiXHs5XJx5qSc;

    invoke-direct {v0, p0}, Lcom/android/systemui/-$$Lambda$ImageWallpaper$DrawableEngine$NJnw285KGKe6wEAiXHs5XJx5qSc;-><init>(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mUnloadWallpaperCallback:Ljava/lang/Runnable;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 81
    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    .line 82
    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    .line 83
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    .line 84
    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    .line 85
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    .line 88
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    .line 95
    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mRotationAtLastSurfaceSizeUpdate:I

    .line 96
    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayWidthAtLastSurfaceSizeUpdate:I

    .line 97
    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayHeightAtLastSurfaceSizeUpdate:I

    .line 99
    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedWidth:I

    .line 100
    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedHeight:I

    .line 108
    invoke-virtual {p0, v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->setFixedSizeAllowed(Z)V

    .line 109
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/ImageWallpaper$DrawableEngine;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    .line 74
    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedsDrawAfterLoadingWallpaper:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/ImageWallpaper$DrawableEngine;
    .param p1, "x1"    # Z

    .line 74
    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedsDrawAfterLoadingWallpaper:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/ImageWallpaper$DrawableEngine;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .line 74
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLoader:Landroid/os/AsyncTask;

    return-object p1
.end method

.method private drawWallpaperWithCanvas(Landroid/view/SurfaceHolder;IIII)V
    .locals 9
    .param p1, "sh"    # Landroid/view/SurfaceHolder;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "left"    # I
    .param p5, "top"    # I

    .line 490
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v6

    .line 491
    .local v6, "c":Landroid/graphics/Canvas;
    if-eqz v6, :cond_3

    .line 497
    int-to-float v0, p4

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v1, v2

    add-float v7, v0, v1

    .line 498
    .local v7, "right":F
    int-to-float v0, p5

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v1, v2

    add-float v8, v0, v1

    .line 499
    .local v8, "bottom":F
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 500
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 501
    int-to-float v1, p4

    int-to-float v2, p5

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, v6

    move v3, v7

    move v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 503
    const/high16 v0, -0x1000000

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 504
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 507
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p4

    int-to-float v2, p5

    invoke-direct {v0, v1, v2, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 508
    .local v0, "dest":Landroid/graphics/RectF;
    const-string v1, "ImageWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Redrawing in rect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with surface size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    .end local v0    # "dest":Landroid/graphics/RectF;
    .end local v7    # "right":F
    .end local v8    # "bottom":F
    :cond_2
    invoke-interface {p1, v6}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 514
    goto :goto_0

    .line 513
    :catchall_0
    move-exception v0

    invoke-interface {p1, v6}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v0

    .line 516
    :cond_3
    :goto_0
    return-void
.end method

.method private getDefaultDisplayInfo()Landroid/view/DisplayInfo;
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDefaultDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 261
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)V
    .locals 1

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->unloadWallpaper(Z)V

    .line 77
    return-void
.end method

.method private loadWallpaper(Z)V
    .locals 3
    .param p1, "needsDraw"    # Z

    .line 357
    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedsDrawAfterLoadingWallpaper:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedsDrawAfterLoadingWallpaper:Z

    .line 358
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 362
    return-void

    .line 364
    :cond_0
    new-instance v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;-><init>(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 412
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLoader:Landroid/os/AsyncTask;

    .line 413
    return-void
.end method

.method private scheduleUnloadWallpaper()V
    .locals 4

    .line 451
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/ImageWallpaper;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    .line 452
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mUnloadWallpaperCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 453
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mUnloadWallpaperCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 454
    return-void
.end method

.method private unloadWallpaper(Z)V
    .locals 3
    .param p1, "forgetSize"    # Z

    .line 434
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLoader:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 436
    iput-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLoader:Landroid/os/AsyncTask;

    .line 438
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 439
    if-eqz p1, :cond_1

    .line 440
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    .line 441
    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 444
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 445
    .local v0, "surface":Landroid/view/Surface;
    invoke-virtual {v0}, Landroid/view/Surface;->hwuiDestroy()V

    .line 447
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 448
    return-void
.end method

.method private updateBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 416
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 417
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    .line 418
    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 420
    if-eqz p1, :cond_0

    .line 421
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 422
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    .line 423
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;Landroid/view/DisplayInfo;Z)Z

    .line 431
    return-void
.end method


# virtual methods
.method drawFrame()V
    .locals 21

    .line 265
    move-object/from16 v7, p0

    iget-boolean v0, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSurfaceValid:Z

    if-nez v0, :cond_0

    .line 266
    return-void

    .line 269
    :cond_0
    const-wide/16 v8, 0x8

    :try_start_0
    const-string v0, "drawWallpaper"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 270
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 271
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->rotation:I

    move v10, v1

    .line 276
    .local v10, "newRotation":I
    iget v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    const/4 v2, 0x1

    if-eq v10, v1, :cond_2

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v7, v1, v0, v2}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;Landroid/view/DisplayInfo;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 343
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 279
    return-void

    .line 281
    :cond_1
    :try_start_1
    iput v10, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mRotationAtLastSurfaceSizeUpdate:I

    .line 282
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayWidthAtLastSurfaceSizeUpdate:I

    .line 283
    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayHeightAtLastSurfaceSizeUpdate:I

    .line 285
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    move-object v11, v1

    .line 286
    .local v11, "sh":Landroid/view/SurfaceHolder;
    invoke-interface {v11}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    move-object v12, v1

    .line 287
    .local v12, "frame":Landroid/graphics/Rect;
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v1

    move v13, v1

    .line 288
    .local v13, "dw":I
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v1

    move v14, v1

    .line 289
    .local v14, "dh":I
    iget v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    const/4 v3, 0x0

    if-ne v13, v1, :cond_4

    iget v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    if-eq v14, v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v2

    :goto_1
    move v15, v1

    .line 292
    .local v15, "surfaceDimensionsChanged":Z
    if-nez v15, :cond_6

    iget v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    if-ne v10, v1, :cond_6

    iget-boolean v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSurfaceRedrawNeeded:Z

    if-nez v1, :cond_6

    iget-boolean v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedsDrawAfterLoadingWallpaper:Z

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_3

    :cond_6
    :goto_2
    move v1, v2

    :goto_3
    move/from16 v16, v1

    .line 294
    .local v16, "redrawNeeded":Z
    if-nez v16, :cond_7

    iget-boolean v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_7

    .line 343
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 299
    return-void

    .line 301
    :cond_7
    :try_start_2
    iput v10, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    .line 302
    iput-boolean v3, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSurfaceRedrawNeeded:Z

    .line 305
    iget-object v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-nez v1, :cond_8

    .line 306
    invoke-direct {v7, v2}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->loadWallpaper(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 343
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 310
    return-void

    .line 314
    :cond_8
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v2, v13

    :try_start_3
    iget-object v4, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    int-to-float v4, v14

    iget-object v5, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 315
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 314
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    .line 316
    iget-object v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v6, v1, v13

    .line 317
    .local v6, "availw":I
    iget-object v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v5, v1, v14

    .line 318
    .local v5, "availh":I
    int-to-float v1, v6

    iget v2, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    mul-float/2addr v1, v2

    float-to-int v4, v1

    .line 319
    .local v4, "xPixels":I
    int-to-float v1, v5

    iget v2, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    mul-float/2addr v1, v2

    float-to-int v2, v1

    .line 321
    .local v2, "yPixels":I
    iput-boolean v3, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    .line 322
    if-eqz v15, :cond_9

    .line 323
    iput v13, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    .line 324
    iput v14, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    .line 326
    :cond_9
    if-nez v16, :cond_a

    iget v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastXTranslation:I

    if-ne v4, v1, :cond_a

    iget v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastYTranslation:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v2, v1, :cond_a

    .line 343
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 331
    return-void

    .line 333
    :cond_a
    :try_start_4
    iput v4, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastXTranslation:I

    .line 334
    iput v2, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastYTranslation:I

    .line 340
    move-object v1, v7

    move/from16 v17, v2

    move-object v2, v11

    .end local v2    # "yPixels":I
    .local v17, "yPixels":I
    move v3, v6

    move/from16 v18, v4

    move v4, v5

    .end local v4    # "xPixels":I
    .local v18, "xPixels":I
    move/from16 v19, v5

    move/from16 v5, v18

    .end local v5    # "availh":I
    .local v19, "availh":I
    move/from16 v20, v6

    move/from16 v6, v17

    .end local v6    # "availw":I
    .local v20, "availw":I
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawWallpaperWithCanvas(Landroid/view/SurfaceHolder;IIII)V

    .line 341
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->scheduleUnloadWallpaper()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 343
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v10    # "newRotation":I
    .end local v11    # "sh":Landroid/view/SurfaceHolder;
    .end local v12    # "frame":Landroid/graphics/Rect;
    .end local v13    # "dw":I
    .end local v14    # "dh":I
    .end local v15    # "surfaceDimensionsChanged":Z
    .end local v16    # "redrawNeeded":Z
    .end local v17    # "yPixels":I
    .end local v18    # "xPixels":I
    .end local v19    # "availh":I
    .end local v20    # "availw":I
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 344
    nop

    .line 345
    return-void

    .line 343
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method protected dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "out"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 458
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 460
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "ImageWallpaper.DrawableEngine:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackground="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 462
    const-string v0, " mBackgroundWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 463
    const-string v0, " mBackgroundHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 465
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mLastRotation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 466
    const-string v0, " mLastSurfaceWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 467
    const-string v0, " mLastSurfaceHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 469
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mXOffset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 470
    const-string v0, " mYOffset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 472
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 473
    const-string v0, " mOffsetsChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 475
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mLastXTranslation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastXTranslation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 476
    const-string v0, " mLastYTranslation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastYTranslation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 477
    const-string v0, " mScale="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 479
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mLastRequestedWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 480
    const-string v0, " mLastRequestedHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 482
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " DisplayInfo at last updateSurfaceSize:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 484
    const-string v0, "  rotation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mRotationAtLastSurfaceSizeUpdate:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 485
    const-string v0, "  width="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayWidthAtLastSurfaceSizeUpdate:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 486
    const-string v0, "  height="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayHeightAtLastSurfaceSizeUpdate:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 487
    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 128
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/ImageWallpaper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDefaultDisplay:Landroid/view/Display;

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->setOffsetNotificationsEnabled(Z)V

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;Landroid/view/DisplayInfo;Z)Z

    .line 135
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 139
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 141
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->unloadWallpaper(Z)V

    .line 142
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 1
    .param p1, "xOffset"    # F
    .param p2, "yOffset"    # F
    .param p3, "xOffsetStep"    # F
    .param p4, "yOffsetStep"    # F
    .param p5, "xPixels"    # I
    .param p6, "yPixels"    # I

    .line 199
    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    .line 204
    iput p2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    .line 208
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 216
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 218
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    .line 219
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 234
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 239
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSurfaceValid:Z

    .line 241
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 223
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 228
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSurfaceValid:Z

    .line 230
    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 248
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateBitmap(Landroid/graphics/Bitmap;)V

    .line 255
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSurfaceRedrawNeeded:Z

    .line 256
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    .line 257
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 178
    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 182
    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    .line 183
    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    .line 187
    :cond_0
    return-void
.end method

.method trimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .line 112
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 v0, 0xf

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->unloadWallpaper(Z)V

    .line 120
    :cond_0
    return-void
.end method

.method updateSurfaceSize(Landroid/view/SurfaceHolder;Landroid/view/DisplayInfo;Z)Z
    .locals 4
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p3, "forDraw"    # Z

    .line 146
    const/4 v0, 0x1

    .line 149
    .local v0, "hasWallpaper":Z
    iget v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    if-gtz v1, :cond_1

    .line 151
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->loadWallpaper(Z)V

    .line 155
    const/4 v0, 0x0

    .line 159
    :cond_1
    iget v1, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 160
    .local v1, "surfaceWidth":I
    iget v2, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 165
    .local v2, "surfaceHeight":I
    invoke-interface {p1, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 166
    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedWidth:I

    .line 167
    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedHeight:I

    .line 169
    return v0
.end method
