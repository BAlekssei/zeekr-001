.class public abstract Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;
.super Ljava/lang/Object;
.source "PersistentIdentity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CommitPrefEdits"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.PersistentIdentity"


# instance fields
.field private item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final persistentKey:Ljava/lang/String;

.field private final saStoreManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

.field private final serializer:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;)V
    .locals 1
    .param p1, "persistentKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer<",
            "TT;>;)V"
        }
    .end annotation

    .line 35
    .local p0, "this":Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;, "Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity<TT;>;"
    .local p2, "serializer":Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;, "Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->serializer:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;

    .line 37
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->persistentKey:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->saStoreManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    .line 39
    return-void
.end method


# virtual methods
.method public commit(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;, "Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDisableSDK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    return-void

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->item:Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->saStoreManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->item:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->serializer:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;

    invoke-interface {v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;->create()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->item:Ljava/lang/Object;

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->saStoreManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->persistentKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->serializer:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->item:Ljava/lang/Object;

    invoke-interface {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;->save(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    monitor-exit v0

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;, "Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity<TT;>;"
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->item:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->saStoreManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->saStoreManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->persistentKey:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 52
    if-nez v0, :cond_0

    .line 53
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->serializer:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;

    invoke-interface {v2}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;->create()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->item:Ljava/lang/Object;

    .line 54
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->item:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->commit(Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->serializer:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;

    invoke-interface {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->item:Ljava/lang/Object;

    .line 58
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 60
    .end local v0    # "data":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public isExists()Z
    .locals 2

    .line 90
    .local p0, "this":Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;, "Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->saStoreManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->persistentKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->isExists(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 94
    .end local v0    # "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public remove()V
    .locals 3

    .line 101
    .local p0, "this":Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;, "Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity<TT;>;"
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->saStoreManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->saStoreManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->persistentKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->remove(Ljava/lang/String;)V

    .line 103
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
