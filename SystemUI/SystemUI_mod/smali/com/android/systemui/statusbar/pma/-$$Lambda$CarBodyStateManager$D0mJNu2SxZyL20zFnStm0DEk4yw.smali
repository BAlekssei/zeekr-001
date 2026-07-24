.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$D0mJNu2SxZyL20zFnStm0DEk4yw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$D0mJNu2SxZyL20zFnStm0DEk4yw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$D0mJNu2SxZyL20zFnStm0DEk4yw;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$D0mJNu2SxZyL20zFnStm0DEk4yw;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$D0mJNu2SxZyL20zFnStm0DEk4yw;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$D0mJNu2SxZyL20zFnStm0DEk4yw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->lambda$updatePassengerHeatOrVentilationShift$118(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
