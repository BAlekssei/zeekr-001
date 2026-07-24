.class public abstract Lcom/zeekrlife/market/task/ITaskCallback$Stub;
.super Landroid/os/Binder;
.source "ITaskCallback.java"

# interfaces
.implements Lcom/zeekrlife/market/task/ITaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeekrlife/market/task/ITaskCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeekrlife/market/task/ITaskCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.zeekrlife.market.task.ITaskCallback"

.field static final TRANSACTION_onTaskAdded:I = 0x1

.field static final TRANSACTION_onTaskRemoved:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "com.zeekrlife.market.task.ITaskCallback"

    invoke-virtual {p0, p0, v0}, Lcom/zeekrlife/market/task/ITaskCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/zeekrlife/market/task/ITaskCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_0
    const-string v0, "com.zeekrlife.market.task.ITaskCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/zeekrlife/market/task/ITaskCallback;

    if-eqz v1, :cond_1

    .line 41
    move-object v1, v0

    check-cast v1, Lcom/zeekrlife/market/task/ITaskCallback;

    return-object v1

    .line 43
    :cond_1
    new-instance v1, Lcom/zeekrlife/market/task/ITaskCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/zeekrlife/market/task/ITaskCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/zeekrlife/market/task/ITaskCallback;
    .locals 1

    .line 176
    sget-object v0, Lcom/zeekrlife/market/task/ITaskCallback$Stub$Proxy;->sDefaultImpl:Lcom/zeekrlife/market/task/ITaskCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/zeekrlife/market/task/ITaskCallback;)Z
    .locals 2
    .param p0, "impl"    # Lcom/zeekrlife/market/task/ITaskCallback;

    .line 166
    sget-object v0, Lcom/zeekrlife/market/task/ITaskCallback$Stub$Proxy;->sDefaultImpl:Lcom/zeekrlife/market/task/ITaskCallback;

    if-nez v0, :cond_1

    .line 169
    if-eqz p0, :cond_0

    .line 170
    sput-object p0, Lcom/zeekrlife/market/task/ITaskCallback$Stub$Proxy;->sDefaultImpl:Lcom/zeekrlife/market/task/ITaskCallback;

    .line 171
    const/4 v0, 0x1

    return v0

    .line 173
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 167
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 47
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const-string v0, "com.zeekrlife.market.task.ITaskCallback"

    .line 52
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 75
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    sget-object v1, Lcom/zeekrlife/market/task/ITaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zeekrlife/market/task/ITaskInfo;

    .local v1, "_arg0":Lcom/zeekrlife/market/task/ITaskInfo;
    goto :goto_0

    .line 81
    .end local v1    # "_arg0":Lcom/zeekrlife/market/task/ITaskInfo;
    :cond_0
    nop

    .line 83
    .restart local v1    # "_arg0":Lcom/zeekrlife/market/task/ITaskInfo;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/zeekrlife/market/task/ITaskCallback$Stub;->onTaskRemoved(Lcom/zeekrlife/market/task/ITaskInfo;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    return v2

    .line 61
    .end local v1    # "_arg0":Lcom/zeekrlife/market/task/ITaskInfo;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    sget-object v1, Lcom/zeekrlife/market/task/ITaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zeekrlife/market/task/ITaskInfo;

    .restart local v1    # "_arg0":Lcom/zeekrlife/market/task/ITaskInfo;
    goto :goto_1

    .line 67
    .end local v1    # "_arg0":Lcom/zeekrlife/market/task/ITaskInfo;
    :cond_1
    nop

    .line 69
    .restart local v1    # "_arg0":Lcom/zeekrlife/market/task/ITaskInfo;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/zeekrlife/market/task/ITaskCallback$Stub;->onTaskAdded(Lcom/zeekrlife/market/task/ITaskInfo;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    return v2

    .line 56
    .end local v1    # "_arg0":Lcom/zeekrlife/market/task/ITaskInfo;
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
