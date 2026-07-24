.class public abstract Lecarx/decision/IContextObserver$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lecarx/decision/IContextObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecarx/decision/IContextObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lecarx/decision/IContextObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "ecarx.decision.IContextObserver"

.field static final TRANSACTION_getContextIdList:I = 0x2

.field static final TRANSACTION_onContextChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "ecarx.decision.IContextObserver"

    invoke-virtual {p0, p0, v0}, Lecarx/decision/IContextObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lecarx/decision/IContextObserver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 37
    if-nez p0, :cond_0

    .line 38
    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_0
    const-string v0, "ecarx.decision.IContextObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    instance-of v1, v0, Lecarx/decision/IContextObserver;

    if-eqz v1, :cond_1

    .line 42
    check-cast v0, Lecarx/decision/IContextObserver;

    return-object v0

    .line 44
    :cond_1
    new-instance v0, Lecarx/decision/IContextObserver$Stub$Proxy;

    .end local p0    # "obj":Landroid/os/IBinder;
    invoke-direct {v0, p0}, Lecarx/decision/IContextObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lecarx/decision/IContextObserver;
    .locals 1

    .line 160
    sget-object v0, Lecarx/decision/IContextObserver$Stub$Proxy;->sDefaultImpl:Lecarx/decision/IContextObserver;

    return-object v0
.end method

.method public static setDefaultImpl(Lecarx/decision/IContextObserver;)Z
    .locals 1
    .param p0, "impl"    # Lecarx/decision/IContextObserver;

    .line 153
    sget-object v0, Lecarx/decision/IContextObserver$Stub$Proxy;->sDefaultImpl:Lecarx/decision/IContextObserver;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 154
    nop

    .end local p0    # "impl":Lecarx/decision/IContextObserver;
    sput-object p0, Lecarx/decision/IContextObserver$Stub$Proxy;->sDefaultImpl:Lecarx/decision/IContextObserver;

    .line 155
    const/4 p0, 0x1

    return p0

    .line 157
    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 48
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

    .line 52
    const-string v0, "ecarx.decision.IContextObserver"

    .line 53
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 84
    nop

    .end local p0    # "this":Lecarx/decision/IContextObserver$Stub;
    .end local p2    # "data":Landroid/os/Parcel;
    .end local p3    # "reply":Landroid/os/Parcel;
    .end local p4    # "flags":I
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    .end local p1    # "code":I
    return p1

    .line 76
    .restart local p0    # "this":Lecarx/decision/IContextObserver$Stub;
    .restart local p2    # "data":Landroid/os/Parcel;
    .restart local p3    # "reply":Landroid/os/Parcel;
    .restart local p4    # "flags":I
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lecarx/decision/IContextObserver$Stub;->getContextIdList()Ljava/util/List;

    move-result-object p1

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 80
    return v2

    .line 62
    .restart local p1    # "code":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lecarx/decision/BasicContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lecarx/decision/BasicContext;

    .end local p1    # "code":I
    goto :goto_0

    .line 68
    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    invoke-virtual {p0, v0}, Lecarx/decision/IContextObserver$Stub;->onContextChanged(Lecarx/decision/BasicContext;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    return v2

    .line 57
    .restart local p1    # "code":I
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
