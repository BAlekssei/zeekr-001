.class public final enum Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;
.super Ljava/lang/Enum;
.source "WebNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;

.field public static final enum FAILURE:Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;

.field public static final enum SUCCESS:Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 121
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;->SUCCESS:Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;

    .line 122
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;

    const-string v1, "FAILURE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;->FAILURE:Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;->SUCCESS:Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;->FAILURE:Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;->$VALUES:[Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 120
    const-class v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;

    return-object v0
.end method

.method public static values()[Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;
    .locals 1

    .line 120
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;->$VALUES:[Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;

    invoke-virtual {v0}, [Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;

    return-object v0
.end method
