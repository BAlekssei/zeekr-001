.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$47;
.super Ljava/lang/Object;
.source "SliderWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateHiCarAppBeanList()Ljava/util/ArrayList;
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

    .line 5635
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$47;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 5638
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$47;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->openApplist(Z)V

    .line 5639
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$47;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$47$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$47$1;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager$47;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->post(Ljava/lang/Runnable;)Z

    .line 5648
    return-void
.end method
