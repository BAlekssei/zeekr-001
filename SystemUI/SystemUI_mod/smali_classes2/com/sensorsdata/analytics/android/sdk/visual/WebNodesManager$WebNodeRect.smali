.class Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager$WebNodeRect;
.super Ljava/lang/Object;
.source "WebNodesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WebNodeRect"
.end annotation


# instance fields
.field public left:F

.field public top:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "top"    # F
    .param p2, "left"    # F

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager$WebNodeRect;->top:F

    .line 227
    iput p2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager$WebNodeRect;->left:F

    .line 228
    return-void
.end method
