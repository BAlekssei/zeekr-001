.class public Landroid/support/car/media/CarAudioManagerEmbedded;
.super Landroid/support/car/media/CarAudioManager;
.source "CarAudioManagerEmbedded.java"


# static fields
.field private static final AUDIO_RECORD_FORMAT:Landroid/media/AudioFormat;


# instance fields
.field private final mManager:Landroid/car/media/CarAudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 35
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 36
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 37
    const/16 v1, 0x3e80

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    sput-object v0, Landroid/support/car/media/CarAudioManagerEmbedded;->AUDIO_RECORD_FORMAT:Landroid/media/AudioFormat;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "manager"    # Ljava/lang/Object;

    .line 42
    invoke-direct {p0}, Landroid/support/car/media/CarAudioManager;-><init>()V

    .line 43
    move-object v0, p1

    check-cast v0, Landroid/car/media/CarAudioManager;

    iput-object v0, p0, Landroid/support/car/media/CarAudioManagerEmbedded;->mManager:Landroid/car/media/CarAudioManager;

    .line 44
    return-void
.end method


# virtual methods
.method public isMediaMuted()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 81
    :try_start_0
    iget-object v0, p0, Landroid/support/car/media/CarAudioManagerEmbedded;->mManager:Landroid/car/media/CarAudioManager;

    invoke-virtual {v0}, Landroid/car/media/CarAudioManager;->isMediaMuted()Z

    move-result v0
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Landroid/car/CarNotConnectedException;
    new-instance v1, Landroid/car/CarNotConnectedException;

    invoke-direct {v1, v0}, Landroid/car/CarNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public onCarDisconnected()V
    .locals 0

    .line 100
    return-void
.end method

.method public setMediaMute(Z)Z
    .locals 2
    .param p1, "mute"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 90
    :try_start_0
    iget-object v0, p0, Landroid/support/car/media/CarAudioManagerEmbedded;->mManager:Landroid/car/media/CarAudioManager;

    invoke-virtual {v0, p1}, Landroid/car/media/CarAudioManager;->setMediaMute(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/car/CarNotConnectedException;
    new-instance v1, Landroid/car/CarNotConnectedException;

    invoke-direct {v1, v0}, Landroid/car/CarNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
