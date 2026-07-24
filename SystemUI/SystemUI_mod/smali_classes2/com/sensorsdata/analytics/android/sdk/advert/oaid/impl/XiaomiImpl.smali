.class public Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/XiaomiImpl;
.super Ljava/lang/Object;
.source "XiaomiImpl.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.OAIDFactory"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIdProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mIdProviderImpl:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/XiaomiImpl;->mContext:Landroid/content/Context;

    .line 43
    :try_start_0
    const-string v0, "com.android.id.impl.IdProviderImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/XiaomiImpl;->mIdProviderClass:Ljava/lang/Class;

    .line 44
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/XiaomiImpl;->mIdProviderClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/XiaomiImpl;->mIdProviderImpl:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "th":Ljava/lang/Throwable;
    const-string v1, "SA.OAIDFactory"

    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .end local v0    # "th":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private getOAID()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/XiaomiImpl;->mIdProviderClass:Ljava/lang/Class;

    const-string v1, "getOAID"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 71
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/XiaomiImpl;->mIdProviderImpl:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/XiaomiImpl;->mContext:Landroid/content/Context;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public getRomOAID()Ljava/lang/String;
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/XiaomiImpl;->mIdProviderClass:Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/XiaomiImpl;->mIdProviderImpl:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    move-object v0, v1

    .line 62
    .local v0, "oaid":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/XiaomiImpl;->getOAID()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 65
    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "th":Ljava/lang/Throwable;
    const-string v2, "SA.OAIDFactory"

    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .end local v1    # "th":Ljava/lang/Throwable;
    :goto_0
    return-object v0

    .line 58
    .end local v0    # "oaid":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v1
.end method

.method public isSupported()Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/XiaomiImpl;->mIdProviderImpl:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
