.class public Lcom/ecarx/sdk/awareness/inter/impl/SceneObserverWrapper;
.super Lecarx/decision/IPatternListener$Stub;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SceneObserverWrapper"


# instance fields
.field private careTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private clientRef:Lcom/ecarx/sdk/awareness/inter/SceneObserver;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/ecarx/sdk/awareness/inter/SceneObserver;)V
    .locals 1
    .param p2, "client"    # Lcom/ecarx/sdk/awareness/inter/SceneObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ecarx/sdk/awareness/inter/SceneObserver;",
            ")V"
        }
    .end annotation

    .line 19
    .local p1, "careTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lecarx/decision/IPatternListener$Stub;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneObserverWrapper;->careTypeList:Ljava/util/List;

    .line 20
    nop

    .end local p2    # "client":Lcom/ecarx/sdk/awareness/inter/SceneObserver;
    iput-object p2, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneObserverWrapper;->clientRef:Lcom/ecarx/sdk/awareness/inter/SceneObserver;

    .line 21
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneObserverWrapper;
    iget-object p2, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneObserverWrapper;->careTypeList:Ljava/util/List;

    .end local p1    # "careTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    return-void
.end method


# virtual methods
.method public getCareTypeList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneObserverWrapper;->careTypeList:Ljava/util/List;

    return-object v0
.end method

.method public onPatternStateChanged(Lecarx/decision/PatternState;)V
    .locals 1
    .param p1, "patternState"    # Lecarx/decision/PatternState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneObserverWrapper;->clientRef:Lcom/ecarx/sdk/awareness/inter/SceneObserver;

    if-eqz v0, :cond_0

    .line 27
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneObserverWrapper;
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneObserverWrapper;->clientRef:Lcom/ecarx/sdk/awareness/inter/SceneObserver;

    .end local p1    # "patternState":Lecarx/decision/PatternState;
    invoke-interface {v0, p1}, Lcom/ecarx/sdk/awareness/inter/SceneObserver;->onSceneChanged(Lecarx/decision/PatternState;)V

    return-void

    .line 29
    :cond_0
    const-string p1, "SceneObserverWrapper"

    const-string v0, "client==null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method
