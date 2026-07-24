.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$_MQY065iIqLBSrzkKbdpcGIq6Is;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$_MQY065iIqLBSrzkKbdpcGIq6Is;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$_MQY065iIqLBSrzkKbdpcGIq6Is;->f$0:Z

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->lambda$setAcPowerState$8(ZLjava/lang/Throwable;)V

    return-void
.end method
