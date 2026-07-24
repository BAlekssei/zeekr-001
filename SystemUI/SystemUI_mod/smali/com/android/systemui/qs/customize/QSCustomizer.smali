.class public Lcom/android/systemui/qs/customize/QSCustomizer;
.super Landroid/widget/LinearLayout;
.source "QSCustomizer.java"

# interfaces
.implements Landroid/widget/Toolbar$OnMenuItemClickListener;


# instance fields
.field private isShown:Z

.field private final mClipper:Lcom/android/systemui/qs/QSDetailClipper;

.field private final mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mCustomizing:Z

.field private final mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mIsShowingNavBackdrop:Z

.field private final mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

.field private final mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

.field private mOpening:Z

.field private mQs:Lcom/android/systemui/plugins/qs/QS;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

.field private final mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

.field private mToolbar:Landroid/widget/Toolbar;

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 85
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f12032d

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 287
    new-instance v0, Lcom/android/systemui/qs/customize/-$$Lambda$QSCustomizer$jyG9W7OYQzaSrDHqhU5p9dAeqes;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/-$$Lambda$QSCustomizer$jyG9W7OYQzaSrDHqhU5p9dAeqes;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .line 294
    new-instance v0, Lcom/android/systemui/qs/customize/QSCustomizer$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$3;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 311
    new-instance v0, Lcom/android/systemui/qs/customize/QSCustomizer$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$4;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0168

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 88
    new-instance v0, Lcom/android/systemui/qs/QSDetailClipper;

    const v1, 0x7f0a00fb

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSDetailClipper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    .line 89
    const v0, 0x1020180

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    .line 90
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 91
    .local v0, "value":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x101030b

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 92
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v5, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 92
    invoke-virtual {v1, v3}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    new-instance v3, Lcom/android/systemui/qs/customize/QSCustomizer$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$1;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {v1, v3}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1, p0}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 101
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    .line 102
    const v4, 0x1040587

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 101
    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 103
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    const v2, 0x7f11045b

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setTitle(I)V

    .line 104
    const v1, 0x1010435

    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v1

    .line 105
    .local v1, "accentColor":I
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroid/widget/Toolbar;->setTitleTextColor(I)V

    .line 106
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v2}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 107
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v2}, Landroid/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 108
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 109
    new-instance v2, Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/qs/customize/TileAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    .line 110
    new-instance v2, Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-direct {v2, p1, v3}, Lcom/android/systemui/qs/customize/TileQueryHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;)V

    iput-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    .line 111
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 112
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/TileAdapter;->getItemTouchHelper()Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 113
    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 114
    .local v2, "layout":Landroid/support/v7/widget/GridLayoutManager;
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/TileAdapter;->getSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 115
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 116
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/TileAdapter;->getItemDecoration()Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 117
    new-instance v3, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v3}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    .line 118
    .local v3, "animator":Landroid/support/v7/widget/DefaultItemAnimator;
    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/DefaultItemAnimator;->setMoveDuration(J)V

    .line 119
    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 120
    const-class v4, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/LightBarController;

    iput-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavBackDrop(Landroid/content/res/Configuration;)V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/customize/QSCustomizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 62
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/customize/QSCustomizer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/customize/QSCustomizer;
    .param p1, "x1"    # Z

    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/customize/QSCustomizer;
    .param p1, "x1"    # Z

    .line 62
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/qs/customize/TileAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/customize/QSCustomizer;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 1

    .line 288
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 289
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    if-nez v0, :cond_1

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->hide(II)V

    .line 292
    :cond_1
    return-void
.end method

.method private queryTiles()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->queryTiles(Lcom/android/systemui/qs/QSTileHost;)V

    .line 193
    return-void
.end method

.method private reset()V
    .locals 6

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v0, "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    const v2, 0x7f1104b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "defTiles":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 238
    .local v5, "tile":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v5    # "tile":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 240
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/qs/customize/TileAdapter;->resetTileSpecs(Lcom/android/systemui/qs/QSTileHost;Ljava/util/List;)V

    .line 241
    return-void
.end method

.method private save()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/TileAdapter;->saveSpecs(Lcom/android/systemui/qs/QSTileHost;)V

    .line 256
    :cond_0
    return-void
.end method

.method private setCustomizing(Z)V
    .locals 1
    .param p1, "customizing"    # Z

    .line 215
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    .line 216
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->notifyCustomizeChanged()V

    .line 217
    return-void
.end method

.method private setTileSpecs()V
    .locals 4

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v0, "specs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile;

    .line 246
    .local v2, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    .end local v2    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    goto :goto_0

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/customize/TileAdapter;->setTileSpecs(Ljava/util/List;)V

    .line 249
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 250
    return-void
.end method

.method private updateNavBackDrop(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 131
    const v0, 0x7f0a02fd

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, "navBackdrop":Landroid/view/View;
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/4 v2, 0x0

    const/16 v3, 0x258

    if-ge v1, v3, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mIsShowingNavBackdrop:Z

    .line 134
    if-eqz v0, :cond_3

    .line 135
    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mIsShowingNavBackdrop:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 137
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors()V

    .line 138
    return-void
.end method

.method private updateNavColors()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mIsShowingNavBackdrop:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->setQsCustomizing(Z)V

    .line 142
    return-void
.end method


# virtual methods
.method public hide(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 196
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x166

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 199
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->dismissPopupMenus()V

    .line 200
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->save()V

    .line 202
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    iget v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    iget v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    .line 203
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 204
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    .line 205
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 206
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors()V

    .line 208
    :cond_0
    return-void
.end method

.method public isCustomizing()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

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

.method public isShown()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 126
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavBackDrop(Landroid/content/res/Configuration;)V

    .line 128
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 225
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x167

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 228
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->reset()V

    .line 231
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public show(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 158
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-nez v0, :cond_0

    .line 159
    iput p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    .line 160
    iput p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x166

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 163
    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setTileSpecs()V

    .line 165
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setVisibility(I)V

    .line 166
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    .line 167
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->queryTiles()V

    .line 168
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 169
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    .line 170
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->addCallback(Ljava/lang/Object;)V

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors()V

    .line 173
    :cond_0
    return-void
.end method
