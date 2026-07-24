.class public Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;
.super Ljava/lang/Object;
.source "SnapCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;
    }
.end annotation


# static fields
.field private static volatile mSnapCache:Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;


# instance fields
.field private final mLruCanonicalName:Landroid/util/LruCache;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLruViewInfo:Landroid/util/LruCache;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->mLruViewInfo:Landroid/util/LruCache;

    .line 30
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->mLruCanonicalName:Landroid/util/LruCache;

    .line 35
    return-void
.end method

.method public static getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;
    .locals 2

    .line 38
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->mSnapCache:Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    if-nez v0, :cond_1

    .line 39
    const-class v0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->mSnapCache:Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;-><init>()V

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->mSnapCache:Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    .line 43
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 45
    :cond_1
    :goto_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->mSnapCache:Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    return-object v0
.end method


# virtual methods
.method public getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 50
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->mLruCanonicalName:Landroid/util/LruCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    .local v0, "canonicalName":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 55
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    const-string v0, "Anonymous"

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->mLruCanonicalName:Landroid/util/LruCache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_2
    return-object v0
.end method

.method public getLocalVisibleRect(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 151
    if-nez p1, :cond_0

    .line 152
    const/4 v0, 0x0

    return-object v0

    .line 154
    :cond_0
    const/4 v0, 0x0

    .line 155
    .local v0, "localVisibleRect":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->mLruViewInfo:Landroid/util/LruCache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;

    .line 156
    .local v1, "viewTempInfo":Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;
    if-eqz v1, :cond_1

    .line 157
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;->localVisibleRect:Ljava/lang/Boolean;

    .line 159
    :cond_1
    return-object v0
.end method

.method public getSelectPath(Landroid/view/View;)Ljava/lang/String;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 67
    if-nez p1, :cond_0

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "hashCode":Ljava/lang/String;
    const/4 v1, 0x0

    .line 72
    .local v1, "selectPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->mLruViewInfo:Landroid/util/LruCache;

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;

    .line 73
    .local v2, "viewTempInfo":Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;
    if-eqz v2, :cond_1

    .line 74
    iget-object v1, v2, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;->selectPath:Ljava/lang/String;

    .line 76
    :cond_1
    return-object v1
.end method

.method public getViewId(Landroid/view/View;)Ljava/lang/String;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 124
    if-nez p1, :cond_0

    .line 125
    const/4 v0, 0x0

    return-object v0

    .line 127
    :cond_0
    const/4 v0, 0x0

    .line 128
    .local v0, "viewId":Ljava/lang/String;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->mLruViewInfo:Landroid/util/LruCache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;

    .line 129
    .local v1, "viewTempInfo":Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;
    if-eqz v1, :cond_1

    .line 130
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;->viewId:Ljava/lang/String;

    .line 132
    :cond_1
    return-object v0
.end method

.method public getViewText(Landroid/view/View;)Ljava/lang/String;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 178
    if-nez p1, :cond_0

    .line 179
    const/4 v0, 0x0

    return-object v0

    .line 181
    :cond_0
    const/4 v0, 0x0

    .line 182
    .local v0, "viewText":Ljava/lang/String;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->mLruViewInfo:Landroid/util/LruCache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;

    .line 183
    .local v1, "viewTempInfo":Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;
    if-eqz v1, :cond_1

    .line 184
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;->viewText:Ljava/lang/String;

    .line 186
    :cond_1
    return-object v0
.end method

.method public getViewType(Landroid/view/View;)Ljava/lang/String;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 96
    if-nez p1, :cond_0

    .line 97
    const/4 v0, 0x0

    return-object v0

    .line 99
    :cond_0
    const/4 v0, 0x0

    .line 100
    .local v0, "viewType":Ljava/lang/String;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->mLruViewInfo:Landroid/util/LruCache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;

    .line 101
    .local v1, "viewTempInfo":Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;
    if-eqz v1, :cond_1

    .line 102
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;->viewType:Ljava/lang/String;

    .line 104
    :cond_1
    return-object v0
.end method

.method public setLocalVisibleRect(Landroid/view/View;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "localVisibleRect"    # Ljava/lang/Boolean;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 164
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "hashCode":Ljava/lang/String;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->mLruViewInfo:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;

    .line 169
    .local v1, "viewTempInfo":Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;
    if-nez v1, :cond_1

    .line 170
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;

    invoke-direct {v2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;-><init>()V

    move-object v1, v2

    .line 172
    :cond_1
    iput-object p2, v1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;->localVisibleRect:Ljava/lang/Boolean;

    .line 173
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->mLruViewInfo:Landroid/util/LruCache;

    invoke-virtual {v2, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-void

    .line 165
    .end local v0    # "hashCode":Ljava/lang/String;
    .end local v1    # "viewTempInfo":Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;
    :cond_2
    :goto_0
    return-void
.end method

.method public setSelectPath(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "selectPath"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 81
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "hashCode":Ljava/lang/String;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->mLruViewInfo:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;

    .line 86
    .local v1, "viewTempInfo":Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;
    if-nez v1, :cond_1

    .line 87
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;

    invoke-direct {v2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;-><init>()V

    move-object v1, v2

    .line 89
    :cond_1
    iput-object p2, v1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;->selectPath:Ljava/lang/String;

    .line 90
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->mLruViewInfo:Landroid/util/LruCache;

    invoke-virtual {v2, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void

    .line 82
    .end local v0    # "hashCode":Ljava/lang/String;
    .end local v1    # "viewTempInfo":Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;
    :cond_2
    :goto_0
    return-void
.end method

.method public setViewId(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewId"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 137
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "hashCode":Ljava/lang/String;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->mLruViewInfo:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;

    .line 142
    .local v1, "viewTempInfo":Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;
    if-nez v1, :cond_1

    .line 143
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;

    invoke-direct {v2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;-><init>()V

    move-object v1, v2

    .line 145
    :cond_1
    iput-object p2, v1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;->viewId:Ljava/lang/String;

    .line 146
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->mLruViewInfo:Landroid/util/LruCache;

    invoke-virtual {v2, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-void

    .line 138
    .end local v0    # "hashCode":Ljava/lang/String;
    .end local v1    # "viewTempInfo":Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;
    :cond_2
    :goto_0
    return-void
.end method

.method public setViewText(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewText"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 191
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "hashCode":Ljava/lang/String;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->mLruViewInfo:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;

    .line 196
    .local v1, "viewTempInfo":Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;
    if-nez v1, :cond_1

    .line 197
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;

    invoke-direct {v2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;-><init>()V

    move-object v1, v2

    .line 199
    :cond_1
    iput-object p2, v1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;->viewText:Ljava/lang/String;

    .line 200
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->mLruViewInfo:Landroid/util/LruCache;

    invoke-virtual {v2, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void

    .line 192
    .end local v0    # "hashCode":Ljava/lang/String;
    .end local v1    # "viewTempInfo":Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;
    :cond_2
    :goto_0
    return-void
.end method

.method public setViewType(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewType"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 109
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "hashCode":Ljava/lang/String;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->mLruViewInfo:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;

    .line 114
    .local v1, "viewTempInfo":Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;
    if-nez v1, :cond_1

    .line 115
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;

    invoke-direct {v2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;-><init>()V

    move-object v1, v2

    .line 117
    :cond_1
    iput-object p2, v1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;->viewType:Ljava/lang/String;

    .line 118
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->mLruViewInfo:Landroid/util/LruCache;

    invoke-virtual {v2, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void

    .line 110
    .end local v0    # "hashCode":Ljava/lang/String;
    .end local v1    # "viewTempInfo":Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache$ViewTempInfo;
    :cond_2
    :goto_0
    return-void
.end method
