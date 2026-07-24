.class public Lcom/zeekr/sdk/user/bean/AccountBean;
.super Ljava/lang/Object;
.source "AccountBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/zeekr/sdk/base/proto/annotation/ProtobufClass;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/zeekr/sdk/user/bean/AccountBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private avatarUrl:Ljava/lang/String;

.field private ergonomicsList:Ljava/lang/String;

.field private isCurrentUser:Z

.field private isNoPassword:Z

.field private name:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userMark:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/zeekr/sdk/user/bean/AccountBean$a;

    invoke-direct {v0}, Lcom/zeekr/sdk/user/bean/AccountBean$a;-><init>()V

    sput-object v0, Lcom/zeekr/sdk/user/bean/AccountBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->userId:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->userMark:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->name:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->avatarUrl:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->ergonomicsList:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->isNoPassword:Z

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    nop

    :cond_1
    iput-boolean v1, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->isCurrentUser:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getErgonomicsList()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->ergonomicsList:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserMark()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->userMark:Ljava/lang/String;

    return-object v0
.end method

.method public isCurrentUser()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->isCurrentUser:Z

    return v0
.end method

.method public isNoPassword()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->isNoPassword:Z

    return v0
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->avatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setCurrentUser(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->isCurrentUser:Z

    return-void
.end method

.method public setErgonomicsList(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->ergonomicsList:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNoPassword(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->isNoPassword:Z

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserMark(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->userMark:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountBean{userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->userId:Ljava/lang/String;

    .line 2
    const-string v2, ", userMark=\'"

    const/16 v3, 0x27

    invoke-static {v0, v1, v3, v2}, Lcom/zeekr/sdk/user/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->userMark:Ljava/lang/String;

    .line 120
    const-string v2, ", name=\'"

    invoke-static {v0, v1, v3, v2}, Lcom/zeekr/sdk/user/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->name:Ljava/lang/String;

    .line 238
    const-string v2, ", avatarUrl=\'"

    invoke-static {v0, v1, v3, v2}, Lcom/zeekr/sdk/user/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->avatarUrl:Ljava/lang/String;

    .line 356
    const-string v2, ", ergonomicsList=\'"

    invoke-static {v0, v1, v3, v2}, Lcom/zeekr/sdk/user/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 473
    iget-object v1, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->ergonomicsList:Ljava/lang/String;

    .line 474
    const-string v2, ", isNoPassword="

    invoke-static {v0, v1, v3, v2}, Lcom/zeekr/sdk/user/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 591
    iget-boolean v1, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->isNoPassword:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCurrentUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->isCurrentUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->userMark:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->ergonomicsList:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-boolean p2, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->isNoPassword:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 7
    iget-boolean p2, p0, Lcom/zeekr/sdk/user/bean/AccountBean;->isCurrentUser:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
