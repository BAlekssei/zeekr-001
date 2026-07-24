.class Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/NubiaImpl;
.super Ljava/lang/Object;
.source "NubiaImpl.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.NubiaImpl"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/NubiaImpl;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public getRomOAID()Ljava/lang/String;
    .locals 7

    .line 47
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/NubiaImpl;->isSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 48
    const-string v0, "SA.NubiaImpl"

    const-string v2, "Only supports Android 10.0 and above for Nubia"

    invoke-static {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-object v1

    .line 51
    :cond_0
    move-object v0, v1

    .line 53
    .local v0, "oaid":Ljava/lang/String;
    :try_start_0
    const-string v2, "content://cn.nubia.identity/identity"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 54
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/NubiaImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3

    .line 55
    .local v3, "client":Landroid/content/ContentProviderClient;
    if-nez v3, :cond_1

    .line 56
    return-object v1

    .line 58
    :cond_1
    const-string v4, "getOAID"

    invoke-virtual {v3, v4, v1, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 59
    .local v4, "bundle":Landroid/os/Bundle;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_2

    .line 60
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 64
    :goto_0
    if-nez v4, :cond_3

    .line 65
    const-string v5, "SA.NubiaImpl"

    const-string v6, "OAID query failed: bundle is null"

    invoke-static {v5, v6}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-object v1

    .line 68
    :cond_3
    const-string v1, "code"

    const/4 v5, -0x1

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_4

    .line 69
    const-string v1, "id"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 71
    :cond_4
    const-string v1, "SA.NubiaImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OAID query success: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "client":Landroid/content/ContentProviderClient;
    .end local v4    # "bundle":Landroid/os/Bundle;
    goto :goto_1

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "th":Ljava/lang/Throwable;
    const-string v2, "SA.NubiaImpl"

    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .end local v1    # "th":Ljava/lang/Throwable;
    :goto_1
    return-object v0
.end method

.method public isSupported()Z
    .locals 2

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
