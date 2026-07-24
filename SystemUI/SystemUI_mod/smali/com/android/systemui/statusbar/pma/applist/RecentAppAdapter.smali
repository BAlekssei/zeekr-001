.class public Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecentAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private appInfoAll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/pma/applist/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private appInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/pma/applist/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field isDay:Z

.field private mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;Z)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "day"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/pma/applist/AppInfo;",
            ">;",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    .line 64
    .local p1, "dataSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfos:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfoAll:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 66
    if-eqz p2, :cond_1

    .line 67
    iput-object p2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->context:Landroid/content/Context;

    .line 68
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfos:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfoAll:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 75
    :cond_1
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->isDay:Z

    .line 76
    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 47
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->DEBUG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method public addData(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)V
    .locals 3
    .param p1, "data"    # Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->checkIsIn(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)I

    move-result v0

    .line 94
    .local v0, "position":I
    if-nez v0, :cond_0

    .line 95
    return-void

    .line 96
    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 97
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 100
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfoAll:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 101
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfoAll:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 102
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->notifyItemMoved(II)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfoAll:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 106
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfoAll:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 107
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->notifyItemInserted(I)V

    goto :goto_0

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 111
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfoAll:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 112
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->notifyItemInserted(I)V

    .line 114
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->checkMax()V

    .line 115
    return-void
.end method

.method public addRecentApp(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)V
    .locals 0
    .param p1, "a"    # Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->addData(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)V

    .line 90
    return-void
.end method

.method public checkIsIn(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)I
    .locals 3
    .param p1, "data"    # Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfoAll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 150
    const-string v1, "com.ecarx.multimedia"

    iget-object v2, p1, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->package_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getActivity()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfoAll:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getActivity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    return v0

    .line 155
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfoAll:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    return v0

    .line 149
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public checkMax()V
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 120
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->notifyItemRemoved(I)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfoAll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xc

    if-le v0, v1, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfoAll:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 125
    :cond_1
    return-void
.end method

.method public getActivity(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 524
    const/4 v0, 0x0

    .line 526
    .local v0, "activity":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 527
    .local v1, "it":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 528
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 533
    .end local v1    # "it":Landroid/content/Intent;
    :cond_0
    goto :goto_0

    .line 530
    :catch_0
    move-exception v1

    .line 531
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 532
    const-string v2, "RecentAppAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refresh: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public getAllCount()I
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfoAll:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfoAll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getIconFromPackageName(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 491
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 492
    .local v2, "otherAppCtx":Landroid/content/Context;
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    .line 493
    .local v3, "displayMetrics":[I
    const/4 v4, 0x0

    .line 494
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    array-length v5, v3

    move-object v6, v4

    move v4, v1

    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-ge v4, v5, :cond_3

    aget v7, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 496
    .local v7, "displayMetric":I
    :try_start_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v9, Landroid/content/ComponentName;

    invoke-direct {v9, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ActivityInfo;->icon:I

    .line 497
    .local v8, "icon":I
    if-eqz v8, :cond_0

    .line 498
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8, v7}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    move-object v6, v9

    .line 500
    :cond_0
    if-nez v6, :cond_1

    .line 501
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v9, v10, v7}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    move-object v6, v9

    .line 503
    :cond_1
    if-eqz v6, :cond_2

    .line 504
    invoke-static {v6}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v9

    .line 509
    .end local v8    # "icon":I
    :cond_2
    goto :goto_1

    .line 506
    :catch_0
    move-exception v8

    .line 507
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v9, "RecentAppAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getIconFromPackageName: error"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    nop

    .line 494
    .end local v7    # "displayMetric":I
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 511
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 512
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 513
    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 515
    :cond_4
    const-string v4, "RecentAppAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIconFromPackageName: null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 519
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "otherAppCtx":Landroid/content/Context;
    .end local v3    # "displayMetrics":[I
    goto :goto_2

    .line 517
    :catch_1
    move-exception v0

    .line 518
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RecentAppAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIconFromPackageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v0, 0x0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x280
        0x1e0
        0x140
        0xf0
        0xd5
        0xa0
        0x78
    .end array-data
.end method

.method public getItemCount()I
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfos:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getRecent()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/pma/applist/AppInfo;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfoAll:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 172
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->setApp(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)V

    .line 173
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 165
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 166
    const v1, 0x7f0d0100

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;-><init>(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public onDayNightModeChange(Z)V
    .locals 1
    .param p1, "dayNightMode"    # Z

    .line 538
    if-eqz p1, :cond_0

    .line 539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->isDay:Z

    goto :goto_0

    .line 541
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->isDay:Z

    .line 543
    :goto_0
    return-void
.end method

.method public refreshActivity(ILjava/lang/String;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "activity"    # Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfoAll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfoAll:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setActivity(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setActivity(Ljava/lang/String;)V

    .line 195
    :cond_0
    return-void
.end method

.method public removeData(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfoAll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 129
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfoAll:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->notifyItemRemoved(I)V

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfoAll:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 128
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 137
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->getItemCount()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfoAll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_3

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->appInfoAll:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->notifyItemInserted(I)V

    .line 141
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 143
    return v1

    .line 145
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public setAppClickListener(Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    .line 546
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    .line 547
    return-void
.end method
