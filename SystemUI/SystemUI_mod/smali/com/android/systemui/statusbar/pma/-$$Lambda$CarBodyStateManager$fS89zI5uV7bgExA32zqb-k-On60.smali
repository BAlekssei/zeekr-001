.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$fS89zI5uV7bgExA32zqb-k-On60;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private final synthetic f$1:Z

.field private final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$fS89zI5uV7bgExA32zqb-k-On60;->f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$fS89zI5uV7bgExA32zqb-k-On60;->f$1:Z

    iput p3, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$fS89zI5uV7bgExA32zqb-k-On60;->f$2:F

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$fS89zI5uV7bgExA32zqb-k-On60;->f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$fS89zI5uV7bgExA32zqb-k-On60;->f$1:Z

    iget v2, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$fS89zI5uV7bgExA32zqb-k-On60;->f$2:F

    invoke-static {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->lambda$updateBatteryLevel$184(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZFLio/reactivex/CompletableEmitter;)V

    return-void
.end method
