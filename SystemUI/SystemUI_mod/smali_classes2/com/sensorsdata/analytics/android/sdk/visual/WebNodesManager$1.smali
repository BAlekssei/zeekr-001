.class Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager$1;
.super Ljava/lang/Object;
.source "WebNodesManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->parseResult(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;

    .line 163
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;)I
    .locals 2
    .param p1, "o1"    # Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;
    .param p2, "o2"    # Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;

    .line 166
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->getLevel()I

    move-result v0

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->getLevel()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 163
    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;

    check-cast p2, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;

    invoke-virtual {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager$1;->compare(Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;)I

    move-result p1

    return p1
.end method
