.class public Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;
.super Ljava/lang/Object;
.source "WebNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertInfo"
.end annotation


# instance fields
.field public linkText:Ljava/lang/String;

.field public linkUrl:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "linkText"    # Ljava/lang/String;
    .param p4, "linkUrl"    # Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;->title:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;->message:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;->linkText:Ljava/lang/String;

    .line 116
    iput-object p4, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;->linkUrl:Ljava/lang/String;

    .line 117
    return-void
.end method
