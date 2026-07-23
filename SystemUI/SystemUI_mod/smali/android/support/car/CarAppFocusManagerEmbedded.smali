.class public Landroid/support/car/CarAppFocusManagerEmbedded;
.super Landroid/support/car/CarAppFocusManager;
.source "CarAppFocusManagerEmbedded.java"


# instance fields
.field private final mChangeListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mManager:Landroid/car/CarAppFocusManager;

.field private final mOwnershipCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "manager"    # Ljava/lang/Object;

    .line 38
    invoke-direct {p0}, Landroid/support/car/CarAppFocusManager;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/car/CarAppFocusManagerEmbedded;->mChangeListeners:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/car/CarAppFocusManagerEmbedded;->mOwnershipCallbacks:Ljava/util/Map;

    .line 39
    move-object v0, p1

    check-cast v0, Landroid/car/CarAppFocusManager;

    iput-object v0, p0, Landroid/support/car/CarAppFocusManagerEmbedded;->mManager:Landroid/car/CarAppFocusManager;

    .line 40
    return-void
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 0

    .line 158
    return-void
.end method
