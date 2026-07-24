.class public Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;
.super Ljava/lang/Object;
.source "ViewTreeStatusObservable.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable$TraverseRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.ViewTreeStatusObservable"

.field public static volatile viewTreeStatusObservable:Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;


# instance fields
.field private final mTraverseRunnable:Ljava/lang/Runnable;

.field private mViewNodesHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;",
            ">;"
        }
    .end annotation
.end field

.field private mViewNodesWithHashCode:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;",
            ">;"
        }
    .end annotation
.end field

.field private mWebViewHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable$TraverseRunnable;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable$TraverseRunnable;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->mTraverseRunnable:Ljava/lang/Runnable;

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->mViewNodesWithHashCode:Landroid/util/SparseArray;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->mViewNodesHashMap:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->mWebViewHashMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;)V
    .locals 0
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;

    .line 48
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->traverseNode()V

    return-void
.end method

.method private generateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "elementPath"    # Ljava/lang/String;
    .param p2, "elementPosition"    # Ljava/lang/String;
    .param p3, "screenName"    # Ljava/lang/String;

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v0, "key":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 244
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCacheViewPathAndPosition(Landroid/view/View;Z)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .locals 19
    .param p1, "clickView"    # Landroid/view/View;
    .param p2, "fromVisual"    # Z

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 307
    move/from16 v8, p2

    iget-object v1, v0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->mViewNodesWithHashCode:Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    .line 308
    .local v1, "currentNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    if-eqz v1, :cond_0

    .line 309
    return-object v1

    .line 312
    :cond_0
    const/4 v2, 0x0

    .line 313
    .local v2, "parent_view":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 314
    .local v9, "viewParent":Landroid/view/ViewParent;
    instance-of v3, v9, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 315
    move-object v2, v9

    check-cast v2, Landroid/view/View;

    .line 317
    .end local v2    # "parent_view":Landroid/view/View;
    .local v10, "parent_view":Landroid/view/View;
    :cond_1
    move-object v10, v2

    if-nez v10, :cond_2

    .line 318
    invoke-static/range {p1 .. p2}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getViewPathAndPosition(Landroid/view/View;Z)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v1

    goto/16 :goto_0

    .line 320
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v2

    .line 321
    .local v11, "opx":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v2

    .line 322
    .local v12, "px":Ljava/lang/StringBuilder;
    iget-object v2, v0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->mViewNodesWithHashCode:Landroid/util/SparseArray;

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    .line 323
    .local v2, "parentNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    if-nez v2, :cond_3

    .line 324
    invoke-static {v10, v8}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getViewPathAndPosition(Landroid/view/View;Z)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v2

    .line 325
    iget-object v3, v0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->mViewNodesWithHashCode:Landroid/util/SparseArray;

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 327
    .end local v2    # "parentNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .local v13, "parentNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    :cond_3
    move-object v13, v2

    invoke-virtual {v13}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewOriginalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v13}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    move-object v2, v10

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v14

    .line 330
    .local v14, "viewPosition":I
    invoke-static {v7, v14, v8}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getViewNode(Landroid/view/View;IZ)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v15

    .line 331
    .end local v1    # "currentNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .local v15, "currentNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    invoke-virtual {v13}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object v6

    .line 333
    .local v6, "listPosition":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v15}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 334
    const-string v1, "-"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 335
    .local v1, "replacePosition":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 336
    add-int/lit8 v2, v1, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .end local v1    # "replacePosition":I
    :cond_4
    invoke-virtual {v15}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewOriginalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v15}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    new-instance v16, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    invoke-virtual {v15}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewContent()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v1, v16

    move-object v2, v7

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    .end local v6    # "listPosition":Ljava/lang/String;
    .local v18, "listPosition":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .end local v11    # "opx":Ljava/lang/StringBuilder;
    .end local v12    # "px":Ljava/lang/StringBuilder;
    .end local v13    # "parentNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .end local v14    # "viewPosition":I
    .end local v15    # "currentNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .end local v18    # "listPosition":Ljava/lang/String;
    .local v1, "currentNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    :goto_0
    iget-object v2, v0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->mViewNodesWithHashCode:Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 344
    return-object v1
.end method

.method public static getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;
    .locals 2

    .line 57
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->viewTreeStatusObservable:Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;

    if-nez v0, :cond_1

    .line 58
    const-class v0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->viewTreeStatusObservable:Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;-><init>()V

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->viewTreeStatusObservable:Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;

    .line 62
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 64
    :cond_1
    :goto_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->viewTreeStatusObservable:Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;

    return-object v0
.end method

.method private traverseNode()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->mViewNodesHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 188
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->mViewNodesWithHashCode:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 189
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->mWebViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->traverseNode(Landroid/view/View;)V

    .line 191
    return-void
.end method

