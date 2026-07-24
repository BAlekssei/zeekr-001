.class public Lcom/android/systemui/statusbar/pma/SuggestAppUtils;
.super Ljava/lang/Object;
.source "SuggestAppUtils.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mSearchResultInfo:Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;

.field private mUsageStatsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsageStatusManager:Landroid/app/usage/UsageStatsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SuggestAppUtils;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SuggestAppUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SuggestAppUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usagestats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SuggestAppUtils;->mUsageStatusManager:Landroid/app/usage/UsageStatsManager;

    .line 65
    new-instance v0, Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SuggestAppUtils;->mSearchResultInfo:Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;

    .line 66
    return-void
.end method

.method private claResult()Lcom/android/systemui/statusbar/pma/SearchResultInfo;
    .locals 18

    .line 69
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 70
    .local v2, "suggestAppIcon":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 71
    .local v3, "suggestAppName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 72
    .local v4, "suggestAppLabelName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 74
    .local v5, "launchIntent":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 75
    .local v6, "calendar":Ljava/util/Calendar;
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    .line 76
    .local v13, "endTime":J
    const/4 v0, 0x7

    const/4 v7, -0x2

    invoke-virtual {v6, v0, v7}, Ljava/util/Calendar;->add(II)V

    .line 77
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    .line 78
    .local v15, "startTime":J
    iget-object v7, v1, Lcom/android/systemui/statusbar/pma/SuggestAppUtils;->mUsageStatusManager:Landroid/app/usage/UsageStatsManager;

    const/4 v8, 0x3

    move-wide v9, v15

    move-wide v11, v13

    invoke-virtual/range {v7 .. v12}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/pma/SuggestAppUtils;->mUsageStatsList:Ljava/util/List;

    .line 80
    iget-object v0, v1, Lcom/android/systemui/statusbar/pma/SuggestAppUtils;->mUsageStatsList:Ljava/util/List;

    const/4 v7, 0x0

    if-nez v0, :cond_0

    .line 81
    return-object v7

    .line 84
    :cond_0
    iget-object v0, v1, Lcom/android/systemui/statusbar/pma/SuggestAppUtils;->mUsageStatsList:Ljava/util/List;

    sget-object v8, Lcom/android/systemui/statusbar/pma/-$$Lambda$SuggestAppUtils$SJ13yLS9sIx0xN_nQrCpvT1RcgY;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$SuggestAppUtils$SJ13yLS9sIx0xN_nQrCpvT1RcgY;

    invoke-static {v0, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 94
    iget-object v0, v1, Lcom/android/systemui/statusbar/pma/SuggestAppUtils;->mUsageStatsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    move-object v9, v0

    .line 99
    .local v9, "tempStats":Landroid/app/usage/UsageStats;
    :try_start_0
    invoke-virtual {v9}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "packageName":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/systemui/statusbar/pma/SuggestAppUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 101
    .local v10, "mDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v11, v1, Lcom/android/systemui/statusbar/pma/SuggestAppUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v12, v1, Lcom/android/systemui/statusbar/pma/SuggestAppUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v12, v0, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v11, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 102
    .local v7, "labelName":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/systemui/statusbar/pma/SuggestAppUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 103
    .local v11, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    if-eqz v10, :cond_1

    if-eqz v7, :cond_1

    if-eqz v11, :cond_1

    .line 104
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_1
    goto :goto_1

    .line 109
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v7    # "labelName":Ljava/lang/String;
    .end local v10    # "mDrawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "tempStats":Landroid/app/usage/UsageStats;
    :goto_1
    nop

    .line 94
    const/4 v7, 0x0

    goto :goto_0

    .line 114
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 115
    const/4 v7, 0x0

    return-object v7

    .line 118
    :cond_3
    iget-object v0, v1, Lcom/android/systemui/statusbar/pma/SuggestAppUtils;->mSearchResultInfo:Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;->setPackageName(Ljava/util/List;)V

    .line 119
    iget-object v0, v1, Lcom/android/systemui/statusbar/pma/SuggestAppUtils;->mSearchResultInfo:Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;->setDisplayName(Ljava/util/List;)V

    .line 120
    iget-object v0, v1, Lcom/android/systemui/statusbar/pma/SuggestAppUtils;->mSearchResultInfo:Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;->setDisplayImage(Ljava/util/List;)V

    .line 121
    iget-object v0, v1, Lcom/android/systemui/statusbar/pma/SuggestAppUtils;->mSearchResultInfo:Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;->setLaunchIntent(Ljava/util/List;)V

    .line 122
    iget-object v0, v1, Lcom/android/systemui/statusbar/pma/SuggestAppUtils;->mSearchResultInfo:Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;

    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;->setType(I)V

    .line 123
    iget-object v0, v1, Lcom/android/systemui/statusbar/pma/SuggestAppUtils;->mSearchResultInfo:Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;->setSize(I)V

    .line 124
    iget-object v0, v1, Lcom/android/systemui/statusbar/pma/SuggestAppUtils;->mSearchResultInfo:Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;

    return-object v0
.end method

.method static synthetic lambda$claResult$0(Landroid/app/usage/UsageStats;Landroid/app/usage/UsageStats;)I
    .locals 5
    .param p0, "o1"    # Landroid/app/usage/UsageStats;
    .param p1, "o2"    # Landroid/app/usage/UsageStats;

    .line 85
    invoke-virtual {p0}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 86
    .local v0, "diff":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 87
    const/4 v2, -0x1

    return v2

    .line 88
    :cond_0
    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 89
    const/4 v2, 0x1

    return v2

    .line 91
    :cond_1
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public getSuggestAppInfo()Lcom/android/systemui/statusbar/pma/SearchResultInfo;
    .locals 1

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SuggestAppUtils;->claResult()Lcom/android/systemui/statusbar/pma/SearchResultInfo;

    move-result-object v0

    return-object v0
.end method
