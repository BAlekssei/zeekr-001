.class Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/VivoImpl;
.super Ljava/lang/Object;
.source "VivoImpl.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.VivoImpl"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/VivoImpl;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public getRomOAID()Ljava/lang/String;
    .locals 9

    .line 50
    const-string v0, "content://com.vivo.vms.IdProvider/IdentifierId/OAID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 51
    .local v0, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 52
    .local v7, "oaid":Ljava/lang/String;
    const/4 v1, 0x0

    move-object v8, v1

    .line 54
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/VivoImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v8, v1

    .line 56
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    const-string v1, "value"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 58
    .local v1, "index":I
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    .line 59
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 60
    :cond_0
    const-string v2, "SA.VivoImpl"

    const-string v3, "OAID query failed"

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .end local v1    # "index":I
    :cond_1
    if-eqz v8, :cond_2

    .line 67
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 66
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "th":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "SA.VivoImpl"

    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .end local v1    # "th":Ljava/lang/Throwable;
    if-eqz v8, :cond_2

    goto :goto_0

    .line 70
    :cond_2
    :goto_1
    return-object v7

    .line 66
    :goto_2
    if-eqz v8, :cond_3

    .line 67
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 69
    :cond_3
    throw v1
.end method

.method public isSupported()Z
    .locals 2

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    .line 43
    const/4 v0, 0x0

    return v0

    .line 45
    :cond_0
    const-string v0, "persist.sys.identifierid.supported"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->sysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
