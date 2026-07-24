.class public abstract Lcom/ecarx/xui/adaptapi/dvr/forp/Dvr;
.super Lcom/ecarx/xui/adaptapi/AdaptAPI;
.source "Dvr.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/ecarx/xui/adaptapi/AdaptAPI;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/dvr/forp/Dvr;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract getDvrFunction()Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrFunction;
.end method

.method public abstract getDvrInfos()Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrInfo;
.end method

.method public abstract getDvrManager()Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;
.end method

.method public abstract getOta()Lcom/ecarx/xui/adaptapi/dvr/ota/IOta;
.end method
