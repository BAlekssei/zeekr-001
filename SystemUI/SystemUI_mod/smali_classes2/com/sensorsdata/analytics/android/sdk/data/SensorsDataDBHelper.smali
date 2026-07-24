.class Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SensorsDataDBHelper.java"


# static fields
.field private static final CHANNEL_EVENT_PERSISTENT_TABLE:Ljava/lang/String;

.field private static final CREATE_EVENTS_TABLE:Ljava/lang/String;

.field private static final EVENTS_TIME_INDEX:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SA.SQLiteOpenHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 28
    const-string v0, "CREATE TABLE %s (_id INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s INTEGER NOT NULL);"

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "events"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "data"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "created_at"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 29
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;->CREATE_EVENTS_TABLE:Ljava/lang/String;

    .line 30
    const-string v0, "CREATE INDEX IF NOT EXISTS time_idx ON %s (%s);"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "events"

    aput-object v3, v2, v4

    const-string v3, "created_at"

    aput-object v3, v2, v5

    .line 31
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;->EVENTS_TIME_INDEX:Ljava/lang/String;

    .line 32
    const-string v0, "CREATE TABLE %s (%s TEXT PRIMARY KEY, %s INTEGER)"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "t_channel"

    aput-object v2, v1, v4

    const-string v2, "event_name"

    aput-object v2, v1, v5

    const-string v2, "result"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;->CHANNEL_EVENT_PERSISTENT_TABLE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const-string v0, "sensorsdata"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    const-string v0, "SA.SQLiteOpenHelper"

    const-string v1, "Creating a new Sensors Analytics DB"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;->CREATE_EVENTS_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;->EVENTS_TIME_INDEX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;->CHANNEL_EVENT_PERSISTENT_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 60
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 50
    const-string v0, "SA.SQLiteOpenHelper"

    const-string v1, "Upgrading app, replacing Sensors Analytics DB"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "DROP TABLE IF EXISTS %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "events"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;->CREATE_EVENTS_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;->EVENTS_TIME_INDEX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;->CHANNEL_EVENT_PERSISTENT_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    return-void
.end method
