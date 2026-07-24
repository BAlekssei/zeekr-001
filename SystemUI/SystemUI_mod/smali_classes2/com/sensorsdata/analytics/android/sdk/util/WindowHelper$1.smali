.class final Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper$1;
.super Ljava/lang/Object;
.source "WindowHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 6
    .param p1, "lhs"    # Landroid/view/View;
    .param p2, "rhs"    # Landroid/view/View;

    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 163
    .local v0, "lhsHashCode":I
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 164
    .local v1, "rhsHashCode":I
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getCurrentRootWindowsHashCode()I

    move-result v2

    .line 165
    .local v2, "currentHashCode":I
    if-ne v0, v2, :cond_0

    .line 166
    const/4 v3, -0x1

    return v3

    .line 168
    :cond_0
    if-ne v1, v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    :goto_0
    return v3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 160
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper$1;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method
