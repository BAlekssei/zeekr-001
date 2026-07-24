.class Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl$OppoInterface;
.super Ljava/lang/Object;
.source "OppoImpl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OppoInterface"
.end annotation


# instance fields
.field private final mIBinder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "iBinder"    # Landroid/os/IBinder;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl$OppoInterface;->mIBinder:Landroid/os/IBinder;

    .line 111
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl$OppoInterface;->mIBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getSerID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "sign"    # Ljava/lang/String;
    .param p3, "str"    # Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    .line 122
    .local v0, "str4":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 123
    .local v1, "obtain":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 124
    .local v2, "obtain2":Landroid/os/Parcel;
    const-string v3, "com.heytap.openid.IOpenID"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl$OppoInterface;->mIBinder:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 129
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 130
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 132
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_0

    .line 133
    .end local v1    # "obtain":Landroid/os/Parcel;
    .end local v2    # "obtain2":Landroid/os/Parcel;
    :catch_0
    move-exception v1

    .line 134
    .local v1, "th":Ljava/lang/Throwable;
    const-string v2, "SA.OppoImpl"

    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .end local v1    # "th":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method
