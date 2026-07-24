.class public Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
.super Lcom/android/systemui/statusbar/policy/HeadsUpManager;
.source "HeadsUpManagerPhone.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;
    }
.end annotation


# instance fields
.field private final mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mDisplayCutoutTouchableRegionSize:I

.field private mEntriesToRemoveAfterExpand:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mEntriesToRemoveWhenReorderingAllowed:Landroid/support/v4/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArraySet<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntryPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHeadsUpGoingAway:Z

.field private mHeadsUpInset:I

.field private mIsExpanded:Z

.field private mIsObserving:Z

.field private mReleaseOnExpandFinish:Z

.field private mStatusBarHeight:I

.field private mStatusBarState:I

.field private final mStatusBarWindowView:Landroid/view/View;

.field private mSwipedOutKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpTwoArray:[I

.field private mTrackingHeadsUp:Z

.field private final mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

.field private mWaitingOnCollapseWhenGoingAway:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBarWindowView"    # Landroid/view/View;
    .param p3, "groupManager"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
    .param p4, "bar"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p5, "visualStabilityManager"    # Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 108
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mSwipedOutKeys:Ljava/util/HashSet;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveAfterExpand:Ljava/util/HashSet;

    .line 75
    new-instance v0, Landroid/support/v4/util/ArraySet;

    invoke-direct {v0}, Landroid/support/v4/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveWhenReorderingAllowed:Landroid/support/v4/util/ArraySet;

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTmpTwoArray:[I

    .line 84
    new-instance v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntryPool:Landroid/util/Pools$Pool;

    .line 110
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarWindowView:Landroid/view/View;

    .line 111
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 112
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 113
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->initResources()V

    .line 117
    new-instance v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$2;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->updateTouchableRegionListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarWindowView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 57
    iget v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mWaitingOnCollapseWhenGoingAway:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mClock:Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveAfterExpand:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Landroid/support/v4/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveWhenReorderingAllowed:Landroid/support/v4/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Lcom/android/systemui/statusbar/notification/VisualStabilityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTrackingHeadsUp:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->removeHeadsUpEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    return-void
.end method

.method private getHeadsUpEntryPhone(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 400
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    return-object v0
.end method

.method private getTopHeadsUpEntryPhone()Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;
    .locals 1

    .line 405
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getTopHeadsUpEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    return-object v0
.end method

.method private initResources()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 128
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x10501b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarHeight:I

    .line 130
    iget v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarHeight:I

    const v2, 0x7f070188

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpInset:I

    .line 132
    const v1, 0x7f070163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mDisplayCutoutTouchableRegionSize:I

    .line 134
    return-void
.end method

.method private setCollapsedTouchableInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 326
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 327
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarWindowView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Region;->set(IIII)Z

    .line 328
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->updateRegionForNotch(Landroid/graphics/Region;)V

    .line 329
    return-void
.end method

.method private updateRegionForNotch(Landroid/graphics/Region;)V
    .locals 4
    .param p1, "region"    # Landroid/graphics/Region;

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarWindowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 333
    .local v0, "cutout":Landroid/view/DisplayCutout;
    if-nez v0, :cond_0

    .line 334
    return-void

    .line 339
    :cond_0
    const/16 v1, 0x30

    invoke-static {v0, v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/view/DisplayCutout;I)Landroid/graphics/Region;

    move-result-object v1

    .line 341
    .local v1, "bounds":Landroid/graphics/Region;
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mDisplayCutoutTouchableRegionSize:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->translate(II)V

    .line 342
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 343
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    .line 344
    return-void
.end method

.method private updateTouchableRegionListener()V
    .locals 2

    .line 441
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpGoingAway:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mWaitingOnCollapseWhenGoingAway:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarWindowView:Landroid/view/View;

    .line 443
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 444
    .local v0, "shouldObserve":Z
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mIsObserving:Z

    if-ne v0, v1, :cond_2

    .line 445
    return-void

    .line 447
    :cond_2
    if-eqz v0, :cond_3

    .line 448
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarWindowView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 449
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarWindowView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_2

    .line 451
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarWindowView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 453
    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mIsObserving:Z

    .line 454
    return-void
.end method

.method private waitForStatusBarLayout()V
    .locals 2

    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mWaitingOnCollapseWhenGoingAway:Z

    .line 426
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarWindowView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$3;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 438
    return-void
.end method

.method private wasShownLongEnough(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 409
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mSwipedOutKeys:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mSwipedOutKeys:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 412
    return v1

    .line 415
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getHeadsUpEntryPhone(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    move-result-object v0

    .line 416
    .local v0, "headsUpEntry":Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getTopHeadsUpEntryPhone()Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    move-result-object v2

    .line 417
    .local v2, "topEntry":Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;
    if-ne v0, v2, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->wasShownLongEnough()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    nop

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public addSwipedOutNotification(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mSwipedOutKeys:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 281
    return-void
.end method

.method protected createHeadsUpEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntryPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    return-object v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 288
    const-string v0, "HeadsUpManagerPhone state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method protected dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 391
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 392
    const-string v0, "  mStatusBarState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 393
    return-void
.end method

.method public isTrackingHeadsUp()Z
    .locals 1

    .line 253
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTrackingHeadsUp:Z

    return v0
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 7
    .param p1, "info"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 300
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mIsExpanded:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->hasPinnedHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getTopEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 306
    .local v0, "topEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 308
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v1

    .line 309
    .local v1, "groupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v1, :cond_1

    .line 310
    move-object v0, v1

    .line 313
    .end local v1    # "groupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTmpTwoArray:[I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getLocationOnScreen([I)V

    .line 314
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTmpTwoArray:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 315
    .local v1, "minX":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTmpTwoArray:[I

    aget v3, v3, v2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 316
    .local v3, "maxX":I
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v4

    .line 318
    .local v4, "height":I
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 319
    iget-object v5, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpInset:I

    add-int/2addr v6, v4

    invoke-virtual {v5, v1, v2, v3, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 320
    .end local v0    # "topEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "minX":I
    .end local v3    # "maxX":I
    .end local v4    # "height":I
    goto :goto_0

    .line 321
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setCollapsedTouchableInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 323
    :goto_0
    return-void

    .line 302
    :cond_3
    :goto_1
    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 349
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x10501b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarHeight:I

    .line 351
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 138
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->onDensityOrFontScaleChanged()V

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->initResources()V

    .line 140
    return-void
.end method

.method public onExpandingFinished()V
    .locals 3

    .line 163
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mReleaseOnExpandFinish:Z

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->releaseAllImmediately()V

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mReleaseOnExpandFinish:Z

    goto :goto_1

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveAfterExpand:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 168
    .local v1, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->isHeadsUp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->removeHeadsUpEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 172
    .end local v1    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    goto :goto_0

    .line 174
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveAfterExpand:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 175
    return-void
.end method

.method public onOverlayChanged()V
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->initResources()V

    .line 145
    return-void
.end method

.method public onReorderingAllowed()V
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationScrollLayout()Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setHeadsUpGoingAwayAnimationsAllowed(Z)V

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveWhenReorderingAllowed:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0}, Landroid/support/v4/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 360
    .local v1, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->isHeadsUp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 362
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->removeHeadsUpEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 364
    .end local v1    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_0
    goto :goto_0

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveWhenReorderingAllowed:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0}, Landroid/support/v4/util/ArraySet;->clear()V

    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationScrollLayout()Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setHeadsUpGoingAwayAnimationsAllowed(Z)V

    .line 367
    return-void
.end method

.method protected releaseHeadsUpEntry(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 379
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->reset()V

    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntryPool:Landroid/util/Pools$Pool;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    invoke-interface {v0, v1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 381
    return-void
.end method

.method public removeMinimumDisplayTimeForTesting()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 243
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mMinimumDisplayTime:I

    .line 244
    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpNotificationDecay:I

    .line 245
    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTouchAcceptanceDelay:I

    .line 246
    return-void
.end method

.method public removeNotification(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ignoreEarliestRemovalTime"    # Z

    .line 270
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->wasShownLongEnough(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getHeadsUpEntryPhone(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    move-result-object v0

    .line 274
    .local v0, "entry":Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->removeAsSoonAsPossible()V

    .line 275
    const/4 v1, 0x0

    return v1

    .line 271
    .end local v0    # "entry":Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeNotification(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setHeadsUpGoingAway(Z)V
    .locals 1
    .param p1, "headsUpGoingAway"    # Z

    .line 214
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpGoingAway:Z

    if-eq p1, v0, :cond_1

    .line 215
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpGoingAway:Z

    .line 216
    if-nez p1, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->waitForStatusBarLayout()V

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->updateTouchableRegionListener()V

    .line 221
    :cond_1
    return-void
.end method

.method public setIsPanelExpanded(Z)V
    .locals 1
    .param p1, "isExpanded"    # Z

    .line 191
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mIsExpanded:Z

    if-eq p1, v0, :cond_0

    .line 192
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mIsExpanded:Z

    .line 193
    if-eqz p1, :cond_0

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mWaitingOnCollapseWhenGoingAway:Z

    .line 196
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpGoingAway:Z

    .line 197
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->updateTouchableRegionListener()V

    .line 200
    :cond_0
    return-void
.end method

.method public setRemoteInputActive(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "remoteInputActive"    # Z

    .line 230
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getHeadsUpEntryPhone(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    move-result-object v0

    .line 231
    .local v0, "headsUpEntry":Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->remoteInputActive:Z

    if-eq v1, p2, :cond_1

    .line 232
    iput-boolean p2, v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->remoteInputActive:Z

    .line 233
    if-eqz p2, :cond_0

    .line 234
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->removeAutoRemovalCallbacks()V

    goto :goto_0

    .line 236
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->updateEntry(Z)V

    .line 239
    :cond_1
    :goto_0
    return-void
.end method

.method public setStatusBarState(I)V
    .locals 0
    .param p1, "statusBarState"    # I

    .line 206
    iput p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarState:I

    .line 207
    return-void
.end method

.method public setTrackingHeadsUp(Z)V
    .locals 0
    .param p1, "trackingHeadsUp"    # Z

    .line 182
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTrackingHeadsUp:Z

    .line 183
    return-void
.end method

.method protected shouldHeadsUpBecomePinned(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 385
    iget v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mIsExpanded:Z

    if-eqz v0, :cond_1

    .line 386
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->shouldHeadsUpBecomePinned(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 385
    :goto_0
    return v1
.end method

.method public shouldSwallowClick(Ljava/lang/String;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v0

    .line 159
    .local v0, "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mClock:Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->postTime:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public snooze()V
    .locals 1

    .line 258
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->snooze()V

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mReleaseOnExpandFinish:Z

    .line 260
    return-void
.end method
