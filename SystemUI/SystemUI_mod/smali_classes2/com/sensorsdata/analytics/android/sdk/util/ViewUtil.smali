.class public Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# static fields
.field private static sHaveCustomRecyclerView:Z

.field private static sHaveRecyclerView:Z

.field private static sRecyclerViewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;

.field private static sViewCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sHaveCustomRecyclerView:Z

    .line 61
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->haveRecyclerView()Z

    move-result v0

    sput-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sHaveRecyclerView:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAndInvalidate(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 351
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 352
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 356
    :cond_0
    return-void
.end method

.method private static checkCustomRecyclerView(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p1, "viewName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 240
    .local p0, "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sHaveRecyclerView:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sHaveCustomRecyclerView:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "RecyclerView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    :try_start_0
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->findRecyclerInSuper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 243
    sput-object p0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewClass:Ljava/lang/Class;

    .line 244
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sHaveCustomRecyclerView:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_0
    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 250
    :cond_1
    :goto_0
    return-void
.end method

.method public static clear()V
    .locals 1

    .line 616
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sViewCache:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 617
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sViewCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 619
    :cond_0
    return-void
.end method

.method private static findRecyclerInSuper(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 253
    .local p0, "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz p0, :cond_2

    const-class v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 255
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "getChildAdapterPosition"

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v3, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    goto :goto_1

    .line 256
    :catch_0
    move-exception v2

    .line 259
    :goto_1
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 261
    :try_start_1
    const-string v2, "getChildPosition"

    new-array v1, v1, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v1, v0

    invoke-virtual {p0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 264
    goto :goto_2

    .line 262
    :catch_1
    move-exception v0

    .line 266
    :cond_0
    :goto_2
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 267
    return-object p0

    .line 269
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 271
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getCanonicalAndCheckCustomView(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 140
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 142
    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->checkCustomRecyclerView(Ljava/lang/Class;Ljava/lang/String;)V

    .line 144
    :cond_0
    return-object v0
.end method

.method private static getChildAdapterPositionInRecyclerView(Landroid/view/View;Landroid/view/ViewGroup;)I
    .locals 6
    .param p0, "childView"    # Landroid/view/View;
    .param p1, "parentView"    # Landroid/view/ViewGroup;

    .line 163
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfRecyclerView(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getChildAdapterPosition"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    goto :goto_0

    .line 166
    :catch_0
    move-exception v2

    .line 169
    :goto_0
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 171
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getChildPosition"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    goto :goto_1

    .line 172
    :catch_1
    move-exception v2

    .line 177
    :cond_0
    :goto_1
    :try_start_2
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 178
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 179
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 180
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    return v1

    .line 185
    .end local v0    # "object":Ljava/lang/Object;
    :catch_2
    move-exception v0

    goto :goto_2

    .line 183
    :catch_3
    move-exception v0

    .line 187
    :cond_1
    :goto_2
    goto :goto_3

    .line 188
    :cond_2
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sHaveCustomRecyclerView:Z

    if-eqz v0, :cond_3

    .line 189
    invoke-static {p1, p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->invokeCRVGetChildAdapterPositionMethod(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0

    .line 191
    :cond_3
    :goto_3
    const/4 v0, -0x1

    return v0
.end method

.method private static getCurrentItem(Landroid/view/View;)I
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 196
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getCurrentItem"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 197
    .local v0, "method":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 198
    .local v1, "object":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 199
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 205
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v1    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 203
    :catch_1
    move-exception v0

    goto :goto_0

    .line 201
    :catch_2
    move-exception v0

    .line 207
    :cond_0
    :goto_0
    nop

    .line 208
    :goto_1
    const/4 v0, -0x1

    return v0
.end method

.method public static getElementSelector(Landroid/view/View;)Ljava/lang/String;
    .locals 8
    .param p0, "view"    # Landroid/view/View;

    .line 444
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getSelectPath(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "currentPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 446
    return-object v0

    .line 450
    :cond_0
    const/4 v1, 0x0

    .line 451
    .local v1, "parent_view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 452
    .local v2, "viewParent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 453
    move-object v1, v2

    check-cast v1, Landroid/view/View;

    .line 455
    :cond_1
    const/4 v3, 0x0

    .line 456
    .local v3, "parentPath":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 457
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getSelectPath(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 459
    :cond_2
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    .line 461
    .local v4, "path":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 462
    if-nez v3, :cond_3

    .line 463
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getElementSelectorOrigin(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 464
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    move-result-object v5

    invoke-virtual {v5, v1, v3}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->setSelectPath(Landroid/view/View;Ljava/lang/String;)V

    .line 466
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .local v5, "sb":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_4

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 468
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    :cond_4
    invoke-static {v2, p0}, Lcom/sensorsdata/analytics/android/sdk/visual/util/VisualUtil;->getChildIndex(Landroid/view/ViewParent;Landroid/view/View;)I

    move-result v6

    .line 472
    .local v6, "index":I
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    const-string v7, "["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 475
    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 477
    .end local v6    # "index":I
    .local v5, "selectPath":Ljava/lang/String;
    goto :goto_0

    .line 478
    .end local v5    # "selectPath":Ljava/lang/String;
    :cond_5
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getElementSelectorOrigin(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    .line 480
    .restart local v5    # "selectPath":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    move-result-object v6

    invoke-virtual {v6, p0, v5}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->setSelectPath(Landroid/view/View;Ljava/lang/String;)V

    .line 481
    return-object v5
.end method

.method private static getElementSelectorOrigin(Landroid/view/View;)Ljava/lang/String;
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .line 486
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 488
    .local v0, "viewPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 489
    .local v1, "viewParent":Landroid/view/ViewParent;
    invoke-static {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/visual/util/VisualUtil;->getChildIndex(Landroid/view/ViewParent;Landroid/view/View;)I

    move-result v2

    .line 490
    .local v2, "index":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 492
    move-object p0, v1

    check-cast p0, Landroid/view/ViewGroup;

    .line 494
    .end local v2    # "index":I
    :cond_1
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    .line 496
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    .local v2, "stringBuffer":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    move v4, v3

    .local v4, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 500
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-eq v4, v5, :cond_2

    .line 502
    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 505
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static getItemData(Landroid/view/View;)Ljava/lang/Object;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 213
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getItemData"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 214
    .local v0, "method":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 219
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 217
    :catch_1
    move-exception v0

    goto :goto_0

    .line 215
    :catch_2
    move-exception v0

    .line 221
    :goto_0
    nop

    .line 222
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMainWindowCount([Landroid/view/View;)I
    .locals 6
    .param p0, "windowRootViews"    # [Landroid/view/View;

    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, "mainWindowCount":I
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->init()V

    .line 373
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 374
    .local v3, "windowRootView":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 375
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getWindowPrefix(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getMainWindowPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    add-int/2addr v0, v4

    .line 373
    .end local v3    # "windowRootView":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 378
    :cond_1
    return v0
.end method

.method private static getTabLayoutContent(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p0, "tab"    # Ljava/lang/Object;

    .line 783
    const/4 v0, 0x0

    .line 784
    .local v0, "viewText":Ljava/lang/String;
    const/4 v1, 0x0

    .line 786
    .local v1, "currentTabClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v2, "android.support.design.widget.TabLayout$Tab"

    const-string v3, "com.google.android.material.tabs.TabLayout$Tab"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getCurrentClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 787
    if-eqz v1, :cond_2

    .line 788
    const/4 v2, 0x0

    .line 789
    .local v2, "text":Ljava/lang/Object;
    const-string v3, "getText"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v5}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 790
    if-eqz v2, :cond_0

    .line 791
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 793
    :cond_0
    const-string v3, "mCustomView"

    const-string v5, "customView"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p0, v3}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 794
    .local v3, "customView":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 795
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 796
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    instance-of v6, v3, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    .line 797
    move-object v6, v3

    check-cast v6, Landroid/view/ViewGroup;

    invoke-static {v5, v6}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->traverseView(Ljava/lang/StringBuilder;Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 798
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 799
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 802
    :cond_1
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewText(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 808
    .end local v2    # "text":Ljava/lang/Object;
    .end local v3    # "customView":Landroid/view/View;
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_2
    :goto_0
    goto :goto_1

    .line 806
    :catch_0
    move-exception v2

    .line 809
    :goto_1
    return-object v0
.end method

.method public static getViewContentAndType(Landroid/view/View;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 648
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getViewContentAndType(Landroid/view/View;Z)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v0

    return-object v0
.end method

.method public static getViewContentAndType(Landroid/view/View;Z)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .locals 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "fromVisual"    # Z

    .line 652
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getViewType(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, "cacheViewType":Ljava/lang/String;
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getViewText(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 655
    .local v1, "cacheViewText":Ljava/lang/String;
    const/4 v2, 0x0

    .line 656
    .local v2, "viewText":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 657
    .local v3, "viewType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 658
    .local v4, "tab":Ljava/lang/Object;
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 762
    :cond_0
    move-object v2, v1

    .line 763
    move-object v3, v0

    goto/16 :goto_5

    .line 659
    :cond_1
    :goto_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 660
    instance-of v5, p0, Landroid/widget/CheckBox;

    if-eqz v5, :cond_2

    .line 661
    const-string v5, "CheckBox"

    invoke-static {v3, v5}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 662
    move-object v5, p0

    check-cast v5, Landroid/widget/CheckBox;

    .line 663
    .local v5, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v5}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 664
    .end local v5    # "checkBox":Landroid/widget/CheckBox;
    goto/16 :goto_4

    :cond_2
    instance-of v5, p0, Landroid/widget/RadioButton;

    if-eqz v5, :cond_3

    .line 665
    const-string v5, "RadioButton"

    invoke-static {v3, v5}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 666
    move-object v5, p0

    check-cast v5, Landroid/widget/RadioButton;

    .line 667
    .local v5, "radioButton":Landroid/widget/RadioButton;
    invoke-virtual {v5}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 668
    .end local v5    # "radioButton":Landroid/widget/RadioButton;
    goto/16 :goto_4

    :cond_3
    instance-of v5, p0, Landroid/widget/ToggleButton;

    if-eqz v5, :cond_4

    .line 669
    const-string v5, "ToggleButton"

    invoke-static {v3, v5}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 670
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getCompoundButtonText(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    .line 671
    :cond_4
    instance-of v5, p0, Landroid/widget/CompoundButton;

    if-eqz v5, :cond_5

    .line 672
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewTypeByReflect(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 673
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getCompoundButtonText(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    .line 674
    :cond_5
    instance-of v5, p0, Landroid/widget/Button;

    if-eqz v5, :cond_6

    .line 675
    const-string v5, "Button"

    invoke-static {v3, v5}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 676
    move-object v5, p0

    check-cast v5, Landroid/widget/Button;

    .line 677
    .local v5, "button":Landroid/widget/Button;
    invoke-virtual {v5}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 678
    .end local v5    # "button":Landroid/widget/Button;
    goto/16 :goto_4

    :cond_6
    instance-of v5, p0, Landroid/widget/CheckedTextView;

    if-eqz v5, :cond_7

    .line 679
    const-string v5, "CheckedTextView"

    invoke-static {v3, v5}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 680
    move-object v5, p0

    check-cast v5, Landroid/widget/CheckedTextView;

    .line 681
    .local v5, "textView":Landroid/widget/CheckedTextView;
    invoke-virtual {v5}, Landroid/widget/CheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 682
    .end local v5    # "textView":Landroid/widget/CheckedTextView;
    goto/16 :goto_4

    :cond_7
    instance-of v5, p0, Landroid/widget/TextView;

    if-eqz v5, :cond_8

    .line 683
    const-string v5, "TextView"

    invoke-static {v3, v5}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 684
    move-object v5, p0

    check-cast v5, Landroid/widget/TextView;

    .line 685
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 686
    .end local v5    # "textView":Landroid/widget/TextView;
    goto/16 :goto_4

    :cond_8
    instance-of v5, p0, Landroid/widget/ImageView;

    if-eqz v5, :cond_a

    .line 687
    const-string v5, "ImageView"

    invoke-static {v3, v5}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 688
    move-object v5, p0

    check-cast v5, Landroid/widget/ImageView;

    .line 689
    .local v5, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v5}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 690
    invoke-virtual {v5}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 692
    .end local v5    # "imageView":Landroid/widget/ImageView;
    :cond_9
    goto/16 :goto_4

    :cond_a
    instance-of v5, p0, Landroid/widget/RatingBar;

    if-eqz v5, :cond_b

    .line 693
    const-string v5, "RatingBar"

    invoke-static {v3, v5}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 694
    move-object v5, p0

    check-cast v5, Landroid/widget/RatingBar;

    .line 695
    .local v5, "ratingBar":Landroid/widget/RatingBar;
    invoke-virtual {v5}, Landroid/widget/RatingBar;->getRating()F

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 696
    .end local v5    # "ratingBar":Landroid/widget/RatingBar;
    goto/16 :goto_4

    :cond_b
    instance-of v5, p0, Landroid/widget/SeekBar;

    if-eqz v5, :cond_c

    .line 697
    const-string v5, "SeekBar"

    invoke-static {v3, v5}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 698
    move-object v5, p0

    check-cast v5, Landroid/widget/SeekBar;

    .line 699
    .local v5, "seekBar":Landroid/widget/SeekBar;
    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 700
    .end local v5    # "seekBar":Landroid/widget/SeekBar;
    goto/16 :goto_4

    :cond_c
    instance-of v5, p0, Landroid/widget/Spinner;

    const/4 v6, 0x0

    if-eqz v5, :cond_e

    .line 701
    const-string v5, "Spinner"

    invoke-static {v3, v5}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 703
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 704
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    move-object v7, p0

    check-cast v7, Landroid/view/ViewGroup;

    invoke-static {v5, v7}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->traverseView(Ljava/lang/StringBuilder;Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 705
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 706
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 708
    :catch_0
    move-exception v5

    .line 709
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 710
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_1
    goto/16 :goto_4

    .line 711
    :cond_e
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfTabView(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_f

    .line 712
    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getTabLayoutContent(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 713
    const-string v5, "TabLayout"

    invoke-static {v3, v5}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 714
    :cond_f
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfBottomNavigationItemView(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 715
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getItemData(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v5

    .line 716
    .local v5, "itemData":Ljava/lang/Object;
    if-eqz v5, :cond_11

    .line 718
    :try_start_1
    const-string v6, "androidx.appcompat.view.menu.MenuItemImpl"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getCurrentClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 719
    .local v6, "menuItemImplClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v6, :cond_10

    .line 720
    const-string v7, "mTitle"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 721
    .local v7, "title":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v8, :cond_10

    .line 722
    move-object v2, v7

    .line 727
    .end local v6    # "menuItemImplClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "title":Ljava/lang/String;
    :cond_10
    goto :goto_2

    .line 725
    :catch_1
    move-exception v6

    .line 729
    .end local v5    # "itemData":Ljava/lang/Object;
    :cond_11
    :goto_2
    goto :goto_4

    :cond_12
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfNavigationView(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 730
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->isViewSelfVisible(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v5, "Open"

    goto :goto_3

    :cond_13
    const-string v5, "Close"

    :goto_3
    move-object v2, v5

    .line 731
    const-string v5, "NavigationView"

    invoke-static {v3, v5}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 732
    :cond_14
    instance-of v5, p0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_16

    .line 733
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewGroupTypeByReflect(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 734
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 735
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 737
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 738
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    move-object v7, p0

    check-cast v7, Landroid/view/ViewGroup;

    invoke-static {v5, v7}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->traverseView(Ljava/lang/StringBuilder;Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 739
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_15

    .line 740
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v6

    .line 744
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_15
    goto :goto_4

    .line 742
    :catch_2
    move-exception v5

    .line 748
    :cond_16
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    instance-of v5, p0, Landroid/widget/TextView;

    if-eqz v5, :cond_17

    .line 749
    move-object v5, p0

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    .line 752
    :cond_17
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 753
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 756
    :cond_18
    if-nez v2, :cond_19

    .line 757
    const-string v2, ""

    .line 759
    :cond_19
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    move-result-object v5

    invoke-virtual {v5, p0, v3}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->setViewType(Landroid/view/View;Ljava/lang/String;)V

    .line 760
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    move-result-object v5

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->setViewText(Landroid/view/View;Ljava/lang/String;)V

    .line 766
    :goto_5
    instance-of v5, p0, Landroid/widget/EditText;

    if-eqz v5, :cond_1b

    .line 768
    if-eqz p1, :cond_1a

    .line 769
    move-object v5, p0

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    goto :goto_6

    .line 771
    :cond_1a
    const-string v2, ""

    .line 775
    :cond_1b
    :goto_6
    if-nez v2, :cond_1c

    .line 776
    const-string v2, ""

    .line 778
    :cond_1c
    new-instance v5, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method public static getViewNode(Landroid/view/View;IZ)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .locals 22
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewIndex"    # I
    .param p2, "fromVisual"    # Z

    move-object/from16 v8, p0

    .line 527
    invoke-static/range {p0 .. p1}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getViewPosition(Landroid/view/View;I)I

    move-result v0

    .line 528
    .local v0, "viewPosition":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 529
    .local v9, "parentObject":Landroid/view/ViewParent;
    const/4 v1, 0x0

    if-nez v9, :cond_0

    .line 530
    return-object v1

    .line 532
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->isDecorView(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v9, Landroid/view/View;

    if-eqz v2, :cond_f

    .line 533
    :cond_1
    instance-of v2, v9, Landroid/view/View;

    if-eqz v2, :cond_f

    .line 534
    move-object v10, v9

    check-cast v10, Landroid/view/View;

    .line 535
    .local v10, "parentView":Landroid/view/View;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v1

    .line 536
    .local v11, "opx":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v1

    .line 537
    .local v12, "px":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getCanonicalAndCheckCustomView(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 538
    .local v1, "viewName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 539
    .local v2, "fragment":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 540
    .local v3, "listPos":Ljava/lang/String;
    const/4 v4, 0x0

    .line 542
    .local v4, "isListView":Z
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    .line 543
    .local v13, "parent":Landroid/view/ViewParent;
    instance-of v5, v13, Landroid/view/View;

    if-eqz v5, :cond_3

    .line 544
    move-object v5, v13

    check-cast v5, Landroid/view/View;

    .line 545
    .local v5, "listParentView":Landroid/view/View;
    sget-object v6, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sViewCache:Landroid/util/SparseArray;

    if-nez v6, :cond_2

    .line 546
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    sput-object v6, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sViewCache:Landroid/util/SparseArray;

    .line 548
    :cond_2
    sget-object v6, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sViewCache:Landroid/util/SparseArray;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 549
    .local v6, "parentPos":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 550
    move-object v3, v6

    .line 553
    .end local v5    # "listParentView":Landroid/view/View;
    .end local v6    # "parentPos":Ljava/lang/String;
    :cond_3
    instance-of v5, v10, Landroid/widget/ExpandableListView;

    if-eqz v5, :cond_7

    .line 554
    move-object v5, v10

    check-cast v5, Landroid/widget/ExpandableListView;

    .line 555
    .local v5, "listParent":Landroid/widget/ExpandableListView;
    invoke-virtual {v5, v0}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v14

    .line 556
    .local v14, "elp":J
    invoke-static {v14, v15}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    .line 557
    const/4 v4, 0x1

    .line 558
    invoke-static {v14, v15}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v6

    .line 559
    .local v6, "groupIdx":I
    invoke-static {v14, v15}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v7

    .line 560
    .local v7, "childIdx":I
    move-object/from16 v19, v2

    const/4 v2, -0x1

    .end local v2    # "fragment":Ljava/lang/Object;
    .local v19, "fragment":Ljava/lang/Object;
    if-eq v7, v2, :cond_4

    .line 561
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    move-object/from16 v20, v3

    const-string v3, "%d:%d"

    .end local v3    # "listPos":Ljava/lang/String;
    .local v20, "listPos":Ljava/lang/String;
    move/from16 v21, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .end local v4    # "isListView":Z
    .local v21, "isListView":Z
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v17, 0x0

    aput-object v18, v4, v17

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v16, 0x1

    aput-object v18, v4, v16

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 562
    .end local v20    # "listPos":Ljava/lang/String;
    .local v2, "listPos":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v3, "/ELVG["

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]/ELVC[-]/"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[0]"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    const-string v3, "/ELVG["

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]/ELVC["

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]/"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[0]"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .end local v2    # "listPos":Ljava/lang/String;
    .end local v6    # "groupIdx":I
    .end local v7    # "childIdx":I
    .restart local v3    # "listPos":Ljava/lang/String;
    :goto_0
    move-object v3, v2

    goto :goto_1

    .line 565
    .end local v21    # "isListView":Z
    .restart local v4    # "isListView":Z
    .restart local v6    # "groupIdx":I
    .restart local v7    # "childIdx":I
    :cond_4
    move-object/from16 v20, v3

    move/from16 v21, v4

    .end local v3    # "listPos":Ljava/lang/String;
    .end local v4    # "isListView":Z
    .restart local v20    # "listPos":Ljava/lang/String;
    .restart local v21    # "isListView":Z
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v4, v17

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 566
    .end local v20    # "listPos":Ljava/lang/String;
    .restart local v2    # "listPos":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v3, "/ELVG[-]/"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[0]"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    const-string v3, "/ELVG["

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]/"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[0]"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v6    # "groupIdx":I
    .end local v7    # "childIdx":I
    goto :goto_0

    .line 569
    .end local v2    # "listPos":Ljava/lang/String;
    .restart local v3    # "listPos":Ljava/lang/String;
    :goto_1
    nop

    .line 577
    move/from16 v4, v21

    goto :goto_3

    .line 569
    .end local v19    # "fragment":Ljava/lang/Object;
    .end local v21    # "isListView":Z
    .local v2, "fragment":Ljava/lang/Object;
    .restart local v4    # "isListView":Z
    :cond_5
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    .end local v2    # "fragment":Ljava/lang/Object;
    .end local v3    # "listPos":Ljava/lang/String;
    .restart local v19    # "fragment":Ljava/lang/Object;
    .restart local v20    # "listPos":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 570
    const-string v2, "/ELH["

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]/"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[0]"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    const-string v2, "/ELH["

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]/"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[0]"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 573
    :cond_6
    invoke-virtual {v5}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v2

    invoke-virtual {v5}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v2, v0, v2

    .line 574
    .local v2, "footerIndex":I
    const-string v3, "/ELF["

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]/"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[0]"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    const-string v3, "/ELF["

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]/"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[0]"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .end local v2    # "footerIndex":I
    .end local v5    # "listParent":Landroid/widget/ExpandableListView;
    .end local v14    # "elp":J
    :goto_2
    move-object/from16 v3, v20

    .line 594
    .end local v20    # "listPos":Ljava/lang/String;
    .restart local v3    # "listPos":Ljava/lang/String;
    :goto_3
    move/from16 v16, v0

    move-object v15, v1

    move-object v14, v3

    move/from16 v18, v4

    goto/16 :goto_6

    .line 577
    .end local v19    # "fragment":Ljava/lang/Object;
    .local v2, "fragment":Ljava/lang/Object;
    :cond_7
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    .end local v2    # "fragment":Ljava/lang/Object;
    .end local v3    # "listPos":Ljava/lang/String;
    .restart local v19    # "fragment":Ljava/lang/Object;
    .restart local v20    # "listPos":Ljava/lang/String;
    invoke-static {v10}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->isListView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 578
    const/4 v2, 0x1

    .line 579
    .end local v4    # "isListView":Z
    .local v2, "isListView":Z
    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 580
    .end local v20    # "listPos":Ljava/lang/String;
    .restart local v3    # "listPos":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "[-]"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    const-string v4, "/"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    move/from16 v16, v0

    move-object v15, v1

    move/from16 v18, v2

    move-object v14, v3

    goto/16 :goto_6

    .line 582
    .end local v2    # "isListView":Z
    .end local v3    # "listPos":Ljava/lang/String;
    .restart local v4    # "isListView":Z
    .restart local v20    # "listPos":Ljava/lang/String;
    :cond_8
    invoke-static {v10}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfSupportSwipeRefreshLayout(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 583
    const-string v2, "/"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[0]"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    const-string v2, "/"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[0]"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    move/from16 v16, v0

    move-object v15, v1

    .end local v0    # "viewPosition":I
    .end local v1    # "viewName":Ljava/lang/String;
    .end local v4    # "isListView":Z
    .end local v20    # "listPos":Ljava/lang/String;
    .local v14, "listPos":Ljava/lang/String;
    .local v15, "viewName":Ljava/lang/String;
    .local v16, "viewPosition":I
    .local v18, "isListView":Z
    :goto_4
    move/from16 v18, v4

    move-object/from16 v14, v20

    goto :goto_6

    .line 585
    .end local v14    # "listPos":Ljava/lang/String;
    .end local v15    # "viewName":Ljava/lang/String;
    .end local v16    # "viewPosition":I
    .end local v18    # "isListView":Z
    .restart local v0    # "viewPosition":I
    .restart local v1    # "viewName":Ljava/lang/String;
    .restart local v4    # "isListView":Z
    .restart local v20    # "listPos":Ljava/lang/String;
    :cond_9
    invoke-static {v10, v8}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfFragmentRootView(Landroid/view/View;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    .end local v19    # "fragment":Ljava/lang/Object;
    .local v3, "fragment":Ljava/lang/Object;
    if-eqz v2, :cond_a

    .line 586
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getCanonicalAndCheckCustomView(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 587
    const-string v2, "/"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[0]"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const-string v2, "/"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[0]"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    .end local v0    # "viewPosition":I
    .end local v1    # "viewName":Ljava/lang/String;
    .end local v3    # "fragment":Ljava/lang/Object;
    .end local v4    # "isListView":Z
    .end local v20    # "listPos":Ljava/lang/String;
    .restart local v14    # "listPos":Ljava/lang/String;
    .restart local v15    # "viewName":Ljava/lang/String;
    .restart local v16    # "viewPosition":I
    .restart local v18    # "isListView":Z
    .restart local v19    # "fragment":Ljava/lang/Object;
    :goto_5
    move/from16 v16, v0

    move-object v15, v1

    move-object/from16 v19, v3

    goto :goto_4

    .line 590
    .end local v14    # "listPos":Ljava/lang/String;
    .end local v15    # "viewName":Ljava/lang/String;
    .end local v16    # "viewPosition":I
    .end local v18    # "isListView":Z
    .end local v19    # "fragment":Ljava/lang/Object;
    .restart local v0    # "viewPosition":I
    .restart local v1    # "viewName":Ljava/lang/String;
    .restart local v3    # "fragment":Ljava/lang/Object;
    .restart local v4    # "isListView":Z
    .restart local v20    # "listPos":Ljava/lang/String;
    :cond_a
    invoke-static {v9, v8}, Lcom/sensorsdata/analytics/android/sdk/visual/util/VisualUtil;->getChildIndex(Landroid/view/ViewParent;Landroid/view/View;)I

    move-result v0

    .line 591
    const-string v2, "/"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    const-string v2, "/"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 594
    .end local v0    # "viewPosition":I
    .end local v1    # "viewName":Ljava/lang/String;
    .end local v3    # "fragment":Ljava/lang/Object;
    .end local v4    # "isListView":Z
    .end local v20    # "listPos":Ljava/lang/String;
    .restart local v14    # "listPos":Ljava/lang/String;
    .restart local v15    # "viewName":Ljava/lang/String;
    .restart local v16    # "viewPosition":I
    .restart local v18    # "isListView":Z
    .restart local v19    # "fragment":Ljava/lang/Object;
    :goto_6
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->isDecorView(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 595
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 596
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 598
    :cond_b
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_c

    .line 599
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 602
    :cond_c
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 603
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sViewCache:Landroid/util/SparseArray;

    if-nez v0, :cond_d

    .line 604
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sViewCache:Landroid/util/SparseArray;

    .line 606
    :cond_d
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sViewCache:Landroid/util/SparseArray;

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 608
    :cond_e
    move/from16 v7, p2

    invoke-static {v8, v7}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getViewContentAndType(Landroid/view/View;Z)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v6

    .line 609
    .local v6, "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    new-instance v17, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewType()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object v1, v8

    move-object v2, v14

    move-object/from16 v21, v6

    move-object/from16 v6, v20

    .end local v6    # "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .local v21, "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    move/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v17

    .line 612
    .end local v10    # "parentView":Landroid/view/View;
    .end local v11    # "opx":Ljava/lang/StringBuilder;
    .end local v12    # "px":Ljava/lang/StringBuilder;
    .end local v13    # "parent":Landroid/view/ViewParent;
    .end local v14    # "listPos":Ljava/lang/String;
    .end local v15    # "viewName":Ljava/lang/String;
    .end local v16    # "viewPosition":I
    .end local v18    # "isListView":Z
    .end local v19    # "fragment":Ljava/lang/Object;
    .end local v21    # "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .restart local v0    # "viewPosition":I
    :cond_f
    return-object v1
.end method

.method public static getViewPathAndPosition(Landroid/view/View;Z)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .locals 17
    .param p0, "clickView"    # Landroid/view/View;
    .param p1, "fromVisual"    # Z

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 404
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v7, p0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 406
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 408
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v8, v1, -0x1

    .line 409
    .local v8, "endIndex":I
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/view/View;

    .line 410
    .local v9, "rootView":Landroid/view/View;
    const/4 v1, 0x0

    .line 411
    .local v1, "listPosition":Ljava/lang/String;
    const/4 v2, 0x0

    .line 412
    .local v2, "elementContent":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v3

    .line 413
    .local v10, "opx":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v3

    .line 414
    .local v11, "px":Ljava/lang/StringBuilder;
    instance-of v3, v9, Landroid/view/ViewGroup;

    if-eqz v3, :cond_5

    .line 415
    move-object v3, v9

    check-cast v3, Landroid/view/ViewGroup;

    .line 416
    .local v3, "parentView":Landroid/view/ViewGroup;
    add-int/lit8 v4, v8, -0x1

    move-object v12, v3

    .end local v3    # "parentView":Landroid/view/ViewGroup;
    .local v4, "i":I
    .local v12, "parentView":Landroid/view/ViewGroup;
    :goto_1
    move v3, v4

    .end local v4    # "i":I
    .local v3, "i":I
    if-ltz v3, :cond_4

    .line 417
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 418
    .local v4, "childView":Landroid/view/View;
    invoke-virtual {v12, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 419
    .local v5, "viewPosition":I
    move/from16 v13, p1

    invoke-static {v4, v5, v13}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getViewNode(Landroid/view/View;IZ)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v6

    .line 420
    .local v6, "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    if-eqz v6, :cond_2

    .line 422
    invoke-virtual {v6}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    invoke-virtual {v6}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 423
    const-string v14, "-"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 424
    .local v14, "replacePosition":I
    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    .line 425
    add-int/lit8 v15, v14, 0x1

    move-object/from16 v16, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v16, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v11, v14, v15, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .end local v14    # "replacePosition":I
    goto :goto_2

    .line 428
    .end local v16    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    move-object/from16 v16, v0

    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v16    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_2
    invoke-virtual {v6}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewOriginalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v6}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v6}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object v0

    .line 431
    .end local v1    # "listPosition":Ljava/lang/String;
    .local v0, "listPosition":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewContent()Ljava/lang/String;

    move-result-object v1

    .line 433
    .end local v2    # "elementContent":Ljava/lang/String;
    .local v1, "elementContent":Ljava/lang/String;
    move-object v2, v1

    move-object v1, v0

    goto :goto_3

    .end local v16    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v1, "listPosition":Ljava/lang/String;
    .restart local v2    # "elementContent":Ljava/lang/String;
    :cond_2
    move-object/from16 v16, v0

    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v16    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_3
    instance-of v0, v4, Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    .line 434
    nop

    .line 438
    move-object v0, v1

    move-object v14, v2

    goto :goto_4

    .line 436
    :cond_3
    move-object v12, v4

    check-cast v12, Landroid/view/ViewGroup;

    .line 416
    .end local v4    # "childView":Landroid/view/View;
    .end local v5    # "viewPosition":I
    .end local v6    # "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    move-object/from16 v0, v16

    goto :goto_1

    .line 438
    .end local v4    # "i":I
    .end local v16    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_4
    move/from16 v13, p1

    move-object/from16 v16, v0

    move-object v0, v1

    move-object v14, v2

    .end local v1    # "listPosition":Ljava/lang/String;
    .end local v2    # "elementContent":Ljava/lang/String;
    .local v0, "listPosition":Ljava/lang/String;
    .local v14, "elementContent":Ljava/lang/String;
    .restart local v16    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_4
    new-instance v15, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v15

    move-object v2, v7

    move-object v3, v0

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v15

    .line 440
    .end local v12    # "parentView":Landroid/view/ViewGroup;
    .end local v14    # "elementContent":Ljava/lang/String;
    .end local v16    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v1    # "listPosition":Ljava/lang/String;
    .restart local v2    # "elementContent":Ljava/lang/String;
    :cond_5
    move/from16 v13, p1

    move-object/from16 v16, v0

    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v16    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getViewPosition(Landroid/view/View;I)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewIndex"    # I

    .line 509
    move v0, p1

    .line 510
    .local v0, "idx":I
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 511
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 512
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfAndroidXViewPager(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfSupportViewPager(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    instance-of v2, v1, Landroid/widget/AdapterView;

    if-eqz v2, :cond_1

    .line 515
    move-object v2, v1

    check-cast v2, Landroid/widget/AdapterView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 516
    :cond_1
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfRecyclerView(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 517
    invoke-static {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getChildAdapterPositionInRecyclerView(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v2

    .line 518
    .local v2, "adapterPosition":I
    if-ltz v2, :cond_3

    .line 519
    move v0, v2

    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "adapterPosition":I
    goto :goto_1

    .line 513
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getCurrentItem(Landroid/view/View;)I

    move-result v0

    .line 523
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_3
    :goto_1
    return v0
.end method

.method private static haveRecyclerView()Z
    .locals 3

    .line 227
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "android.support.v7.widget.RecyclerView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    return v0

    .line 229
    :catch_0
    move-exception v1

    .line 231
    .local v1, "th":Ljava/lang/ClassNotFoundException;
    :try_start_1
    const-string v2, "androidx.recyclerview.widget.RecyclerView"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 232
    return v0

    .line 233
    :catch_1
    move-exception v0

    .line 234
    .local v0, "e2":Ljava/lang/ClassNotFoundException;
    const/4 v2, 0x0

    return v2
.end method

.method static instanceOfActionMenuItem(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "view"    # Ljava/lang/Object;

    .line 83
    const-string v0, "androidx.appcompat.view.menu.ActionMenuItem"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static instanceOfAndroidXListMenuItemView(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "view"    # Ljava/lang/Object;

    .line 75
    const-string v0, "androidx.appcompat.view.menu.ListMenuItemView"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static instanceOfAndroidXViewPager(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "view"    # Ljava/lang/Object;

    .line 99
    const-string v0, "androidx.viewpager.widget.ViewPager"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static instanceOfBottomNavigationItemView(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "view"    # Ljava/lang/Object;

    .line 79
    const-string v0, "com.google.android.material.bottomnavigation.BottomNavigationItemView"

    const-string v1, "android.support.design.internal.NavigationMenuItemView"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static instanceOfFragmentRootView(Landroid/view/View;Landroid/view/View;)Ljava/lang/Object;
    .locals 3
    .param p0, "parentView"    # Landroid/view/View;
    .param p1, "childView"    # Landroid/view/View;

    .line 151
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getFragmentFromView(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    .line 152
    .local v0, "parentFragment":Ljava/lang/Object;
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getFragmentFromView(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    .line 153
    .local v1, "childFragment":Ljava/lang/Object;
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 154
    return-object v1

    .line 156
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private static instanceOfNavigationView(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "view"    # Ljava/lang/Object;

    .line 91
    const-string v0, "android.support.design.widget.NavigationView"

    const-string v1, "com.google.android.material.navigation.NavigationView"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static instanceOfRecyclerView(Ljava/lang/Object;)Z
    .locals 3
    .param p0, "view"    # Ljava/lang/Object;

    .line 115
    const-string v0, "android.support.v7.widget.RecyclerView"

    const-string v1, "androidx.recyclerview.widget.RecyclerView"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    .line 116
    .local v0, "result":Z
    if-nez v0, :cond_1

    .line 117
    sget-boolean v1, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sHaveCustomRecyclerView:Z

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewClass:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 119
    :cond_1
    return v0
.end method

.method static instanceOfSupportListMenuItemView(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "view"    # Ljava/lang/Object;

    .line 71
    const-string v0, "android.support.v7.view.menu.ListMenuItemView"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static instanceOfSupportSwipeRefreshLayout(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "view"    # Ljava/lang/Object;

    .line 67
    const-string v0, "android.support.v4.widget.SwipeRefreshLayout"

    const-string v1, "androidx.swiperefreshlayout.widget.SwipeRefreshLayout"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static instanceOfSupportViewPager(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "view"    # Ljava/lang/Object;

    .line 95
    const-string v0, "android.support.v4.view.ViewPager"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static instanceOfTabView(Landroid/view/View;)Ljava/lang/Object;
    .locals 3
    .param p0, "tabView"    # Landroid/view/View;

    .line 124
    :try_start_0
    const-string v0, "android.support.design.widget.TabLayout$TabView"

    const-string v1, "com.google.android.material.tabs.TabLayout$TabView"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getCurrentClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 125
    .local v0, "currentTabViewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    const-string v1, "mTab"

    const-string v2, "tab"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 129
    .end local v0    # "currentTabViewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 130
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static instanceOfToolbar(Ljava/lang/Object;)Z
    .locals 3
    .param p0, "view"    # Ljava/lang/Object;

    .line 87
    const-string v0, "androidx.appcompat.widget.Toolbar"

    const-string v1, "android.support.v7.widget.Toolbar"

    const-string v2, "android.widget.Toolbar"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static instanceOfUCWebView(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "view"    # Ljava/lang/Object;

    .line 111
    const-string v0, "com.alipay.mobile.nebulauc.impl.UCWebView$WebViewEx"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static instanceOfWebView(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "view"    # Ljava/lang/Object;

    .line 103
    instance-of v0, p0, Landroid/webkit/WebView;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfX5WebView(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfUCWebView(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static instanceOfX5WebView(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "view"    # Ljava/lang/Object;

    .line 107
    const-string v0, "com.tencent.smtt.sdk.WebView"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static invalidateLayerTypeView([Landroid/view/View;)V
    .locals 4
    .param p0, "views"    # [Landroid/view/View;

    .line 338
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 339
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 340
    .local v2, "view":Landroid/view/View;
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->viewVisibilityInParents(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 341
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->checkAndInvalidate(Landroid/view/View;)V

    .line 342
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 343
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->invalidateViewGroup(Landroid/view/ViewGroup;)V

    .line 339
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    :cond_1
    return-void
.end method

.method private static invalidateViewGroup(Landroid/view/ViewGroup;)V
    .locals 3
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .line 359
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 360
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 361
    .local v1, "child":Landroid/view/View;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->isViewSelfVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 362
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->checkAndInvalidate(Landroid/view/View;)V

    .line 363
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 364
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->invalidateViewGroup(Landroid/view/ViewGroup;)V

    .line 359
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    .end local v0    # "index":I
    :cond_1
    return-void
.end method

.method private static invokeCRVGetChildAdapterPositionMethod(Landroid/view/View;Landroid/view/View;)I
    .locals 3
    .param p0, "customRecyclerView"    # Landroid/view/View;
    .param p1, "childView"    # Landroid/view/View;

    .line 276
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 277
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 281
    :catch_0
    move-exception v0

    goto :goto_0

    .line 279
    :catch_1
    move-exception v0

    .line 283
    :cond_0
    nop

    .line 284
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private static isListView(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 288
    instance-of v0, p0, Landroid/widget/AdapterView;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfRecyclerView(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfAndroidXViewPager(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfSupportViewPager(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static isTrackEvent(Landroid/view/View;Z)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "isFromUser"    # Z

    .line 622
    instance-of v0, p0, Landroid/widget/CheckBox;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 623
    if-nez p1, :cond_3

    .line 624
    return v1

    .line 626
    :cond_0
    instance-of v0, p0, Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    .line 627
    if-nez p1, :cond_3

    .line 628
    return v1

    .line 630
    :cond_1
    instance-of v0, p0, Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    .line 631
    if-nez p1, :cond_3

    .line 632
    return v1

    .line 634
    :cond_2
    instance-of v0, p0, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_3

    .line 635
    if-nez p1, :cond_3

    .line 636
    return v1

    .line 639
    :cond_3
    instance-of v0, p0, Landroid/widget/RatingBar;

    if-eqz v0, :cond_4

    .line 640
    if-nez p1, :cond_4

    .line 641
    return v1

    .line 644
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public static isViewSelfVisible(Landroid/view/View;)Z
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .line 292
    const/4 v0, 0x0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 295
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->isDecorView(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 296
    return v2

    .line 298
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_4

    .line 299
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getLocalVisibleRect(Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object v1

    .line 301
    .local v1, "localVisibleRect":Ljava/lang/Boolean;
    if-nez v1, :cond_2

    .line 302
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    .line 303
    .local v3, "viewLocalVisiable":Z
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->setLocalVisibleRect(Landroid/view/View;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 305
    .end local v3    # "viewLocalVisiable":Z
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 307
    .restart local v3    # "viewLocalVisiable":Z
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-lez v4, :cond_3

    if-nez v3, :cond_4

    .line 308
    :cond_3
    return v0

    .line 311
    .end local v1    # "localVisibleRect":Ljava/lang/Boolean;
    .end local v3    # "viewLocalVisiable":Z
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_6

    .line 312
    return v0

    .line 314
    :cond_6
    return v2

    .line 293
    :cond_7
    :goto_1
    return v0
.end method

.method public static isWindowNeedTraverse(Landroid/view/View;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "root"    # Landroid/view/View;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "skipOtherActivity"    # Z

    .line 382
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getCurrentRootWindowsHashCode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 383
    return v2

    .line 385
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 386
    if-nez p2, :cond_1

    .line 387
    return v2

    .line 389
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getMainWindowPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_2

    .line 390
    return v2

    .line 393
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 394
    :cond_3
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->isCustomWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 395
    return v2

    .line 398
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private static viewVisibilityInParents(Landroid/view/View;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 318
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 319
    return v0

    .line 321
    :cond_0
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->isViewSelfVisible(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 322
    return v0

    .line 324
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 325
    .local v1, "viewParent":Landroid/view/ViewParent;
    :cond_2
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_4

    .line 326
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->isViewSelfVisible(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 327
    return v0

    .line 329
    :cond_3
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 330
    if-nez v1, :cond_2

    .line 331
    return v0

    .line 334
    :cond_4
    const/4 v0, 0x1

    return v0
.end method
