.class Lcom/android/systemui/statusbar/pma/applist/AppItemView$1;
.super Ljava/lang/Object;
.source "AppItemView.java"

# interfaces
.implements Lcom/zeekrlife/market/update/ZKMarketManager$AppCheckUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/applist/AppItemView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    .line 639
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$1;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppUpdate(ZLcom/zeekrlife/market/update/AppInfo;)Z
    .locals 3
    .param p1, "update"    # Z
    .param p2, "appInfo"    # Lcom/zeekrlife/market/update/AppInfo;

    .line 642
    const-string v0, "AppItemView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    if-nez p1, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$1;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->access$000(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 646
    :cond_0
    return p1
.end method
