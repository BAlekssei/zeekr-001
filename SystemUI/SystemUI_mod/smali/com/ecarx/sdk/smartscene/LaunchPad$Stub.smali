.class public abstract Lcom/ecarx/sdk/smartscene/LaunchPad$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/sdk/smartscene/LaunchPad;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/sdk/smartscene/LaunchPad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecarx/sdk/smartscene/LaunchPad$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ecarx.sdk.smartscene.LaunchPad"

.field static final TRANSACTION_callbackServiceResult:I = 0x1

.field static final TRANSACTION_serviceExecuteError:I = 0x3

.field static final TRANSACTION_updateAbilityConfig:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "com.ecarx.sdk.smartscene.LaunchPad"

    invoke-virtual {p0, p0, v0}, Lcom/ecarx/sdk/smartscene/LaunchPad$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ecarx/sdk/smartscene/LaunchPad;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 39
    if-nez p0, :cond_0

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_0
    const-string v0, "com.ecarx.sdk.smartscene.LaunchPad"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ecarx/sdk/smartscene/LaunchPad;

    if-eqz v1, :cond_1

    .line 44
    check-cast v0, Lcom/ecarx/sdk/smartscene/LaunchPad;

    return-object v0

    .line 46
    :cond_1
    new-instance v0, Lcom/ecarx/sdk/smartscene/LaunchPad$Stub$Proxy;

    .end local p0    # "obj":Landroid/os/IBinder;
    invoke-direct {v0, p0}, Lcom/ecarx/sdk/smartscene/LaunchPad$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/ecarx/sdk/smartscene/LaunchPad;
    .locals 1

    .line 205
    sget-object v0, Lcom/ecarx/sdk/smartscene/LaunchPad$Stub$Proxy;->sDefaultImpl:Lcom/ecarx/sdk/smartscene/LaunchPad;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/ecarx/sdk/smartscene/LaunchPad;)Z
    .locals 1
    .param p0, "impl"    # Lcom/ecarx/sdk/smartscene/LaunchPad;

    .line 198
    sget-object v0, Lcom/ecarx/sdk/smartscene/LaunchPad$Stub$Proxy;->sDefaultImpl:Lcom/ecarx/sdk/smartscene/LaunchPad;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 199
    nop

    .end local p0    # "impl":Lcom/ecarx/sdk/smartscene/LaunchPad;
    sput-object p0, Lcom/ecarx/sdk/smartscene/LaunchPad$Stub$Proxy;->sDefaultImpl:Lcom/ecarx/sdk/smartscene/LaunchPad;

    .line 200
    const/4 p0, 0x1

    return p0

    .line 202
    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 50
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

    .line 54
    const-string v0, "com.ecarx.sdk.smartscene.LaunchPad"

    .line 55
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 103
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/smartscene/LaunchPad$Stub;
    .end local p3    # "reply":Landroid/os/Parcel;
    .end local p4    # "flags":I
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    .end local p1    # "code":I
    .end local p2    # "data":Landroid/os/Parcel;
    return p1

    .line 87
    .restart local p0    # "this":Lcom/ecarx/sdk/smartscene/LaunchPad$Stub;
    .restart local p2    # "data":Landroid/os/Parcel;
    .restart local p3    # "reply":Landroid/os/Parcel;
    .restart local p4    # "flags":I
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/ecarx/sdk/smartscene/ServiceModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ecarx/sdk/smartscene/ServiceModel;

    .end local p2    # "data":Landroid/os/Parcel;
    goto :goto_0

    .line 95
    :cond_0
    nop

    .line 97
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/ecarx/sdk/smartscene/LaunchPad$Stub;->serviceExecuteError(ILcom/ecarx/sdk/smartscene/ServiceModel;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    return v2

    .line 78
    .restart local p2    # "data":Landroid/os/Parcel;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/ecarx/sdk/smartscene/LaunchPad$Stub;->updateAbilityConfig(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    return v2

    .line 64
    .restart local p1    # "code":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    sget-object v0, Lcom/ecarx/sdk/smartscene/ServiceModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ecarx/sdk/smartscene/ServiceModel;

    .end local p1    # "code":I
    goto :goto_1

    .line 70
    :cond_1
    nop

    .line 72
    :goto_1
    invoke-virtual {p0, v1}, Lcom/ecarx/sdk/smartscene/LaunchPad$Stub;->callbackServiceResult(Lcom/ecarx/sdk/smartscene/ServiceModel;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    return v2

    .line 59
    .restart local p1    # "code":I
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
