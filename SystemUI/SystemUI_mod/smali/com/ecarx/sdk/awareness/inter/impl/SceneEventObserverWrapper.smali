.class public Lcom/ecarx/sdk/awareness/inter/impl/SceneEventObserverWrapper;
.super Lecarx/decision/IEventObserver$Stub;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "EventObserverWrapper"


# instance fields
.field private eventKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private observerRef:Lcom/ecarx/sdk/awareness/inter/SceneEventObserver;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/ecarx/sdk/awareness/inter/SceneEventObserver;)V
    .locals 1
    .param p2, "observer"    # Lcom/ecarx/sdk/awareness/inter/SceneEventObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ecarx/sdk/awareness/inter/SceneEventObserver;",
            ")V"
        }
    .end annotation

    .line 19
    .local p1, "eventKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lecarx/decision/IEventObserver$Stub;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneEventObserverWrapper;->eventKeyList:Ljava/util/List;

    .line 20
    nop

    .end local p2    # "observer":Lcom/ecarx/sdk/awareness/inter/SceneEventObserver;
    iput-object p2, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneEventObserverWrapper;->observerRef:Lcom/ecarx/sdk/awareness/inter/SceneEventObserver;

    .line 21
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneEventObserverWrapper;
    iget-object p2, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneEventObserverWrapper;->eventKeyList:Ljava/util/List;

    .end local p1    # "eventKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    return-void
.end method


# virtual methods
.method public getEventKeyList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneEventObserverWrapper;->eventKeyList:Ljava/util/List;

    return-object v0
.end method

.method public onEvent(Lecarx/decision/PatternEvent;)V
    .locals 1
    .param p1, "patternEvent"    # Lecarx/decision/PatternEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneEventObserverWrapper;->observerRef:Lcom/ecarx/sdk/awareness/inter/SceneEventObserver;

    if-eqz v0, :cond_0

    .line 27
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneEventObserverWrapper;
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneEventObserverWrapper;->observerRef:Lcom/ecarx/sdk/awareness/inter/SceneEventObserver;

    .end local p1    # "patternEvent":Lecarx/decision/PatternEvent;
    invoke-interface {v0, p1}, Lcom/ecarx/sdk/awareness/inter/SceneEventObserver;->onEvent(Lecarx/decision/PatternEvent;)V

    return-void

    .line 29
    :cond_0
    const-string p1, "EventObserverWrapper"

    const-string v0, "observer==null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method
