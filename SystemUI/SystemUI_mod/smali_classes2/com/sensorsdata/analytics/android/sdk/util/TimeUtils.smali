.class public Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final YYYY_MM_DD:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final YYYY_MM_DD_HH_MM_SS_SSS:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss.SSS"

.field private static formatMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->formatMaps:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static duration(JJ)D
    .locals 10
    .param p0, "startTime"    # J
    .param p2, "endTime"    # J

    .line 226
    sub-long v0, p2, p0

    .line 228
    .local v0, "duration":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x0

    if-ltz v2, :cond_1

    const-wide/32 v5, 0x5265c00

    cmp-long v2, v0, v5

    if-lez v2, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    long-to-float v2, v0

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v2, v5

    .line 232
    .local v2, "durationFloat":F
    :try_start_0
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v6, "%.3f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v5

    .line 233
    .end local v2    # "durationFloat":F
    :catch_0
    move-exception v2

    .line 234
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 235
    return-wide v3

    .line 229
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-wide v3
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .line 85
    const-string v0, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "patten"    # Ljava/lang/String;

    .line 97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->formatDate(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDate(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "patten"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-string p1, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 125
    :cond_0
    const-string v0, ""

    .line 126
    .local v0, "formatString":Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->getDateFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 127
    .local v1, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    if-nez v1, :cond_1

    .line 128
    return-object v0

    .line 131
    :cond_1
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 134
    goto :goto_0

    .line 132
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 135
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-object v0
.end method

.method public static formatDate(Ljava/util/Date;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 110
    const-string v0, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {p0, v0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->formatDate(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDate(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .line 184
    if-nez p0, :cond_0

    .line 185
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0

    .line 188
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 189
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 191
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 192
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/Date;

    if-eqz v3, :cond_1

    .line 193
    move-object v3, v2

    check-cast v3, Ljava/util/Date;

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->formatDate(Ljava/util/Date;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 198
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    goto :goto_1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 199
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-object p0
.end method

.method public static formatTime(JLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "timeMillis"    # J
    .param p2, "patten"    # Ljava/lang/String;

    .line 59
    const-string v0, ""

    .line 60
    .local v0, "formatString":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const-string p2, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 63
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->getDateFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 64
    .local v1, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    if-nez v1, :cond_1

    .line 65
    return-object v0

    .line 68
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 71
    goto :goto_0

    .line 69
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 72
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-object v0
.end method

.method private static declared-synchronized getDateFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;
    .locals 3
    .param p0, "patten"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    const-class v0, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;

    monitor-enter v0

    .line 240
    :try_start_0
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->formatMaps:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadLocal;

    .line 241
    .local v1, "dateFormatThreadLocal":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/text/SimpleDateFormat;>;"
    if-nez v1, :cond_0

    .line 242
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils$1;

    invoke-direct {v2, p1, p0}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils$1;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    move-object v1, v2

    .line 258
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 259
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->formatMaps:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v2

    .line 239
    .end local v1    # "dateFormatThreadLocal":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/text/SimpleDateFormat;>;"
    .end local p0    # "patten":Ljava/lang/String;
    .end local p1    # "locale":Ljava/util/Locale;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getZoneOffset()Ljava/lang/Integer;
    .locals 4

    .line 209
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 210
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 211
    .local v1, "zoneOffset":I
    neg-int v2, v1

    const v3, 0xea60

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 212
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "zoneOffset":I
    :catch_0
    move-exception v0

    .line 213
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 215
    .end local v0    # "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isDateValid(J)Z
    .locals 5
    .param p0, "time"    # J

    .line 164
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->getDateFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 165
    .local v1, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    const-string v2, "2015-05-15 10:24:00.000"

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 166
    .local v2, "baseDate":Ljava/util/Date;
    if-nez v2, :cond_0

    .line 167
    return v0

    .line 169
    :cond_0
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v3, v3, p0

    if-gez v3, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    .line 170
    .end local v1    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .end local v2    # "baseDate":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/text/ParseException;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 174
    .end local v1    # "e":Ljava/text/ParseException;
    return v0
.end method

.method public static isDateValid(Ljava/util/Date;)Z
    .locals 3
    .param p0, "date"    # Ljava/util/Date;

    .line 146
    :try_start_0
    const-string v0, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->getDateFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 147
    .local v0, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    const-string v1, "2015-05-15 10:24:00.000"

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 148
    .local v1, "baseDate":Ljava/util/Date;
    invoke-virtual {p0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 149
    .end local v0    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .end local v1    # "baseDate":Ljava/util/Date;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/text/ParseException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 153
    .end local v0    # "e":Ljava/text/ParseException;
    const/4 v0, 0x0

    return v0
.end method
