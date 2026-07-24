.class public Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;
.super Ljava/lang/Object;
.source "AppOnRecyclerItemClickListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragData"
.end annotation


# instance fields
.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 108
    iput-object p2, p0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 109
    return-void
.end method
