.class public Lcom/ecarx/eas/sdk/bean/AuthScopeEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecarx/eas/sdk/bean/AuthScopeEntity$ScopeEntity;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2f0bcb0024a8789aL


# instance fields
.field private appIcon:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private resList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ecarx/eas/sdk/bean/AuthScopeEntity$ScopeEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppIcon()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/ecarx/eas/sdk/bean/AuthScopeEntity;->appIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/ecarx/eas/sdk/bean/AuthScopeEntity;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getResList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ecarx/eas/sdk/bean/AuthScopeEntity$ScopeEntity;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/ecarx/eas/sdk/bean/AuthScopeEntity;->resList:Ljava/util/List;

    return-object v0
.end method
