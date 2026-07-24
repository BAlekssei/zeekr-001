.class public Lcom/sensorsdata/analytics/android/sdk/util/SASpUtils;
.super Ljava/lang/Object;
.source "SASpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/util/SASpUtils$ISharedPreferencesProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.SASpUtils"

.field private static mSharedPreferencesProvider:Lcom/sensorsdata/analytics/android/sdk/util/SASpUtils$ISharedPreferencesProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 45
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/SASpUtils;->mSharedPreferencesProvider:Lcom/sensorsdata/analytics/android/sdk/util/SASpUtils$ISharedPreferencesProvider;

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/SASpUtils;->mSharedPreferencesProvider:Lcom/sensorsdata/analytics/android/sdk/util/SASpUtils$ISharedPreferencesProvider;

    invoke-interface {v0, p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/util/SASpUtils$ISharedPreferencesProvider;->createSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47
    .local v0, "userDefault":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 48
    const-string v1, "SA.SASpUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create SharedPreferences by user default, file name is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-object v0

    .line 52
    .end local v0    # "userDefault":Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static setSharedPreferencesProvider(Lcom/sensorsdata/analytics/android/sdk/util/SASpUtils$ISharedPreferencesProvider;)V
    .locals 0
    .param p0, "sharedPreferencesProvider"    # Lcom/sensorsdata/analytics/android/sdk/util/SASpUtils$ISharedPreferencesProvider;

    .line 41
    sput-object p0, Lcom/sensorsdata/analytics/android/sdk/util/SASpUtils;->mSharedPreferencesProvider:Lcom/sensorsdata/analytics/android/sdk/util/SASpUtils$ISharedPreferencesProvider;

    .line 42
    return-void
.end method
