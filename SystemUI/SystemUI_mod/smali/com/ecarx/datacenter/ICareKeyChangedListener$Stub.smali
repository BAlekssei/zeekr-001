.class public abstract Lcom/ecarx/datacenter/ICareKeyChangedListener$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/datacenter/ICareKeyChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/datacenter/ICareKeyChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecarx/datacenter/ICareKeyChangedListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ecarx.datacenter.ICareKeyChangedListener"

.field static final TRANSACTION_onCareKeyListChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "com.ecarx.datacenter.ICareKeyChangedListener"

    invoke-virtual {p0, p0, v0}, Lcom/ecarx/datacenter/ICareKeyChangedListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ecarx/datacenter/ICareKeyChangedListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v0, 0x0

    return-object v0

    .line 36
    :cond_0
    const-string v0, "com.ecarx.datacenter.ICareKeyChangedListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ecarx/datacenter/ICareKeyChangedListener;

    if-eqz v1, :cond_1

    .line 38
    check-cast v0, Lcom/ecarx/datacenter/ICareKeyChangedListener;

    return-object v0

    .line 40
    :cond_1
    new-instance v0, Lcom/ecarx/datacenter/ICareKeyChangedListener$Stub$Proxy;

    .end local p0    # "obj":Landroid/os/IBinder;
    invoke-direct {v0, p0}, Lcom/ecarx/datacenter/ICareKeyChangedListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/ecarx/datacenter/ICareKeyChangedListener;
    .locals 1

    .line 116
    sget-object v0, Lcom/ecarx/datacenter/ICareKeyChangedListener$Stub$Proxy;->sDefaultImpl:Lcom/ecarx/datacenter/ICareKeyChangedListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/ecarx/datacenter/ICareKeyChangedListener;)Z
    .locals 1
    .param p0, "impl"    # Lcom/ecarx/datacenter/ICareKeyChangedListener;

    .line 109
    sget-object v0, Lcom/ecarx/datacenter/ICareKeyChangedListener$Stub$Proxy;->sDefaultImpl:Lcom/ecarx/datacenter/ICareKeyChangedListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 110
    nop

    .end local p0    # "impl":Lcom/ecarx/datacenter/ICareKeyChangedListener;
    sput-object p0, Lcom/ecarx/datacenter/ICareKeyChangedListener$Stub$Proxy;->sDefaultImpl:Lcom/ecarx/datacenter/ICareKeyChangedListener;

    .line 111
    const/4 p0, 0x1

    return p0

    .line 113
    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 44
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

    .line 48
    const-string v0, "com.ecarx.datacenter.ICareKeyChangedListener"

    .line 49
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 67
    nop

    .end local p0    # "this":Lcom/ecarx/datacenter/ICareKeyChangedListener$Stub;
    .end local p2    # "data":Landroid/os/Parcel;
    .end local p3    # "reply":Landroid/os/Parcel;
    .end local p4    # "flags":I
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    .end local p1    # "code":I
    return p1

    .line 53
    .restart local p0    # "this":Lcom/ecarx/datacenter/ICareKeyChangedListener$Stub;
    .restart local p1    # "code":I
    .restart local p2    # "data":Landroid/os/Parcel;
    .restart local p3    # "reply":Landroid/os/Parcel;
    .restart local p4    # "flags":I
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return v1

    .line 58
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 61
    .end local p1    # "code":I
    invoke-virtual {p0, p1}, Lcom/ecarx/datacenter/ICareKeyChangedListener$Stub;->onCareKeyListChanged(Ljava/util/List;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    return v1
.end method
