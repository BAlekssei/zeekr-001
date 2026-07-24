.class public Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;
.super Lcom/android/systemui/statusbar/pma/SearchResultInfo;
.source "AppSearchResultInfo.java"


# instance fields
.field private mLaunchIntent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SearchResultInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getDisplayImage()Ljava/util/List;
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->getDisplayImage()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDisplayName()Ljava/util/List;
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->getDisplayName()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLaunchIntent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;->mLaunchIntent:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getSize()I
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->getSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTitle()Ljava/lang/String;
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getType()I
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->getType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic setDisplayImage(Ljava/util/List;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->setDisplayImage(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic setDisplayName(Ljava/util/List;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->setDisplayName(Ljava/util/List;)V

    return-void
.end method

.method public setLaunchIntent(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p1, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;->mLaunchIntent:Ljava/util/List;

    .line 52
    return-void
.end method

.method public setPackageName(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p1, "packageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;->mPackageName:Ljava/util/List;

    .line 44
    return-void
.end method

.method public bridge synthetic setSize(I)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->setSize(I)V

    return-void
.end method

.method public bridge synthetic setTitle(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setType(I)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->setType(I)V

    return-void
.end method
