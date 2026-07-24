.class Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1$3;
.super Ljava/lang/Object;
.source "StatusBarFragmentForPMA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;

    .line 340
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1$3;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1$3;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1$3;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$908(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)I

    .line 344
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1$3;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1$3;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1$3;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;

    iget-object v2, v2, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1$3;->val$id:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1$3;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$910(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)I

    .line 346
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1$3;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)I

    move-result v0

    if-gez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1$3;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$902(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;I)I

    .line 349
    :cond_0
    return-void
.end method
