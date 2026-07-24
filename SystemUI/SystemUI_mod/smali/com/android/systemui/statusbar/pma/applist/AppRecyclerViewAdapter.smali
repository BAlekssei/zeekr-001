.class public Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AppRecyclerViewAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter$IClickTagCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field isDay:Z

.field private mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

.field page:I

.field private pageData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/pma/applist/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private urlBitmap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field vacancy:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;IZZ)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "page"    # I
    .param p4, "isDay"    # Z
    .param p5, "isNew"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/pma/applist/AppInfo;",
            ">;",
            "Landroid/content/Context;",
            "IZZ)V"
        }
    .end annotation

    .line 69
    .local p1, "dataSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->urlBitmap:Ljava/util/Map;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->vacancy:I

    .line 70
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->isDay:Z

    .line 71
    if-eqz p2, :cond_0

    .line 72
    iput-object p2, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->handler:Landroid/os/Handler;

    .line 74
    iput p3, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->page:I

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 79
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->urlBitmap:Ljava/util/Map;

    return-object v0
.end method

.method private getIconFromUrl(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)V
    .locals 3
    .param p1, "appInfo"    # Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    .line 183
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getInstall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->urlBitmap:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter$1;-><init>(Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;Lcom/android/systemui/statusbar/pma/applist/AppInfo;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 198
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 200
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public addData(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)V
    .locals 1
    .param p1, "data"    # Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->notifyItemInserted(I)V

    .line 158
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->getIconFromUrl(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)V

    .line 159
    return-void
.end method

.method public addData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/pma/applist/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 146
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;"
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->getItemCount()I

    move-result v0

    .line 147
    .local v0, "oldSize":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 148
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->notifyItemInserted(I)V

    .line 153
    :goto_0
    return-void
.end method

.method public addData(ILcom/android/systemui/statusbar/pma/applist/AppInfo;)Z
    .locals 1
    .param p1, "position"    # I
    .param p2, "data"    # Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->notifyItemInserted(I)V

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public addVacancy(I)Z
    .locals 4
    .param p1, "position"    # I

    .line 106
    new-instance v0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    const-string v1, ""

    const-string/jumbo v2, "vacancy"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .local v0, "appVacancy":Lcom/android/systemui/statusbar/pma/applist/AppInfo;
    iget v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->vacancy:I

    const/16 v2, 0x15

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 108
    iput p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->vacancy:I

    .line 109
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->addData(ILcom/android/systemui/statusbar/pma/applist/AppInfo;)Z

    goto :goto_0

    .line 110
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->vacancy:I

    if-eq v1, p1, :cond_1

    if-ge p1, v2, :cond_1

    .line 111
    iget v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->vacancy:I

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->onItemMove(II)V

    .line 112
    iput p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->vacancy:I

    .line 114
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->getItemCount()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 115
    const/4 v1, 0x1

    return v1

    .line 117
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public changedAppTaskInfoState(Ljava/lang/String;I)I
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "s"    # I

    .line 203
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "AppRecyclerViewAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changedAppTaskInfoState: new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    const/4 v0, 0x0

    .line 207
    .local v0, "isIn":Z
    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    const/4 v1, 0x5

    if-ne p2, v1, :cond_2

    .line 208
    :cond_1
    const/4 p2, 0x6

    .line 210
    :cond_2
    const/16 v1, 0xb

    if-eq p2, v1, :cond_3

    const/16 v1, 0xc

    if-ne p2, v1, :cond_4

    .line 211
    :cond_3
    const/16 p2, 0xd

    .line 213
    :cond_4
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 214
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 215
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v3

    const/4 v4, -0x2

    if-eq v3, p2, :cond_8

    if-eq p2, v4, :cond_8

    .line 216
    sget-boolean v3, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 217
    const-string v3, "AppRecyclerViewAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changedAppTaskInfoState: old "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_5
    if-gez p2, :cond_7

    .line 221
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 222
    .local v3, "mPackageManager":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 224
    .local v4, "it":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 225
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, "activity":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setActivity(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v3    # "mPackageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "it":Landroid/content/Intent;
    .end local v5    # "activity":Ljava/lang/String;
    :cond_6
    goto :goto_1

    .line 228
    :catch_0
    move-exception v3

    .line 229
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "AppRecyclerViewAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changedAppTaskInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setState(I)V

    .line 232
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setInstall(Z)V

    goto :goto_2

    .line 234
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setState(I)V

    .line 236
    :goto_2
    return v2

    .line 238
    :cond_8
    return v4

    .line 213
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 241
    .end local v2    # "i":I
    :cond_a
    const/4 v1, -0x1

    return v1
.end method

.method public getItemAppCount()I
    .locals 2

    .line 322
    iget v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->vacancy:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getActivity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->isDay:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 309
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 310
    const/4 v0, 0x1

    return v0

    .line 312
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPage()I
    .locals 1

    .line 374
    iget v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->page:I

    return v0
.end method

.method public getPageData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/pma/applist/AppInfo;",
            ">;"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 335
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 340
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 265
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 266
    const-string v0, "AppRecyclerViewAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder: position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 269
    const-string/jumbo v0, "vacancy"

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->setApp(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)V

    .line 271
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getInstall()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v0

    const/4 v3, -0x2

    if-ne v0, v3, :cond_2

    goto :goto_0

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v0

    if-lez v0, :cond_9

    .line 280
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->setApp(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v0

    const/16 v3, 0x9

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v0

    const/16 v3, 0xf

    if-ne v0, v3, :cond_9

    .line 282
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setState(I)V

    goto/16 :goto_1

    .line 275
    :cond_4
    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    .line 276
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->getLabel()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 277
    :cond_5
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->setApp(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)V

    goto/16 :goto_1

    .line 285
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getInstall()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v0

    if-ltz v0, :cond_9

    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->urlBitmap:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->urlBitmap:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 288
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->urlBitmap:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->setIconBitmap(Landroid/graphics/Bitmap;)V

    .line 290
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->urlBitmap:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_8
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->setUninstallApp(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)V

    .line 295
    :cond_9
    :goto_1
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->setNewApp()V

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v0

    if-gez v0, :cond_a

    .line 298
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->refresh(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setInstall(Z)V

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setState(I)V

    .line 303
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->checkStartup()I

    .line 305
    :cond_b
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 253
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00fd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    .line 254
    .local v0, "view":Lcom/android/systemui/statusbar/pma/applist/AppItemView;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 255
    new-instance v1, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->isDay:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;-><init>(Landroid/view/View;Landroid/content/Context;Z)V

    .line 256
    .local v1, "mAppItemIconViewHolder":Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->setAppClickListener(Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;)V

    .line 257
    return-object v1

    .line 259
    .end local v1    # "mAppItemIconViewHolder":Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;
    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->isDay:Z

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;-><init>(Landroid/view/View;Landroid/content/Context;ZZ)V

    return-object v2
.end method

.method public onDayNightModeChange(Z)V
    .locals 1
    .param p1, "dayNightMode"    # Z

    .line 382
    if-eqz p1, :cond_0

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->isDay:Z

    goto :goto_0

    .line 385
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->isDay:Z

    .line 387
    :goto_0
    return-void
.end method

.method public onItemMove(II)V
    .locals 2
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    .line 346
    .local v0, "app":Lcom/android/systemui/statusbar/pma/applist/AppInfo;
    if-le p2, p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_0

    .line 348
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 352
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->notifyItemMoved(II)V

    .line 353
    return-void
.end method

.method public refreshVacancy(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)V
    .locals 3
    .param p1, "data"    # Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    .line 129
    iget v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->vacancy:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->addData(ILcom/android/systemui/statusbar/pma/applist/AppInfo;)Z

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->vacancy:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->vacancy:I

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 134
    iget v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->vacancy:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->notifyItemChanged(I)V

    .line 135
    iput v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->vacancy:I

    .line 137
    :goto_0
    return-void
.end method

.method public removeApp(I)V
    .locals 3
    .param p1, "position"    # I

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    .line 163
    .local v0, "appInfo":Lcom/android/systemui/statusbar/pma/applist/AppInfo;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->notifyItemRemoved(I)V

    .line 164
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->urlBitmap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->urlBitmap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_0
    return-void
.end method

.method public removeData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 171
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->removeApp(I)V

    .line 170
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 175
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 177
    return v1

    .line 179
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public removeVacancy()Z
    .locals 2

    .line 121
    iget v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->vacancy:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 122
    iget v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->vacancy:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->removeApp(I)V

    .line 123
    iput v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->vacancy:I

    .line 125
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setAppClickListener(Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    .line 390
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    .line 391
    return-void
.end method

.method public setPage(I)V
    .locals 0
    .param p1, "page"    # I

    .line 378
    iput p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->page:I

    .line 379
    return-void
.end method
