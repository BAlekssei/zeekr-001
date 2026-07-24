.class public Lcom/android/systemui/statusbar/pma/UserInfoAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "UserInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/pma/UserInfoAdapter$OnItemClickListener;,
        Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;
    }
.end annotation


# static fields
.field public static final DAY_MODE_BACKGROUND:I

.field private static final DEBUG:Z

.field public static final SELECTED_TEXT_COLOR:I

.field public static final UNSELECTED_BACKGROUND:I

.field public static final UNSELECTED_TEXT_COLOR:I


# instance fields
.field private currentChoose:I

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/pma/UserAccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDay:Z

.field private mOnItemClickListener:Lcom/android/systemui/statusbar/pma/UserInfoAdapter$OnItemClickListener;

.field private userHolder:Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->DEBUG:Z

    .line 34
    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->SELECTED_TEXT_COLOR:I

    .line 35
    const-string v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->UNSELECTED_TEXT_COLOR:I

    .line 36
    const-string v0, "#DBDBDB"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->DAY_MODE_BACKGROUND:I

    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->UNSELECTED_BACKGROUND:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->currentChoose:I

    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pma/UserInfoAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/UserInfoAdapter;

    .line 30
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->mIsDay:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/pma/UserInfoAdapter;)Lcom/android/systemui/statusbar/pma/UserInfoAdapter$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/UserInfoAdapter;

    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->mOnItemClickListener:Lcom/android/systemui/statusbar/pma/UserInfoAdapter$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 30
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/pma/UserInfoAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/UserInfoAdapter;

    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->mData:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 76
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;

    .line 77
    .local v0, "userHolder":Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/UserAccountInfo;

    .line 78
    .local v1, "info":Lcom/android/systemui/statusbar/pma/UserAccountInfo;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;->setUserName(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->getUserMark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;->setUserLabel(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->getUserDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 82
    const-string v2, "UserInfoAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindViewHolder: photo != null info.getName()=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;->access$000(Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;)Lcom/android/systemui/statusbar/pma/CircleImage;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->getUserDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/pma/CircleImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 85
    :cond_0
    const-string v2, "UserInfoAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindViewHolder: photo == null info.getName()=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;->access$000(Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;)Lcom/android/systemui/statusbar/pma/CircleImage;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08063f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/pma/CircleImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    :goto_0
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;->setPosition(I)V

    .line 89
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->mIsDay:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;->setNameColor(Z)V

    .line 90
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 69
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0145

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->view:Landroid/view/View;

    .line 70
    new-instance v0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->view:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;-><init>(Lcom/android/systemui/statusbar/pma/UserInfoAdapter;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->userHolder:Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->userHolder:Lcom/android/systemui/statusbar/pma/UserInfoAdapter$UserViewHolder;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/pma/UserAccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/pma/UserAccountInfo;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->mData:Ljava/util/List;

    .line 57
    return-void
.end method

.method public setDayMode(Z)V
    .locals 0
    .param p1, "isDay"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->mIsDay:Z

    .line 53
    return-void
.end method

.method public setOnItemClickListener(Lcom/android/systemui/statusbar/pma/UserInfoAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/android/systemui/statusbar/pma/UserInfoAdapter$OnItemClickListener;

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->mOnItemClickListener:Lcom/android/systemui/statusbar/pma/UserInfoAdapter$OnItemClickListener;

    .line 65
    return-void
.end method
