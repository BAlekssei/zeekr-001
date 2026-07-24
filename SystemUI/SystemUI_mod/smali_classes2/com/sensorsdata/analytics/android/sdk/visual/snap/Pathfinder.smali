.class public Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder;
.super Ljava/lang/Object;
.source "Pathfinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$IntStack;,
        Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;,
        Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$Accumulator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.PathFinder"


# instance fields
.field private final mIndexStack:Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$IntStack;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$IntStack;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$IntStack;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder;->mIndexStack:Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$IntStack;

    .line 41
    return-void
.end method

.method private findPrefixedMatch(Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;Landroid/view/View;I)Landroid/view/View;
    .locals 6
    .param p1, "findElement"    # Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;
    .param p2, "subject"    # Landroid/view/View;
    .param p3, "indexKey"    # I

    .line 121
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder;->mIndexStack:Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$IntStack;

    invoke-virtual {v0, p3}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$IntStack;->read(I)I

    move-result v0

    .line 122
    .local v0, "currentIndex":I
    invoke-direct {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder;->matches(Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder;->mIndexStack:Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$IntStack;

    invoke-virtual {v1, p3}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$IntStack;->increment(I)V

    .line 124
    iget v1, p1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;->index:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;->index:I

    if-ne v1, v0, :cond_1

    .line 125
    :cond_0
    return-object p2

    .line 129
    :cond_1
    iget v1, p1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;->prefix:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    instance-of v1, p2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 130
    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    .line 131
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 132
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 133
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 134
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 135
    invoke-direct {p0, p1, v4, p3}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder;->findPrefixedMatch(Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 136
    .local v5, "result":Landroid/view/View;
    if-eqz v5, :cond_2

    .line 137
    return-object v5

    .line 132
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "result":Landroid/view/View;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method private findTargetsInMatchedView(Landroid/view/View;Ljava/util/List;Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$Accumulator;)V
    .locals 10
    .param p1, "alreadyMatched"    # Landroid/view/View;
    .param p3, "accumulator"    # Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$Accumulator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;",
            ">;",
            "Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$Accumulator;",
            ")V"
        }
    .end annotation

    .line 84
    .local p2, "remainingPath":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {p3, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$Accumulator;->accumulate(Landroid/view/View;)V

    .line 87
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder;->mIndexStack:Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$IntStack;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$IntStack;->full()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    const-string v0, "SA.PathFinder"

    const-string v1, "Path is too deep, there is no memory to perfrom the finding"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void

    .line 95
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    .line 96
    return-void

    .line 99
    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 100
    .local v0, "parent":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;

    .line 101
    .local v2, "matchElement":Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {p2, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 103
    .local v3, "nextPath":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;>;"
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 104
    .local v4, "childCount":I
    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder;->mIndexStack:Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$IntStack;

    invoke-virtual {v5}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$IntStack;->alloc()I

    move-result v5

    .line 105
    .local v5, "indexKey":I
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_5

    .line 106
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 107
    .local v6, "givenChild":Landroid/view/View;
    invoke-direct {p0, v2, v6, v5}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder;->findPrefixedMatch(Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 108
    .local v7, "child":Landroid/view/View;
    if-eqz v7, :cond_3

    .line 109
    invoke-direct {p0, v7, v3, p3}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder;->findTargetsInMatchedView(Landroid/view/View;Ljava/util/List;Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$Accumulator;)V

    .line 111
    :cond_3
    iget v8, v2, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;->index:I

    if-ltz v8, :cond_4

    iget-object v8, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder;->mIndexStack:Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$IntStack;

    invoke-virtual {v8, v5}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$IntStack;->read(I)I

    move-result v8

    iget v9, v2, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;->index:I

    if-le v8, v9, :cond_4

    .line 112
    goto :goto_1

    .line 105
    .end local v6    # "givenChild":Landroid/view/View;
    .end local v7    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "i":I
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder;->mIndexStack:Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$IntStack;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$IntStack;->free()V

    .line 116
    return-void
.end method

.method public static hasClassName(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "className"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 45
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "canonicalName":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_2

    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    const/4 v2, 0x1

    return v2

    .line 50
    :cond_0
    const-class v2, Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    .line 51
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 56
    :cond_2
    :goto_1
    const/4 v2, 0x0

    return v2
.end method

.method private matches(Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;Landroid/view/View;)Z
    .locals 3
    .param p1, "matchElement"    # Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;
    .param p2, "subject"    # Landroid/view/View;

    .line 147
    iget-object v0, p1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;->viewClassName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;->viewClassName:Ljava/lang/String;

    .line 148
    invoke-static {p2, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder;->hasClassName(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    return v1

    .line 152
    :cond_0
    const/4 v0, -0x1

    iget v2, p1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;->viewId:I

    if-eq v0, v2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    iget v2, p1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;->viewId:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method


# virtual methods
.method public findTargetsInRoot(Landroid/view/View;Ljava/util/List;Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$Accumulator;)V
    .locals 5
    .param p1, "givenRootView"    # Landroid/view/View;
    .param p3, "accumulator"    # Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$Accumulator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;",
            ">;",
            "Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$Accumulator;",
            ")V"
        }
    .end annotation

    .line 61
    .local p2, "path":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder;->mIndexStack:Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$IntStack;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$IntStack;->full()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    const-string v0, "SA.PathFinder"

    const-string v1, "Path is too deep, there is no memory to perfrom the finding"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void

    .line 70
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;

    .line 71
    .local v0, "rootPathElement":Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;
    const/4 v1, 0x1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 73
    .local v1, "childPath":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;>;"
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder;->mIndexStack:Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$IntStack;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$IntStack;->alloc()I

    move-result v2

    .line 74
    .local v2, "indexKey":I
    invoke-direct {p0, v0, p1, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder;->findPrefixedMatch(Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 75
    .local v3, "rootView":Landroid/view/View;
    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder;->mIndexStack:Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$IntStack;

    invoke-virtual {v4}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$IntStack;->free()V

    .line 77
    if-eqz v3, :cond_2

    .line 78
    invoke-direct {p0, v3, v1, p3}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder;->findTargetsInMatchedView(Landroid/view/View;Ljava/util/List;Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$Accumulator;)V

    .line 80
    :cond_2
    return-void
.end method
