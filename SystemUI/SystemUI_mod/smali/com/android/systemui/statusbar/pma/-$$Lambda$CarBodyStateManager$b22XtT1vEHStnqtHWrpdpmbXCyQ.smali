.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$b22XtT1vEHStnqtHWrpdpmbXCyQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$b22XtT1vEHStnqtHWrpdpmbXCyQ;->f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$b22XtT1vEHStnqtHWrpdpmbXCyQ;->f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->lambda$updateDvrView$241(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Lio/reactivex/CompletableEmitter;)V

    return-void
.end method
