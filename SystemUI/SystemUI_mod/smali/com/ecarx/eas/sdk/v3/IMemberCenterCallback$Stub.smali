.class public abstract Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "ecarx.membercenter.service.IMemberCenterCallback"

.field static final TRANSACTION_onApproveFail:I = 0x6

.field static final TRANSACTION_onApproveSuccess:I = 0x5

.field static final TRANSACTION_onLoginFail:I = 0x2

.field static final TRANSACTION_onLoginSuccess:I = 0x1

.field static final TRANSACTION_onLogoutFail:I = 0x4

.field static final TRANSACTION_onLogoutSuccess:I = 0x3

.field static final TRANSACTION_onRefreshTokenError:I = 0x8

.field static final TRANSACTION_onRefreshTokenSuccess:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 113
    const-string v0, "ecarx.membercenter.service.IMemberCenterCallback"

    invoke-virtual {p0, p0, v0}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 122
    if-nez p0, :cond_0

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_0
    const-string v0, "ecarx.membercenter.service.IMemberCenterCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    if-eqz v1, :cond_1

    .line 127
    check-cast v0, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    return-object v0

    .line 129
    :cond_1
    new-instance v0, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub$Proxy;

    .end local p0    # "obj":Landroid/os/IBinder;
    invoke-direct {v0, p0}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;
    .locals 1

    .line 147
    sget-object v0, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub$Proxy;->sDefaultImpl:Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;)Z
    .locals 2
    .param p0, "impl"    # Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    .line 136
    sget-object v0, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub$Proxy;->sDefaultImpl:Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    if-nez v0, :cond_1

    .line 139
    if-eqz p0, :cond_0

    .line 140
    nop

    .line 140
    .end local p0    # "impl":Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;
    sput-object p0, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub$Proxy;->sDefaultImpl:Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    .line 141
    const/4 p0, 0x1

    return p0

    .line 143
    :cond_0
    const/4 p0, 0x0

    return p0

    .line 137
    .restart local p0    # "impl":Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 152
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

    .line 157
    const-string v0, "ecarx.membercenter.service.IMemberCenterCallback"

    .line 158
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 239
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;
    .end local p2    # "data":Landroid/os/Parcel;
    .end local p3    # "reply":Landroid/os/Parcel;
    .end local p4    # "flags":I
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    .end local p1    # "code":I
    return p1

    .line 230
    .restart local p0    # "this":Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;
    .restart local p2    # "data":Landroid/os/Parcel;
    .restart local p3    # "reply":Landroid/os/Parcel;
    .restart local p4    # "flags":I
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 233
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;->onRefreshTokenError(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    return v2

    .line 221
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;->onRefreshTokenSuccess(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    return v2

    .line 212
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 215
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;->onApproveFail(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    return v2

    .line 203
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 206
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;->onApproveSuccess(I)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    return v2

    .line 194
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;->onLogoutFail(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    return v2

    .line 185
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 188
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;->onLogoutSuccess(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    return v2

    .line 176
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;->onLoginFail(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    return v2

    .line 167
    .restart local p1    # "code":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 170
    .end local p1    # "code":I
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;->onLoginSuccess(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    return v2

    .line 162
    .restart local p1    # "code":I
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
