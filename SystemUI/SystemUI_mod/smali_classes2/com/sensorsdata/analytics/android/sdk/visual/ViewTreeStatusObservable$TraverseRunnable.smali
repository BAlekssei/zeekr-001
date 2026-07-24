.class Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable$TraverseRunnable;
.super Ljava/lang/Object;
.source "ViewTreeStatusObservable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TraverseRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;

    .line 68
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable$TraverseRunnable;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 73
    .local v0, "startTime":J
    const-string v2, "SA.ViewTreeStatusObservable"

    const-string v3, "start traverse..."

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable$TraverseRunnable;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->access$000(Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;)V

    .line 75
    const-string v2, "SA.ViewTreeStatusObservable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop traverse...:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method
