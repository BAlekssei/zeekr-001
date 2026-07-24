.class public Lcom/ecarx/sdk/awareness/inter/impl/ContextObserverWrapper;
.super Lecarx/decision/IContextObserver$Stub;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SceneObserverWrapper"


# instance fields
.field private clientRef:Lcom/ecarx/sdk/awareness/inter/ContextObserver;

.field private idList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/ecarx/sdk/awareness/inter/ContextObserver;)V
    .locals 1
    .param p2, "observer"    # Lcom/ecarx/sdk/awareness/inter/ContextObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ecarx/sdk/awareness/inter/ContextObserver;",
            ")V"
        }
    .end annotation

    .line 19
    .local p1, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lecarx/decision/IContextObserver$Stub;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/ContextObserverWrapper;->idList:Ljava/util/List;

    .line 20
    nop

    .end local p2    # "observer":Lcom/ecarx/sdk/awareness/inter/ContextObserver;
    iput-object p2, p0, Lcom/ecarx/sdk/awareness/inter/impl/ContextObserverWrapper;->clientRef:Lcom/ecarx/sdk/awareness/inter/ContextObserver;

    .line 21
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/ContextObserverWrapper;
    iget-object p2, p0, Lcom/ecarx/sdk/awareness/inter/impl/ContextObserverWrapper;->idList:Ljava/util/List;

    .end local p1    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    return-void
.end method


# virtual methods
.method public getContextIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/ContextObserverWrapper;->idList:Ljava/util/List;

    return-object v0
.end method

.method public onContextChanged(Lecarx/decision/BasicContext;)V
    .locals 1
    .param p1, "basicContext"    # Lecarx/decision/BasicContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/ContextObserverWrapper;->clientRef:Lcom/ecarx/sdk/awareness/inter/ContextObserver;

    if-eqz v0, :cond_0

    .line 27
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/ContextObserverWrapper;
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/ContextObserverWrapper;->clientRef:Lcom/ecarx/sdk/awareness/inter/ContextObserver;

    .end local p1    # "basicContext":Lecarx/decision/BasicContext;
    invoke-interface {v0, p1}, Lcom/ecarx/sdk/awareness/inter/ContextObserver;->onContextChanged(Lecarx/decision/BasicContext;)V

    return-void

    .line 29
    :cond_0
    const-string p1, "SceneObserverWrapper"

    const-string v0, "client==null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method
