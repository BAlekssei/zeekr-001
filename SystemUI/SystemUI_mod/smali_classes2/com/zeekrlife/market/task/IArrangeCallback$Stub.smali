.class public abstract Lcom/zeekrlife/market/task/IArrangeCallback$Stub;
.super Landroid/os/Binder;
.source "IArrangeCallback.java"

# interfaces
.implements Lcom/zeekrlife/market/task/IArrangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeekrlife/market/task/IArrangeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeekrlife/market/task/IArrangeCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.zeekrlife.market.task.IArrangeCallback"

.field static final TRANSACTION_onDownloadCompleted:I = 0x5

.field static final TRANSACTION_onDownloadConnected:I = 0x3

.field static final TRANSACTION_onDownloadError:I = 0x7

.field static final TRANSACTION_onDownloadPaused:I = 0x6

.field static final TRANSACTION_onDownloadPending:I = 0x1

.field static final TRANSACTION_onDownloadProgress:I = 0x4

.field static final TRANSACTION_onDownloadStarted:I = 0x2

.field static final TRANSACTION_onInstallCompleted:I = 0xb

.field static final TRANSACTION_onInstallError:I = 0xc

.field static final TRANSACTION_onInstallPending:I = 0x8

.field static final TRANSACTION_onInstallProgress:I = 0xa

.field static final TRANSACTION_onInstallStarted:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "com.zeekrlife.market.task.IArrangeCallback"

    invoke-virtual {p0, p0, v0}, Lcom/zeekrlife/market/task/IArrangeCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/zeekrlife/market/task/IArrangeCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    const-string v0, "com.zeekrlife.market.task.IArrangeCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/zeekrlife/market/task/IArrangeCallback;

    if-eqz v1, :cond_1

    .line 71
    move-object v1, v0

    check-cast v1, Lcom/zeekrlife/market/task/IArrangeCallback;

    return-object v1

    .line 73
    :cond_1
    new-instance v1, Lcom/zeekrlife/market/task/IArrangeCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/zeekrlife/market/task/IArrangeCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/zeekrlife/market/task/IArrangeCallback;
    .locals 1

    .line 495
    sget-object v0, Lcom/zeekrlife/market/task/IArrangeCallback$Stub$Proxy;->sDefaultImpl:Lcom/zeekrlife/market/task/IArrangeCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/zeekrlife/market/task/IArrangeCallback;)Z
    .locals 2
    .param p0, "impl"    # Lcom/zeekrlife/market/task/IArrangeCallback;

    .line 485
    sget-object v0, Lcom/zeekrlife/market/task/IArrangeCallback$Stub$Proxy;->sDefaultImpl:Lcom/zeekrlife/market/task/IArrangeCallback;

    if-nez v0, :cond_1

    .line 488
    if-eqz p0, :cond_0

    .line 489
    sput-object p0, Lcom/zeekrlife/market/task/IArrangeCallback$Stub$Proxy;->sDefaultImpl:Lcom/zeekrlife/market/task/IArrangeCallback;

    .line 490
    const/4 v0, 0x1

    return v0

    .line 492
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 486
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 77
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    .line 81
    const-string v9, "com.zeekrlife.market.task.IArrangeCallback"

    .line 82
    .local v9, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v7, v0, :cond_0

    packed-switch v7, :pswitch_data_0

    .line 213
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 202
    :pswitch_0
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 207
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Lcom/zeekrlife/market/task/IArrangeCallback$Stub;->onInstallError(Ljava/lang/String;I)V

    .line 208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    return v10

    .line 193
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_1
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 196
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/zeekrlife/market/task/IArrangeCallback$Stub;->onInstallCompleted(Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    return v10

    .line 182
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 186
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 187
    .local v1, "_arg1":F
    invoke-virtual {v6, v0, v1}, Lcom/zeekrlife/market/task/IArrangeCallback$Stub;->onInstallProgress(Ljava/lang/String;F)V

    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    return v10

    .line 173
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":F
    :pswitch_3
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/zeekrlife/market/task/IArrangeCallback$Stub;->onInstallStarted(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    return v10

    .line 164
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/zeekrlife/market/task/IArrangeCallback$Stub;->onInstallPending(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    return v10

    .line 153
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 158
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Lcom/zeekrlife/market/task/IArrangeCallback$Stub;->onDownloadError(Ljava/lang/String;I)V

    .line 159
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    return v10

    .line 144
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_6
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/zeekrlife/market/task/IArrangeCallback$Stub;->onDownloadPaused(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    return v10

    .line 135
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/zeekrlife/market/task/IArrangeCallback$Stub;->onDownloadCompleted(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    return v10

    .line 122
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 126
    .local v11, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 128
    .local v12, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 129
    .local v14, "_arg2":J
    move-object v0, v6

    move-object v1, v11

    move-wide v2, v12

    move-wide v4, v14

    invoke-virtual/range {v0 .. v5}, Lcom/zeekrlife/market/task/IArrangeCallback$Stub;->onDownloadProgress(Ljava/lang/String;JJ)V

    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    return v10

    .line 109
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":J
    .end local v14    # "_arg2":J
    :pswitch_9
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 113
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 115
    .restart local v12    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 116
    .restart local v14    # "_arg2":J
    move-object v0, v6

    move-object v1, v11

    move-wide v2, v12

    move-wide v4, v14

    invoke-virtual/range {v0 .. v5}, Lcom/zeekrlife/market/task/IArrangeCallback$Stub;->onDownloadConnected(Ljava/lang/String;JJ)V

    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    return v10

    .line 100
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":J
    .end local v14    # "_arg2":J
    :pswitch_a
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/zeekrlife/market/task/IArrangeCallback$Stub;->onDownloadStarted(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    return v10

    .line 91
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/zeekrlife/market/task/IArrangeCallback$Stub;->onDownloadPending(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    return v10

    .line 86
    .end local v0    # "_arg0":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    return v10

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
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
