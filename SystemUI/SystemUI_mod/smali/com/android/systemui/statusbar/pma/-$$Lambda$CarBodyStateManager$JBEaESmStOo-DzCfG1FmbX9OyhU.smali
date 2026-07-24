.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$JBEaESmStOo-DzCfG1FmbX9OyhU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$JBEaESmStOo-DzCfG1FmbX9OyhU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$JBEaESmStOo-DzCfG1FmbX9OyhU;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$JBEaESmStOo-DzCfG1FmbX9OyhU;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$JBEaESmStOo-DzCfG1FmbX9OyhU;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$JBEaESmStOo-DzCfG1FmbX9OyhU;

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

    invoke-static {p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->lambda$updateSpeed$198(Ljava/lang/Throwable;)V

    return-void
.end method
