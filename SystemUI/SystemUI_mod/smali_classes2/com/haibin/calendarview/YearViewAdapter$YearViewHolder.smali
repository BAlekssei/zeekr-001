.class Lcom/haibin/calendarview/YearViewAdapter$YearViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "YearViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haibin/calendarview/YearViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YearViewHolder"
.end annotation


# instance fields
.field mYearView:Lcom/haibin/calendarview/YearView;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/haibin/calendarview/CalendarViewDelegate;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "delegate"    # Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 76
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 77
    move-object v0, p1

    check-cast v0, Lcom/haibin/calendarview/YearView;

    iput-object v0, p0, Lcom/haibin/calendarview/YearViewAdapter$YearViewHolder;->mYearView:Lcom/haibin/calendarview/YearView;

    .line 78
    iget-object v0, p0, Lcom/haibin/calendarview/YearViewAdapter$YearViewHolder;->mYearView:Lcom/haibin/calendarview/YearView;

    invoke-virtual {v0, p2}, Lcom/haibin/calendarview/YearView;->setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V

    .line 79
    return-void
.end method
