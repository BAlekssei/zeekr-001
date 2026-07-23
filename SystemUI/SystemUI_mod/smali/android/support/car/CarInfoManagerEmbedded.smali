.class public Landroid/support/car/CarInfoManagerEmbedded;
.super Landroid/support/car/CarInfoManager;
.source "CarInfoManagerEmbedded.java"


# instance fields
.field private final mManager:Landroid/car/CarInfoManager;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "manager"    # Ljava/lang/Object;

    .line 26
    invoke-direct {p0}, Landroid/support/car/CarInfoManager;-><init>()V

    .line 27
    move-object v0, p1

    check-cast v0, Landroid/car/CarInfoManager;

    iput-object v0, p0, Landroid/support/car/CarInfoManagerEmbedded;->mManager:Landroid/car/CarInfoManager;

    .line 28
    return-void
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 0

    .line 131
    return-void
.end method
