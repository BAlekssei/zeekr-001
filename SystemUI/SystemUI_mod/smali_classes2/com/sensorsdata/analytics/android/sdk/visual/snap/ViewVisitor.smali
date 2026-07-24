.class public abstract Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;
.super Ljava/lang/Object;
.source "ViewVisitor.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$Accumulator;


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.ViewVisitor"


# instance fields
.field private final mPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;",
            ">;"
        }
    .end annotation
.end field

.field private final mPathfinder:Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder;


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;",
            ">;)V"
        }
    .end annotation

    .line 30
    .local p1, "path":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$PathElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;->mPath:Ljava/util/List;

    .line 32
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;->mPathfinder:Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder;

    .line 33
    return-void
.end method


# virtual methods
.method public abstract cleanup()V
.end method

.method protected abstract name()Ljava/lang/String;
.end method

.method public visit(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;->mPathfinder:Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;->mPath:Ljava/util/List;

    invoke-virtual {v0, p1, v1, p0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder;->findTargetsInRoot(Landroid/view/View;Ljava/util/List;Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder$Accumulator;)V

    .line 37
    return-void
.end method
