.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$mVU08QHn3I8IRfJdR__cAq6fOY8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$mVU08QHn3I8IRfJdR__cAq6fOY8;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$mVU08QHn3I8IRfJdR__cAq6fOY8;->f$0:I

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->lambda$setClimateShift$84(ILjava/lang/Throwable;)V

    return-void
.end method
