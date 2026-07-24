.class public abstract Lcom/zeekrlife/market/task/ITaskService$Stub;
.super Landroid/os/Binder;
.source "ITaskService.java"

# interfaces
.implements Lcom/zeekrlife/market/task/ITaskService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeekrlife/market/task/ITaskService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeekrlife/market/task/ITaskService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.zeekrlife.market.task.ITaskService"

.field static final TRANSACTION_addTask:I = 0x3

.field static final TRANSACTION_getTask:I = 0x2

.field static final TRANSACTION_getTaskList:I = 0x1

.field static final TRANSACTION_pauseDownload:I = 0x7

.field static final TRANSACTION_registerArrangeCallback:I = 0x9

.field static final TRANSACTION_registerTaskCallback:I = 0x5

.field static final TRANSACTION_removeTask:I = 0x4

.field static final TRANSACTION_resumeDownload:I = 0x8

.field static final TRANSACTION_unregisterArrangeCallback:I = 0xa

.field static final TRANSACTION_unregisterTaskCallback:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 62
    const-string v0, "com.zeekrlife.market.task.ITaskService"

    invoke-virtual {p0, p0, v0}, Lcom/zeekrlife/market/task/ITaskService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/zeekrlife/market/task/ITaskService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 70
    if-nez p0, :cond_0

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_0
    const-string v0, "com.zeekrlife.market.task.ITaskService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/zeekrlife/market/task/ITaskService;

    if-eqz v1, :cond_1

    .line 75
    move-object v1, v0

    check-cast v1, Lcom/zeekrlife/market/task/ITaskService;

    return-object v1

    .line 77
    :cond_1
    new-instance v1, Lcom/zeekrlife/market/task/ITaskService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/zeekrlife/market/task/ITaskService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/zeekrlife/market/task/ITaskService;
    .locals 1

    .line 469
    sget-object v0, Lcom/zeekrlife/market/task/ITaskService$Stub$Proxy;->sDefaultImpl:Lcom/zeekrlife/market/task/ITaskService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/zeekrlife/market/task/ITaskService;)Z
    .locals 2
    .param p0, "impl"    # Lcom/zeekrlife/market/task/ITaskService;

    .line 459
    sget-object v0, Lcom/zeekrlife/market/task/ITaskService$Stub$Proxy;->sDefaultImpl:Lcom/zeekrlife/market/task/ITaskService;

    if-nez v0, :cond_1

    .line 462
    if-eqz p0, :cond_0

    .line 463
    sput-object p0, Lcom/zeekrlife/market/task/ITaskService$Stub$Proxy;->sDefaultImpl:Lcom/zeekrlife/market/task/ITaskService;

    .line 464
    const/4 v0, 0x1

    return v0

    .line 466
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 460
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 81
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    const-string v0, "com.zeekrlife.market.task.ITaskService"

    .line 86
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 194
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/zeekrlife/market/task/IArrangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zeekrlife/market/task/IArrangeCallback;

    move-result-object v1

    .line 197
    .local v1, "_arg0":Lcom/zeekrlife/market/task/IArrangeCallback;
    invoke-virtual {p0, v1}, Lcom/zeekrlife/market/task/ITaskService$Stub;->unregisterArrangeCallback(Lcom/zeekrlife/market/task/IArrangeCallback;)Z

    move-result v3

    .line 198
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    return v2

    .line 184
    .end local v1    # "_arg0":Lcom/zeekrlife/market/task/IArrangeCallback;
    .end local v3    # "_result":Z
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/zeekrlife/market/task/IArrangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zeekrlife/market/task/IArrangeCallback;

    move-result-object v1

    .line 187
    .restart local v1    # "_arg0":Lcom/zeekrlife/market/task/IArrangeCallback;
    invoke-virtual {p0, v1}, Lcom/zeekrlife/market/task/ITaskService$Stub;->registerArrangeCallback(Lcom/zeekrlife/market/task/IArrangeCallback;)Z

    move-result v3

    .line 188
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    return v2

    .line 174
    .end local v1    # "_arg0":Lcom/zeekrlife/market/task/IArrangeCallback;
    .end local v3    # "_result":Z
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/zeekrlife/market/task/ITaskService$Stub;->resumeDownload(Ljava/lang/String;)Z

    move-result v3

    .line 178
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    return v2

    .line 164
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 167
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/zeekrlife/market/task/ITaskService$Stub;->pauseDownload(Ljava/lang/String;)Z

    move-result v3

    .line 168
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    return v2

    .line 154
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/zeekrlife/market/task/ITaskCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zeekrlife/market/task/ITaskCallback;

    move-result-object v1

    .line 157
    .local v1, "_arg0":Lcom/zeekrlife/market/task/ITaskCallback;
    invoke-virtual {p0, v1}, Lcom/zeekrlife/market/task/ITaskService$Stub;->unregisterTaskCallback(Lcom/zeekrlife/market/task/ITaskCallback;)Z

    move-result v3

    .line 158
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    return v2

    .line 144
    .end local v1    # "_arg0":Lcom/zeekrlife/market/task/ITaskCallback;
    .end local v3    # "_result":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/zeekrlife/market/task/ITaskCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zeekrlife/market/task/ITaskCallback;

    move-result-object v1

    .line 147
    .restart local v1    # "_arg0":Lcom/zeekrlife/market/task/ITaskCallback;
    invoke-virtual {p0, v1}, Lcom/zeekrlife/market/task/ITaskService$Stub;->registerTaskCallback(Lcom/zeekrlife/market/task/ITaskCallback;)Z

    move-result v3

    .line 148
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    return v2

    .line 134
    .end local v1    # "_arg0":Lcom/zeekrlife/market/task/ITaskCallback;
    .end local v3    # "_result":Z
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/zeekrlife/market/task/ITaskService$Stub;->removeTask(Ljava/lang/String;)Z

    move-result v3

    .line 138
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    return v2

    .line 119
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    sget-object v1, Lcom/zeekrlife/market/task/ITaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zeekrlife/market/task/ITaskInfo;

    .local v1, "_arg0":Lcom/zeekrlife/market/task/ITaskInfo;
    goto :goto_0

    .line 125
    .end local v1    # "_arg0":Lcom/zeekrlife/market/task/ITaskInfo;
    :cond_0
    const/4 v1, 0x0

    .line 127
    .restart local v1    # "_arg0":Lcom/zeekrlife/market/task/ITaskInfo;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/zeekrlife/market/task/ITaskService$Stub;->addTask(Lcom/zeekrlife/market/task/ITaskInfo;)Z

    move-result v3

    .line 128
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    return v2

    .line 103
    .end local v1    # "_arg0":Lcom/zeekrlife/market/task/ITaskInfo;
    .end local v3    # "_result":Z
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/zeekrlife/market/task/ITaskService$Stub;->getTask(Ljava/lang/String;)Lcom/zeekrlife/market/task/ITaskInfo;

    move-result-object v3

    .line 107
    .local v3, "_result":Lcom/zeekrlife/market/task/ITaskInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v3, :cond_1

    .line 109
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    invoke-virtual {v3, p3, v2}, Lcom/zeekrlife/market/task/ITaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 113
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    :goto_1
    return v2

    .line 95
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/zeekrlife/market/task/ITaskInfo;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/zeekrlife/market/task/ITaskService$Stub;->getTaskList()Ljava/util/List;

    move-result-object v1

    .line 97
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/zeekrlife/market/task/ITaskInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 99
    return v2

    .line 90
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/zeekrlife/market/task/ITaskInfo;>;"
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
