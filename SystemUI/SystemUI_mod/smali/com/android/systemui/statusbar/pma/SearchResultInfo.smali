.class abstract Lcom/android/systemui/statusbar/pma/SearchResultInfo;
.super Ljava/lang/Object;
.source "SearchResultInfo.java"


# instance fields
.field private mDisplayImage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I

.field private mTile:Ljava/lang/String;

.field private mType:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setTitle(I)V
    .locals 1
    .param p1, "type"    # I

    .line 91
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 102
    :pswitch_0
    const-string v0, "Suggested App"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :pswitch_1
    const-string v0, "Videos"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->setTitle(Ljava/lang/String;)V

    .line 97
    goto :goto_0

    .line 99
    :pswitch_2
    const-string v0, "Pictures"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->setTitle(Ljava/lang/String;)V

    .line 100
    goto :goto_0

    .line 93
    :pswitch_3
    const-string v0, "Applications"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->setTitle(Ljava/lang/String;)V

    .line 94
    nop

    .line 105
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDisplayImage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->mDisplayImage:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayName()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->mDisplayName:Ljava/util/List;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->mSize:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->mTile:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->mType:I

    return v0
.end method

.method public setDisplayImage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 87
    .local p1, "displayImage":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->mDisplayImage:Ljava/util/List;

    .line 88
    return-void
.end method

.method public setDisplayName(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p1, "mDisplayName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->mDisplayName:Ljava/util/List;

    .line 80
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "mSize"    # I

    .line 63
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->mSize:I

    .line 64
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "tile"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->mTile:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 54
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->mType:I

    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->setTitle(I)V

    .line 56
    return-void
.end method
