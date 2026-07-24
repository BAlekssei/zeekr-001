.class Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SingleSearchResultViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SearchContentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/SearchContentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleSearchResultViewHolder"
.end annotation


# instance fields
.field public mType:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/SearchContentAdapter;

.field public tvSearchResult:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pma/SearchContentAdapter;Landroid/view/View;)V
    .locals 0
    .param p2, "itemView"    # Landroid/view/View;

    .line 167
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SingleSearchResultViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/SearchContentAdapter;

    .line 168
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 169
    const p1, 0x7f0a04df

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SingleSearchResultViewHolder;->tvSearchResult:Landroid/widget/TextView;

    .line 170
    new-instance p1, Lcom/android/systemui/statusbar/pma/-$$Lambda$nekDOZ6yWXLkmonkMlhukGUDy1I;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$nekDOZ6yWXLkmonkMlhukGUDy1I;-><init>(Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SingleSearchResultViewHolder;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 176
    return-void
.end method
