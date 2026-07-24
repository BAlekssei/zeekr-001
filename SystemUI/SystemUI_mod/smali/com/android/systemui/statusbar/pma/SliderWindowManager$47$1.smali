.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$47$1;
.super Ljava/lang/Object;
.source "SliderWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/SliderWindowManager$47;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$47;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager$47;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager$47;

    .line 5639
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$47$1;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$47;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 5642
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$47$1;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$47;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$47;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    .line 5643
    .local v0, "tab":Landroid/support/design/widget/TabLayout$Tab;
    if-eqz v0, :cond_0

    .line 5644
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 5646
    :cond_0
    return-void
.end method
