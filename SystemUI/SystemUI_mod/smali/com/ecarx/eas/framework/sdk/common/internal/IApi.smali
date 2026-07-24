.class public abstract Lcom/ecarx/eas/framework/sdk/common/internal/IApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final ERROR_CODE:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mAliveFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field protected volatile mService:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->mAliveFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/IApi$1;

    invoke-direct {v0, p0}, Lcom/ecarx/eas/framework/sdk/common/internal/IApi$1;-><init>(Lcom/ecarx/eas/framework/sdk/common/internal/IApi;)V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/os/IInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 24
    .local p0, "this":Lcom/ecarx/eas/framework/sdk/common/internal/IApi;, "Lcom/ecarx/eas/framework/sdk/common/internal/IApi<TT;>;"
    .local p1, "api":Landroid/os/IInterface;, "TT;"
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " init(T api)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->mAliveFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IApi->init("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->mService:Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 30
    :cond_1
    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->mService:Landroid/os/IInterface;

    .line 31
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_3

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->mService:Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    if-eqz p1, :cond_2

    .line 36
    sget-object v1, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .end local p1    # "api":Landroid/os/IInterface;, "TT;"
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " \u5f02\u5e38>> "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    :cond_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 39
    :goto_0
    iget-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->mAliveFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 41
    :cond_3
    iget-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->mAliveFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/IApi;, "Lcom/ecarx/eas/framework/sdk/common/internal/IApi<TT;>;"
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 43
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->mAliveFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isNotAlive()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->mAliveFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onBinderDied()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->mService:Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 57
    :cond_0
    return-void
.end method
