.class Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$HeatVentilationViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "HeatVentilationSliderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeatVentilationViewHolder"
.end annotation


# instance fields
.field public imgHeatVentilation:Landroid/widget/ImageView;

.field public mPosition:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 136
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$HeatVentilationViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    .line 137
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 138
    const v0, 0x7f0a01e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$HeatVentilationViewHolder;->imgHeatVentilation:Landroid/widget/ImageView;

    .line 139
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$HeatVentilationViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->access$000(Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    const-string v0, "HeatVentilationSliderAdapter"

    const-string v1, "heatVentilationViewHolder locked "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$HeatVentilationViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->access$100(Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;)Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$HeatVentilationViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->access$002(Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;Z)Z

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$HeatVentilationViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->access$100(Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;)Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$OnItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$HeatVentilationViewHolder;->mPosition:I

    iget v2, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$HeatVentilationViewHolder;->mPosition:I

    add-int/lit8 v2, v2, -0x3

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$OnItemClickListener;->onItemClick(II)V

    .line 152
    :cond_1
    return-void
.end method
