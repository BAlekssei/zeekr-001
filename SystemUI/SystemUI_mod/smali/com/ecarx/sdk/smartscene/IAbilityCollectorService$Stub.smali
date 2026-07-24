.class public abstract Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/sdk/smartscene/IAbilityCollectorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/sdk/smartscene/IAbilityCollectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ecarx.sdk.smartscene.IAbilityCollectorService"

.field static final TRANSACTION_onCallService:I = 0x3

.field static final TRANSACTION_register:I = 0x1

.field static final TRANSACTION_unregister:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "com.ecarx.sdk.smartscene.IAbilityCollectorService"

    invoke-virtual {p0, p0, v0}, Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ecarx/sdk/smartscene/IAbilityCollectorService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    const-string v0, "com.ecarx.sdk.smartscene.IAbilityCollectorService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ecarx/sdk/smartscene/IAbilityCollectorService;

    if-eqz v1, :cond_1

    .line 46
    check-cast v0, Lcom/ecarx/sdk/smartscene/IAbilityCollectorService;

    return-object v0

    .line 48
    :cond_1
    new-instance v0, Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub$Proxy;

    .end local p0    # "obj":Landroid/os/IBinder;
    invoke-direct {v0, p0}, Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/ecarx/sdk/smartscene/IAbilityCollectorService;
    .locals 1

    .line 193
    sget-object v0, Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub$Proxy;->sDefaultImpl:Lcom/ecarx/sdk/smartscene/IAbilityCollectorService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/ecarx/sdk/smartscene/IAbilityCollectorService;)Z
    .locals 1
    .param p0, "impl"    # Lcom/ecarx/sdk/smartscene/IAbilityCollectorService;

    .line 186
    sget-object v0, Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub$Proxy;->sDefaultImpl:Lcom/ecarx/sdk/smartscene/IAbilityCollectorService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 187
    nop

    .end local p0    # "impl":Lcom/ecarx/sdk/smartscene/IAbilityCollectorService;
    sput-object p0, Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub$Proxy;->sDefaultImpl:Lcom/ecarx/sdk/smartscene/IAbilityCollectorService;

    .line 188
    const/4 p0, 0x1

    return p0

    .line 190
    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 52
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

    .line 56
    const-string v0, "com.ecarx.sdk.smartscene.IAbilityCollectorService"

    .line 57
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 98
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub;
    .end local p2    # "data":Landroid/os/Parcel;
    .end local p3    # "reply":Landroid/os/Parcel;
    .end local p4    # "flags":I
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    .end local p1    # "code":I
    return p1

    .line 84
    .restart local p0    # "this":Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub;
    .restart local p2    # "data":Landroid/os/Parcel;
    .restart local p3    # "reply":Landroid/os/Parcel;
    .restart local p4    # "flags":I
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    sget-object p1, Lcom/ecarx/sdk/smartscene/ServiceModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ecarx/sdk/smartscene/ServiceModel;

    goto :goto_0

    .line 90
    :cond_0
    const/4 p1, 0x0

    .line 92
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub;->onCallService(Lcom/ecarx/sdk/smartscene/ServiceModel;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    return v2

    .line 75
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/ecarx/sdk/smartscene/LaunchPad$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ecarx/sdk/smartscene/LaunchPad;

    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub;->unregister(Lcom/ecarx/sdk/smartscene/LaunchPad;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    return v2

    .line 66
    .restart local p1    # "code":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ecarx/sdk/smartscene/LaunchPad$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ecarx/sdk/smartscene/LaunchPad;

    move-result-object p1

    .line 69
    .end local p1    # "code":I
    invoke-virtual {p0, p1}, Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub;->register(Lcom/ecarx/sdk/smartscene/LaunchPad;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    return v2

    .line 61
    .restart local p1    # "code":I
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
