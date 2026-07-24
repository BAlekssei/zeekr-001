.class public Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
.super Ljava/lang/Object;
.source "StatusBarIconHolder.java"


# instance fields
.field private mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

.field private mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

.field private mTag:I

.field private mType:I

.field private mVisible:Z

.field private mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    .line 39
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mVisible:Z

    return-void
.end method

.method public static fromIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .locals 1
    .param p0, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .line 43
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>()V

    .line 44
    .local v0, "wrapper":Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 46
    return-object v0
.end method

.method public static fromMobileIconState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .locals 2
    .param p0, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 65
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>()V

    .line 66
    .local v0, "holder":Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 67
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    .line 68
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    .line 69
    return-object v0
.end method

.method public static fromWifiIconState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .locals 2
    .param p0, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 58
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>()V

    .line 59
    .local v0, "holder":Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 60
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    .line 61
    return-object v0
.end method


# virtual methods
.method public getIcon()Lcom/android/internal/statusbar/StatusBarIcon;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    return-object v0
.end method

.method public getMobileState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    return v0
.end method

.method public getWifiState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .line 100
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 108
    const/4 v0, 0x1

    return v0

    .line 106
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    return v0

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    return v0

    .line 102
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-boolean v0, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 96
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 97
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->isVisible()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 114
    return-void

    .line 117
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 127
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    goto :goto_0

    .line 123
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    .line 124
    goto :goto_0

    .line 119
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iput-boolean p1, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 120
    nop

    .line 130
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 87
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 88
    return-void
.end method
