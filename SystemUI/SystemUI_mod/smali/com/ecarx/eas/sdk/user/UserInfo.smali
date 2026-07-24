.class public Lcom/ecarx/eas/sdk/user/UserInfo;
.super Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/eas/sdk/user/IUser;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ecarx/eas/sdk/user/UserInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address:Ljava/lang/String;
    .annotation runtime Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;
        value = 0x7
    .end annotation
.end field

.field private avatarUrl:Ljava/lang/String;
    .annotation runtime Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;
        value = 0x3
    .end annotation
.end field

.field private birthday:Ljava/lang/String;
    .annotation runtime Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;
        value = 0xa
    .end annotation
.end field

.field private carModel:Ljava/lang/String;
    .annotation runtime Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;
        value = 0x8
    .end annotation
.end field

.field private gender:Ljava/lang/String;
    .annotation runtime Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;
        value = 0x9
    .end annotation
.end field

.field private isGIDUser:Z
    .annotation runtime Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;
        value = 0xb
    .end annotation
.end field

.field private level:I
    .annotation runtime Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;
        value = 0x5
    .end annotation
.end field

.field private levelName:Ljava/lang/String;
    .annotation runtime Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;
        value = 0x6
    .end annotation
.end field

.field private mobile:Ljava/lang/String;
    .annotation runtime Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;
        value = 0x1
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;
        value = 0x2
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;
        value = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator;

    const-class v1, Lcom/ecarx/eas/sdk/user/UserInfo;

    invoke-direct {v0, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/ecarx/eas/sdk/user/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ecarx/eas/sdk/user/UserInfo;->isGIDUser:Z

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserInfo;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()I
    .locals 1

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public getAvatarURL()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserInfo;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserInfo;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserInfo;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCarModel()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserInfo;->carModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDateOfBirth()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserInfo;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getGIDUserName()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserInfo;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/ecarx/eas/sdk/user/UserInfo;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLevelName()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserInfo;->levelName:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserInfo;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserInfo;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isGIDUser()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/ecarx/eas/sdk/user/UserInfo;->isGIDUser:Z

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .line 158
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/UserInfo;
    .end local p1    # "address":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/eas/sdk/user/UserInfo;->address:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatarUrl"    # Ljava/lang/String;

    .line 166
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/UserInfo;
    .end local p1    # "avatarUrl":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/eas/sdk/user/UserInfo;->avatarUrl:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0
    .param p1, "birthday"    # Ljava/lang/String;

    .line 182
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/UserInfo;
    .end local p1    # "birthday":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/eas/sdk/user/UserInfo;->birthday:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setCarModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "carModel"    # Ljava/lang/String;

    .line 128
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/UserInfo;
    .end local p1    # "carModel":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/eas/sdk/user/UserInfo;->carModel:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setGIDUser(Z)V
    .locals 0
    .param p1, "GIDUser"    # Z

    .line 102
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/UserInfo;
    .end local p1    # "GIDUser":Z
    iput-boolean p1, p0, Lcom/ecarx/eas/sdk/user/UserInfo;->isGIDUser:Z

    .line 103
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "gender"    # Ljava/lang/String;

    .line 174
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/UserInfo;
    .end local p1    # "gender":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/eas/sdk/user/UserInfo;->gender:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .line 138
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/UserInfo;
    .end local p1    # "level":I
    iput p1, p0, Lcom/ecarx/eas/sdk/user/UserInfo;->level:I

    .line 139
    return-void
.end method

.method public setLevelName(Ljava/lang/String;)V
    .locals 0
    .param p1, "levelName"    # Ljava/lang/String;

    .line 148
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/UserInfo;
    .end local p1    # "levelName":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/eas/sdk/user/UserInfo;->levelName:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobile"    # Ljava/lang/String;

    .line 52
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/UserInfo;
    .end local p1    # "mobile":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/eas/sdk/user/UserInfo;->mobile:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 68
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/UserInfo;
    .end local p1    # "name":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/eas/sdk/user/UserInfo;->name:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .line 118
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/UserInfo;
    .end local p1    # "userId":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/eas/sdk/user/UserInfo;->userId:Ljava/lang/String;

    .line 119
    return-void
.end method
