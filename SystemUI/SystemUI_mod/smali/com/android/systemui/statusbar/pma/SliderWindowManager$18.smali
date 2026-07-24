.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$18;
.super Ljava/lang/Object;
.source "SliderWindowManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/SliderWindowManager;->createSliderWindowView()V
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

    .line 1022
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$18;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1025
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$18;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$2300(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1026
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$18;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$2400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "\u9759\u97f3\u56fe\u6807"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackVolumeMute(ILjava/lang/String;)V

    .line 1027
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$18;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->requestMuteVolume()V

    .line 1029
    :cond_1
    return-void
.end method
