.class public Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;
.super Ljava/lang/Object;
.source "NotificationViewHierarchyManager.java"


# instance fields
.field private final mAlwaysExpandNonGroupedNotification:Z

.field private mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

.field protected final mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

.field protected final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field private final mTmpChildOrderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    .line 51
    const-class v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 52
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 53
    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 54
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 55
    const-class v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 56
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    .local v0, "res":Landroid/content/res/Resources;
    nop

    .line 72
    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mAlwaysExpandNonGroupedNotification:Z

    .line 73
    return-void
.end method

.method private addNotificationChildrenAndSort()V
    .locals 12

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "orderChanged":Z
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 209
    .local v0, "i":I
    .local v2, "orderChanged":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 210
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v3, v0}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 211
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v4, :cond_0

    .line 213
    goto/16 :goto_2

    .line 216
    :cond_0
    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 217
    .local v4, "parent":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v5

    .line 218
    .local v5, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 220
    .local v6, "orderedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    move v7, v1

    .line 220
    .local v7, "childIndex":I
    :goto_1
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 222
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 223
    .local v8, "childView":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v5, :cond_1

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 224
    :cond_1
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 225
    const-string v9, "NotificationViewHierarchyManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "trying to add a notification child that already has a parent. class:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "\n child: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 225
    invoke-static {v9, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 231
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v9, v8}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->notifyViewAddition(Landroid/view/View;)V

    .line 232
    invoke-virtual {v4, v8, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->addChildNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)V

    .line 233
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v9, v8}, Lcom/android/systemui/statusbar/NotificationListContainer;->notifyGroupChildAdded(Landroid/view/View;)V

    .line 221
    .end local v8    # "childView":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 238
    .end local v7    # "childIndex":I
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->applyChildOrder(Ljava/util/List;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)Z

    move-result v7

    or-int/2addr v2, v7

    .line 209
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "parent":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v5    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v6    # "orderedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 241
    .end local v0    # "i":I
    :cond_5
    if-eqz v2, :cond_6

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationListContainer;->generateChildOrderChangedEvent()V

    .line 244
    :cond_6
    return-void
.end method

.method private removeNotificationChildren()V
    .locals 10

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v0, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 250
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 251
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v3, :cond_0

    .line 253
    goto :goto_3

    .line 256
    :cond_0
    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 257
    .local v3, "parent":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v4

    .line 258
    .local v4, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 260
    .local v5, "orderedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    if-eqz v4, :cond_5

    .line 261
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 262
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 263
    .local v7, "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v5, :cond_1

    .line 264
    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 265
    :cond_1
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->keepInParent()Z

    move-result v8

    if-nez v8, :cond_2

    .line 266
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .end local v7    # "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2
    goto :goto_1

    .line 269
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 270
    .local v7, "remove":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->removeChildNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 271
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v8

    .line 272
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 271
    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v8

    if-nez v8, :cond_4

    .line 275
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    .line 276
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v9

    .line 275
    invoke-interface {v8, v7, v9}, Lcom/android/systemui/statusbar/NotificationListContainer;->notifyGroupChildRemoved(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 278
    .end local v7    # "remove":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_4
    goto :goto_2

    .line 249
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "parent":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v4    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v5    # "orderedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    .end local v1    # "i":I
    :cond_6
    return-void
.end method


# virtual methods
.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/NotificationEntryManager;Lcom/android/systemui/statusbar/NotificationListContainer;)V
    .locals 0
    .param p1, "presenter"    # Lcom/android/systemui/statusbar/NotificationPresenter;
    .param p2, "entryManager"    # Lcom/android/systemui/statusbar/NotificationEntryManager;
    .param p3, "listContainer"    # Lcom/android/systemui/statusbar/NotificationListContainer;

    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 78
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 79
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    .line 80
    return-void
.end method

