.class public Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;
.super Ljava/lang/Object;
.source "WeakSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/util/WeakSet$NonEmptyIterator;,
        Lcom/sensorsdata/analytics/android/sdk/util/WeakSet$EmptyIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final PRESENT:Ljava/lang/Object;


# instance fields
.field private transient map:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->PRESENT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    .local p0, "this":Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;, "Lcom/sensorsdata/analytics/android/sdk/util/WeakSet<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 99
    .local p0, "this":Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;, "Lcom/sensorsdata/analytics/android/sdk/util/WeakSet<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_2

    .line 102
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->map:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->map:Ljava/util/WeakHashMap;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->map:Ljava/util/WeakHashMap;

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->PRESENT:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 100
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The argument t can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 120
    .local p0, "this":Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;, "Lcom/sensorsdata/analytics/android/sdk/util/WeakSet<TT;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "method addAll not supported now"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 132
    .local p0, "this":Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;, "Lcom/sensorsdata/analytics/android/sdk/util/WeakSet<TT;>;"
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->map:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 135
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 74
    .local p0, "this":Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;, "Lcom/sensorsdata/analytics/android/sdk/util/WeakSet<TT;>;"
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 75
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 116
    .local p0, "this":Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;, "Lcom/sensorsdata/analytics/android/sdk/util/WeakSet<TT;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "method containsAll not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 70
    .local p0, "this":Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;, "Lcom/sensorsdata/analytics/android/sdk/util/WeakSet<TT;>;"
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;, "Lcom/sensorsdata/analytics/android/sdk/util/WeakSet<TT;>;"
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet$EmptyIterator;->access$000()Lcom/sensorsdata/analytics/android/sdk/util/WeakSet$EmptyIterator;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 109
    .local p0, "this":Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;, "Lcom/sensorsdata/analytics/android/sdk/util/WeakSet<TT;>;"
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->PRESENT:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 110
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 128
    .local p0, "this":Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;, "Lcom/sensorsdata/analytics/android/sdk/util/WeakSet<TT;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "method removeAll not supported now"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 124
    .local p0, "this":Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;, "Lcom/sensorsdata/analytics/android/sdk/util/WeakSet<TT;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "method retainAll not supported now"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 63
    .local p0, "this":Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;, "Lcom/sensorsdata/analytics/android/sdk/util/WeakSet<TT;>;"
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->map:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    return v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 90
    .local p0, "this":Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;, "Lcom/sensorsdata/analytics/android/sdk/util/WeakSet<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "method toArray() not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">([TT1;)[TT1;"
        }
    .end annotation

    .line 95
    .local p0, "this":Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;, "Lcom/sensorsdata/analytics/android/sdk/util/WeakSet<TT;>;"
    .local p1, "t1Arr":[Ljava/lang/Object;, "[TT1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "method toArray(T[] a) not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
