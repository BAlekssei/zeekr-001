.class public Lcom/ecarx/eas/sdk/userv2/UserInfoV2;
.super Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/eas/sdk/userv2/IUserInfo;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ecarx/eas/sdk/userv2/UserInfoV2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address:Ljava/lang/String;
    .annotation runtime Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;
        value = 0x8
    .end annotation
.end field

.field private avatarUrl:Ljava/lang/String;
    .annotation runtime Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;
        value = 0x3
    .end annotation
.end field

.field private birthday:Ljava/lang/String;
    .annotation runtime Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;
        value = 0x7
    .end annotation
.end field

.field private email:Ljava/lang/String;
    .annotation runtime Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;
        value = 0x5
    .end annotation
.end field

.field private mobile:Ljava/lang/String;
    .annotation runtime Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;
        value = 0x4
    .end annotation
.end field

.field private nickname:Ljava/lang/String;
    .annotation runtime Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;
        value = 0x2
    .end annotation
.end field

.field private sex:Ljava/lang/String;
    .annotation runtime Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;
        value = 0x6
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;
        value = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator;

    const-class v1, Lcom/ecarx/eas/sdk/userv2/UserInfoV2;

    invoke-direct {v0, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/ecarx/eas/sdk/userv2/UserInfoV2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsonString"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable;-><init>()V

    .line 41
    nop

    .line 43
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 43
    .end local p1    # "jsonString":Ljava/lang/String;
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 44
    :catch_0
    move-exception p1

    .line 45
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 47
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 48
    const-string/jumbo p1, "userId"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ecarx/eas/sdk/userv2/UserInfoV2;->userId:Ljava/lang/String;

    .line 49
    const-string p1, "name"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ecarx/eas/sdk/userv2/UserInfoV2;->nickname:Ljava/lang/String;

    .line 50
    const-string p1, "avatarUrl"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ecarx/eas/sdk/userv2/UserInfoV2;->avatarUrl:Ljava/lang/String;

    .line 51
    const-string p1, "mobilePhone"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ecarx/eas/sdk/userv2/UserInfoV2;->mobile:Ljava/lang/String;

    .line 52
    const-string p1, "email"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ecarx/eas/sdk/userv2/UserInfoV2;->email:Ljava/lang/String;

    .line 53
    const-string/jumbo p1, "sex"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ecarx/eas/sdk/userv2/UserInfoV2;->sex:Ljava/lang/String;

    .line 54
    const-string p1, "birth"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ecarx/eas/sdk/userv2/UserInfoV2;->birthday:Ljava/lang/String;

    .line 55
    nop

    .line 55
    .end local p0    # "this":Lcom/ecarx/eas/sdk/userv2/UserInfoV2;
    const-string p1, "address"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ecarx/eas/sdk/userv2/UserInfoV2;->address:Ljava/lang/String;

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserInfoV2;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserInfoV2;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserInfoV2;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserInfoV2;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserInfoV2;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserInfoV2;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserInfoV2;->sex:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserInfoV2;->userId:Ljava/lang/String;

    return-object v0
.end method
