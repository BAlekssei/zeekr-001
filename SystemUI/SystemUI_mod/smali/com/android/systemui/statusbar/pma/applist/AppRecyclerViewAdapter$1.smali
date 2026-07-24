.class Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter$1;
.super Ljava/lang/Object;
.source "AppRecyclerViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->getIconFromUrl(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

.field final synthetic val$appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;Lcom/android/systemui/statusbar/pma/applist/AppInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    .line 186
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter$1;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter$1;->val$appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    iput-object p3, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter$1;->val$pkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter$1;->val$appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getUrlToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 191
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter$1;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->access$000(Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter$1;->val$pkg:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter$1;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->access$000(Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter$1;->val$pkg:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
