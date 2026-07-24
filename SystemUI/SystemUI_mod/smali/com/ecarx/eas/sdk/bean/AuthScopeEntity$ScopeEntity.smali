.class public Lcom/ecarx/eas/sdk/bean/AuthScopeEntity$ScopeEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/eas/sdk/bean/AuthScopeEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScopeEntity"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x380393958a7a80cL


# instance fields
.field private appId:Ljava/lang/String;

.field private gmtCreate:Ljava/lang/String;

.field private gmtModified:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private resCode:Ljava/lang/String;

.field private resInfo:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/ecarx/eas/sdk/bean/AuthScopeEntity$ScopeEntity;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getGmtCreate()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/ecarx/eas/sdk/bean/AuthScopeEntity$ScopeEntity;->gmtCreate:Ljava/lang/String;

    return-object v0
.end method

.method public getGmtModified()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/ecarx/eas/sdk/bean/AuthScopeEntity$ScopeEntity;->gmtModified:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/ecarx/eas/sdk/bean/AuthScopeEntity$ScopeEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getResCode()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/ecarx/eas/sdk/bean/AuthScopeEntity$ScopeEntity;->resCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResInfo()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/ecarx/eas/sdk/bean/AuthScopeEntity$ScopeEntity;->resInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/ecarx/eas/sdk/bean/AuthScopeEntity$ScopeEntity;->status:Ljava/lang/String;

    return-object v0
.end method
