.class public abstract Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/eas/sdk/v3/IUserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/eas/sdk/v3/IUserCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ecarx.user.IUserCallback"

.field static final TRANSACTION_onLogin:I = 0x1

.field static final TRANSACTION_onLogout:I = 0x2

.field static final TRANSACTION_onTokenChanged:I = 0x3

.field static final TRANSACTION_onUserInfoChanged:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 81
    const-string v0, "com.ecarx.user.IUserCallback"

    invoke-virtual {p0, p0, v0}, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ecarx/eas/sdk/v3/IUserCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 90
    if-nez p0, :cond_0

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_0
    const-string v0, "com.ecarx.user.IUserCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ecarx/eas/sdk/v3/IUserCallback;

    if-eqz v1, :cond_1

    .line 95
    check-cast v0, Lcom/ecarx/eas/sdk/v3/IUserCallback;

    return-object v0

    .line 97
    :cond_1
    new-instance v0, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub$Proxy;

    .end local p0    # "obj":Landroid/os/IBinder;
    invoke-direct {v0, p0}, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IUserCallback;
    .locals 1

    .line 115
    sget-object v0, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub$Proxy;->sDefaultImpl:Lcom/ecarx/eas/sdk/v3/IUserCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/ecarx/eas/sdk/v3/IUserCallback;)Z
    .locals 2
    .param p0, "impl"    # Lcom/ecarx/eas/sdk/v3/IUserCallback;

    .line 104
    sget-object v0, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub$Proxy;->sDefaultImpl:Lcom/ecarx/eas/sdk/v3/IUserCallback;

    if-nez v0, :cond_1

    .line 107
    if-eqz p0, :cond_0

    .line 108
    nop

    .line 108
    .end local p0    # "impl":Lcom/ecarx/eas/sdk/v3/IUserCallback;
    sput-object p0, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub$Proxy;->sDefaultImpl:Lcom/ecarx/eas/sdk/v3/IUserCallback;

    .line 109
    const/4 p0, 0x1

    return p0

    .line 111
    :cond_0
    const/4 p0, 0x0

    return p0

    .line 105
    .restart local p0    # "impl":Lcom/ecarx/eas/sdk/v3/IUserCallback;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 120
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 125
    const-string v0, "com.ecarx.user.IUserCallback"

    .line 126
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 167
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;
    .end local p2    # "data":Landroid/os/Parcel;
    .end local p3    # "reply":Landroid/os/Parcel;
    .end local p4    # "flags":I
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    .end local p1    # "code":I
    return p1

    .line 158
    .restart local p0    # "this":Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;
    .restart local p2    # "data":Landroid/os/Parcel;
    .restart local p3    # "reply":Landroid/os/Parcel;
    .restart local p4    # "flags":I
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;->onUserInfoChanged(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    return v2

    .line 149
    .restart local p1    # "code":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 152
    .end local p1    # "code":I
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;->onTokenChanged(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    return v2

    .line 142
    .restart local p1    # "code":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;->onLogout()V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    return v2

    .line 135
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;->onLogin()V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    return v2

    .line 130
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
