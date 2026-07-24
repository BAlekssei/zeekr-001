.class Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2$2;
.super Ljava/lang/Object;
.source "PmaLoadingIndicatorView2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;

    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2$2;->this$0:Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2$2;->this$0:Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;->access$202(Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;Z)Z

    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2$2;->this$0:Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;->access$300(Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2$2;->this$0:Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;->access$102(Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;J)J

    .line 56
    :cond_0
    return-void
.end method
