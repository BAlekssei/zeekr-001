.class Landroid/support/car/Car$1;
.super Landroid/support/car/CarServiceLoader$CarConnectionCallbackProxy;
.source "Car.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/car/Car;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/car/Car;


# direct methods
.method constructor <init>(Landroid/support/car/Car;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/car/Car;

    .line 227
    iput-object p1, p0, Landroid/support/car/Car$1;->this$0:Landroid/support/car/Car;

    invoke-direct {p0}, Landroid/support/car/CarServiceLoader$CarConnectionCallbackProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    .line 230
    iget-object v0, p0, Landroid/support/car/Car$1;->this$0:Landroid/support/car/Car;

    monitor-enter v0

    .line 231
    :try_start_0
    iget-object v1, p0, Landroid/support/car/Car$1;->this$0:Landroid/support/car/Car;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/support/car/Car;->access$002(Landroid/support/car/Car;I)I

    .line 232
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    iget-object v0, p0, Landroid/support/car/Car$1;->this$0:Landroid/support/car/Car;

    invoke-static {v0}, Landroid/support/car/Car;->access$100(Landroid/support/car/Car;)Landroid/support/car/CarConnectionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/car/Car$1;->this$0:Landroid/support/car/Car;

    invoke-virtual {v0, v1}, Landroid/support/car/CarConnectionCallback;->onConnected(Landroid/support/car/Car;)V

    .line 234
    return-void

    .line 232
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onDisconnected()V
    .locals 3

    .line 238
    iget-object v0, p0, Landroid/support/car/Car$1;->this$0:Landroid/support/car/Car;

    monitor-enter v0

    .line 239
    :try_start_0
    iget-object v1, p0, Landroid/support/car/Car$1;->this$0:Landroid/support/car/Car;

    invoke-static {v1}, Landroid/support/car/Car;->access$000(Landroid/support/car/Car;)I

    move-result v1

    if-nez v1, :cond_0

    .line 240
    monitor-exit v0

    return-void

    .line 242
    :cond_0
    iget-object v1, p0, Landroid/support/car/Car$1;->this$0:Landroid/support/car/Car;

    invoke-static {v1}, Landroid/support/car/Car;->access$200(Landroid/support/car/Car;)V

    .line 243
    iget-object v1, p0, Landroid/support/car/Car$1;->this$0:Landroid/support/car/Car;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/car/Car;->access$002(Landroid/support/car/Car;I)I

    .line 244
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    iget-object v0, p0, Landroid/support/car/Car$1;->this$0:Landroid/support/car/Car;

    invoke-static {v0}, Landroid/support/car/Car;->access$100(Landroid/support/car/Car;)Landroid/support/car/CarConnectionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/car/Car$1;->this$0:Landroid/support/car/Car;

    invoke-virtual {v0, v1}, Landroid/support/car/CarConnectionCallback;->onDisconnected(Landroid/support/car/Car;)V

    .line 246
    return-void

    .line 244
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
