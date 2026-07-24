.class public final Lcom/android/systemui/statusbar/NotificationData$Entry;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public autoRedacted:Z

.field public cachedAmbientContentView:Landroid/widget/RemoteViews;

.field public cachedBigContentView:Landroid/widget/RemoteViews;

.field public cachedContentView:Landroid/widget/RemoteViews;

.field public cachedHeadsUpContentView:Landroid/widget/RemoteViews;

.field public cachedPublicContentView:Landroid/widget/RemoteViews;

.field public channel:Landroid/app/NotificationChannel;

.field public expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private hasSentReply:Z

.field public headsUpStatusBarText:Ljava/lang/CharSequence;

.field public headsUpStatusBarTextPublic:Ljava/lang/CharSequence;

.field public icon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private interruption:Z

.field public key:Ljava/lang/String;

.field private lastFullScreenIntentLaunchTime:J

.field public lastRemoteInputSent:J

.field public mActiveAppOps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedContrastColor:I

.field private mCachedContrastColorIsFor:I

.field private mDebugThrowable:Ljava/lang/Throwable;

.field public mIsSystemNotification:Ljava/lang/Boolean;

.field private mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

.field public notification:Landroid/service/notification/StatusBarNotification;

.field public remoteInputText:Ljava/lang/CharSequence;

.field public remoteInputTextWhenReset:Ljava/lang/CharSequence;

.field public row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field public snoozeCriteria:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation
.end field

.field public targetSdk:I

.field public userSentiment:I


