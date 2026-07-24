.class public Lcom/sensorsdata/analytics/android/sdk/visual/util/VisualUtil;
.super Ljava/lang/Object;
.source "VisualUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChildIndex(Landroid/view/ViewParent;Landroid/view/View;)I
    .locals 9
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "child"    # Landroid/view/View;

    .line 95
    const/4 v0, -0x1

    :try_start_0
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 96
    return v0

    .line 98
    :cond_0
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    .line 99
    .local v1, "viewParent":Landroid/view/ViewGroup;
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "childIdName":Ljava/lang/String;
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "childClassName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 103
    .local v4, "index":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 104
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 105
    .local v6, "brother":Landroid/view/View;
    invoke-static {v6, v3}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Pathfinder;->hasClassName(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 106
    goto :goto_1

    .line 108
    :cond_1
    invoke-static {v6}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, "brotherIdName":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v8, :cond_2

    .line 110
    add-int/lit8 v4, v4, 0x1

    .line 111
    goto :goto_1

    .line 113
    :cond_2
    if-ne v6, p1, :cond_3

    .line 114
    return v4

    .line 116
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 103
    .end local v6    # "brother":Landroid/view/View;
    .end local v7    # "brotherIdName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 118
    .end local v5    # "i":I
    :cond_4
    return v0

    .line 119
    .end local v1    # "viewParent":Landroid/view/ViewGroup;
    .end local v2    # "childIdName":Ljava/lang/String;
    .end local v3    # "childClassName":Ljava/lang/String;
    .end local v4    # "index":I
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 121
    return v0
.end method

.method public static getScreenNameAndTitle(Landroid/view/View;Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "info"    # Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;

    .line 133
    if-nez p0, :cond_0

    .line 134
    const/4 v0, 0x0

    return-object v0

    .line 136
    :cond_0
    const/4 v0, 0x0

    .line 137
    .local v0, "object":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getActivityFromContext(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 138
    .local v1, "activity":Landroid/app/Activity;
    if-nez v1, :cond_1

    .line 139
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v1

    .line 141
    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->isActive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v2

    .line 143
    invoke-static {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getFragmentFromView(Landroid/view/View;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    .line 144
    .local v2, "fragment":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 145
    invoke-static {v0, v2, v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getScreenNameAndTitleFromFragment(Lorg/json/JSONObject;Ljava/lang/Object;Landroid/app/Activity;)V

    .line 146
    if-eqz p1, :cond_3

    iget-boolean v3, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->hasFragment:Z

    if-nez v3, :cond_3

    .line 147
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->hasFragment:Z

    goto :goto_0

    .line 150
    :cond_2
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->buildTitleAndScreenName(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object v0

    .line 151
    invoke-static {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/visual/util/VisualUtil;->mergeRnScreenNameAndTitle(Lorg/json/JSONObject;Landroid/view/View;)V

    .line 154
    .end local v2    # "fragment":Ljava/lang/Object;
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static getVisibility(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 48
    instance-of v0, p0, Landroid/widget/Spinner;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 49
    return v1

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->isViewSelfVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    return v1

    .line 54
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 55
    return v1

    .line 57
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static isForbiddenClick(Landroid/view/View;)Z
    .locals 4
    .param p0, "v"    # Landroid/view/View;

    .line 68
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfWebView(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    instance-of v0, p0, Landroid/widget/AdapterView;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 72
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    .line 73
    .local v0, "textView":Landroid/widget/TextView;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_1

    .line 74
    invoke-virtual {v0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    return v1

    .line 79
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 69
    :cond_2
    :goto_0
    return v1
.end method

.method public static isSupportClick(Landroid/view/View;)Z
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 84
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/widget/AdapterView;

    const/4 v2, 0x1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfRecyclerView(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 87
    :cond_0
    instance-of v1, p0, Landroid/widget/RatingBar;

    if-nez v1, :cond_2

    instance-of v1, p0, Landroid/widget/SeekBar;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 88
    :cond_2
    :goto_0
    return v2

    .line 85
    :cond_3
    :goto_1
    return v2
.end method

.method public static isSupportElementContent(Landroid/view/View;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xe

    if-lt v0, v2, :cond_1

    .line 62
    instance-of v0, p0, Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/widget/RatingBar;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/widget/Switch;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 64
    :cond_1
    return v1
.end method

.method public static mergeRnScreenNameAndTitle(Lorg/json/JSONObject;)V
    .locals 1
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .line 158
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/util/VisualUtil;->mergeRnScreenNameAndTitle(Lorg/json/JSONObject;Landroid/view/View;)V

    .line 159
    return-void
.end method

.method public static mergeRnScreenNameAndTitle(Lorg/json/JSONObject;Landroid/view/View;)V
    .locals 6
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "view"    # Landroid/view/View;

    .line 169
    :try_start_0
    const-string v0, "com.sensorsdata.analytics.utils.RNViewUtils"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getCurrentClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 170
    .local v0, "rnViewUtils":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getVisualizeProperties"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 171
    .local v1, "properties":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 172
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 173
    .local v3, "object":Lorg/json/JSONObject;
    if-eqz p1, :cond_1

    const-string v4, "isSetRNViewTag"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    sget v2, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_rn_key:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 175
    .local v2, "isRNView":Ljava/lang/Object;
    if-eqz v2, :cond_0

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 176
    :cond_0
    return-void

    .line 179
    .end local v2    # "isRNView":Ljava/lang/Object;
    :cond_1
    const-string v2, "$screen_name"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "rnScreenName":Ljava/lang/String;
    const-string v4, "$title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "rnActivityTitle":Ljava/lang/String;
    const-string v5, "$screen_name"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 182
    const-string v5, "$screen_name"

    invoke-virtual {p0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    :cond_2
    const-string v5, "$title"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 185
    const-string v5, "$title"

    invoke-virtual {p0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v0    # "rnViewUtils":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "properties":Ljava/lang/String;
    .end local v2    # "rnScreenName":Ljava/lang/String;
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v4    # "rnActivityTitle":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
