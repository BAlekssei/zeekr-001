.class public Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;
.super Ljava/lang/Object;
.source "DbParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams$PersistentName;
    }
.end annotation


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "sensorsdata"

.field public static final DATABASE_VERSION:I = 0x5

.field static final DB_DELETE_ALL:Ljava/lang/String; = "DB_DELETE_ALL"

.field public static final DB_OUT_OF_MEMORY_ERROR:I = -0x2

.field static final DB_UPDATE_ERROR:I = -0x1

.field public static final GZIP_DATA_ENCRYPT:Ljava/lang/String; = "9"

.field public static final GZIP_DATA_EVENT:Ljava/lang/String; = "1"

.field public static final KEY_CHANNEL_EVENT_NAME:Ljava/lang/String; = "event_name"

.field public static final KEY_CHANNEL_RESULT:Ljava/lang/String; = "result"

.field public static final KEY_CREATED_AT:Ljava/lang/String; = "created_at"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final PUSH_ID_KEY:Ljava/lang/String; = "push_key"

.field public static final PUSH_ID_VALUE:Ljava/lang/String; = "push_value"

.field public static final REMOVE_SP_KEY:Ljava/lang/String; = "remove_key"

.field public static final TABLE_ACTIVITY_START_COUNT:Ljava/lang/String; = "activity_started_count"

.field public static final TABLE_APP_START_TIME:Ljava/lang/String; = "app_start_time"

.field public static final TABLE_CHANNEL_PERSISTENT:Ljava/lang/String; = "t_channel"

.field public static final TABLE_DATA_COLLECT:Ljava/lang/String; = "data_collect"

.field public static final TABLE_DATA_DISABLE_SDK:Ljava/lang/String; = "disable_SDK"

.field public static final TABLE_DATA_ENABLE_SDK:Ljava/lang/String; = "enable_SDK"

.field public static final TABLE_EVENTS:Ljava/lang/String; = "events"

.field public static final TABLE_FIRST_PROCESS_START:Ljava/lang/String; = "first_process_start"

.field public static final TABLE_SESSION_INTERVAL_TIME:Ljava/lang/String; = "session_interval_time"

.field static final VALUE:Ljava/lang/String; = "value"

.field private static instance:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;


# instance fields
.field private final mActivityStartCountUri:Landroid/net/Uri;

.field private final mAppEndDataUri:Landroid/net/Uri;

.field private final mAppStartTimeUri:Landroid/net/Uri;

.field private final mChannelPersistentUri:Landroid/net/Uri;

.field private final mDataCollectUri:Landroid/net/Uri;

.field private final mDisableSDKUri:Landroid/net/Uri;

.field private final mEnableSDKUri:Landroid/net/Uri;

.field private final mLoginIdKeyUri:Landroid/net/Uri;

.field private final mLoginIdUri:Landroid/net/Uri;

.field private final mPushIdUri:Landroid/net/Uri;

.field private final mRemoteConfigUri:Landroid/net/Uri;

.field private final mSessionTimeUri:Landroid/net/Uri;

.field private final mSubProcessUri:Landroid/net/Uri;

.field private final mUri:Landroid/net/Uri;

.field private final mUserIdentities:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".SensorsDataContentProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "events"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mUri:Landroid/net/Uri;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".SensorsDataContentProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "activity_started_count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mActivityStartCountUri:Landroid/net/Uri;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".SensorsDataContentProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "app_start_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mAppStartTimeUri:Landroid/net/Uri;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".SensorsDataContentProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "app_end_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mAppEndDataUri:Landroid/net/Uri;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".SensorsDataContentProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "session_interval_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mSessionTimeUri:Landroid/net/Uri;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".SensorsDataContentProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "events_login_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mLoginIdUri:Landroid/net/Uri;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".SensorsDataContentProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "login_id_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mLoginIdKeyUri:Landroid/net/Uri;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".SensorsDataContentProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "t_channel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mChannelPersistentUri:Landroid/net/Uri;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".SensorsDataContentProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sub_process_flush_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mSubProcessUri:Landroid/net/Uri;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".SensorsDataContentProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "data_collect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mDataCollectUri:Landroid/net/Uri;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".SensorsDataContentProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "enable_SDK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mEnableSDKUri:Landroid/net/Uri;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".SensorsDataContentProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "disable_SDK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mDisableSDKUri:Landroid/net/Uri;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".SensorsDataContentProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sensorsdata_sdk_configuration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mRemoteConfigUri:Landroid/net/Uri;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".SensorsDataContentProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "user_ids"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mUserIdentities:Landroid/net/Uri;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".SensorsDataContentProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "push_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mPushIdUri:Landroid/net/Uri;

    .line 90
    return-void
.end method

.method public static getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;
    .locals 2

    .line 100
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->instance:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->instance:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    return-object v0

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The static method getInstance(String packageName) should be called before calling getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->instance:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->instance:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    .line 96
    :cond_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->instance:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    return-object v0
.end method


# virtual methods
.method public getActivityStartCountUri()Landroid/net/Uri;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mActivityStartCountUri:Landroid/net/Uri;

    return-object v0
.end method

.method getAppEndDataUri()Landroid/net/Uri;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mAppEndDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method getAppStartTimeUri()Landroid/net/Uri;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mAppStartTimeUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getChannelPersistentUri()Landroid/net/Uri;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mChannelPersistentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDataCollectUri()Landroid/net/Uri;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mDataCollectUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDisableSDKUri()Landroid/net/Uri;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mDisableSDKUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getEnableSDKUri()Landroid/net/Uri;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mEnableSDKUri:Landroid/net/Uri;

    return-object v0
.end method

.method getEventUri()Landroid/net/Uri;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getLoginIdKeyUri()Landroid/net/Uri;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mLoginIdKeyUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getLoginIdUri()Landroid/net/Uri;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mLoginIdUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getPushIdUri()Landroid/net/Uri;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mPushIdUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getRemoteConfigUri()Landroid/net/Uri;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mRemoteConfigUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSessionTimeUri()Landroid/net/Uri;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mSessionTimeUri:Landroid/net/Uri;

    return-object v0
.end method

.method getSubProcessUri()Landroid/net/Uri;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mSubProcessUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUserIdentities()Landroid/net/Uri;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->mUserIdentities:Landroid/net/Uri;

    return-object v0
.end method
