.class abstract Landroid/support/v4/media/MediaSession2$ControllerCb;
.super Ljava/lang/Object;
.source "MediaSession2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaSession2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ControllerCb"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1558
    instance-of v0, p1, Landroid/support/v4/media/MediaSession2$ControllerCb;

    if-nez v0, :cond_0

    .line 1559
    const/4 v0, 0x0

    return v0

    .line 1561
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v4/media/MediaSession2$ControllerCb;

    .line 1562
    .local v0, "other":Landroid/support/v4/media/MediaSession2$ControllerCb;
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2$ControllerCb;->getId()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/media/MediaSession2$ControllerCb;->getId()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method abstract getId()Landroid/os/IBinder;
.end method

.method public hashCode()I
    .locals 1

    .line 1553
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2$ControllerCb;->getId()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
