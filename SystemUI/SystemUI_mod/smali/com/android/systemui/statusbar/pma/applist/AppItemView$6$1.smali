.class Lcom/android/systemui/statusbar/pma/applist/AppItemView$6$1;
.super Ljava/lang/Object;
.source "AppItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;

    .line 1085
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6$1;->this$1:Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1089
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6$1;->this$1:Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->access$402(Lcom/android/systemui/statusbar/pma/applist/AppItemView;Z)Z

    .line 1090
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6$1;->this$1:Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    .line 1091
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6$1;->this$1:Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getUrlToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1092
    .local v1, "b":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6$1;->this$1:Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;

    iget-object v3, v3, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6$1;->this$1:Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;

    iget-object v3, v3, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v3

    const/16 v4, 0xe

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6$1;->this$1:Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;

    iget-object v3, v3, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    .line 1093
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6$1;->this$1:Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;

    iget-object v3, v3, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->access$202(Lcom/android/systemui/statusbar/pma/applist/AppItemView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1094
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6$1;->this$1:Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;

    iget-object v3, v3, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->access$000(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1096
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6$1;->this$1:Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;

    iget-object v3, v3, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->access$402(Lcom/android/systemui/statusbar/pma/applist/AppItemView;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1099
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v1    # "b":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 1097
    :catch_0
    move-exception v0

    .line 1098
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1100
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
