.class Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/SamsungImpl$SamsungInterface;
.super Ljava/lang/Object;
.source "SamsungImpl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/SamsungImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SamsungInterface"
.end annotation


# instance fields
.field private final mIBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "iBinder"    # Landroid/os/IBinder;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/SamsungImpl$SamsungInterface;->mIBinder:Landroid/os/IBinder;

    .line 76
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/SamsungImpl$SamsungInterface;->mIBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getOAID()Ljava/lang/String;
    .locals 6

    .line 85
    const/4 v0, 0x0

    .line 87
    .local v0, "str":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 88
    .local v1, "obtain":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 89
    .local v2, "obtain2":Landroid/os/Parcel;
    const-string v3, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/SamsungImpl$SamsungInterface;->mIBinder:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 91
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 92
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 93
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 94
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_0

    .line 95
    .end local v1    # "obtain":Landroid/os/Parcel;
    .end local v2    # "obtain2":Landroid/os/Parcel;
    :catch_0
    move-exception v1

    .line 96
    .local v1, "th":Ljava/lang/Throwable;
    const-string v2, "SA.SamsungImpl"

    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .end local v1    # "th":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method
