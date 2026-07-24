.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$KCuxJCNLd3yky_vVjO4HIDm3j2w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$KCuxJCNLd3yky_vVjO4HIDm3j2w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$KCuxJCNLd3yky_vVjO4HIDm3j2w;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$KCuxJCNLd3yky_vVjO4HIDm3j2w;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$KCuxJCNLd3yky_vVjO4HIDm3j2w;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$KCuxJCNLd3yky_vVjO4HIDm3j2w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->lambda$createSliderAppListWindowView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
