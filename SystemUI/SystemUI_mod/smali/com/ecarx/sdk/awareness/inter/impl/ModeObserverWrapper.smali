.class public Lcom/ecarx/sdk/awareness/inter/impl/ModeObserverWrapper;
.super Lecarx/decision/IModeObserver$Stub;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ModeObserverWrapper"


# instance fields
.field private keyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private observerRef:Lcom/ecarx/sdk/awareness/inter/ModeObserver;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/ecarx/sdk/awareness/inter/ModeObserver;)V
    .locals 1
    .param p2, "observer"    # Lcom/ecarx/sdk/awareness/inter/ModeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ecarx/sdk/awareness/inter/ModeObserver;",
            ")V"
        }
    .end annotation

    .line 33
    .local p1, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lecarx/decision/IModeObserver$Stub;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/ModeObserverWrapper;->keyList:Ljava/util/List;

    .line 34
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/ModeObserverWrapper;->keyList:Ljava/util/List;

    .end local p1    # "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/ModeObserverWrapper;
    .end local p2    # "observer":Lcom/ecarx/sdk/awareness/inter/ModeObserver;
    iput-object p2, p0, Lcom/ecarx/sdk/awareness/inter/impl/ModeObserverWrapper;->observerRef:Lcom/ecarx/sdk/awareness/inter/ModeObserver;

    .line 36
    return-void
.end method


# virtual methods
.method public getModeKeyList()Ljava/util/List;
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

    .line 30
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/ModeObserverWrapper;->keyList:Ljava/util/List;

    return-object v0
.end method

.method public onModeChanged(Lecarx/decision/SceneMode;)V
    .locals 2
    .param p1, "sceneMode"    # Lecarx/decision/SceneMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/ModeObserverWrapper;->observerRef:Lcom/ecarx/sdk/awareness/inter/ModeObserver;

    if-eqz v0, :cond_0

    .line 22
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/ModeObserverWrapper;
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/ModeObserverWrapper;->observerRef:Lcom/ecarx/sdk/awareness/inter/ModeObserver;

    .end local p1    # "sceneMode":Lecarx/decision/SceneMode;
    invoke-interface {v0, p1}, Lcom/ecarx/sdk/awareness/inter/ModeObserver;->onModeChanged(Lecarx/decision/SceneMode;)V

    return-void

    .line 24
    :cond_0
    const-string p1, "ModeObserverWrapper"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onModeChanged:observer==null"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method
