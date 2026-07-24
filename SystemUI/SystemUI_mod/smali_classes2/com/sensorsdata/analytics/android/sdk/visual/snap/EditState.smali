.class public Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;
.super Lcom/sensorsdata/analytics/android/sdk/visual/snap/UIThreadSet;
.source "EditState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sensorsdata/analytics/android/sdk/visual/snap/UIThreadSet<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.EditState"


# instance fields
.field private final mCurrentEdits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Ljava/util/Set<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mIntendedEdits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUiThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/UIThreadSet;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;->mUiThreadHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;->mIntendedEdits:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;->mCurrentEdits:Ljava/util/Map;

    .line 52
    return-void
.end method

.method private applyChangesFromList(Landroid/app/Activity;Landroid/view/View;Ljava/util/List;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p3, "changes":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;>;"
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;->mCurrentEdits:Ljava/util/Map;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;->mCurrentEdits:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;->mCurrentEdits:Ljava/util/Map;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    .line 108
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 109
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;

    .line 110
    .local v3, "visitor":Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;
    new-instance v4, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;

    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;->mUiThreadHandler:Landroid/os/Handler;

    invoke-direct {v4, p2, v3, v5}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;-><init>(Landroid/view/View;Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;Landroid/os/Handler;)V

    .line 111
    .local v4, "binding":Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;
    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;->mCurrentEdits:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v3    # "visitor":Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;
    .end local v4    # "binding":Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private applyEditsOnActivity(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "activityName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 76
    .local v1, "rootView":Landroid/view/View;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 77
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/Window;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 80
    :cond_0
    if-nez v1, :cond_1

    .line 81
    return-void

    .line 85
    :cond_1
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;->mIntendedEdits:Ljava/util/Map;

    monitor-enter v3

    .line 86
    :try_start_0
    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;->mIntendedEdits:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 87
    .local v4, "specificChanges":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;>;"
    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;->mIntendedEdits:Ljava/util/Map;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 88
    .local v5, "wildcardChanges":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    if-eqz v4, :cond_2

    .line 91
    invoke-direct {p0, p1, v1, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;->applyChangesFromList(Landroid/app/Activity;Landroid/view/View;Ljava/util/List;)V

    .line 94
    :cond_2
    if-eqz v5, :cond_3

    .line 95
    invoke-direct {p0, p1, v1, v5}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;->applyChangesFromList(Landroid/app/Activity;Landroid/view/View;Ljava/util/List;)V

    .line 97
    :cond_3
    return-void

    .line 88
    .end local v4    # "specificChanges":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;>;"
    .end local v5    # "wildcardChanges":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private removeChangesOnActivity(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 117
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;->mCurrentEdits:Ljava/util/Map;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;->mCurrentEdits:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 119
    .local v1, "bindingSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;>;"
    if-nez v1, :cond_0

    .line 120
    monitor-exit v0

    return-void

    .line 123
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;

    .line 124
    .local v3, "binding":Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;
    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;->kill()V

    .line 125
    .end local v3    # "binding":Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;
    goto :goto_0

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;->mCurrentEdits:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .end local v1    # "bindingSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;>;"
    monitor-exit v0

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public add(Landroid/app/Activity;)V
    .locals 0
    .param p1, "newOne"    # Landroid/app/Activity;

    .line 59
    invoke-super {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/UIThreadSet;->add(Ljava/lang/Object;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;->applyEditsOnActivity(Landroid/app/Activity;)V

    .line 62
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;->add(Landroid/app/Activity;)V

    return-void
.end method

.method public remove(Landroid/app/Activity;)V
    .locals 0
    .param p1, "oldOne"    # Landroid/app/Activity;

    .line 69
    invoke-super {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/UIThreadSet;->remove(Ljava/lang/Object;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;->removeChangesOnActivity(Landroid/app/Activity;)V

    .line 71
    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;->remove(Landroid/app/Activity;)V

    return-void
.end method
