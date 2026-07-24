.class Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$31;
.super Ljava/lang/Object;
.source "StatusBarViewForPMA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->onSceneModeChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 2278
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$31;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iput p2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$31;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2281
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$31;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$31;->val$mode:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$31;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$5400(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;IZ)V

    .line 2282
    return-void
.end method