.method public updateNotificationViews()V
    .locals 15

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 88
    .local v0, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .local v1, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 90
    .local v2, "N":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_8

    .line 91
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 92
    .local v6, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v7, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDismissed()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 95
    goto/16 :goto_5

    .line 97
    :cond_0
    iget-object v7, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    .line 102
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 103
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v9

    .line 102
    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v8

    .line 104
    .local v8, "devicePublic":Z
    if-nez v8, :cond_2

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 105
    invoke-virtual {v9, v7}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    move v9, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v9, v5

    .line 106
    .local v9, "userPublic":Z
    :goto_2
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v10, v6}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->needsRedaction(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v10

    .line 107
    .local v10, "needsRedaction":Z
    if-eqz v9, :cond_3

    if-eqz v10, :cond_3

    move v11, v5

    goto :goto_3

    :cond_3
    move v11, v3

    .line 108
    .local v11, "sensitive":Z
    :goto_3
    if-eqz v8, :cond_4

    iget-object v12, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v13, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 110
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v13

    .line 109
    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_4

    :cond_4
    move v5, v3

    .line 111
    .local v5, "deviceSensitive":Z
    :goto_4
    iget-object v12, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12, v11, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSensitive(ZZ)V

    .line 112
    iget-object v12, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12, v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setNeedsRedaction(Z)V

    .line 113
    iget-object v12, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v13, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 114
    iget-object v12, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v13, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 115
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v13

    .line 114
    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v12

    .line 116
    .local v12, "summary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v13, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    .line 117
    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 118
    .local v13, "orderedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    if-nez v13, :cond_5

    .line 119
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v14

    .line 120
    iget-object v14, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v14, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_5
    iget-object v14, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v12    # "summary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v13    # "orderedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    goto :goto_5

    .line 124
    :cond_6
    iget-object v12, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v5    # "deviceSensitive":Z
    .end local v6    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v7    # "userId":I
    .end local v8    # "devicePublic":Z
    .end local v9    # "userPublic":Z
    .end local v10    # "needsRedaction":Z
    .end local v11    # "sensitive":Z
    :cond_7
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 129
    .end local v4    # "i":I
    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v4, "viewsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    move v6, v3

    .local v6, "i":I
    :goto_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildCount()I

    move-result v7

    if-ge v6, v7, :cond_a

    .line 131
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v7, v6}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 132
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    instance-of v8, v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v8, :cond_9

    .line 133
    move-object v8, v7

    check-cast v8, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 137
    .local v8, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isBlockingHelperShowing()Z

    move-result v9

    if-nez v9, :cond_9

    .line 138
    move-object v9, v7

    check-cast v9, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 143
    .end local v6    # "i":I
    :cond_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 144
    .local v7, "viewToRemove":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 147
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v8, v5}, Lcom/android/systemui/statusbar/NotificationListContainer;->setChildTransferInProgress(Z)V

    .line 149
    :cond_b
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 150
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->removeAllChildren()V

    .line 152
    :cond_c
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v8, v7}, Lcom/android/systemui/statusbar/NotificationListContainer;->removeContainerView(Landroid/view/View;)V

    .line 153
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v8, v3}, Lcom/android/systemui/statusbar/NotificationListContainer;->setChildTransferInProgress(Z)V

    .line 154
    .end local v7    # "viewToRemove":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    goto :goto_7

    .line 156
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->removeNotificationChildren()V

    .line 158
    move v5, v3

    .local v5, "i":I
    :goto_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_f

    .line 159
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 160
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_e

    .line 161
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->notifyViewAddition(Landroid/view/View;)V

    .line 162
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v7, v6}, Lcom/android/systemui/statusbar/NotificationListContainer;->addContainerView(Landroid/view/View;)V

    .line 158
    .end local v6    # "v":Landroid/view/View;
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 166
    .end local v5    # "i":I
    :cond_f
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->addNotificationChildrenAndSort()V

    .line 171
    const/4 v5, 0x0

    .line 172
    .local v5, "j":I
    nop

    .local v3, "i":I
    :goto_9
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildCount()I

    move-result v6

    if-ge v3, v6, :cond_14

    .line 173
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v6, v3}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 174
    .local v6, "child":Landroid/view/View;
    instance-of v7, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v7, :cond_10

    .line 176
    goto :goto_b

    .line 178
    :cond_10
    move-object v7, v6

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isBlockingHelperShowing()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 180
    goto :goto_b

    .line 183
    :cond_11
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 184
    .local v7, "targetChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eq v6, v7, :cond_13

    .line 187
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->canReorderNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 188
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v8, v7, v3}, Lcom/android/systemui/statusbar/NotificationListContainer;->changeViewPosition(Landroid/view/View;I)V

    goto :goto_a

    .line 190
    :cond_12
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)V

    .line 193
    :cond_13
    :goto_a
    add-int/lit8 v5, v5, 0x1

    .line 172
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "targetChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 197
    .end local v3    # "i":I
    :cond_14
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->onReorderingFinished()V

    .line 199
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 201
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateRowStates()V

    .line 203
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/NotificationListContainer;->onNotificationViewUpdateFinished()V

    .line 204
    return-void
.end method

