.class public Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentViewScreenCallbacks;
.super Ljava/lang/Object;
.source "FragmentViewScreenCallbacks.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.FragmentViewScreenCallbacks"


# instance fields
.field private final mPageFragments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentViewScreenCallbacks;->mPageFragments:Ljava/util/Set;

    return-void
.end method

.method private isFragmentValid(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "fragment"    # Ljava/lang/Object;

    .line 183
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 184
    const-string v1, "SA.FragmentViewScreenCallbacks"

    const-string v2, "fragment is null,return"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return v0

    .line 188
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_VIEW_SCREEN:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    const-string v1, "SA.FragmentViewScreenCallbacks"

    const-string v2, "AutoTrackEventTypeIgnored,return"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return v0

    .line 193
    :cond_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isTrackFragmentAppViewScreenEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 194
    const-string v1, "SA.FragmentViewScreenCallbacks"

    const-string v2, "TrackFragmentAppViewScreenEnabled is false,return"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return v0

    .line 198
    :cond_2
    const-string v1, "com.bumptech.glide.manager.SupportRequestManagerFragment"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 199
    const-string v1, "SA.FragmentViewScreenCallbacks"

    const-string v2, "fragment is SupportRequestManagerFragment,return"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return v0

    .line 203
    :cond_3
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isFragmentAutoTrackAppViewScreen(Ljava/lang/Class;)Z

    move-result v1

    .line 204
    .local v1, "isAutoTrackFragment":Z
    if-nez v1, :cond_4

    .line 205
    const-string v2, "SA.FragmentViewScreenCallbacks"

    const-string v3, "fragment class ignored,return"

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return v0

    .line 209
    :cond_4
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentViewScreenCallbacks;->mPageFragments:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 210
    const-string v2, "SA.FragmentViewScreenCallbacks"

    const-string v3, "pageFragment contains,return"

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return v0

    .line 213
    :cond_5
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->isFragmentVisible(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 214
    const-string v2, "SA.FragmentViewScreenCallbacks"

    const-string v3, "fragment is not visible,return"

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return v0

    .line 217
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method private trackFragmentAppViewScreen(Ljava/lang/Object;)V
    .locals 4
    .param p1, "fragment"    # Ljava/lang/Object;

    .line 165
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 166
    .local v0, "properties":Lorg/json/JSONObject;
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getScreenNameAndTitleFromFragment(Lorg/json/JSONObject;Ljava/lang/Object;Landroid/app/Activity;)V

    .line 167
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    move-result-object v1

    const-string v2, "$screen_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->setFragmentScreenName(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    instance-of v1, p1, Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;

    if-eqz v1, :cond_0

    .line 169
    move-object v1, p1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;

    .line 170
    .local v1, "screenAutoTracker":Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;
    invoke-interface {v1}, Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;->getTrackProperties()Lorg/json/JSONObject;

    move-result-object v2

    .line 171
    .local v2, "otherProperties":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 172
    invoke-static {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 175
    .end local v1    # "screenAutoTracker":Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;
    .end local v2    # "otherProperties":Lorg/json/JSONObject;
    :cond_0
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->appendLibMethodAutoTrack(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 176
    .local v1, "eventProperties":Lorg/json/JSONObject;
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->getScreenUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackViewScreen(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v0    # "properties":Lorg/json/JSONObject;
    .end local v1    # "eventProperties":Lorg/json/JSONObject;
    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static traverseView(Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 4
    .param p0, "fragmentName"    # Ljava/lang/String;
    .param p1, "root"    # Landroid/view/ViewGroup;

    .line 222
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 225
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 226
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 227
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 228
    .local v2, "child":Landroid/view/View;
    sget v3, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_fragment_name:I

    invoke-virtual {v2, v3, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 229
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    instance-of v3, v2, Landroid/widget/ListView;

    if-nez v3, :cond_1

    instance-of v3, v2, Landroid/widget/GridView;

    if-nez v3, :cond_1

    instance-of v3, v2, Landroid/widget/Spinner;

    if-nez v3, :cond_1

    instance-of v3, v2, Landroid/widget/RadioGroup;

    if-nez v3, :cond_1

    .line 233
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {p0, v3}, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentViewScreenCallbacks;->traverseView(Ljava/lang/String;Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v2    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_2
    goto :goto_2

    .line 223
    :cond_3
    :goto_1
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 239
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method


# virtual methods
.method public onCreate(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public onHiddenChanged(Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "hidden"    # Z

    .line 124
    if-nez p1, :cond_0

    .line 125
    :try_start_0
    const-string v0, "SA.FragmentViewScreenCallbacks"

    const-string v1, "fragment is null,return"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void

    .line 137
    :catch_0
    move-exception v0

    goto :goto_0

    .line 128
    :cond_0
    if-eqz p2, :cond_1

    .line 129
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentViewScreenCallbacks;->mPageFragments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 130
    const-string v0, "SA.FragmentViewScreenCallbacks"

    const-string v1, "fragment hidden is true,return"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void

    .line 133
    :cond_1
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentViewScreenCallbacks;->isFragmentValid(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentViewScreenCallbacks;->trackFragmentAppViewScreen(Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentViewScreenCallbacks;->mPageFragments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_2
    goto :goto_1

    .line 137
    :goto_0
    nop

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public onPause(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 111
    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentViewScreenCallbacks;->mPageFragments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    return-void
.end method

.method public onResume(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 100
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentViewScreenCallbacks;->isFragmentValid(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentViewScreenCallbacks;->trackFragmentAppViewScreen(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentViewScreenCallbacks;->mPageFragments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onStart(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public onStop(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .line 119
    return-void
.end method

.method public onViewCreated(Ljava/lang/Object;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 68
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "fragmentName":Ljava/lang/String;
    sget v1, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_fragment_name:I

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 71
    instance-of v1, p2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 72
    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentViewScreenCallbacks;->traverseView(Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 76
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 78
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1, p2}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getActivityFromContext(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v2

    .line 79
    .local v2, "activity":Landroid/app/Activity;
    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 81
    .local v3, "window":Landroid/view/Window;
    if-eqz v3, :cond_1

    .line 82
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_fragment_name:I

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 86
    .end local v3    # "window":Landroid/view/Window;
    :cond_1
    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/FragmentCacheUtil;->setFragmentToCache(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0    # "fragmentName":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "activity":Landroid/app/Activity;
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setUserVisibleHint(Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "isVisibleToUser"    # Z

    .line 145
    if-nez p1, :cond_0

    .line 146
    :try_start_0
    const-string v0, "SA.FragmentViewScreenCallbacks"

    const-string v1, "object is null"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void

    .line 158
    :catch_0
    move-exception v0

    goto :goto_0

    .line 149
    :cond_0
    if-nez p2, :cond_1

    .line 150
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentViewScreenCallbacks;->mPageFragments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 151
    const-string v0, "SA.FragmentViewScreenCallbacks"

    const-string v1, "fragment isVisibleToUser is false,return"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void

    .line 154
    :cond_1
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentViewScreenCallbacks;->isFragmentValid(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentViewScreenCallbacks;->trackFragmentAppViewScreen(Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentViewScreenCallbacks;->mPageFragments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_2
    goto :goto_1

    .line 158
    :goto_0
    nop

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 161
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
