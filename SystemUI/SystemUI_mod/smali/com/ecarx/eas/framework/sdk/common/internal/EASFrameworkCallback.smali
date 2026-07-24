.class public abstract Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkCallback;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkCallback$Proxy;
    }
.end annotation


# static fields
.field static final DESCRIPTOR:Ljava/lang/String; = "com.ecarx.eas.framework.sdk.IEASFrameworkCallback"

.field static final TRANSACTION_onCall:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.ecarx.eas.framework.sdk.IEASFrameworkCallback"

    invoke-virtual {p0, p0, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkCallback;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 32
    :cond_0
    const-string v0, "com.ecarx.eas.framework.sdk.IEASFrameworkCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkCallback;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkCallback;

    return-object v0

    .line 36
    :cond_1
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkCallback$Proxy;

    .end local p0    # "obj":Landroid/os/IBinder;
    invoke-direct {v0, p0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkCallback$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 41
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

    .line 46
    const-string v0, "com.ecarx.eas.framework.sdk.IEASFrameworkCallback"

    .line 47
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 69
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkCallback;
    .end local p2    # "data":Landroid/os/Parcel;
    .end local p3    # "reply":Landroid/os/Parcel;
    .end local p4    # "flags":I
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    .end local p1    # "code":I
    return p1

    .line 51
    .restart local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkCallback;
    .restart local p1    # "code":I
    .restart local p2    # "data":Landroid/os/Parcel;
    .restart local p3    # "reply":Landroid/os/Parcel;
    .restart local p4    # "flags":I
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    return v1

    .line 56
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    sget-object v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkCallbackMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkCallbackMessage;

    .end local p1    # "code":I
    goto :goto_0

    .line 62
    :cond_2
    const/4 v0, 0x0

    .line 64
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkCallback;->onCall(Lcom/ecarx/sdk/openapi/msg/EASFrameworkCallbackMessage;)V

    .line 65
    return v1
.end method
