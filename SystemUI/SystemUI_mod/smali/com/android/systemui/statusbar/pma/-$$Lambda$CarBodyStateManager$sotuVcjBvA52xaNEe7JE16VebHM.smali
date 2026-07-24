.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$sotuVcjBvA52xaNEe7JE16VebHM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$sotuVcjBvA52xaNEe7JE16VebHM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$sotuVcjBvA52xaNEe7JE16VebHM;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$sotuVcjBvA52xaNEe7JE16VebHM;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$sotuVcjBvA52xaNEe7JE16VebHM;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$sotuVcjBvA52xaNEe7JE16VebHM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->lambda$updatePDCStatusInternal$59(Ljava/lang/Throwable;)V

    return-void
.end method
