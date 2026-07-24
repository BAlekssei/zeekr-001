.class Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1$1;
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


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;

    .line 311
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    .line 315
    return-void
.end method
