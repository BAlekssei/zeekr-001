.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$15;
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

    .line 926
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$15;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 929
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$15;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveClimatePosition(I)V

    .line 930
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$15;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    const/4 v1, -0x6

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    .line 931
    return-void
.end method
