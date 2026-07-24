.class public abstract Lcom/sensorsdata/analytics/android/sdk/deeplink/AbsDeepLink;
.super Ljava/lang/Object;
.source "AbsDeepLink.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkProcessor;


# instance fields
.field private deepLinkUrl:Ljava/lang/String;

.field protected mCallBack:Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$OnDeepLinkParseFinishCallback;


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 32
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/deeplink/AbsDeepLink;->setDeepLinkUrl(Ljava/lang/String;)V

    .line 33
    return-void

    .line 29
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getDeepLinkUrl()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/AbsDeepLink;->deepLinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setDeepLinkParseFinishCallback(Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$OnDeepLinkParseFinishCallback;)V
    .locals 0
    .param p1, "callBack"    # Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$OnDeepLinkParseFinishCallback;

    .line 47
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/AbsDeepLink;->mCallBack:Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$OnDeepLinkParseFinishCallback;

    .line 48
    return-void
.end method

.method public setDeepLinkUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "deepLinkUrl"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/AbsDeepLink;->deepLinkUrl:Ljava/lang/String;

    .line 38
    return-void
.end method
