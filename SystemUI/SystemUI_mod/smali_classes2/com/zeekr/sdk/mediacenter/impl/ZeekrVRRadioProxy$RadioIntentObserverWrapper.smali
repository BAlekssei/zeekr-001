.class public Lcom/zeekr/sdk/mediacenter/impl/ZeekrVRRadioProxy$RadioIntentObserverWrapper;
.super Lcom/ecarx/eas/sdk/mediacenter/vr/RadioIntentObserver;
.source "ZeekrVRRadioProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeekr/sdk/mediacenter/impl/ZeekrVRRadioProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RadioIntentObserverWrapper"
.end annotation


# instance fields
.field private handling:Lcom/ecarx/eas/sdk/vr/radio/RadioIntentHandling;

.field final synthetic this$0:Lcom/zeekr/sdk/mediacenter/impl/ZeekrVRRadioProxy;


# direct methods
.method public constructor <init>(Lcom/zeekr/sdk/mediacenter/impl/ZeekrVRRadioProxy;Lcom/ecarx/eas/sdk/vr/radio/RadioIntentHandling;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zeekr/sdk/mediacenter/impl/ZeekrVRRadioProxy$RadioIntentObserverWrapper;->this$0:Lcom/zeekr/sdk/mediacenter/impl/ZeekrVRRadioProxy;

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/vr/RadioIntentObserver;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/zeekr/sdk/mediacenter/impl/ZeekrVRRadioProxy$RadioIntentObserverWrapper;->handling:Lcom/ecarx/eas/sdk/vr/radio/RadioIntentHandling;

    return-void
.end method


# virtual methods
.method public checkSameHandling(Lcom/ecarx/eas/sdk/vr/radio/RadioIntentHandling;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zeekr/sdk/mediacenter/impl/ZeekrVRRadioProxy$RadioIntentObserverWrapper;->handling:Lcom/ecarx/eas/sdk/vr/radio/RadioIntentHandling;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public handleCtrlApp(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zeekr/sdk/mediacenter/impl/ZeekrVRRadioProxy$RadioIntentObserverWrapper;->handling:Lcom/ecarx/eas/sdk/vr/radio/RadioIntentHandling;

    new-instance v1, Lcom/zeekr/sdk/mediacenter/b;

    invoke-direct {v1, p1}, Lcom/zeekr/sdk/mediacenter/b;-><init>(I)V

    new-instance p1, Lcom/ecarx/eas/sdk/vr/common/Response;

    invoke-direct {p1}, Lcom/ecarx/eas/sdk/vr/common/Response;-><init>()V

    invoke-virtual {v0, v1, p1}, Lcom/ecarx/eas/sdk/vr/radio/RadioIntentHandling;->handleCtrlApp(Lcom/ecarx/eas/sdk/vr/common/MediaCtrlIntent;Lcom/ecarx/eas/sdk/vr/common/IResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 2
    :catch_0
    move-exception p1

    const-string v0, "handleCtrlApp error : "

    invoke-static {v0}, Lcom/zeekr/sdk/mediacenter/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    const-string v1, "ZeekrVRRadioProxy"

    invoke-static {p1, v0, v1}, Lcom/zeekr/sdk/mediacenter/e;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public handleCtrlMediaClient(II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zeekr/sdk/mediacenter/impl/ZeekrVRRadioProxy$RadioIntentObserverWrapper;->handling:Lcom/ecarx/eas/sdk/vr/radio/RadioIntentHandling;

    new-instance v1, Lcom/zeekr/sdk/mediacenter/b;

    invoke-direct {v1, p1, p2}, Lcom/zeekr/sdk/mediacenter/b;-><init>(II)V

    new-instance p1, Lcom/ecarx/eas/sdk/vr/common/Response;

    invoke-direct {p1}, Lcom/ecarx/eas/sdk/vr/common/Response;-><init>()V

    invoke-virtual {v0, v1, p1}, Lcom/ecarx/eas/sdk/vr/radio/RadioIntentHandling;->handleCtrlApp(Lcom/ecarx/eas/sdk/vr/common/MediaCtrlIntent;Lcom/ecarx/eas/sdk/vr/common/IResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 2
    :catch_0
    move-exception p1

    const-string p2, "handleCtrlMediaClient error : "

    invoke-static {p2}, Lcom/zeekr/sdk/mediacenter/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 3
    const-string v0, "ZeekrVRRadioProxy"

    invoke-static {p1, p2, v0}, Lcom/zeekr/sdk/mediacenter/e;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public handlePlayRadio(Lecarx/xsf/mediacenter/vr/QRadioResult;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zeekr/sdk/mediacenter/impl/ZeekrVRRadioProxy$RadioIntentObserverWrapper;->handling:Lcom/ecarx/eas/sdk/vr/radio/RadioIntentHandling;

    new-instance v1, Lcom/zeekr/sdk/mediacenter/f;

    invoke-direct {v1, p1}, Lcom/zeekr/sdk/mediacenter/f;-><init>(Lecarx/xsf/mediacenter/vr/QRadioResult;)V

    new-instance p1, Lcom/ecarx/eas/sdk/vr/common/Response;

    invoke-direct {p1}, Lcom/ecarx/eas/sdk/vr/common/Response;-><init>()V

    invoke-virtual {v0, v1, p1}, Lcom/ecarx/eas/sdk/vr/radio/RadioIntentHandling;->handleCtrlRadio(Lcom/ecarx/eas/sdk/vr/radio/ICtrlLocalRadioIntent;Lcom/ecarx/eas/sdk/vr/common/IResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 2
    :catch_0
    move-exception p1

    const-string v0, "handleCtrlRadio error : "

    invoke-static {v0}, Lcom/zeekr/sdk/mediacenter/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    const-string v1, "ZeekrVRRadioProxy"

    invoke-static {p1, v0, v1}, Lcom/zeekr/sdk/mediacenter/e;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
