.class public abstract Landroid/support/car/media/CarAudioManager;
.super Ljava/lang/Object;
.source "CarAudioManager.java"

# interfaces
.implements Landroid/support/car/CarManagerBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isMediaMuted()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation
.end method

.method public abstract setMediaMute(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation
.end method