.method private traverseNode(Landroid/view/View;)V
    .locals 7
    .param p1, "rootView"    # Landroid/view/View;

    .line 195
    :try_start_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 196
    .local v0, "tempSparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 197
    .local v1, "tempHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 199
    .local v2, "tempWebViewHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;>;"
    if-eqz p1, :cond_0

    .line 200
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->traverseNode(Landroid/view/View;Landroid/util/SparseArray;Ljava/util/HashMap;Ljava/util/HashMap;)V

    goto :goto_1

    .line 203
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getSortedWindowViews()[Landroid/view/View;

    move-result-object v3

    .line 204
    .local v3, "views":[Landroid/view/View;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 205
    .local v6, "view":Landroid/view/View;
    invoke-direct {p0, v6, v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->traverseNode(Landroid/view/View;Landroid/util/SparseArray;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 204
    .end local v6    # "view":Landroid/view/View;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 208
    .end local v3    # "views":[Landroid/view/View;
    :cond_1
    :goto_1
    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->mViewNodesHashMap:Ljava/util/HashMap;

    .line 209
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->mViewNodesWithHashCode:Landroid/util/SparseArray;

    .line 210
    iput-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->mWebViewHashMap:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v0    # "tempSparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;>;"
    .end local v1    # "tempHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;>;"
    .end local v2    # "tempWebViewHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;>;"
    goto :goto_2

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private traverseNode(Landroid/view/View;Landroid/util/SparseArray;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/SparseArray<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;",
            ">;)V"
        }
    .end annotation

    .line 251
    .local p2, "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;>;"
    .local p3, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;>;"
    .local p4, "webViewHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;>;"
    if-nez p1, :cond_0

    .line 252
    return-void

    .line 254
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->getCacheViewPathAndPosition(Landroid/view/View;Z)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v0

    .line 255
    .local v0, "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    if-eqz v0, :cond_2

    .line 257
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 258
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 259
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/util/VisualUtil;->getScreenNameAndTitle(Landroid/view/View;Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;)Lorg/json/JSONObject;

    move-result-object v1

    .line 260
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_2

    .line 261
    const-string v2, "$screen_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "screenName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 263
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 264
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->generateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_1
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfWebView(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "screenName":Ljava/lang/String;
    :cond_2
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 274
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 275
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 276
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 277
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 278
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 279
    invoke-direct {p0, v4, p2, p3, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->traverseNode(Landroid/view/View;Landroid/util/SparseArray;Ljava/util/HashMap;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v4    # "child":Landroid/view/View;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 285
    .end local v0    # "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    :cond_4
    goto :goto_1

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 286
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public clearWebViewCache()V
    .locals 1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->mWebViewHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->mWebViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getCurrentWebView()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->mWebViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->traverseNode()V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->mWebViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->mWebViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    .line 224
    .local v2, "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getView()Ljava/lang/ref/WeakReference;

    move-result-object v3

    .line 225
    .local v3, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 226
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v2    # "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .end local v3    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    :cond_1
    goto :goto_0

    .line 229
    :cond_2
    return-object v0

    .line 233
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_3
    goto :goto_1

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 234
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewNode(Landroid/view/View;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->mViewNodesWithHashCode:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-object v0, v1

    .line 106
    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->getViewPathAndPosition(Landroid/view/View;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v1

    move-object v0, v1

    .line 108
    if-eqz v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->mViewNodesWithHashCode:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    goto :goto_0

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 115
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public getViewNode(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .locals 4
    .param p1, "elementPath"    # Ljava/lang/String;

    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->mWebViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-object v0, v1

    .line 156
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getView()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getView()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 157
    :cond_0
    const/4 v1, 0x0

    .line 158
    .local v1, "rootView":Landroid/view/View;
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v2

    .line 159
    .local v2, "activity":Landroid/app/Activity;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    move-object v1, v3

    .line 162
    :cond_1
    if-eqz v1, :cond_2

    .line 163
    invoke-direct {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->traverseNode(Landroid/view/View;)V

    .line 165
    :cond_2
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->mWebViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 169
    .end local v1    # "rootView":Landroid/view/View;
    .end local v2    # "activity":Landroid/app/Activity;
    :cond_3
    goto :goto_0

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 170
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public getViewNode(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .locals 4
    .param p2, "elementPath"    # Ljava/lang/String;
    .param p3, "elementPosition"    # Ljava/lang/String;
    .param p4, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;"
        }
    .end annotation

    .line 119
    .local p1, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 121
    .local v0, "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->mViewNodesHashMap:Ljava/util/HashMap;

    invoke-direct {p0, p2, p3, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->generateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-object v0, v1

    .line 123
    if-nez v0, :cond_3

    .line 124
    const/4 v1, 0x0

    .line 125
    .local v1, "rootView":Landroid/view/View;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 128
    :cond_0
    if-nez v1, :cond_1

    .line 129
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v2

    .line 130
    .local v2, "activity":Landroid/app/Activity;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    move-object v1, v3

    .line 134
    .end local v2    # "activity":Landroid/app/Activity;
    :cond_1
    if-eqz v1, :cond_2

    .line 135
    invoke-direct {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->traverseNode(Landroid/view/View;)V

    .line 137
    :cond_2
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->mViewNodesHashMap:Ljava/util/HashMap;

    invoke-direct {p0, p2, p3, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->generateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 141
    .end local v1    # "rootView":Landroid/view/View;
    :cond_3
    goto :goto_0

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 142
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public getViewPathAndPosition(Landroid/view/View;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .locals 1
    .param p1, "clickView"    # Landroid/view/View;

    .line 296
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->getCacheViewPathAndPosition(Landroid/view/View;Z)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v0

    return-object v0
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "oldFocus"    # Landroid/view/View;
    .param p2, "newFocus"    # Landroid/view/View;

    .line 80
    const-string v0, "SA.ViewTreeStatusObservable"

    const-string v1, "onGlobalFocusChanged"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->traverse()V

    .line 82
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .line 85
    const-string v0, "SA.ViewTreeStatusObservable"

    const-string v1, "onGlobalLayout"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->traverse()V

    .line 87
    return-void
.end method

.method public onScrollChanged()V
    .locals 2

    .line 90
    const-string v0, "SA.ViewTreeStatusObservable"

    const-string v1, "onScrollChanged"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->traverse()V

    .line 92
    return-void
.end method

.method public traverse()V
    .locals 4

    .line 96
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->mTraverseRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
