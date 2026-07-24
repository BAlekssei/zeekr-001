.class public abstract Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;
.super Ljava/lang/Object;
.source "DefaultStorePlugin.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;


# instance fields
.field private final mFileName:Ljava/lang/String;

.field private final mStoreSp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SASpUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->mStoreSp:Landroid/content/SharedPreferences;

    .line 33
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->mFileName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->type()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBool(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 86
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->isExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->mStoreSp:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 102
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->isExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->mStoreSp:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 105
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 94
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->isExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->mStoreSp:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 97
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 110
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->isExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->mStoreSp:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 78
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->isExists(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->mStoreSp:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 81
    :cond_0
    return-object v1
.end method

.method public isExists(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->mStoreSp:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->mStoreSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 119
    return-void
.end method

.method public setBool(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 58
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->mStoreSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 59
    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 68
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->mStoreSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 69
    return-void
.end method

.method public setInteger(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 63
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->mStoreSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64
    return-void
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 73
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->mStoreSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->mStoreSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 54
    return-void
.end method

.method public abstract storeKeys()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public type()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public upgrade(Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;)V
    .locals 0
    .param p1, "oldPlugin"    # Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    .line 49
    return-void
.end method
