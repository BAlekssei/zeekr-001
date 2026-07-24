.class public Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;
.super Landroid/view/View;
.source "StatusBarBatteryViewForPMA.java"


# static fields
.field private static final DEBUG:Z

.field private static electricQuantity:I

.field private static mBatteryColor:I


# instance fields
.field private StrokeWidth:I

.field private batteryDay:Landroid/graphics/Bitmap;

.field private batteryNight:Landroid/graphics/Bitmap;

.field private batteryPaint:Landroid/graphics/Paint;

.field private c:Landroid/content/Context;

.field private electricQuantityGreenPaint:Landroid/graphics/Paint;

.field private isDay:Z

.field private res:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->DEBUG:Z

    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->electricQuantity:I

    .line 44
    sput v0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->mBatteryColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->batteryPaint:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->electricQuantityGreenPaint:Landroid/graphics/Paint;

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->StrokeWidth:I

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->isDay:Z

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->c:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->res:Landroid/content/res/Resources;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->batteryPaint:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->electricQuantityGreenPaint:Landroid/graphics/Paint;

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->StrokeWidth:I

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->isDay:Z

    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->c:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->res:Landroid/content/res/Resources;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->batteryPaint:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->electricQuantityGreenPaint:Landroid/graphics/Paint;

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->StrokeWidth:I

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->isDay:Z

    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->c:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->res:Landroid/content/res/Resources;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->batteryPaint:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->electricQuantityGreenPaint:Landroid/graphics/Paint;

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->StrokeWidth:I

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->isDay:Z

    .line 68
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->c:Landroid/content/Context;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->res:Landroid/content/res/Resources;

    .line 70
    return-void
.end method

.method private drawElectricQuantity(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 120
    const-string v0, "StatusBarBatteryViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawElectricQuantity electricQuantity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->electricQuantity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mBatteryColor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->mBatteryColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget v0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->mBatteryColor:I

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->electricQuantityGreenPaint:Landroid/graphics/Paint;

    const v1, -0xcd4e9e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->electricQuantityGreenPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->electricQuantityGreenPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->StrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 138
    const/high16 v0, 0x40a00000    # 5.0f

    .line 139
    .local v0, "ElectricQuantityLeft":F
    const/high16 v1, 0x41400000    # 12.0f

    .line 140
    .local v1, "ElectricQuantityTop":F
    move v2, v0

    .line 141
    .local v2, "ElectricQuantityRight":F
    const v3, 0x3e6b851f    # 0.23f

    sget v4, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->electricQuantity:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v10, v3, v0

    .line 142
    .end local v2    # "ElectricQuantityRight":F
    .local v10, "ElectricQuantityRight":F
    const/high16 v11, 0x41c00000    # 24.0f

    .line 143
    .local v11, "ElectricQuantityBottom":F
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 144
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->electricQuantityGreenPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v0

    move v4, v1

    move v5, v10

    move v6, v11

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 146
    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->electricQuantityGreenPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v0

    move v4, v1

    move v5, v10

    move v6, v11

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 148
    :goto_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor",
            "DrawAllocation"
        }
    .end annotation

    .line 101
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 102
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->isDay:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->batteryDay:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->res:Landroid/content/res/Resources;

    const v2, 0x7f0803c5

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->batteryDay:Landroid/graphics/Bitmap;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->batteryDay:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->batteryPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->batteryNight:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->res:Landroid/content/res/Resources;

    const v2, 0x7f0803dc

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->batteryNight:Landroid/graphics/Bitmap;

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->batteryNight:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->batteryPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 113
    :goto_0
    sget v0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->electricQuantity:I

    if-lez v0, :cond_3

    .line 114
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->drawElectricQuantity(Landroid/graphics/Canvas;)V

    .line 116
    :cond_3
    return-void
.end method

.method public setBatteryColor(I)V
    .locals 0
    .param p1, "batteryColor"    # I

    .line 92
    sput p1, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->mBatteryColor:I

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->invalidate()V

    .line 96
    return-void
.end method

.method public setBatteryDay(Z)V
    .locals 0
    .param p1, "isDay"    # Z

    .line 73
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->isDay:Z

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->invalidate()V

    .line 76
    return-void
.end method

.method public setBatteryLevel(FI)V
    .locals 2
    .param p1, "electric"    # F
    .param p2, "batteryColor"    # I

    .line 79
    sput p2, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->mBatteryColor:I

    .line 80
    float-to-int v0, p1

    sput v0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->electricQuantity:I

    .line 81
    sget v0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->electricQuantity:I

    if-gez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->electricQuantity:I

    goto :goto_0

    .line 83
    :cond_0
    sget v0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->electricQuantity:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 84
    sput v1, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->electricQuantity:I

    .line 87
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->invalidate()V

    .line 88
    return-void
.end method
