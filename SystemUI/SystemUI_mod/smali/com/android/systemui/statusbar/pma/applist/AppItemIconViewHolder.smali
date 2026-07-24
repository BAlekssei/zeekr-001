.class public Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AppItemIconViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Z)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isDay"    # Z

    .line 117
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;ZZ)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isDay"    # Z
    .param p4, "is"    # Z

    .line 137
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 143
    return-void
.end method


# virtual methods
.method public checkStartup()I
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->checkStartup()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/view/View;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->getWholeView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getClickFunction()I
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->getClickFunction()I

    move-result v0

    return v0
.end method

.method public getIconBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUninstallable()Z
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->getUninstallable()Z

    move-result v0

    return v0
.end method

.method public onItemCleared()V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 351
    return-void
.end method

.method public onItemSelected()V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 346
    return-void
.end method

.method public refresh(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "a"    # Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    .line 449
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->refresh(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeDownload(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->removeDownload(Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public setApp(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)V
    .locals 1
    .param p1, "a"    # Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->setApp(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)V

    .line 196
    return-void
.end method

.method public setAppClickListener(Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    .line 572
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->setAppClickListener(Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;)V

    .line 573
    return-void
.end method

.method public setAppDeleteIconVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->setAppDeleteIconVisible(Z)V

    .line 152
    return-void
.end method

.method public setIconBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .line 718
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->setIconBitmap(Landroid/graphics/Bitmap;)V

    .line 719
    return-void
.end method

.method public setNewApp()V
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->setNewApp()V

    .line 584
    return-void
.end method

.method public setUninstallApp(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)V
    .locals 1
    .param p1, "a"    # Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->setUninstallApp(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)V

    .line 254
    return-void
.end method

.method public startAnimationBig()V
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->startAnimationBig()V

    .line 695
    return-void
.end method

.method public startAnimationSmall()V
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->startAnimationSmall()V

    .line 706
    return-void
.end method
