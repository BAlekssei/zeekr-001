.class public Lcom/ecarx/sdk/awareness/inter/impl/AbilityProviderWrapper;
.super Lcom/ecarx/sdk/smartscene/IAbilityProvider$Stub;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AbilityProviderWrapper"


# instance fields
.field private clientRef:Lcom/ecarx/sdk/awareness/inter/AbilityProvider;

.field private serviceModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ecarx/sdk/smartscene/ServiceModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/ecarx/sdk/awareness/inter/AbilityProvider;)V
    .locals 1
    .param p2, "abilityProvider"    # Lcom/ecarx/sdk/awareness/inter/AbilityProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ecarx/sdk/smartscene/ServiceModel;",
            ">;",
            "Lcom/ecarx/sdk/awareness/inter/AbilityProvider;",
            ")V"
        }
    .end annotation

    .line 18
    .local p1, "serviceModelList":Ljava/util/List;, "Ljava/util/List<Lcom/ecarx/sdk/smartscene/ServiceModel;>;"
    invoke-direct {p0}, Lcom/ecarx/sdk/smartscene/IAbilityProvider$Stub;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/AbilityProviderWrapper;->serviceModelList:Ljava/util/List;

    .line 19
    nop

    .end local p2    # "abilityProvider":Lcom/ecarx/sdk/awareness/inter/AbilityProvider;
    iput-object p2, p0, Lcom/ecarx/sdk/awareness/inter/impl/AbilityProviderWrapper;->clientRef:Lcom/ecarx/sdk/awareness/inter/AbilityProvider;

    .line 20
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/AbilityProviderWrapper;
    iget-object p2, p0, Lcom/ecarx/sdk/awareness/inter/impl/AbilityProviderWrapper;->serviceModelList:Ljava/util/List;

    .end local p1    # "serviceModelList":Ljava/util/List;, "Ljava/util/List<Lcom/ecarx/sdk/smartscene/ServiceModel;>;"
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    return-void
.end method


# virtual methods
.method public getClientRef()Lcom/ecarx/sdk/awareness/inter/AbilityProvider;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/AbilityProviderWrapper;->clientRef:Lcom/ecarx/sdk/awareness/inter/AbilityProvider;

    return-object v0
.end method

.method public getServiceModelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ecarx/sdk/smartscene/ServiceModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/AbilityProviderWrapper;->serviceModelList:Ljava/util/List;

    return-object v0
.end method

.method public isAlive()Z
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/AbilityProviderWrapper;->clientRef:Lcom/ecarx/sdk/awareness/inter/AbilityProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 51
    :goto_0
    const-string v1, "AbilityProviderWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isAlive:alive == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return v0
.end method

.method public onCallService(Lcom/ecarx/sdk/smartscene/ServiceModel;)V
    .locals 1
    .param p1, "serviceModel"    # Lcom/ecarx/sdk/smartscene/ServiceModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/AbilityProviderWrapper;->clientRef:Lcom/ecarx/sdk/awareness/inter/AbilityProvider;

    if-eqz v0, :cond_0

    .line 38
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/AbilityProviderWrapper;
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/AbilityProviderWrapper;->clientRef:Lcom/ecarx/sdk/awareness/inter/AbilityProvider;

    .end local p1    # "serviceModel":Lcom/ecarx/sdk/smartscene/ServiceModel;
    invoke-interface {v0, p1}, Lcom/ecarx/sdk/awareness/inter/AbilityProvider;->onCallService(Lcom/ecarx/sdk/smartscene/ServiceModel;)V

    return-void

    .line 40
    :cond_0
    const-string p1, "AbilityProviderWrapper"

    const-string v0, "client==null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method

.method public setClientRef(Lcom/ecarx/sdk/awareness/inter/AbilityProvider;)V
    .locals 0
    .param p1, "clientRef"    # Lcom/ecarx/sdk/awareness/inter/AbilityProvider;

    .line 28
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/AbilityProviderWrapper;
    .end local p1    # "clientRef":Lcom/ecarx/sdk/awareness/inter/AbilityProvider;
    iput-object p1, p0, Lcom/ecarx/sdk/awareness/inter/impl/AbilityProviderWrapper;->clientRef:Lcom/ecarx/sdk/awareness/inter/AbilityProvider;

    .line 29
    return-void
.end method

.method public setServiceModelList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ecarx/sdk/smartscene/ServiceModel;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p1, "serviceModelList":Ljava/util/List;, "Ljava/util/List<Lcom/ecarx/sdk/smartscene/ServiceModel;>;"
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/AbilityProviderWrapper;
    .end local p1    # "serviceModelList":Ljava/util/List;, "Ljava/util/List<Lcom/ecarx/sdk/smartscene/ServiceModel;>;"
    iput-object p1, p0, Lcom/ecarx/sdk/awareness/inter/impl/AbilityProviderWrapper;->serviceModelList:Ljava/util/List;

    .line 33
    return-void
.end method
