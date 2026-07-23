.class public abstract Landroid/support/car/CarServiceLoader;
.super Ljava/lang/Object;
.source "CarServiceLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/car/CarServiceLoader$CarConnectionCallbackProxy;
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/support/car/CarServiceLoader$CarConnectionCallbackProxy;

.field private final mContext:Landroid/content/Context;

.field private final mEventHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/car/CarServiceLoader$CarConnectionCallbackProxy;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/support/car/CarServiceLoader$CarConnectionCallbackProxy;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/support/car/CarServiceLoader;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Landroid/support/car/CarServiceLoader;->mCallback:Landroid/support/car/CarServiceLoader$CarConnectionCallbackProxy;

    .line 35
    iput-object p3, p0, Landroid/support/car/CarServiceLoader;->mEventHandler:Landroid/os/Handler;

    .line 36
    return-void
.end method


# virtual methods
.method public abstract connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getCarManager(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/car/CarNotConnectedException;
        }
    .end annotation
.end method

.method protected getConnectionCallback()Landroid/support/car/CarServiceLoader$CarConnectionCallbackProxy;
    .locals 1

    .line 59
    iget-object v0, p0, Landroid/support/car/CarServiceLoader;->mCallback:Landroid/support/car/CarServiceLoader$CarConnectionCallbackProxy;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 55
    iget-object v0, p0, Landroid/support/car/CarServiceLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method
