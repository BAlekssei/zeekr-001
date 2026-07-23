.class final Landroid/support/v4/media/MediaSession2Stub$Controller2Cb;
.super Landroid/support/v4/media/MediaSession2$ControllerCb;
.source "MediaSession2Stub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaSession2Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Controller2Cb"
.end annotation


# instance fields
.field private final mIControllerCallback:Landroid/support/v4/media/IMediaController2;


# direct methods
.method constructor <init>(Landroid/support/v4/media/IMediaController2;)V
    .locals 0
    .param p1, "callback"    # Landroid/support/v4/media/IMediaController2;

    .line 921
    invoke-direct {p0}, Landroid/support/v4/media/MediaSession2$ControllerCb;-><init>()V

    .line 922
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2Stub$Controller2Cb;->mIControllerCallback:Landroid/support/v4/media/IMediaController2;

    .line 923
    return-void
.end method


# virtual methods
.method getId()Landroid/os/IBinder;
    .locals 1

    .line 927
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2Stub$Controller2Cb;->mIControllerCallback:Landroid/support/v4/media/IMediaController2;

    invoke-interface {v0}, Landroid/support/v4/media/IMediaController2;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
