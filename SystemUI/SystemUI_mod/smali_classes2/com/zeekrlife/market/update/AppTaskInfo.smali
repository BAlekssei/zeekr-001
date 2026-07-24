.class public Lcom/zeekrlife/market/update/AppTaskInfo;
.super Lcom/zeekrlife/market/task/ITaskInfo;
.source "AppTaskInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/zeekrlife/market/update/AppTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appIcon:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private errorCode:I

.field private forcedUpdate:Z

.field private packageName:Ljava/lang/String;

.field private state:I

.field private versionCode:J

.field private versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/zeekrlife/market/update/AppTaskInfo$1;

    invoke-direct {v0}, Lcom/zeekrlife/market/update/AppTaskInfo$1;-><init>()V

    sput-object v0, Lcom/zeekrlife/market/update/AppTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/zeekrlife/market/task/ITaskInfo;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "state"    # I

    .line 59
    invoke-direct {p0}, Lcom/zeekrlife/market/task/ITaskInfo;-><init>()V

    .line 60
    iput p1, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->state:I

    .line 61
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 64
    invoke-direct {p0, p1}, Lcom/zeekrlife/market/task/ITaskInfo;-><init>(Landroid/os/Parcel;)V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->state:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->errorCode:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->packageName:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->versionName:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->versionCode:J

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->forcedUpdate:Z

    .line 71
    return-void
.end method

.method private analysisExpand(Ljava/lang/String;)V
    .locals 4
    .param p1, "expand"    # Ljava/lang/String;

    .line 89
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 92
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "appInfoObject":Lorg/json/JSONObject;
    const-string v1, "apkName"

    invoke-direct {p0, v0, v1}, Lcom/zeekrlife/market/update/AppTaskInfo;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zeekrlife/market/update/AppTaskInfo;->setAppName(Ljava/lang/String;)V

    .line 94
    const-string v1, "apkIcon"

    invoke-direct {p0, v0, v1}, Lcom/zeekrlife/market/update/AppTaskInfo;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zeekrlife/market/update/AppTaskInfo;->setAppIcon(Ljava/lang/String;)V

    .line 95
    const-string v1, "packageName"

    invoke-direct {p0, v0, v1}, Lcom/zeekrlife/market/update/AppTaskInfo;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zeekrlife/market/update/AppTaskInfo;->setPackageName(Ljava/lang/String;)V

    .line 96
    const-string v1, "versionName"

    invoke-direct {p0, v0, v1}, Lcom/zeekrlife/market/update/AppTaskInfo;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zeekrlife/market/update/AppTaskInfo;->setVersionName(Ljava/lang/String;)V

    .line 97
    const-string v1, "versionCode"

    invoke-direct {p0, v0, v1}, Lcom/zeekrlife/market/update/AppTaskInfo;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/zeekrlife/market/update/AppTaskInfo;->setVersionCode(J)V

    .line 98
    const-string v1, "forceUpdate"

    invoke-direct {p0, v0, v1}, Lcom/zeekrlife/market/update/AppTaskInfo;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zeekrlife/market/update/AppTaskInfo;->setForcedUpdate(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v0    # "appInfoObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppTaskInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 90
    :cond_1
    :goto_1
    return-void
.end method

.method private getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "name"    # Ljava/lang/String;

    .line 124
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
    .locals 2
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "name"    # Ljava/lang/String;

    .line 115
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "name"    # Ljava/lang/String;

    .line 106
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public getAppIcon()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->appIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->errorCode:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->state:I

    return v0
.end method

.method public getVersionCode()J
    .locals 2

    .line 164
    iget-wide v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->versionCode:J

    return-wide v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isForcedUpdate()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->forcedUpdate:Z

    return v0
.end method

.method public setAppIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "appIcon"    # Ljava/lang/String;

    .line 192
    iput-object p1, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->appIcon:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .line 184
    iput-object p1, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->appName:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setData(Lcom/zeekrlife/market/task/ITaskInfo;)V
    .locals 2
    .param p1, "taskInfo"    # Lcom/zeekrlife/market/task/ITaskInfo;

    .line 74
    iget-object v0, p1, Lcom/zeekrlife/market/task/ITaskInfo;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->id:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Lcom/zeekrlife/market/task/ITaskInfo;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->url:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lcom/zeekrlife/market/task/ITaskInfo;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->path:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcom/zeekrlife/market/task/ITaskInfo;->hash:Ljava/lang/String;

    iput-object v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->hash:Ljava/lang/String;

    .line 78
    iget v0, p1, Lcom/zeekrlife/market/task/ITaskInfo;->type:I

    iput v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->type:I

    .line 79
    iget-object v0, p1, Lcom/zeekrlife/market/task/ITaskInfo;->expand:Ljava/lang/String;

    iput-object v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->expand:Ljava/lang/String;

    .line 80
    iget v0, p1, Lcom/zeekrlife/market/task/ITaskInfo;->status:I

    iput v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->status:I

    .line 81
    iget-wide v0, p1, Lcom/zeekrlife/market/task/ITaskInfo;->soFar:J

    iput-wide v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->soFar:J

    .line 82
    iget-wide v0, p1, Lcom/zeekrlife/market/task/ITaskInfo;->total:J

    iput-wide v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->total:J

    .line 83
    iget v0, p1, Lcom/zeekrlife/market/task/ITaskInfo;->installProgress:F

    iput v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->installProgress:F

    .line 84
    iget-object v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->expand:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zeekrlife/market/update/AppTaskInfo;->analysisExpand(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .line 144
    iput p1, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->errorCode:I

    .line 145
    return-void
.end method

.method public setForcedUpdate(Z)V
    .locals 0
    .param p1, "forcedUpdate"    # Z

    .line 176
    iput-boolean p1, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->forcedUpdate:Z

    .line 177
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 152
    iput-object p1, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->packageName:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 136
    iput p1, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->state:I

    .line 137
    return-void
.end method

.method public setVersionCode(J)V
    .locals 0
    .param p1, "versionCode"    # J

    .line 168
    iput-wide p1, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->versionCode:J

    .line 169
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .line 160
    iput-object p1, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->versionName:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppTaskInfo{state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packageName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->versionCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", forcedUpdate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->forcedUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", appName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appIcon "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->appIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-super {p0}, Lcom/zeekrlife/market/task/ITaskInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 225
    invoke-super {p0, p1, p2}, Lcom/zeekrlife/market/task/ITaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 226
    iget v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->errorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget-object v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-wide v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->versionCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 231
    iget-boolean v0, p0, Lcom/zeekrlife/market/update/AppTaskInfo;->forcedUpdate:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 232
    return-void
.end method
