.class public Landroid/support/car/content/pm/CarPackageManagerEmbedded;
.super Landroid/support/car/content/pm/CarPackageManager;
.source "CarPackageManagerEmbedded.java"


# instance fields
.field private final mManager:Landroid/car/content/pm/CarPackageManager;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "manager"    # Ljava/lang/Object;

    .line 28
    invoke-direct {p0}, Landroid/support/car/content/pm/CarPackageManager;-><init>()V

    .line 29
    move-object v0, p1

    check-cast v0, Landroid/car/content/pm/CarPackageManager;

    iput-object v0, p0, Landroid/support/car/content/pm/CarPackageManagerEmbedded;->mManager:Landroid/car/content/pm/CarPackageManager;

    .line 30
    return-void
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 0

    .line 60
    return-void
.end method
