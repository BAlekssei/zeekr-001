.class public Lcom/android/systemui/statusbar/pma/UserAccountInfo;
.super Ljava/lang/Object;
.source "UserAccountInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/systemui/statusbar/pma/UserAccountInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private avatarUrl:Ljava/lang/String;

.field private isNoPassword:Z

.field private name:Ljava/lang/String;

.field private userDrawable:Landroid/graphics/drawable/Drawable;

.field private userId:Ljava/lang/String;

.field private userMark:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/systemui/statusbar/pma/UserAccountInfo;)I
    .locals 3
    .param p1, "user"    # Lcom/android/systemui/statusbar/pma/UserAccountInfo;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->userMark:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 70
    return v1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->userMark:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->getUserMark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const/4 v0, 0x0

    return v0

    .line 74
    :cond_1
    const-string v0, "owner"

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->userMark:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    const/4 v0, -0x1

    return v0

    .line 77
    :cond_2
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 8
    check-cast p1, Lcom/android/systemui/statusbar/pma/UserAccountInfo;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->compareTo(Lcom/android/systemui/statusbar/pma/UserAccountInfo;)I

    move-result p1

    return p1
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUserDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->userDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserMark()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->userMark:Ljava/lang/String;

    return-object v0
.end method

.method public isNoPassword()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->isNoPassword:Z

    return v0
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatarUrl"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->avatarUrl:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->name:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setNoPassword(Z)V
    .locals 0
    .param p1, "isNoPassword"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->isNoPassword:Z

    .line 57
    return-void
.end method

.method public setUserDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->userDrawable:Landroid/graphics/drawable/Drawable;

    .line 49
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->userId:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setUserMark(Ljava/lang/String;)V
    .locals 0
    .param p1, "userMark"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->userMark:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAccountInfo{isNoPassword=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->isNoPassword:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", avatarUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userMark=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->userMark:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
