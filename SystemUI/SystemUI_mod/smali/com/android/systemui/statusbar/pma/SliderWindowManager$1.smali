.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$1;
.super Ljava/lang/Object;
.source "SliderWindowManager.java"

# interfaces
.implements Lcom/zeekr/sdk/base/ApiReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/SliderWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 422
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$1;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAPIReady(ZLjava/lang/String;)V
    .locals 4
    .param p1, "result"    # Z
    .param p2, "error"    # Ljava/lang/String;

    .line 425
    if-nez p1, :cond_0

    .line 426
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAPIReady: false errorcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$1;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v0

    const/16 v1, 0x73

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$1;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$102(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 431
    :goto_0
    return-void
.end method
