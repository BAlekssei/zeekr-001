.class Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1$1;
.super Ljava/lang/Object;
.source "SAProviderHelper.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$QueryEventsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1;

.field final synthetic val$cv:Landroid/content/ContentValues;

.field final synthetic val$database:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1;

    .line 98
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1$1;->this$1:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1;

    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1$1;->val$cv:Landroid/content/ContentValues;

    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1$1;->val$database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public insert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "keyCreated"    # Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1$1;->val$cv:Landroid/content/ContentValues;

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1$1;->val$cv:Landroid/content/ContentValues;

    const-string v1, "created_at"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1$1;->val$database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "events"

    const-string v2, "_id"

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1$1;->val$cv:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 104
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1$1;->val$cv:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 105
    return-void
.end method
