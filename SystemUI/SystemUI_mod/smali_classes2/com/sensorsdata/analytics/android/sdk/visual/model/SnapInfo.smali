.class public Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;
.super Ljava/lang/Object;
.source "SnapInfo.java"


# instance fields
.field public activityTitle:Ljava/lang/String;

.field public alertInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;",
            ">;"
        }
    .end annotation
.end field

.field public elementLevel:I

.field public hasFragment:Z

.field public isWebView:Z

.field public screenName:Ljava/lang/String;

.field public webLibVersion:Ljava/lang/String;

.field public webViewScale:F

.field public webViewUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->elementLevel:I

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->isWebView:Z

    return-void
.end method