# direct methods
.method public constructor <init>(Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const-wide/16 v0, -0x7d0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastFullScreenIntentLaunchTime:J

    .line 106
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->userSentiment:I

    .line 108
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColor:I

    .line 109
    iput v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColorIsFor:I

    .line 110
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 113
    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastRemoteInputSent:J

    .line 114
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mActiveAppOps:Landroid/util/ArraySet;

    .line 130
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    .line 131
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 132
    return-void
.end method

.method public static synthetic lambda$createIcons$0(Lcom/android/systemui/statusbar/NotificationData$Entry;I)V
    .locals 2
    .param p1, "newVisibility"    # I

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconsVisible(Z)V

    .line 214
    :cond_1
    return-void
.end method


# virtual methods
.method public abortTask()V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/InflationTask;->abort()V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 272
    :cond_0
    return-void
.end method

.method public createIcons(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    .line 180
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 181
    .local v0, "n":Landroid/app/Notification;
    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    .line 182
    .local v8, "smallIcon":Landroid/graphics/drawable/Icon;
    if-eqz v8, :cond_1

    .line 188
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 190
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 193
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 195
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 196
    new-instance v9, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 197
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    .line 198
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v5, v0, Landroid/app/Notification;->iconLevel:I

    iget v6, v0, Landroid/app/Notification;->number:I

    .line 202
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v9

    move-object v4, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 203
    .local v1, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 209
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v3, Lcom/android/systemui/statusbar/-$$Lambda$NotificationData$Entry$htRh1w4D2IBYeXc1CwB54DGLhpM;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationData$Entry$htRh1w4D2IBYeXc1CwB54DGLhpM;-><init>(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setOnVisibilityChangedListener(Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;)V

    .line 215
    return-void

    .line 204
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 205
    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 206
    new-instance v2, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t create icon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    .end local v1    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No small icon in notification from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getContrastedColor(Landroid/content/Context;ZI)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isLowPriority"    # Z
    .param p3, "backgroundColor"    # I

    .line 252
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->color:I

    .line 254
    .local v0, "rawColor":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColorIsFor:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColor:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 255
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColor:I

    return v1

    .line 257
    :cond_1
    invoke-static {p1, v0, p3}, Lcom/android/internal/util/NotificationColorUtil;->resolveContrastColor(Landroid/content/Context;II)I

    move-result v1

    .line 259
    .local v1, "contrasted":I
    iput v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColorIsFor:I

    .line 260
    iput v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColor:I

    .line 261
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColor:I

    return v2
.end method

.method public getDebugThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mDebugThrowable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getExpandedContentView()Landroid/view/View;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getRunningTask()Lcom/android/systemui/statusbar/InflationTask;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    return-object v0
.end method

.method public hasInterrupted()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z

    return v0
.end method

.method public hasJustLaunchedFullScreenIntent()Z
    .locals 6

    .line 165
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastFullScreenIntentLaunchTime:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasJustSentRemoteInput()Z
    .locals 6

    .line 169
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastRemoteInputSent:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLastMessageFromReply()Z
    .locals 8

    .line 316
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasSentReply:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 317
    return v1

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 320
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "android.remoteInputHistory"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 322
    .local v2, "replyTexts":[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 323
    return v4

    .line 325
    :cond_1
    const-string v3, "android.messages"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 326
    .local v3, "messages":[Landroid/os/Parcelable;
    if-eqz v3, :cond_3

    array-length v5, v3

    if-lez v5, :cond_3

    .line 327
    array-length v5, v3

    sub-int/2addr v5, v4

    aget-object v5, v3, v5

    .line 328
    .local v5, "message":Landroid/os/Parcelable;
    instance-of v6, v5, Landroid/os/Bundle;

    if-eqz v6, :cond_3

    .line 329
    move-object v6, v5

    check-cast v6, Landroid/os/Bundle;

    .line 330
    invoke-static {v6}, Landroid/app/Notification$MessagingStyle$Message;->getMessageFromBundle(Landroid/os/Bundle;)Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v6

    .line 332
    .local v6, "lastMessage":Landroid/app/Notification$MessagingStyle$Message;
    if-eqz v6, :cond_3

    .line 333
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v1

    .line 334
    .local v1, "senderPerson":Landroid/app/Person;
    if-nez v1, :cond_2

    .line 335
    return v4

    .line 337
    :cond_2
    const-string v4, "android.messagingUser"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/Person;

    .line 338
    .local v4, "user":Landroid/app/Person;
    invoke-static {v4, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    return v7

    .line 342
    .end local v1    # "senderPerson":Landroid/app/Person;
    .end local v4    # "user":Landroid/app/Person;
    .end local v5    # "message":Landroid/os/Parcelable;
    .end local v6    # "lastMessage":Landroid/app/Notification$MessagingStyle$Message;
    :cond_3
    return v1
.end method

.method public notifyFullScreenIntentLaunched()V
    .locals 2

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setInterruption()V

    .line 161
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastFullScreenIntentLaunchTime:J

    .line 162
    return-void
.end method

.method public onInflationTaskFinished()V
    .locals 1

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 286
    return-void
.end method

.method public onRemoteInputInserted()V
    .locals 2

    .line 307
    const-wide/16 v0, -0x7d0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastRemoteInputSent:J

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->remoteInputTextWhenReset:Ljava/lang/CharSequence;

    .line 309
    return-void
.end method

.method public reset()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->reset()V

    .line 149
    :cond_0
    return-void
.end method

.method public setDebugThrowable(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "debugThrowable"    # Ljava/lang/Throwable;

    .line 299
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mDebugThrowable:Ljava/lang/Throwable;

    .line 300
    return-void
.end method

.method public setHasSentReply()V
    .locals 1

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasSentReply:Z

    .line 313
    return-void
.end method

.method public setIconTag(ILjava/lang/Object;)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(ILjava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(ILjava/lang/Object;)V

    .line 222
    :cond_0
    return-void
.end method

.method public setInflationTask(Lcom/android/systemui/statusbar/InflationTask;)V
    .locals 2
    .param p1, "abortableTask"    # Lcom/android/systemui/statusbar/InflationTask;

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 277
    .local v0, "existing":Lcom/android/systemui/statusbar/InflationTask;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->abortTask()V

    .line 278
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 279
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/InflationTask;->supersedeTask(Lcom/android/systemui/statusbar/InflationTask;)V

    .line 282
    :cond_0
    return-void
.end method

.method public setInterruption()V
    .locals 1

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z

    .line 136
    return-void
.end method

.method public updateIcons(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 235
    .local v0, "n":Landroid/app/Notification;
    new-instance v8, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 236
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 237
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 238
    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    iget v5, v0, Landroid/app/Notification;->iconLevel:I

    iget v6, v0, Landroid/app/Notification;->number:I

    .line 241
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 242
    .local v1, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 243
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 244
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v0    # "n":Landroid/app/Notification;
    .end local v1    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    goto :goto_0

    .line 245
    .restart local v0    # "n":Landroid/app/Notification;
    .restart local v1    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t update icon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 248
    .end local v0    # "n":Landroid/app/Notification;
    .end local v1    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_1
    :goto_0
    return-void
.end method
