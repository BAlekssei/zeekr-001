.class public Lcom/android/systemui/statusbar/pma/HeatVentilationSliderDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "HeatVentilationSliderDecoration.java"


# static fields
.field private static final END_COLOR:I

.field public static SHOWALL:I

.field public static SHOWHALF:I

.field private static final START_COLOR:I


# instance fields
.field private mItemHeight:I

.field private mPaint:Landroid/graphics/Paint;

.field private final mShowTypw:I

.field private mWeights:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-string v0, "#E53039"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderDecoration;->START_COLOR:I

    .line 49
    const-string v0, "#058FFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderDecoration;->END_COLOR:I

    .line 50
    const/16 v0, -0xc

    sput v0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderDecoration;->SHOWALL:I

    .line 51
    const/16 v0, -0xd

    sput v0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderDecoration;->SHOWHALF:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "height"    # I
    .param p2, "showType"    # I

    .line 60
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 61
    iput p1, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderDecoration;->mItemHeight:I

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderDecoration;->mPaint:Landroid/graphics/Paint;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderDecoration;->mWeights:F

    .line 64
    iput p2, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderDecoration;->mShowTypw:I

    .line 65
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 74
    return-void
.end method
