.class public Landroid/support/car/navigation/CarNavigationStatusManagerEmbedded;
.super Landroid/support/car/navigation/CarNavigationStatusManager;
.source "CarNavigationStatusManagerEmbedded.java"


# instance fields
.field private final mManager:Landroid/car/navigation/CarNavigationStatusManager;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "manager"    # Ljava/lang/Object;

    .line 29
    invoke-direct {p0}, Landroid/support/car/navigation/CarNavigationStatusManager;-><init>()V

    .line 30
    move-object v0, p1

    check-cast v0, Landroid/car/navigation/CarNavigationStatusManager;

    iput-object v0, p0, Landroid/support/car/navigation/CarNavigationStatusManagerEmbedded;->mManager:Landroid/car/navigation/CarNavigationStatusManager;

    .line 31
    return-void
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 0

    .line 72
    return-void
.end method
