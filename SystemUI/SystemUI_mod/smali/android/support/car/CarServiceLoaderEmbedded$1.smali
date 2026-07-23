.class Landroid/support/car/CarServiceLoaderEmbedded$1;
.super Ljava/lang/Object;
.source "CarServiceLoaderEmbedded.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/car/CarServiceLoaderEmbedded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/car/CarServiceLoaderEmbedded;


# direct methods
.method constructor <init>(Landroid/support/car/CarServiceLoaderEmbedded;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/car/CarServiceLoaderEmbedded;

    .line 35
    iput-object p1, p0, Landroid/support/car/CarServiceLoaderEmbedded$1;->this$0:Landroid/support/car/CarServiceLoaderEmbedded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 39
    iget-object v0, p0, Landroid/support/car/CarServiceLoaderEmbedded$1;->this$0:Landroid/support/car/CarServiceLoaderEmbedded;

    invoke-virtual {v0}, Landroid/support/car/CarServiceLoaderEmbedded;->getConnectionCallback()Landroid/support/car/CarServiceLoader$CarConnectionCallbackProxy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/car/CarServiceLoader$CarConnectionCallbackProxy;->onConnected()V

    .line 40
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 44
    iget-object v0, p0, Landroid/support/car/CarServiceLoaderEmbedded$1;->this$0:Landroid/support/car/CarServiceLoaderEmbedded;

    invoke-virtual {v0}, Landroid/support/car/CarServiceLoaderEmbedded;->getConnectionCallback()Landroid/support/car/CarServiceLoader$CarConnectionCallbackProxy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/car/CarServiceLoader$CarConnectionCallbackProxy;->onDisconnected()V

    .line 45
    return-void
.end method
