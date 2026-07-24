.class public Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "UserInfoAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/UserInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserViewHolder"
.end annotation


# instance fields
.field private content:Landroid/widget/FrameLayout;

.field private mPosition:I

.field private photo:Lcom/android/systemui/statusbar/pma/CircleImage;

.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/UserInfoAdapter;

.field private userLabel:Landroid/widget/ImageView;

.field private userName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pma/UserInfoAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/UserInfoAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 105
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/UserInfoAdapter;

    .line 106
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 107
    const v0, 0x7f0a0511

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;->userName:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f0a0510

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;->userLabel:Landroid/widget/ImageView;

    .line 109
    const v0, 0x7f0a050f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;->content:Landroid/widget/FrameLayout;

    .line 110
    const v0, 0x7f0a0512

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CircleImage;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;->photo:Lcom/android/systemui/statusbar/pma/CircleImage;

    .line 111
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;)Lcom/android/systemui/statusbar/pma/CircleImage;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;->photo:Lcom/android/systemui/statusbar/pma/CircleImage;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/UserInfoAdapter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->access$200(Lcom/android/systemui/statusbar/pma/UserInfoAdapter;)Lcom/android/systemui/statusbar/pma/UserInfoAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 144
    invoke-static {}, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "UserInfoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: mPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/UserInfoAdapter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->access$200(Lcom/android/systemui/statusbar/pma/UserInfoAdapter;)Lcom/android/systemui/statusbar/pma/UserInfoAdapter$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/UserInfoAdapter;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->access$400(Lcom/android/systemui/statusbar/pma/UserInfoAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;->mPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/UserAccountInfo;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$OnItemClickListener;->onItemClick(Lcom/android/systemui/statusbar/pma/UserAccountInfo;)V

    .line 149
    :cond_1
    return-void
.end method

.method public setNameColor(Z)V
    .locals 2
    .param p1, "isDay"    # Z

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;->userName:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v1, -0xc7c5c2

    goto :goto_0

    :cond_0
    const v1, -0x4b4642

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "pos"    # I

    .line 138
    iput p1, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;->mPosition:I

    .line 139
    return-void
.end method

.method public setUserLabel(Ljava/lang/String;)V
    .locals 3
    .param p1, "label"    # Ljava/lang/String;

    .line 125
    const-string v0, "UserInfoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserInfoAdapter setUserLabel label "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v0, "owner"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;->userLabel:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/UserInfoAdapter;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->access$100(Lcom/android/systemui/statusbar/pma/UserInfoAdapter;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f08063d

    goto :goto_0

    :cond_0
    const v2, 0x7f08063e

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;->userLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 129
    :cond_1
    const-string v0, "affection"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;->userLabel:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/UserInfoAdapter;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->access$100(Lcom/android/systemui/statusbar/pma/UserInfoAdapter;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f08049a

    goto :goto_1

    :cond_2
    const v2, 0x7f08049b

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;->userLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;->userLabel:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    :goto_2
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 119
    const-string v0, "UserInfoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserInfoAdapter setUserName name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;->userName:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;->userName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method
