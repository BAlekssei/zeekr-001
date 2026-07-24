.class Lcom/android/systemui/recents/RecentsOnboarding$1;
.super Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;
.source "RecentsOnboarding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsOnboarding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/recents/RecentsOnboarding;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsOnboarding;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/RecentsOnboarding;

    .line 122
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;-><init>()V

    return-void
.end method

.method private onAppLaunch()V
    .locals 10

    .line 136
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    .line 137
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 138
    .local v0, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v0, :cond_0

    .line 139
    return-void

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v2}, Lcom/android/systemui/recents/RecentsOnboarding;->access$000(Lcom/android/systemui/recents/RecentsOnboarding;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 142
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/RecentsOnboarding;->hide(Z)V

    .line 143
    return-void

    .line 145
    :cond_1
    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->mLastPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    return-void

    .line 148
    :cond_2
    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->mLastPackageName:Ljava/lang/String;

    .line 149
    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v2

    .line 150
    .local v2, "activityType":I
    if-ne v2, v3, :cond_c

    .line 151
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v4}, Lcom/android/systemui/recents/RecentsOnboarding;->access$100(Lcom/android/systemui/recents/RecentsOnboarding;)Z

    move-result v4

    .line 152
    .local v4, "alreadySeenSwipeUpOnboarding":Z
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v5}, Lcom/android/systemui/recents/RecentsOnboarding;->access$200(Lcom/android/systemui/recents/RecentsOnboarding;)Z

    move-result v5

    .line 153
    .local v5, "alreadySeenQuickScrubsOnboarding":Z
    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 154
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsOnboarding;->onDisconnectedFromLauncher()V

    .line 155
    return-void

    .line 158
    :cond_3
    const/4 v6, 0x0

    .line 159
    .local v6, "shouldLog":Z
    if-nez v4, :cond_8

    .line 160
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v7}, Lcom/android/systemui/recents/RecentsOnboarding;->access$300(Lcom/android/systemui/recents/RecentsOnboarding;)I

    move-result v7

    const/4 v8, 0x3

    if-lt v7, v8, :cond_b

    .line 162
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v7}, Lcom/android/systemui/recents/RecentsOnboarding;->access$400(Lcom/android/systemui/recents/RecentsOnboarding;)Z

    move-result v7

    const v8, 0x7f1104d2

    if-eqz v7, :cond_7

    .line 163
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    .line 164
    invoke-static {v7}, Lcom/android/systemui/recents/RecentsOnboarding;->access$500(Lcom/android/systemui/recents/RecentsOnboarding;)I

    move-result v7

    .line 165
    .local v7, "hasDimissedSwipeUpOnboardingCount":I
    const/4 v9, 0x2

    if-le v7, v9, :cond_4

    .line 167
    return-void

    .line 171
    :cond_4
    if-gt v7, v3, :cond_5

    .line 172
    const/4 v3, 0x5

    goto :goto_0

    .line 173
    :cond_5
    const/16 v3, 0x28

    .line 174
    .local v3, "swipeUpShowOnAppLauncherAfterDismiss":I
    :goto_0
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v9}, Lcom/android/systemui/recents/RecentsOnboarding;->access$608(Lcom/android/systemui/recents/RecentsOnboarding;)I

    .line 175
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v9}, Lcom/android/systemui/recents/RecentsOnboarding;->access$600(Lcom/android/systemui/recents/RecentsOnboarding;)I

    move-result v9

    if-lt v9, v3, :cond_6

    .line 177
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v9, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$602(Lcom/android/systemui/recents/RecentsOnboarding;I)I

    .line 178
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v9, v8}, Lcom/android/systemui/recents/RecentsOnboarding;->show(I)Z

    move-result v6

    .line 180
    .end local v3    # "swipeUpShowOnAppLauncherAfterDismiss":I
    .end local v7    # "hasDimissedSwipeUpOnboardingCount":I
    :cond_6
    goto :goto_1

    .line 181
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v3, v8}, Lcom/android/systemui/recents/RecentsOnboarding;->show(I)Z

    move-result v6

    .line 183
    :goto_1
    if-eqz v6, :cond_b

    .line 184
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v3, v1, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$700(Lcom/android/systemui/recents/RecentsOnboarding;II)V

    goto :goto_3

    .line 188
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v7}, Lcom/android/systemui/recents/RecentsOnboarding;->access$800(Lcom/android/systemui/recents/RecentsOnboarding;)I

    move-result v7

    const/16 v8, 0xa

    if-lt v7, v8, :cond_b

    .line 189
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v7}, Lcom/android/systemui/recents/RecentsOnboarding;->access$900(Lcom/android/systemui/recents/RecentsOnboarding;)Z

    move-result v7

    const v9, 0x7f1104cf

    if-eqz v7, :cond_9

    .line 190
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v7}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1000(Lcom/android/systemui/recents/RecentsOnboarding;)I

    move-result v7

    if-lt v7, v8, :cond_a

    .line 192
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v7, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1002(Lcom/android/systemui/recents/RecentsOnboarding;I)I

    .line 193
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v7, v9}, Lcom/android/systemui/recents/RecentsOnboarding;->show(I)Z

    move-result v6

    goto :goto_2

    .line 196
    :cond_9
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v7, v9}, Lcom/android/systemui/recents/RecentsOnboarding;->show(I)Z

    move-result v6

    .line 198
    :cond_a
    :goto_2
    if-eqz v6, :cond_b

    .line 199
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v7, v1, v3}, Lcom/android/systemui/recents/RecentsOnboarding;->access$700(Lcom/android/systemui/recents/RecentsOnboarding;II)V

    .line 204
    .end local v4    # "alreadySeenSwipeUpOnboarding":Z
    .end local v5    # "alreadySeenQuickScrubsOnboarding":Z
    .end local v6    # "shouldLog":Z
    :cond_b
    :goto_3
    goto :goto_4

    .line 205
    :cond_c
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->hide(Z)V

    .line 207
    :goto_4
    return-void
.end method


# virtual methods
.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding$1;->onAppLaunch()V

    .line 128
    return-void
.end method

.method public onTaskMovedToFront(I)V
    .locals 0
    .param p1, "taskId"    # I

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding$1;->onAppLaunch()V

    .line 133
    return-void
.end method
