.class Lcom/android/systemui/statusbar/pma/CarNotificationAdapter$CarNotificationViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CarNotificationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/CarNotificationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarNotificationViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/CarNotificationAdapter;

.field public tvNotificationText:Landroid/widget/TextView;

.field public tvNotificationTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pma/CarNotificationAdapter;Landroid/view/View;)V
    .locals 0
    .param p2, "itemView"    # Landroid/view/View;

    .line 80
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CarNotificationAdapter$CarNotificationViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/CarNotificationAdapter;

    .line 81
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 82
    const p1, 0x7f0a04cc

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CarNotificationAdapter$CarNotificationViewHolder;->tvNotificationText:Landroid/widget/TextView;

    .line 83
    const p1, 0x7f0a04cd

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CarNotificationAdapter$CarNotificationViewHolder;->tvNotificationTitle:Landroid/widget/TextView;

    .line 84
    return-void
.end method
