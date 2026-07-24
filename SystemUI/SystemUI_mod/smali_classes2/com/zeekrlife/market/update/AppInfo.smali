.class public Lcom/zeekrlife/market/update/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field public appDescription:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field public updateDesc:Ljava/lang/String;

.field private versionCode:J

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppDescription()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/zeekrlife/market/update/AppInfo;->appDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/zeekrlife/market/update/AppInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/zeekrlife/market/update/AppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateDesc()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/zeekrlife/market/update/AppInfo;->updateDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/zeekrlife/market/update/AppInfo;->versionCode:J

    return-wide v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/zeekrlife/market/update/AppInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "appDescription"    # Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/zeekrlife/market/update/AppInfo;->appDescription:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/zeekrlife/market/update/AppInfo;->appName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/zeekrlife/market/update/AppInfo;->packageName:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setUpdateDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateDesc"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/zeekrlife/market/update/AppInfo;->updateDesc:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setVersionCode(J)V
    .locals 0
    .param p1, "versionCode"    # J

    .line 51
    iput-wide p1, p0, Lcom/zeekrlife/market/update/AppInfo;->versionCode:J

    .line 52
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/zeekrlife/market/update/AppInfo;->versionName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppInfo{appName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zeekrlife/market/update/AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zeekrlife/market/update/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", versionName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zeekrlife/market/update/AppInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", versionCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/zeekrlife/market/update/AppInfo;->versionCode:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appDescription=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zeekrlife/market/update/AppInfo;->appDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", updateDesc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zeekrlife/market/update/AppInfo;->updateDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
