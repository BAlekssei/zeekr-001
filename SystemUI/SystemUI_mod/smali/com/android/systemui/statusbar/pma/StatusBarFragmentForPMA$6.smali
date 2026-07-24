.class Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$6;
.super Ljava/lang/Object;
.source "StatusBarFragmentForPMA.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 683
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$6;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 2
    .param p1, "icon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 686
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$6;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->recomputeDisableFlags(Z)V

    .line 687
    return-void
.end method
