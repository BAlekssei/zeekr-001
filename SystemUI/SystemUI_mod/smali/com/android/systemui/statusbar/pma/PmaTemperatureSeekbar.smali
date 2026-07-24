.class public Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;
.super Landroid/view/View;
.source "PmaTemperatureSeekbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar$PmaTemperatureSeekbarCallback;
    }
.end annotation


# static fields
.field private static final CENTER_COLOR:I

.field private static final DAY_COLOR:I

.field private static final END_COLOR:I

.field private static final NIGHT_COLOR:I

.field private static final START_COLOR:I


# instance fields
.field private SEEKBAR_COLOR:[I

.field private callback:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar$PmaTemperatureSeekbarCallback;

.field private currentProgress:I

.field private isDay:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBound:Landroid/graphics/Rect;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHighScaleX:F

.field private mLowScaleX:F

.field private mProgressBottom:F

.field private mProgressHight:F

.field private mProgressLeft:F

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mProgressRight:F

.field private mProgressRoatX:F

.field private mProgressRoatY:F

.field private mProgressTop:F

.field private mProgressWith:F

.field private mScaleInverval:F

.field private mScalePaint:Landroid/graphics/Paint;

.field private mScaleRadius:F

.field private mScaleX:F

.field private mScaleY:F

.field private mTextHight:F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextPaintSecond:Landroid/graphics/Paint;

.field private mTextTempX:F

.field private mTextTempY:F

.field private mThumbPaint:Landroid/graphics/Paint;

.field private mThumbRadius:F

.field private mThumbX:F

.field private progress:I

.field private progressMax:I

.field private progressMin:I

.field private seekbarHight:I

.field private seekbarWith:I

.field private thumbRadiusefault:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-string v0, "#6DA7FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->START_COLOR:I

    .line 39
    const-string v0, "#99B796FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->CENTER_COLOR:I

    .line 40
    const-string v0, "#FF8E63"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->END_COLOR:I

    .line 41
    const-string v0, "#383A3D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->DAY_COLOR:I

    .line 42
    const-string v0, "#B4B9BE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->NIGHT_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    const/high16 v0, 0x41c00000    # 24.0f

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressHight:F

    .line 35
    const v0, 0x44098000    # 550.0f

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressWith:F

    .line 36
    const/high16 v0, 0x41a80000    # 21.0f

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressRoatX:F

    .line 37
    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressRoatY:F

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [I

    const-string v1, "#6DA7FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "#99B796FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    const-string v1, "#FF8E63"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x2

    aput v1, v0, v3

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->SEEKBAR_COLOR:[I

    .line 47
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->thumbRadiusefault:F

    .line 48
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->thumbRadiusefault:F

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DimensionUtil;->dp2px(F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mThumbRadius:F

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mThumbX:F

    .line 57
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DimensionUtil;->dp2px(F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mScaleRadius:F

    .line 64
    const/high16 v0, 0x42440000    # 49.0f

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DimensionUtil;->dp2px(F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextHight:F

    .line 75
    iput v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMax:I

    .line 76
    iput v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMin:I

    .line 77
    iput v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->currentProgress:I

    .line 78
    iput v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progress:I

    .line 79
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->isDay:Z

    .line 83
    new-instance v0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar$1;-><init>(Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mHandler:Landroid/os/Handler;

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/high16 v0, 0x41c00000    # 24.0f

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressHight:F

    .line 35
    const v0, 0x44098000    # 550.0f

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressWith:F

    .line 36
    const/high16 v0, 0x41a80000    # 21.0f

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressRoatX:F

    .line 37
    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressRoatY:F

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [I

    const-string v1, "#6DA7FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "#99B796FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    const-string v1, "#FF8E63"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x2

    aput v1, v0, v3

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->SEEKBAR_COLOR:[I

    .line 47
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->thumbRadiusefault:F

    .line 48
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->thumbRadiusefault:F

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DimensionUtil;->dp2px(F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mThumbRadius:F

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mThumbX:F

    .line 57
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DimensionUtil;->dp2px(F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mScaleRadius:F

    .line 64
    const/high16 v0, 0x42440000    # 49.0f

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DimensionUtil;->dp2px(F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextHight:F

    .line 75
    iput v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMax:I

    .line 76
    iput v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMin:I

    .line 77
    iput v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->currentProgress:I

    .line 78
    iput v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progress:I

    .line 79
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->isDay:Z

    .line 83
    new-instance v0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar$1;-><init>(Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mHandler:Landroid/os/Handler;

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/high16 v0, 0x41c00000    # 24.0f

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressHight:F

    .line 35
    const v0, 0x44098000    # 550.0f

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressWith:F

    .line 36
    const/high16 v0, 0x41a80000    # 21.0f

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressRoatX:F

    .line 37
    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressRoatY:F

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [I

    const-string v1, "#6DA7FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "#99B796FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    const-string v1, "#FF8E63"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x2

    aput v1, v0, v3

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->SEEKBAR_COLOR:[I

    .line 47
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->thumbRadiusefault:F

    .line 48
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->thumbRadiusefault:F

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DimensionUtil;->dp2px(F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mThumbRadius:F

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mThumbX:F

    .line 57
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DimensionUtil;->dp2px(F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mScaleRadius:F

    .line 64
    const/high16 v0, 0x42440000    # 49.0f

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DimensionUtil;->dp2px(F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextHight:F

    .line 75
    iput v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMax:I

    .line 76
    iput v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMin:I

    .line 77
    iput v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->currentProgress:I

    .line 78
    iput v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progress:I

    .line 79
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->isDay:Z

    .line 83
    new-instance v0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar$1;-><init>(Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mHandler:Landroid/os/Handler;

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 114
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    const/high16 v0, 0x41c00000    # 24.0f

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressHight:F

    .line 35
    const v0, 0x44098000    # 550.0f

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressWith:F

    .line 36
    const/high16 v0, 0x41a80000    # 21.0f

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressRoatX:F

    .line 37
    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressRoatY:F

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [I

    const-string v1, "#6DA7FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "#99B796FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    const-string v1, "#FF8E63"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x2

    aput v1, v0, v3

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->SEEKBAR_COLOR:[I

    .line 47
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->thumbRadiusefault:F

    .line 48
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->thumbRadiusefault:F

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DimensionUtil;->dp2px(F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mThumbRadius:F

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mThumbX:F

    .line 57
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DimensionUtil;->dp2px(F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mScaleRadius:F

    .line 64
    const/high16 v0, 0x42440000    # 49.0f

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DimensionUtil;->dp2px(F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextHight:F

    .line 75
    iput v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMax:I

    .line 76
    iput v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMin:I

    .line 77
    iput v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->currentProgress:I

    .line 78
    iput v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progress:I

    .line 79
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->isDay:Z

    .line 83
    new-instance v0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar$1;-><init>(Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mHandler:Landroid/os/Handler;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;)Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar$PmaTemperatureSeekbarCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->callback:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar$PmaTemperatureSeekbarCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    .line 24
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->currentProgress:I

    return v0
.end method

.method private calculateDraggingX(F)I
    .locals 2
    .param p1, "x"    # F

    .line 284
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressLeft:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 285
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMin:I

    return v0

    .line 286
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressRight:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 287
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMax:I

    return v0

    .line 289
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressLeft:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressWith:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMax:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 290
    .local v0, "progress":I
    iget v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMin:I

    if-ge v0, v1, :cond_2

    .line 291
    iget v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMin:I

    return v1

    .line 292
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMax:I

    if-le v0, v1, :cond_3

    .line 293
    iget v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMax:I

    return v1

    .line 295
    :cond_3
    return v0
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 198
    iget v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressLeft:F

    iget v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressTop:F

    iget v3, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressRight:F

    iget v4, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressBottom:F

    iget v5, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressRoatX:F

    iget v6, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressRoatY:F

    iget-object v7, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 200
    return-void
.end method

.method private drawScales(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 204
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mScaleX:F

    .line 205
    .local v0, "currentScaleX":F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMax:I

    if-ge v1, v2, :cond_2

    .line 206
    iget v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->currentProgress:I

    if-eq v2, v1, :cond_1

    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    goto :goto_1

    .line 210
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mScaleY:F

    iget v3, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mScaleRadius:F

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mScalePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 211
    iget v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mScaleInverval:F

    add-float/2addr v0, v2

    goto :goto_2

    .line 207
    :cond_1
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mScaleInverval:F

    add-float/2addr v0, v2

    .line 208
    nop

    .line 205
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private drawTextForTemp(Landroid/graphics/Canvas;I)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "currentProgress"    # I

    .line 216
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextTempX:F

    .line 217
    const/high16 v0, 0x421c0000    # 39.0f

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextTempY:F

    .line 218
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMin:I

    const/4 v1, 0x0

    const/high16 v2, 0x42280000    # 42.0f

    if-le p2, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMax:I

    if-ge p2, v0, :cond_0

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mData:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "temp":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x42380000    # 46.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 221
    iget v3, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextTempX:F

    iget v4, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextTempY:F

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 222
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextPaintSecond:Landroid/graphics/Paint;

    const/high16 v4, 0x41d00000    # 26.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 223
    const-string/jumbo v3, "\u2103"

    iget v4, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextTempX:F

    const/high16 v5, 0x42b40000    # 90.0f

    add-float/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextTempY:F

    const/high16 v6, 0x41600000    # 14.0f

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextPaintSecond:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 224
    .end local v0    # "temp":Ljava/lang/String;
    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMin:I

    if-ne p2, v0, :cond_1

    .line 225
    const-string v0, "LOW"

    .line 226
    .restart local v0    # "temp":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 227
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 228
    iget v3, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextTempX:F

    iget v4, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextTempY:F

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 229
    .end local v0    # "temp":Ljava/lang/String;
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMax:I

    if-ne p2, v0, :cond_2

    .line 230
    const-string v0, "HIGH"

    .line 231
    .restart local v0    # "temp":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 232
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 233
    iget v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextTempX:F

    iget v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextTempY:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 235
    .end local v0    # "temp":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private drawThumb(Landroid/graphics/Canvas;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "currentProgress"    # I

    .line 241
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMin:I

    if-ne p2, v0, :cond_0

    .line 242
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mLowScaleX:F

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mThumbX:F

    goto :goto_0

    .line 243
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMax:I

    if-ne p2, v0, :cond_1

    .line 244
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mHighScaleX:F

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mThumbX:F

    goto :goto_0

    .line 246
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mScaleX:F

    add-int/lit8 v1, p2, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mScaleInverval:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mThumbX:F

    .line 248
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mThumbX:F

    iget v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mScaleY:F

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr v1, v2

    iget v3, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mThumbRadius:F

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 249
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mThumbX:F

    iget v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mScaleY:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mThumbRadius:F

    const/high16 v3, 0x40400000    # 3.0f

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mScalePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 250
    return-void
.end method

.method private init()V
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mAudioManager:Landroid/media/AudioManager;

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->initProgress()V

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->initScales()V

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->initThumb()V

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->initTempText()V

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mBound:Landroid/graphics/Rect;

    .line 133
    return-void
.end method

.method private initProgress()V
    .locals 9

    .line 148
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressPaint:Landroid/graphics/Paint;

    .line 150
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v4, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressWith:F

    iget v5, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressHight:F

    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->SEEKBAR_COLOR:[I

    const/4 v1, 0x3

    new-array v7, v1, [F

    fill-array-data v7, :array_0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 152
    .local v0, "linearGradient":Landroid/graphics/LinearGradient;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 154
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressLeft:F

    .line 156
    iget v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressWith:F

    iget v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressLeft:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressRight:F

    .line 157
    iget v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextHight:F

    const/high16 v2, 0x41c80000    # 25.0f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressTop:F

    .line 158
    iget v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressTop:F

    iget v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressHight:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressBottom:F

    .line 159
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3efae148    # 0.49f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initScales()V
    .locals 2

    .line 163
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mScalePaint:Landroid/graphics/Paint;

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mScalePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mScalePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressTop:F

    iget v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressBottom:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mScaleY:F

    .line 167
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressWith:F

    iget v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMax:I

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mScaleInverval:F

    .line 168
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressLeft:F

    iget v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mScaleInverval:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mLowScaleX:F

    .line 169
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mLowScaleX:F

    iget v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mScaleInverval:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mScaleX:F

    .line 170
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mProgressRight:F

    iget v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mScaleInverval:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mHighScaleX:F

    .line 171
    return-void
.end method

.method private initTempText()V
    .locals 3

    .line 181
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextPaint:Landroid/graphics/Paint;

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42580000    # 54.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextPaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->isDay:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->DAY_COLOR:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->NIGHT_COLOR:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextPaintSecond:Landroid/graphics/Paint;

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextPaintSecond:Landroid/graphics/Paint;

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextPaintSecond:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextPaintSecond:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextPaintSecond:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextPaintSecond:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->isDay:Z

    const v2, -0x66000001

    if-eqz v1, :cond_1

    sget v1, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->DAY_COLOR:I

    :goto_1
    and-int/2addr v1, v2

    goto :goto_2

    :cond_1
    sget v1, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->NIGHT_COLOR:I

    goto :goto_1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    return-void
.end method

.method private initThumb()V
    .locals 4

    .line 175
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mThumbPaint:Landroid/graphics/Paint;

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mThumbPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mThumbPaint:Landroid/graphics/Paint;

    const/16 v1, 0xf8

    const/16 v2, 0x86

    const/16 v3, 0x50

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    return-void
.end method


# virtual methods
.method public addPmaTemperatureCallback(Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar$PmaTemperatureSeekbarCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar$PmaTemperatureSeekbarCallback;

    .line 306
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->callback:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar$PmaTemperatureSeekbarCallback;

    .line 307
    return-void
.end method

.method public adjustProgress(Z)V
    .locals 4
    .param p1, "increase"    # Z

    .line 327
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->currentProgress:I

    iget v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMax:I

    if-eq v0, v1, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->currentProgress:I

    iget v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMin:I

    if-ne v0, v1, :cond_2

    .line 329
    :cond_1
    return-void

    .line 331
    :cond_2
    if-eqz p1, :cond_3

    .line 332
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->currentProgress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->currentProgress:I

    goto :goto_0

    .line 334
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->currentProgress:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->currentProgress:I

    .line 336
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 338
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->invalidate()V

    .line 339
    return-void
.end method

.method public getPosTemp(I)F
    .locals 1
    .param p1, "pos"    # I

    .line 358
    if-ltz p1, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 361
    :cond_0
    const/high16 v0, 0x41b00000    # 22.0f

    return v0
.end method

.method public getProgressMax()I
    .locals 1

    .line 354
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMax:I

    return v0
.end method

.method public getProgressMin()I
    .locals 1

    .line 350
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMin:I

    return v0
.end method

.method public getTempPos(F)I
    .locals 2
    .param p1, "temp"    # F

    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mData:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mData:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 366
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 137
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 138
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMax:I

    if-lez v0, :cond_0

    .line 139
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->drawProgress(Landroid/graphics/Canvas;)V

    .line 140
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->drawScales(Landroid/graphics/Canvas;)V

    .line 141
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->currentProgress:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->drawThumb(Landroid/graphics/Canvas;I)V

    .line 142
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->currentProgress:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->drawTextForTemp(Landroid/graphics/Canvas;I)V

    .line 144
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 119
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 120
    const/16 v0, 0x226

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->resolveSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->seekbarWith:I

    .line 121
    const/16 v0, 0x6a

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->resolveSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->seekbarHight:I

    .line 122
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->seekbarWith:I

    iget v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->seekbarHight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->setMeasuredDimension(II)V

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->init()V

    .line 124
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mTextHight:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 257
    return v1

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 263
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->calculateDraggingX(F)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progress:I

    .line 264
    nop

    .line 268
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progress:I

    iget v2, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->currentProgress:I

    if-eq v0, v2, :cond_3

    .line 269
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progress:I

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->currentProgress:I

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->invalidate()V

    .line 274
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public setCurrentProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .line 314
    const-string v0, "CustomerSeekbar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentProgress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMin:I

    if-ge p1, v0, :cond_0

    .line 316
    iget p1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMin:I

    goto :goto_0

    .line 317
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMax:I

    if-le p1, v0, :cond_1

    .line 318
    iget p1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMax:I

    .line 320
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->currentProgress:I

    if-eq p1, v0, :cond_2

    .line 321
    iput p1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->currentProgress:I

    .line 322
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->invalidate()V

    .line 324
    :cond_2
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 372
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mData:Ljava/util/List;

    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->progressMax:I

    .line 376
    :cond_0
    return-void
.end method

.method public setDayOrNight(Z)V
    .locals 1
    .param p1, "isday"    # Z

    .line 342
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->isDay:Z

    if-eq v0, p1, :cond_0

    .line 343
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->isDay:Z

    .line 344
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->initTempText()V

    .line 345
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->invalidate()V

    .line 347
    :cond_0
    return-void
.end method
