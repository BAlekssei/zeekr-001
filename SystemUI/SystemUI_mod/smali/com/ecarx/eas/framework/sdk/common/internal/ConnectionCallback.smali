.class abstract Lcom/ecarx/eas/framework/sdk/common/internal/ConnectionCallback;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/eas/framework/sdk/common/internal/IConnectionCallback;


# static fields
.field static final DESCRIPTOR:Ljava/lang/String; = "com.ecarx.sdk.openapi.RemoteConnectionCallback"

.field static final TRANSACTION_onConnected:I = 0x1

.field static final TRANSACTION_onDisconnected:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 55
    return-object p0
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const-string v0, "com.ecarx.sdk.openapi.RemoteConnectionCallback"

    .line 21
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 48
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/ConnectionCallback;
    .end local p3    # "reply":Landroid/os/Parcel;
    .end local p4    # "flags":I
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    .end local p1    # "code":I
    .end local p2    # "data":Landroid/os/Parcel;
    return p1

    .line 39
    .restart local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/ConnectionCallback;
    .restart local p2    # "data":Landroid/os/Parcel;
    .restart local p3    # "reply":Landroid/os/Parcel;
    .restart local p4    # "flags":I
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 42
    .end local p2    # "data":Landroid/os/Parcel;
    invoke-virtual {p0, p1, p2}, Lcom/ecarx/eas/framework/sdk/common/internal/ConnectionCallback;->onDisconnected(Ljava/lang/String;I)V

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 44
    return v2

    .line 30
    .restart local p1    # "code":I
    .restart local p2    # "data":Landroid/os/Parcel;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 32
    .end local p1    # "code":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 33
    .end local p2    # "data":Landroid/os/Parcel;
    invoke-virtual {p0, p1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/ConnectionCallback;->onConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 34
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 35
    return v2

    .line 25
    .restart local p1    # "code":I
    .restart local p2    # "data":Landroid/os/Parcel;
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
