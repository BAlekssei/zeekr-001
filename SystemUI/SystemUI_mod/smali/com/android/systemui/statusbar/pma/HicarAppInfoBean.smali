.class public Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;
.super Ljava/lang/Object;
.source "HicarAppInfoBean.java"


# instance fields
.field private id:Ljava/lang/Long;

.field private mIcon:[B

.field private mName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->id:Ljava/lang/Long;

    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->mPackageName:Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->mName:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->mIcon:[B

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->mIcon:[B

    .line 19
    iget v0, p0, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->mType:I

    iput v0, p0, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->mType:I

    .line 20
    return-void
.end method


# virtual methods
.method public getIcon()[B
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->mIcon:[B

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->mType:I

    return v0
.end method

.method public setIcon([B)V
    .locals 0
    .param p1, "mIcon"    # [B

    .line 51
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->mIcon:[B

    .line 52
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .line 35
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->id:Ljava/lang/Long;

    .line 36
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mName"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->mName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPackageName"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->mPackageName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "mType"    # I

    .line 59
    iput p1, p0, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->mType:I

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HicarAppInfoBean{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPackageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mIcon=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->mIcon:[B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->mType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
