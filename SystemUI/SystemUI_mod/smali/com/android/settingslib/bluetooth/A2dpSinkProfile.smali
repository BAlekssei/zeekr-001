.class final Lcom/android/settingslib/bluetooth/A2dpSinkProfile;
.super Ljava/lang/Object;
.source "A2dpSinkProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/A2dpSinkProfile$A2dpSinkServiceListener;
    }
.end annotation


# static fields
.field static final SRC_UUIDS:[Landroid/os/ParcelUuid;

.field private static V:Z


# instance fields
.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothA2dpSink;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->V:Z

    .line 45
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/os/ParcelUuid;

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v2, v1, v0

    sput-object v1, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->SRC_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .param p3, "deviceManager"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .param p4, "profileManager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 100
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 101
    iput-object p4, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 102
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    new-instance v1, Lcom/android/settingslib/bluetooth/A2dpSinkProfile$A2dpSinkServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/A2dpSinkProfile$A2dpSinkServiceListener;-><init>(Lcom/android/settingslib/bluetooth/A2dpSinkProfile;Lcom/android/settingslib/bluetooth/A2dpSinkProfile$1;)V

    const/16 v2, 0xb

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 104
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 35
    sget-boolean v0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settingslib/bluetooth/A2dpSinkProfile;)Landroid/bluetooth/BluetoothA2dpSink;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    .line 35
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settingslib/bluetooth/A2dpSinkProfile;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/A2dpSinkProfile;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dpSink;

    .line 35
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settingslib/bluetooth/A2dpSinkProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    .line 35
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settingslib/bluetooth/A2dpSinkProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    .line 35
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settingslib/bluetooth/A2dpSinkProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    .line 35
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settingslib/bluetooth/A2dpSinkProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/A2dpSinkProfile;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 127
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 129
    .local v0, "srcs":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_2

    .line 130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 131
    .local v2, "src":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    const-string v1, "A2dpSinkProfile"

    const-string v3, "Ignoring Connect"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v1, 0x1

    return v1

    .line 136
    .end local v2    # "src":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    goto :goto_0

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothA2dpSink;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method protected finalize()V
    .locals 3

    .line 221
    sget-boolean v0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "A2dpSinkProfile"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-eqz v0, :cond_1

    .line 224
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "A2dpSinkProfile"

    const-string v2, "Error cleaning up A2DP proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dpSink;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 151
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x0

    return v0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getProfileId()I
    .locals 1

    .line 93
    const/16 v0, 0xb

    return v0
.end method

.method public isAutoConnectable()Z
    .locals 5

    .line 113
    const-string/jumbo v0, "sys.default.bluetooth_connect_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 114
    .local v0, "result":I
    const-string v2, "A2dpSinkProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A2dpSinkProfile isAutoConnectable(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1
.end method

.method public isConnectable()Z
    .locals 5

    .line 107
    const-string/jumbo v0, "sys.default.bluetooth_connect_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 108
    .local v0, "result":I
    const-string v2, "A2dpSinkProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A2dpSinkProfile isConnectable(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 158
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public isProfileReady()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mIsProfileReady:Z

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "preferred"    # Z

    .line 168
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    if-eqz p2, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    .line 171
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dpSink;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dpSink;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 176
    :cond_2
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 190
    const-string v0, "A2DPSink"

    return-object v0
.end method
