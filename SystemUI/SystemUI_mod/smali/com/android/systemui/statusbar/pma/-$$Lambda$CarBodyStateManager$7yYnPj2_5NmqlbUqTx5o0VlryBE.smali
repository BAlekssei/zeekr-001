.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$7yYnPj2_5NmqlbUqTx5o0VlryBE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$7yYnPj2_5NmqlbUqTx5o0VlryBE;->f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$7yYnPj2_5NmqlbUqTx5o0VlryBE;->f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->lambda$updatePm25ValueInternal$149(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    return-void
.end method
