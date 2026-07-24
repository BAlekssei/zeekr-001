.class interface abstract Lcom/android/systemui/statusbar/pma/SearchResultAdapter$IOnItemClickListener;
.super Ljava/lang/Object;
.source "SearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/SearchResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "IOnItemClickListener"
.end annotation


# virtual methods
.method public onAppItemClick(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 114
    return-void
.end method

.method public onImageItemClick(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 115
    return-void
.end method

.method public onVideoItemClick(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 116
    return-void
.end method
