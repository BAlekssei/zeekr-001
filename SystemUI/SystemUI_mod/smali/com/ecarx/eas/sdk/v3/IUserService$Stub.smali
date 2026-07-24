.class public abstract Lcom/ecarx/eas/sdk/v3/IUserService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/eas/sdk/v3/IUserService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/eas/sdk/v3/IUserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecarx/eas/sdk/v3/IUserService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ecarx.user.IUserService"

.field static final TRANSACTION_getToken:I = 0x2

.field static final TRANSACTION_getUserInfo:I = 0x3

.field static final TRANSACTION_hasLogin:I = 0x1

.field static final TRANSACTION_login:I = 0x4

.field static final TRANSACTION_logout:I = 0x5

.field static final TRANSACTION_refreshToken:I = 0x6

.field static final TRANSACTION_refreshUserInfo:I = 0x7

.field static final TRANSACTION_registerCallback:I = 0x8

.field static final TRANSACTION_unregisterCallback:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 174
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 175
    const-string v0, "com.ecarx.user.IUserService"

    invoke-virtual {p0, p0, v0}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ecarx/eas/sdk/v3/IUserService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 184
    if-nez p0, :cond_0

    .line 185
    const/4 v0, 0x0

    return-object v0

    .line 187
    :cond_0
    const-string v0, "com.ecarx.user.IUserService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ecarx/eas/sdk/v3/IUserService;

    if-eqz v1, :cond_1

    .line 189
    check-cast v0, Lcom/ecarx/eas/sdk/v3/IUserService;

    return-object v0

    .line 191
    :cond_1
    new-instance v0, Lcom/ecarx/eas/sdk/v3/IUserService$Stub$Proxy;

    .end local p0    # "obj":Landroid/os/IBinder;
    invoke-direct {v0, p0}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IUserService;
    .locals 1

    .line 209
    sget-object v0, Lcom/ecarx/eas/sdk/v3/IUserService$Stub$Proxy;->sDefaultImpl:Lcom/ecarx/eas/sdk/v3/IUserService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/ecarx/eas/sdk/v3/IUserService;)Z
    .locals 2
    .param p0, "impl"    # Lcom/ecarx/eas/sdk/v3/IUserService;

    .line 198
    sget-object v0, Lcom/ecarx/eas/sdk/v3/IUserService$Stub$Proxy;->sDefaultImpl:Lcom/ecarx/eas/sdk/v3/IUserService;

    if-nez v0, :cond_1

    .line 201
    if-eqz p0, :cond_0

    .line 202
    nop

    .line 202
    .end local p0    # "impl":Lcom/ecarx/eas/sdk/v3/IUserService;
    sput-object p0, Lcom/ecarx/eas/sdk/v3/IUserService$Stub$Proxy;->sDefaultImpl:Lcom/ecarx/eas/sdk/v3/IUserService;

    .line 203
    const/4 p0, 0x1

    return p0

    .line 205
    :cond_0
    const/4 p0, 0x0

    return p0

    .line 199
    .restart local p0    # "impl":Lcom/ecarx/eas/sdk/v3/IUserService;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 214
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

    .line 219
    const-string v0, "com.ecarx.user.IUserService"

    .line 220
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 309
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/v3/IUserService$Stub;
    .end local p2    # "data":Landroid/os/Parcel;
    .end local p3    # "reply":Landroid/os/Parcel;
    .end local p4    # "flags":I
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    .end local p1    # "code":I
    return p1

    .line 299
    .restart local p0    # "this":Lcom/ecarx/eas/sdk/v3/IUserService$Stub;
    .restart local p2    # "data":Landroid/os/Parcel;
    .restart local p3    # "reply":Landroid/os/Parcel;
    .restart local p4    # "flags":I
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ecarx/eas/sdk/v3/IUserCallback;

    move-result-object p1

    .line 302
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->unregisterCallback(Lcom/ecarx/eas/sdk/v3/IUserCallback;)Z

    move-result p1

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    return v2

    .line 289
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ecarx/eas/sdk/v3/IUserCallback;

    move-result-object p1

    .line 292
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->registerCallback(Lcom/ecarx/eas/sdk/v3/IUserCallback;)Z

    move-result p1

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    return v2

    .line 281
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->refreshUserInfo()Ljava/lang/String;

    move-result-object p1

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    return v2

    .line 271
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 274
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->refreshToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    return v2

    .line 263
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->logout()Z

    move-result p1

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    return v2

    .line 253
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->login(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    return v2

    .line 245
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->getUserInfo()Ljava/lang/String;

    move-result-object p1

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    return v2

    .line 237
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->getToken()Ljava/lang/String;

    move-result-object p1

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    return v2

    .line 229
    .restart local p1    # "code":I
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->hasLogin()Z

    move-result v0

    .line 231
    .end local p1    # "code":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    return v2

    .line 224
    .restart local p1    # "code":I
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
