.class Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1;
.super Ljava/lang/Object;
.source "SAProviderHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->migratingDB(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    .line 88
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 93
    .local v0, "oldDatabase":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/data/OldBDatabaseHelper;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1;->val$packageName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/data/OldBDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    .local v1, "oldBDatabaseHelper":Lcom/sensorsdata/analytics/android/sdk/data/OldBDatabaseHelper;
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->access$000(Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 96
    .local v2, "database":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v2, :cond_0

    .line 97
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 98
    .local v3, "cv":Landroid/content/ContentValues;
    new-instance v4, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1$1;

    invoke-direct {v4, p0, v3, v2}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1, v2, v4}, Lcom/sensorsdata/analytics/android/sdk/data/OldBDatabaseHelper;->getAllEvents(Landroid/database/sqlite/SQLiteDatabase;Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$QueryEventsListener;)V

    .line 109
    .end local v1    # "oldBDatabaseHelper":Lcom/sensorsdata/analytics/android/sdk/data/OldBDatabaseHelper;
    .end local v2    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "cv":Landroid/content/ContentValues;
    :cond_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->access$100(Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v0    # "oldDatabase":Ljava/io/File;
    :cond_1
    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
