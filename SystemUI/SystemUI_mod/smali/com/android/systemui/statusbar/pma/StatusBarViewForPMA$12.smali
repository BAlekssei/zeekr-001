.class Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$12;
.super Landroid/database/ContentObserver;
.source "StatusBarViewForPMA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->initResetSceneModeSettingListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 695
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$12;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .line 698
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 699
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$12;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$2100(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zeekr_bs_rest_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 700
    .local v0, "isOpen":I
    const-string v1, "StatusBarViewForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "zeekr_bs_rest_mode isOpen "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    if-eqz v0, :cond_0

    .line 702
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$12;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$2202(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;I)I

    .line 703
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$12;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$2302(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Z)Z

    .line 704
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$12;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    new-instance v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$12$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$12$1;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$12;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 712
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$12;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$2302(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Z)Z

    .line 713
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$12;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$2500(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    .line 715
    :goto_0
    return-void
.end method
