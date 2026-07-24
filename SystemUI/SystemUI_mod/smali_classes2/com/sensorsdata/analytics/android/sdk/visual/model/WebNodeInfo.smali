.class public Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;
.super Ljava/lang/Object;
.source "WebNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;,
        Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;,
        Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;
    }
.end annotation


# instance fields
.field private alertInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;",
            ">;"
        }
    .end annotation
.end field

.field private status:Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private webNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;)V
    .locals 0
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "status"    # Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;",
            ")V"
        }
    .end annotation

    .line 29
    .local p1, "webNodes":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;>;"
    .local p2, "alertInfos":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;->webNodes:Ljava/util/List;

    .line 31
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;->alertInfos:Ljava/util/List;

    .line 32
    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;->title:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;->url:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;->status:Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;
    .param p6, "x5"    # Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$1;

    .line 21
    invoke-direct/range {p0 .. p5}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;)V

    return-void
.end method

.method public static createPageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;->setTitle(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;->setUrl(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;->create()Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createWebAlertInfo(Ljava/util/List;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;",
            ">;)",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;"
        }
    .end annotation

    .line 38
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;>;"
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;->setAlertInfo(Ljava/util/List;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;->FAILURE:Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;->setStatus(Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;->create()Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createWebNodesInfo(Ljava/util/List;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;",
            ">;)",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;"
        }
    .end annotation

    .line 42
    .local p0, "webNodes":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;>;"
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;->setWebNodes(Ljava/util/List;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;->SUCCESS:Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;->setStatus(Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;->create()Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlertInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;->alertInfos:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;->status:Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWebNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;->webNodes:Ljava/util/List;

    return-object v0
.end method
