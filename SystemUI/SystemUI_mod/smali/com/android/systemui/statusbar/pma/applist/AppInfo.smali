.class public Lcom/android/systemui/statusbar/pma/applist/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field private activity:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public iconBytes:[B

.field public isHiCarApp:Z

.field private isInstall:Z

.field public label:Ljava/lang/String;

.field public package_name:Ljava/lang/String;

.field public state:I

.field public uid:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->icon:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->activity:Ljava/lang/String;

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->isInstall:Z

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->state:I

    .line 14
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->isHiCarApp:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "mLabel"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "mActivity"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->icon:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->activity:Ljava/lang/String;

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->isInstall:Z

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->state:I

    .line 14
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->isHiCarApp:Z

    .line 36
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->uid:J

    .line 37
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->label:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->package_name:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->activity:Ljava/lang/String;

    .line 40
    iput v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->state:I

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "mLabel"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "mIcon"    # Ljava/lang/String;
    .param p4, "is"    # Z
    .param p5, "s"    # I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->icon:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->activity:Ljava/lang/String;

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->isInstall:Z

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->state:I

    .line 14
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->isHiCarApp:Z

    .line 20
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->isInstall:Z

    .line 21
    iput-object p2, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->package_name:Ljava/lang/String;

    .line 22
    iput p5, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->state:I

    .line 23
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->label:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->icon:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getActivity()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->activity:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getIconBytes()[B
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->iconBytes:[B

    return-object v0
.end method

.method public getInstall()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->isInstall:Z

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage_name()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->state:I

    return v0
.end method

.method public isHiCarApp()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->isHiCarApp:Z

    return v0
.end method

.method public setActivity(Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->activity:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setHiCarApp(Z)V
    .locals 0
    .param p1, "hiCarApp"    # Z

    .line 112
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->isHiCarApp:Z

    .line 113
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->icon:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setInstall(Z)V
    .locals 0
    .param p1, "is"    # Z

    .line 88
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->isInstall:Z

    .line 89
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->label:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "package_name"    # Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->package_name:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "s"    # I

    .line 96
    iput p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->state:I

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppInfo{label=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", package_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->package_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", activity=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->activity:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", state=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->state:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isInstall=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->isInstall:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", icon=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->icon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
