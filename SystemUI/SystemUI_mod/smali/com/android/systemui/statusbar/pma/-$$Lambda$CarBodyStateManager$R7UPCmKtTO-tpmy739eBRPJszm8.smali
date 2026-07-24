.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$R7UPCmKtTO-tpmy739eBRPJszm8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function3;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$R7UPCmKtTO-tpmy739eBRPJszm8;->f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$R7UPCmKtTO-tpmy739eBRPJszm8;->f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Float;

    check-cast p3, Ljava/lang/Float;

    invoke-static {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->lambda$updateAdjustableTemp$134(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
