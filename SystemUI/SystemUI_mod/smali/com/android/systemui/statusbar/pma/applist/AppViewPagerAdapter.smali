.class public Lcom/android/systemui/statusbar/pma/applist/AppViewPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "AppViewPagerAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private map:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p2, "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView;>;"
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/android/systemui/statusbar/pma/applist/AppViewPagerAdapter;->map:Ljava/util/ArrayList;

    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppViewPagerAdapter;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/Object;

    .line 61
    move-object v0, p1

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    move-object v1, p3

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeView(Landroid/view/View;)V

    .line 62
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppViewPagerAdapter;->map:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 66
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .param p1, "page"    # Landroid/view/ViewGroup;
    .param p2, "pageCount"    # I

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppViewPagerAdapter;->map:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52
    const-string v0, "A1_Dock:AppViewPagerAdapter"

    const-string v1, "instantiateItem: map.get(pageCount)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppViewPagerAdapter;->map:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppViewPagerAdapter;->map:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .line 46
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
