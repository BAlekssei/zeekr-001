.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$Tv-A44k9SfSSaXPOjBPJzjhSO-A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

.field private final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$Tv-A44k9SfSSaXPOjBPJzjhSO-A;->f$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$Tv-A44k9SfSSaXPOjBPJzjhSO-A;->f$1:[B

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$Tv-A44k9SfSSaXPOjBPJzjhSO-A;->f$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$Tv-A44k9SfSSaXPOjBPJzjhSO-A;->f$1:[B

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lambda$handleSetDidUsbModeChange$7(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;[BLio/reactivex/CompletableEmitter;)V

    return-void
.end method
