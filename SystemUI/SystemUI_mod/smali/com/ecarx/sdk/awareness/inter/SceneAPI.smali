.class public abstract Lcom/ecarx/sdk/awareness/inter/SceneAPI;
.super Lcom/ecarx/eas/framework/sdk/ECarXAPIBase;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/sdk/awareness/inter/ISceneAPI;


# static fields
.field private static final TAG:Ljava/lang/String; = "SceneAPI"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/ecarx/eas/framework/sdk/ECarXAPIBase;-><init>()V

    return-void
.end method

.method public static get()Lcom/ecarx/sdk/awareness/inter/SceneAPI;
    .locals 1

    .line 21
    invoke-static {}, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;->get()Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;

    .line 26
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/SceneAPI;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "callback":Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;
    invoke-super {p0, p1, p2}, Lcom/ecarx/eas/framework/sdk/ECarXAPIBase;->init(Landroid/content/Context;Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;)V

    .line 27
    return-void
.end method
