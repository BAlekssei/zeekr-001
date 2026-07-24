.class Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SearchResultViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SearchContentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/SearchContentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchResultViewHolder"
.end annotation


# instance fields
.field public mPos:I

.field public mType:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/SearchContentAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pma/SearchContentAdapter;Landroid/view/View;)V
    .locals 0
    .param p2, "itemView"    # Landroid/view/View;

    .line 156
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SearchResultViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/SearchContentAdapter;

    .line 157
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 158
    return-void
.end method
