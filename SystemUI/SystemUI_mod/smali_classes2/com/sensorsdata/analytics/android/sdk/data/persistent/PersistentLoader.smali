.class public Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;
.super Ljava/lang/Object;
.source "PersistentLoader.java"


# static fields
.field private static context:Landroid/content/Context;

.field private static volatile instance:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->context:Landroid/content/Context;

    .line 32
    return-void
.end method

.method public static initLoader(Landroid/content/Context;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 35
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->instance:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->instance:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    .line 38
    :cond_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->instance:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    return-object v0
.end method

.method public static loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;
    .locals 3
    .param p0, "persistentKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity<",
            "*>;"
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->instance:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    if-eqz v0, :cond_2

    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 46
    return-object v1

    .line 48
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "app_end_data"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "first_track_installation"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x3

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "sensorsdata_sdk_configuration"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_3
    const-string v2, "events_distinct_id"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v2, "first_day"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_5
    const-string v2, "visual_properties"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_6
    const-string v2, "user_ids"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_7
    const-string v2, "login_id_key"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0xb

    goto :goto_0

    :sswitch_8
    const-string v2, "first_start"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_9
    const-string v2, "first_track_installation_with_callback"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_a
    const-string v2, "super_properties"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_b
    const-string v2, "events_login_id"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x6

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 74
    return-object v1

    .line 72
    :pswitch_0
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/LoginIdKeyPersistent;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/LoginIdKeyPersistent;-><init>()V

    return-object v0

    .line 70
    :pswitch_1
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/UserIdentityPersistent;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/UserIdentityPersistent;-><init>()V

    return-object v0

    .line 68
    :pswitch_2
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentVisualConfig;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentVisualConfig;-><init>()V

    return-object v0

    .line 66
    :pswitch_3
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentSuperProperties;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentSuperProperties;-><init>()V

    return-object v0

    .line 64
    :pswitch_4
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentRemoteSDKConfig;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentRemoteSDKConfig;-><init>()V

    return-object v0

    .line 62
    :pswitch_5
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoginId;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoginId;-><init>()V

    return-object v0

    .line 60
    :pswitch_6
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstStart;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstStart;-><init>()V

    return-object v0

    .line 58
    :pswitch_7
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallationWithCallback;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallationWithCallback;-><init>()V

    return-object v0

    .line 56
    :pswitch_8
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallation;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallation;-><init>()V

    return-object v0

    .line 54
    :pswitch_9
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstDay;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstDay;-><init>()V

    return-object v0

    .line 52
    :pswitch_a
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 50
    :pswitch_b
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentAppEndData;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentAppEndData;-><init>()V

    return-object v0

    .line 43
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "you should call \'PersistentLoader.initLoader(Context)\' first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5598a5e9 -> :sswitch_b
        -0x38b07789 -> :sswitch_a
        -0x32e94684 -> :sswitch_9
        -0x2926c9ed -> :sswitch_8
        -0x1b3a952f -> :sswitch_7
        -0xfdd2bbc -> :sswitch_6
        -0xcaeac6e -> :sswitch_5
        0x7f2ad8d -> :sswitch_4
        0x2afe7318 -> :sswitch_3
        0x38750b95 -> :sswitch_2
        0x48681e9d -> :sswitch_1
        0x5ab6fcec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