.method public updateRowStates()V
    .locals 17

    .line 287
    move-object/from16 v0, p0

    const-string v1, "NotificationViewHierarchyManager#updateRowStates"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 288
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildCount()I

    move-result v1

    .line 290
    .local v1, "N":I
    const/4 v2, 0x0

    .line 291
    .local v2, "visibleNotifications":I
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterLocked()Z

    move-result v3

    .line 292
    .local v3, "isLocked":Z
    const/4 v4, -0x1

    .line 293
    .local v4, "maxNotifications":I
    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 294
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v6, v5}, Lcom/android/systemui/statusbar/NotificationPresenter;->getMaxNotificationsWhileLocked(Z)I

    move-result v4

    .line 296
    :cond_0
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v6, v4}, Lcom/android/systemui/statusbar/NotificationListContainer;->setMaxDisplayedNotifications(I)V

    .line 297
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 298
    .local v6, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    add-int/lit8 v7, v1, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_2

    .line 299
    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v8, v7}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 300
    .local v8, "child":Landroid/view/View;
    instance-of v9, v8, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v9, :cond_1

    .line 301
    goto :goto_1

    .line 303
    :cond_1
    move-object v9, v8

    check-cast v9, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .end local v8    # "child":Landroid/view/View;
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 305
    .end local v7    # "i":I
    :cond_2
    :goto_2
    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    .line 306
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 307
    .local v7, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v8

    .line 308
    .local v8, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v10, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 309
    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v9

    .line 311
    .local v9, "isChildNotification":Z
    invoke-virtual {v7, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnKeyguard(Z)V

    .line 313
    const/4 v10, 0x0

    if-nez v3, :cond_5

    .line 316
    iget-boolean v11, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mAlwaysExpandNonGroupedNotification:Z

    if-nez v11, :cond_4

    if-nez v2, :cond_3

    if-nez v9, :cond_3

    .line 318
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLowPriority()Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_3

    .line 316
    :cond_3
    move v11, v10

    goto :goto_4

    .line 318
    :cond_4
    :goto_3
    nop

    .line 316
    move v11, v5

    :goto_4
    invoke-virtual {v7, v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemExpanded(Z)V

    .line 321
    :cond_5
    iget-object v11, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v12}, Lcom/android/systemui/statusbar/NotificationPresenter;->isDozing()Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowAmbient(Z)V

    .line 322
    iget-object v11, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v11

    .line 323
    .local v11, "userId":I
    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v13, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v12

    if-eqz v12, :cond_6

    iget-object v12, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 324
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v12

    if-nez v12, :cond_6

    move v12, v5

    goto :goto_5

    :cond_6
    move v12, v10

    .line 325
    .local v12, "suppressedSummary":Z
    :goto_5
    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v14, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z

    move-result v13

    .line 327
    .local v13, "showOnKeyguard":Z
    const/16 v14, 0x8

    if-nez v12, :cond_b

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 328
    invoke-virtual {v15, v11}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldHideNotifications(I)Z

    move-result v15

    if-nez v15, :cond_b

    if-eqz v3, :cond_7

    if-nez v13, :cond_7

    goto :goto_7

    .line 332
    :cond_7
    iget-object v15, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v15

    if-ne v15, v14, :cond_8

    move v14, v5

    goto :goto_6

    :cond_8
    move v14, v10

    .line 333
    .local v14, "wasGone":Z
    :goto_6
    if-eqz v14, :cond_9

    .line 334
    iget-object v15, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v15, v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 336
    :cond_9
    if-nez v9, :cond_c

    iget-object v10, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v10

    if-nez v10, :cond_c

    .line 337
    if-eqz v14, :cond_a

    .line 339
    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    iget-object v15, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    xor-int/lit8 v5, v13, 0x1

    invoke-interface {v10, v15, v5}, Lcom/android/systemui/statusbar/NotificationListContainer;->generateAddAnimation(Landroid/view/View;Z)V

    .line 342
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .end local v14    # "wasGone":Z
    goto :goto_8

    .line 330
    :cond_b
    :goto_7
    iget-object v5, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5, v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 345
    :cond_c
    :goto_8
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 346
    nop

    .line 347
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v5

    .line 348
    .local v5, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    .line 349
    .local v10, "size":I
    add-int/lit8 v14, v10, -0x1

    .local v14, "i":I
    :goto_9
    if-ltz v14, :cond_d

    .line 350
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v15}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    add-int/lit8 v14, v14, -0x1

    goto :goto_9

    .line 354
    .end local v5    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v10    # "size":I
    .end local v14    # "i":I
    :cond_d
    iget-object v5, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->showAppOpsIcons(Landroid/util/ArraySet;)V

    .line 355
    .end local v7    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v8    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v9    # "isChildNotification":Z
    .end local v11    # "userId":I
    .end local v12    # "suppressedSummary":Z
    .end local v13    # "showOnKeyguard":Z
    nop

    .line 305
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 357
    :cond_e
    const-string v5, "NotificationPresenter#onUpdateRowStates"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 358
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/NotificationPresenter;->onUpdateRowStates()V

    .line 359
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 360
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 361
    return-void
.end method
