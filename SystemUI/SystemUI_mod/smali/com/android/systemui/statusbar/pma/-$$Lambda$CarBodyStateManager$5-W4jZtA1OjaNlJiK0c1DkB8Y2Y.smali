.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$5-W4jZtA1OjaNlJiK0c1DkB8Y2Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$5-W4jZtA1OjaNlJiK0c1DkB8Y2Y;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$5-W4jZtA1OjaNlJiK0c1DkB8Y2Y;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$5-W4jZtA1OjaNlJiK0c1DkB8Y2Y;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$5-W4jZtA1OjaNlJiK0c1DkB8Y2Y;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$5-W4jZtA1OjaNlJiK0c1DkB8Y2Y;

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

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->lambda$updateDriverHeatOrVentilationShift$123(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
