.class final Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl$2;
.super Lcom/ecarx/eas/framework/sdk/Singleton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ecarx/eas/framework/sdk/Singleton<",
        "Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/ecarx/eas/framework/sdk/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected final create()Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;
    .locals 1

    .line 86
    new-instance v0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;

    invoke-direct {v0}, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;-><init>()V

    return-object v0
.end method

.method protected final bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl$2;->create()Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;

    move-result-object v0

    return-object v0
.end method
