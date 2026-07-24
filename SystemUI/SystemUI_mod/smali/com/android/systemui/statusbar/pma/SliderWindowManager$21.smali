.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$21;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SliderWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/SliderWindowManager;->initRecent(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Landroid/content/Context;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # Z

    .line 1088
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$21;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    .line 1091
    const/4 v0, 0x0

    return v0
.end method
