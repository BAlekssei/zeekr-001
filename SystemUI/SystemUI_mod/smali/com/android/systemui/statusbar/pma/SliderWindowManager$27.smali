.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$27;
.super Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;
.source "SliderWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/SliderWindowManager;->initHicarAppList(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p2, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "isHicar"    # Z

    .line 1358
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$27;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;-><init>(Landroidx/recyclerview/widget/RecyclerView;Z)V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "vh"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1366
    return-void
.end method

.method public showAppDeleteBin(Ljava/lang/Boolean;II)V
    .locals 0
    .param p1, "isShow"    # Ljava/lang/Boolean;
    .param p2, "position"    # I
    .param p3, "state"    # I

    .line 1369
    return-void
.end method

.method public translateDeleteBin()V
    .locals 0

    .line 1372
    return-void
.end method
