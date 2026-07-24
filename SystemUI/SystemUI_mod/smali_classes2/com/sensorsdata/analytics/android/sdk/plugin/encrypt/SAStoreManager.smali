.class public Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;
.super Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;
.source "SAStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager$SingletonHolder;
    }
.end annotation


# static fields
.field public static final SECRET_KEY:Ljava/lang/String; = "sa_sp_encrypt_secret_key"

.field private static final SP_SENSORS_DATA:Ljava/lang/String; = "sensorsdata"

.field private static final SP_SENSORS_DATA_API:Ljava/lang/String; = "com.sensorsdata.analytics.android.sdk.SensorsDataAPI"

.field private static final TAG:Ljava/lang/String; = "SA.SAStoreManager"


# instance fields
.field private final mAPIStoreKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->mAPIStoreKeys:Ljava/util/ArrayList;

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager$1;

    .line 30
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    .line 30
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->mAPIStoreKeys:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    .line 30
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->initAPIKeys()V

    return-void
.end method

.method public static getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;
    .locals 1

    .line 43
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager$SingletonHolder;->access$000()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v0

    return-object v0
.end method

.method private initAPIKeys()V
    .locals 6

    .line 110
    :try_start_0
    const-class v0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams$PersistentName;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 111
    .local v0, "fields":[Ljava/lang/reflect/Field;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 112
    .local v3, "field":Ljava/lang/reflect/Field;
    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->mAPIStoreKeys:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v3    # "field":Ljava/lang/reflect/Field;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    .end local v0    # "fields":[Ljava/lang/reflect/Field;
    :cond_0
    goto :goto_1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private registerAPIPlugin(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager$1;

    const-string v1, "com.sensorsdata.analytics.android.sdk.SensorsDataAPI"

    invoke-direct {v0, p0, p1, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->registerPlugin(Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;)V

    .line 90
    return-void
.end method

.method private registerSensorsDataPlugin(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager$2;

    const-string v1, "sensorsdata"

    invoke-direct {v0, p0, p1, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager$2;-><init>(Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->registerPlugin(Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;)V

    .line 103
    return-void
.end method


# virtual methods
.method public registerPlugins(Ljava/util/List;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 52
    .local p1, "configPlugins":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;>;"
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->mDefaultState:Z

    .line 58
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->initSecretKey(Landroid/content/Context;)V

    .line 59
    const-string v0, "com.sensorsdata.analytics.android.sdk.SensorsDataAPI"

    invoke-virtual {p0, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->isRegisterPlugin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->registerAPIPlugin(Landroid/content/Context;)V

    .line 62
    :cond_1
    const-string v0, "sensorsdata"

    invoke-virtual {p0, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->isRegisterPlugin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->registerSensorsDataPlugin(Landroid/content/Context;)V

    .line 66
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    .line 67
    .local v1, "plugin":Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;
    invoke-virtual {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->registerPlugin(Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;)V

    .line 68
    .end local v1    # "plugin":Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;
    goto :goto_0

    .line 53
    :cond_3
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->mDefaultState:Z

    .line 54
    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->registerAPIPlugin(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->registerSensorsDataPlugin(Landroid/content/Context;)V

    .line 70
    :cond_4
    return-void
.end method
