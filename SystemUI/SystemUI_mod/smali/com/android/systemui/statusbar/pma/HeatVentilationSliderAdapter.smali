.class public Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "HeatVentilationSliderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$OnItemClickListener;,
        Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$HeatVentilationViewHolder;
    }
.end annotation


# static fields
.field public static final UNSELECTED_BACKGROUND:I


# instance fields
.field private isEnable:Z

.field private mIsBlack:Z

.field private mOnItemClickListener:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$OnItemClickListener;

.field private mSelectedState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mUnselecedState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private selectedPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->UNSELECTED_BACKGROUND:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->mSelectedState:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->mUnselecedState:Ljava/util/List;

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->isEnable:Z

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->selectedPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    .line 47
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->isEnable:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;
    .param p1, "x1"    # Z

    .line 47
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->isEnable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;)Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->mOnItemClickListener:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->mSelectedState:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->mSelectedState:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 109
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$HeatVentilationViewHolder;

    .line 110
    .local v0, "heatVentilationViewHolder":Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$HeatVentilationViewHolder;
    const-string v1, "HeatVentilationSliderAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBindViewHolder mPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iput p2, v0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$HeatVentilationViewHolder;->mPosition:I

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->setItemDrawable(Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$HeatVentilationViewHolder;)V

    .line 113
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 102
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 103
    const v1, 0x7f0d010e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$HeatVentilationViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$HeatVentilationViewHolder;-><init>(Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setData(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "selected"    # Landroid/content/res/TypedArray;
    .param p2, "unselected"    # Landroid/content/res/TypedArray;

    .line 68
    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->mSelectedState:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->mUnselecedState:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->mSelectedState:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "i":I
    :cond_1
    nop

    .local v0, "i":I
    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 77
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->mUnselecedState:Ljava/util/List;

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    .end local v0    # "i":I
    :cond_2
    return-void

    .line 69
    :cond_3
    :goto_2
    return-void
.end method

.method public setDayNight(Z)V
    .locals 0
    .param p1, "isBlack"    # Z

    .line 128
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->mIsBlack:Z

    .line 129
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 156
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->isEnable:Z

    .line 157
    return-void
.end method

.method public setItemDrawable(Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$HeatVentilationViewHolder;)V
    .locals 3
    .param p1, "heatVentilationViewHolder"    # Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$HeatVentilationViewHolder;

    .line 116
    const-string v0, "HeatVentilationSliderAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setItemDrawable: heatVentilationViewHolder.mPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$HeatVentilationViewHolder;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget v0, p1, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$HeatVentilationViewHolder;->mPosition:I

    iput v0, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->selectedPosition:I

    .line 118
    iget-object v0, p1, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$HeatVentilationViewHolder;->imgHeatVentilation:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->mSelectedState:Ljava/util/List;

    iget v2, p1, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$HeatVentilationViewHolder;->mPosition:I

    .line 119
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    return-void
.end method

.method public setOnItemClickListener(Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$OnItemClickListener;

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->mOnItemClickListener:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$OnItemClickListener;

    .line 65
    return-void
.end method
