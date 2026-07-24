.class Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$3;
.super Ljava/lang/Object;
.source "RecentAppAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->setApp(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    .line 288
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$3;->this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$3;->this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->access$300(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;)Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "pkg":Ljava/lang/String;
    invoke-static {}, Lcom/zeekrlife/market/update/ZKMarketManager;->getInstance()Lcom/zeekrlife/market/update/ZKMarketManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zeekrlife/market/update/ZKMarketManager;->getAppTaskInfo(Ljava/lang/String;)Lcom/zeekrlife/market/update/AppTaskInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zeekrlife/market/update/AppTaskInfo;->getAppIcon()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "url":Ljava/lang/String;
    const-string v2, "RecentAppAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "run: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    if-eqz v1, :cond_0

    .line 296
    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getUrlToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 297
    .local v2, "b":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$3;->this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->access$300(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;)Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$3;->this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->access$400(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 298
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$3;->this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    iput-object v2, v3, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appIconBitmap:Landroid/graphics/Bitmap;

    .line 299
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$3;->this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->access$500(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    return-void

    .line 305
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v1    # "url":Ljava/lang/String;
    .end local v2    # "b":Landroid/graphics/Bitmap;
    :cond_0
    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 306
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
