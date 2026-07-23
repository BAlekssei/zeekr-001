.class public abstract Landroid/support/car/CarServiceLoader$CarConnectionCallbackProxy;
.super Ljava/lang/Object;
.source "CarServiceLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/car/CarServiceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarConnectionCallbackProxy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onConnected()V
.end method

.method public abstract onDisconnected()V
.end method
