.class public Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;
.super Ljava/lang/Object;
.source "WebNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method create()Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;
    .locals 8

    .line 82
    new-instance v7, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;->webNodes:Ljava/util/List;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;->alertInfos:Ljava/util/List;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;->url:Ljava/lang/String;

    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;->status:Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$1;)V

    return-object v7
.end method

.method setAlertInfo(Ljava/util/List;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;",
            ">;)",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;"
        }
    .end annotation

    .line 62
    .local p1, "alertInfos":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;>;"
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;->alertInfos:Ljava/util/List;

    .line 63
    return-object p0
.end method

.method setStatus(Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;
    .locals 0
    .param p1, "status"    # Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;

    .line 77
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;->status:Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;

    .line 78
    return-object p0
.end method

.method setTitle(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;->title:Ljava/lang/String;

    .line 68
    return-object p0
.end method

.method setUrl(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;->url:Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method setWebNodes(Ljava/util/List;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;",
            ">;)",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;"
        }
    .end annotation

    .line 57
    .local p1, "webNodes":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;>;"
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Builder;->webNodes:Ljava/util/List;

    .line 58
    return-object p0
.end method
