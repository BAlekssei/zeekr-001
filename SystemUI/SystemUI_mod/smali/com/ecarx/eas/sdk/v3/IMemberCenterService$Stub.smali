.class public abstract Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/eas/sdk/v3/IMemberCenterService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/eas/sdk/v3/IMemberCenterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "ecarx.membercenter.service.IMemberCenterService"

.field static final TRANSACTION_getGesturePwd:I = 0x3

.field static final TRANSACTION_getToken:I = 0x5

.field static final TRANSACTION_getUserInfo:I = 0x6

.field static final TRANSACTION_getUserService:I = 0xa

.field static final TRANSACTION_isApprove:I = 0x1

.field static final TRANSACTION_isLogin:I = 0x4

.field static final TRANSACTION_refreshToken:I = 0x7

.field static final TRANSACTION_registerListener:I = 0x8

.field static final TRANSACTION_setGesturePwd:I = 0x2

.field static final TRANSACTION_unregisterListener:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 164
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 165
    const-string v0, "ecarx.membercenter.service.IMemberCenterService"

    invoke-virtual {p0, p0, v0}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ecarx/eas/sdk/v3/IMemberCenterService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 174
    if-nez p0, :cond_0

    .line 175
    const/4 v0, 0x0

    return-object v0

    .line 177
    :cond_0
    const-string v0, "ecarx.membercenter.service.IMemberCenterService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    if-eqz v1, :cond_1

    .line 179
    check-cast v0, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    return-object v0

    .line 181
    :cond_1
    new-instance v0, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub$Proxy;

    .end local p0    # "obj":Landroid/os/IBinder;
    invoke-direct {v0, p0}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterService;
    .locals 1

    .line 199
    sget-object v0, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub$Proxy;->sDefaultImpl:Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/ecarx/eas/sdk/v3/IMemberCenterService;)Z
    .locals 2
    .param p0, "impl"    # Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    .line 188
    sget-object v0, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub$Proxy;->sDefaultImpl:Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    if-nez v0, :cond_1

    .line 191
    if-eqz p0, :cond_0

    .line 192
    nop

    .line 192
    .end local p0    # "impl":Lcom/ecarx/eas/sdk/v3/IMemberCenterService;
    sput-object p0, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub$Proxy;->sDefaultImpl:Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    .line 193
    const/4 p0, 0x1

    return p0

    .line 195
    :cond_0
    const/4 p0, 0x0

    return p0

    .line 189
    .restart local p0    # "impl":Lcom/ecarx/eas/sdk/v3/IMemberCenterService;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 204
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

    .line 209
    const-string v0, "ecarx.membercenter.service.IMemberCenterService"

    .line 210
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 306
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;
    .end local p3    # "reply":Landroid/os/Parcel;
    .end local p4    # "flags":I
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    .end local p1    # "code":I
    .end local p2    # "data":Landroid/os/Parcel;
    return p1

    .line 298
    .restart local p0    # "this":Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;
    .restart local p2    # "data":Landroid/os/Parcel;
    .restart local p3    # "reply":Landroid/os/Parcel;
    .restart local p4    # "flags":I
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    .end local p2    # "data":Landroid/os/Parcel;
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->getUserService()Lcom/ecarx/eas/sdk/v3/IUserService;

    move-result-object p1

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ecarx/eas/sdk/v3/IUserService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 302
    return v2

    .line 289
    .restart local p2    # "data":Landroid/os/Parcel;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .end local p2    # "data":Landroid/os/Parcel;
    invoke-static {p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    move-result-object p1

    .line 292
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->unregisterListener(Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    return v2

    .line 280
    .restart local p2    # "data":Landroid/os/Parcel;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .end local p2    # "data":Landroid/os/Parcel;
    invoke-static {p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    move-result-object p1

    .line 283
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->registerListener(Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    return v2

    .line 271
    .restart local p2    # "data":Landroid/os/Parcel;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 274
    .end local p2    # "data":Landroid/os/Parcel;
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->refreshToken(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    return v2

    .line 263
    .restart local p2    # "data":Landroid/os/Parcel;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    .end local p2    # "data":Landroid/os/Parcel;
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->getUserInfo()Ljava/lang/String;

    move-result-object p1

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    return v2

    .line 255
    .restart local p2    # "data":Landroid/os/Parcel;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    .end local p2    # "data":Landroid/os/Parcel;
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->getToken()Ljava/lang/String;

    move-result-object p1

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    return v2

    .line 247
    .restart local p2    # "data":Landroid/os/Parcel;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    .end local p2    # "data":Landroid/os/Parcel;
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->isLogin()Z

    move-result p1

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    return v2

    .line 237
    .restart local p2    # "data":Landroid/os/Parcel;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 240
    .end local p2    # "data":Landroid/os/Parcel;
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->getGesturePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    return v2

    .line 226
    .restart local p1    # "code":I
    .restart local p2    # "data":Landroid/os/Parcel;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 230
    .end local p1    # "code":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 231
    .end local p2    # "data":Landroid/os/Parcel;
    invoke-virtual {p0, p1, v0}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->setGesturePwd(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    return v2

    .line 219
    .restart local p1    # "code":I
    .restart local p2    # "data":Landroid/os/Parcel;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->isApprove()V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    return v2

    .line 214
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    return v2

    nop

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
