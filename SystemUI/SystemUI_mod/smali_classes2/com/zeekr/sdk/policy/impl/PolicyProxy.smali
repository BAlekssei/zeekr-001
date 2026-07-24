.class public final Lcom/zeekr/sdk/policy/impl/PolicyProxy;
.super Lcom/zeekr/sdk/policy/impl/PolicyAPI;
.source "PolicyProxy.java"


# static fields
.field public static final e:Lcom/zeekr/sdk/base/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zeekr/sdk/base/Singleton<",
            "Lcom/zeekr/sdk/policy/impl/PolicyProxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/zeekr/sdk/policy/d;

.field public b:Lcom/zeekr/sdk/policy/e;

.field public c:Lcom/zeekr/sdk/policy/b;

.field public d:Lcom/zeekr/sdk/policy/impl/AppPolicyImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/zeekr/sdk/policy/impl/PolicyProxy$1;

    invoke-direct {v0}, Lcom/zeekr/sdk/policy/impl/PolicyProxy$1;-><init>()V

    sput-object v0, Lcom/zeekr/sdk/policy/impl/PolicyProxy;->e:Lcom/zeekr/sdk/base/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/zeekr/sdk/policy/impl/PolicyAPI;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAppPolicy()Lcom/zeekr/sdk/policy/ability/IAppPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zeekr/sdk/policy/impl/PolicyProxy;->d:Lcom/zeekr/sdk/policy/impl/AppPolicyImpl;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/zeekr/sdk/policy/impl/PolicyProxy;->d:Lcom/zeekr/sdk/policy/impl/AppPolicyImpl;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/zeekr/sdk/policy/impl/AppPolicyImpl;

    invoke-direct {v0}, Lcom/zeekr/sdk/policy/impl/AppPolicyImpl;-><init>()V

    iput-object v0, p0, Lcom/zeekr/sdk/policy/impl/PolicyProxy;->d:Lcom/zeekr/sdk/policy/impl/AppPolicyImpl;

    .line 6
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zeekr/sdk/policy/impl/PolicyProxy;->d:Lcom/zeekr/sdk/policy/impl/AppPolicyImpl;

    return-object v0
.end method

.method public final getAudioAttributes()Lcom/zeekr/sdk/policy/ability/IAudioAttributes;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zeekr/sdk/policy/impl/PolicyProxy;->c:Lcom/zeekr/sdk/policy/b;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/zeekr/sdk/policy/impl/PolicyProxy;->c:Lcom/zeekr/sdk/policy/b;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/zeekr/sdk/policy/b;

    invoke-direct {v0}, Lcom/zeekr/sdk/policy/b;-><init>()V

    iput-object v0, p0, Lcom/zeekr/sdk/policy/impl/PolicyProxy;->c:Lcom/zeekr/sdk/policy/b;

    .line 6
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zeekr/sdk/policy/impl/PolicyProxy;->c:Lcom/zeekr/sdk/policy/b;

    return-object v0
.end method

.method public final getServiceAlias()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "policy"

    return-object v0
.end method

.method public final getStoragePolicy()Lcom/zeekr/sdk/policy/ability/IStoragePolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zeekr/sdk/policy/impl/PolicyProxy;->a:Lcom/zeekr/sdk/policy/d;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/zeekr/sdk/policy/impl/PolicyProxy;->a:Lcom/zeekr/sdk/policy/d;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/zeekr/sdk/policy/d;

    invoke-direct {v0}, Lcom/zeekr/sdk/policy/d;-><init>()V

    iput-object v0, p0, Lcom/zeekr/sdk/policy/impl/PolicyProxy;->a:Lcom/zeekr/sdk/policy/d;

    .line 6
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zeekr/sdk/policy/impl/PolicyProxy;->a:Lcom/zeekr/sdk/policy/d;

    return-object v0
.end method

.method public final getVoiceAssistantPolicy()Lcom/zeekr/sdk/policy/ability/IVoiceAssistantPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zeekr/sdk/policy/impl/PolicyProxy;->b:Lcom/zeekr/sdk/policy/e;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/zeekr/sdk/policy/impl/PolicyProxy;->b:Lcom/zeekr/sdk/policy/e;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/zeekr/sdk/policy/e;

    invoke-direct {v0}, Lcom/zeekr/sdk/policy/e;-><init>()V

    iput-object v0, p0, Lcom/zeekr/sdk/policy/impl/PolicyProxy;->b:Lcom/zeekr/sdk/policy/e;

    .line 6
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zeekr/sdk/policy/impl/PolicyProxy;->b:Lcom/zeekr/sdk/policy/e;

    return-object v0
.end method
