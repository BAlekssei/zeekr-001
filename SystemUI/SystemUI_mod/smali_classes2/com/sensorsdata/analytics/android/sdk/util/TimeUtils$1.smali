.class final Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils$1;
.super Ljava/lang/ThreadLocal;
.source "TimeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->getDateFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/text/SimpleDateFormat;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$locale:Ljava/util/Locale;

.field final synthetic val$patten:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils$1;->val$locale:Ljava/util/Locale;

    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils$1;->val$patten:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 242
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils$1;->initialValue()Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/text/SimpleDateFormat;
    .locals 4

    .line 245
    const/4 v0, 0x0

    .line 247
    .local v0, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils$1;->val$locale:Ljava/util/Locale;

    if-nez v1, :cond_0

    .line 248
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils$1;->val$patten:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v0, v1

    goto :goto_0

    .line 250
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils$1;->val$patten:Ljava/lang/String;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils$1;->val$locale:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 254
    :goto_0
    goto :goto_1

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 255
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method
