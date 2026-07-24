.class public abstract Lcom/ecarx/eas/sdk/user/UserAPI;
.super Lcom/ecarx/eas/framework/sdk/ECarXAPIBase;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/eas/sdk/user/InternalUserAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/ecarx/eas/framework/sdk/ECarXAPIBase;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/ecarx/eas/sdk/user/UserAPI;
    .locals 0

    .line 27
    invoke-static {}, Lcom/ecarx/eas/sdk/user/UserProxy;->get()Lcom/ecarx/eas/sdk/user/UserProxy;

    move-result-object p0

    return-object p0
.end method
