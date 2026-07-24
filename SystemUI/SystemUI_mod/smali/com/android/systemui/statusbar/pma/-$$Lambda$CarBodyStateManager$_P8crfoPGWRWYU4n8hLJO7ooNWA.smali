.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$_P8crfoPGWRWYU4n8hLJO7ooNWA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$_P8crfoPGWRWYU4n8hLJO7ooNWA;->f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput p2, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$_P8crfoPGWRWYU4n8hLJO7ooNWA;->f$1:F

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$_P8crfoPGWRWYU4n8hLJO7ooNWA;->f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$_P8crfoPGWRWYU4n8hLJO7ooNWA;->f$1:F

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->lambda$setDriverTemp$0(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;FLio/reactivex/CompletableEmitter;)V

    return-void
.end method
