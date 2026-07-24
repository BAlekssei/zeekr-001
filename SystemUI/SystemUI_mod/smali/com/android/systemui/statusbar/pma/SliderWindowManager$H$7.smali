.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$7;
.super Ljava/lang/Object;
.source "SliderWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    .line 4973
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$7;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 4977
    :try_start_0
    invoke-static {}, Lcom/zeekr/sdk/policy/impl/PolicyProxy;->get()Lcom/zeekr/sdk/policy/impl/PolicyAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$7;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$2500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$7;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    iget-object v2, v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v2, v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mApiReadyCallback:Lcom/zeekr/sdk/base/ApiReadyCallback;

    invoke-virtual {v0, v1, v2}, Lcom/zeekr/sdk/policy/impl/PolicyAPI;->init(Landroid/content/Context;Lcom/zeekr/sdk/base/ApiReadyCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4983
    goto :goto_0

    .line 4978
    :catch_0
    move-exception v0

    .line 4979
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4980
    const-string v1, "SliderWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyProxy init error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4981
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$7;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v1

    const/16 v2, 0x73

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessageDelayed(IJ)Z

    .line 4984
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method
