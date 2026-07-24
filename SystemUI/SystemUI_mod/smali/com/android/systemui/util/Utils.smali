.class public Lcom/android/systemui/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/Utils$DisableStateTracker;
    }
.end annotation


# direct methods
.method public static safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 32
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 33
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 34
    .local v1, "item":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_0

    .line 35
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 32
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 38
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
