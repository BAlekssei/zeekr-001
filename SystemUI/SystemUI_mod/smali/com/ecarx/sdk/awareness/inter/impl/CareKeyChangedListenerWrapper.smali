.class public Lcom/ecarx/sdk/awareness/inter/impl/CareKeyChangedListenerWrapper;
.super Lcom/ecarx/datacenter/ICareKeyChangedListener$Stub;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SceneObserverWrapper"


# instance fields
.field private clientRef:Lcom/ecarx/datacenter/CareKeyChangedListener;


# direct methods
.method public constructor <init>(Lcom/ecarx/datacenter/CareKeyChangedListener;)V
    .locals 0
    .param p1, "observer"    # Lcom/ecarx/datacenter/CareKeyChangedListener;

    .line 15
    invoke-direct {p0}, Lcom/ecarx/datacenter/ICareKeyChangedListener$Stub;-><init>()V

    .line 16
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/CareKeyChangedListenerWrapper;
    .end local p1    # "observer":Lcom/ecarx/datacenter/CareKeyChangedListener;
    iput-object p1, p0, Lcom/ecarx/sdk/awareness/inter/impl/CareKeyChangedListenerWrapper;->clientRef:Lcom/ecarx/datacenter/CareKeyChangedListener;

    .line 17
    return-void
.end method


# virtual methods
.method public onCareKeyListChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    .local p1, "careKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/CareKeyChangedListenerWrapper;->clientRef:Lcom/ecarx/datacenter/CareKeyChangedListener;

    if-eqz v0, :cond_0

    .line 22
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/CareKeyChangedListenerWrapper;
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/CareKeyChangedListenerWrapper;->clientRef:Lcom/ecarx/datacenter/CareKeyChangedListener;

    .end local p1    # "careKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Lcom/ecarx/datacenter/CareKeyChangedListener;->onCareKeyListChanged(Ljava/util/List;)V

    return-void

    .line 24
    :cond_0
    const-string p1, "SceneObserverWrapper"

    const-string v0, "client==null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method
