.class public abstract Lcom/ecarx/eas/sdk/userv2/UserAPIV2;
.super Lcom/ecarx/eas/framework/sdk/ECarXAPIBase;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/ecarx/eas/framework/sdk/ECarXAPIBase;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/ecarx/eas/sdk/userv2/UserAPIV2;
    .locals 0

    .line 28
    invoke-static {}, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->get()Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;

    move-result-object p0

    return-object p0
.end method
