.class public Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;
.super Ljava/lang/Object;
.source "JSONUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addIndentBlank(Ljava/lang/StringBuilder;I)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "indent"    # I

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 44
    const/16 v1, 0x9

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    .end local v0    # "i":I
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 48
    :cond_0
    nop

    .line 49
    :goto_1
    return-void
.end method

.method public static cloneJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 7
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;
        }
    .end annotation

    .line 155
    if-nez p0, :cond_0

    .line 156
    const/4 v0, 0x0

    return-object v0

    .line 160
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->assertPropertyTypes(Lorg/json/JSONObject;)V

    .line 161
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "cloneProperties":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 163
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 164
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 165
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/Date;

    if-eqz v4, :cond_1

    .line 166
    new-instance v4, Ljava/util/Date;

    move-object v5, v3

    check-cast v5, Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 171
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    goto :goto_1

    .line 169
    .end local v0    # "cloneProperties":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Lorg/json/JSONException;
    nop

    .end local v0    # "e":Lorg/json/JSONException;
    move-object v0, p0

    .line 172
    .local v0, "cloneProperties":Lorg/json/JSONObject;
    :goto_1
    return-object v0
.end method

.method public static formatJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "jsonStr"    # Ljava/lang/String;

    .line 53
    if-eqz p0, :cond_a

    :try_start_0
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 58
    .local v1, "last":C
    const/4 v2, 0x0

    .line 59
    .local v2, "current":C
    const/4 v3, 0x0

    .line 60
    .local v3, "indent":I
    const/4 v4, 0x0

    .line 61
    .local v4, "isInQuotationMarks":Z
    const/4 v5, 0x0

    move v6, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v5

    .local v1, "i":I
    .local v2, "last":C
    .local v3, "current":C
    .local v4, "indent":I
    .local v6, "isInQuotationMarks":Z
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_9

    .line 62
    move v2, v3

    .line 63
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v3, v7

    .line 64
    const/16 v7, 0x22

    const/16 v8, 0x5c

    if-eq v3, v7, :cond_5

    const/16 v7, 0x2c

    const/16 v9, 0xa

    if-eq v3, v7, :cond_4

    const/16 v7, 0x7b

    if-eq v3, v7, :cond_3

    const/16 v7, 0x7d

    if-eq v3, v7, :cond_1

    packed-switch v3, :pswitch_data_0

    .line 99
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 97
    :pswitch_0
    goto :goto_2

    .line 82
    :cond_1
    :pswitch_1
    if-nez v6, :cond_2

    .line 83
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    add-int/lit8 v4, v4, -0x1

    .line 85
    invoke-static {v0, v4}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->addIndentBlank(Ljava/lang/StringBuilder;I)V

    .line 87
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    goto :goto_2

    .line 73
    :cond_3
    :pswitch_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    if-nez v6, :cond_8

    .line 75
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v4, v4, 0x1

    .line 77
    invoke-static {v0, v4}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->addIndentBlank(Ljava/lang/StringBuilder;I)V

    goto :goto_2

    .line 90
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    if-eq v2, v8, :cond_8

    if-nez v6, :cond_8

    .line 92
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {v0, v4}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->addIndentBlank(Ljava/lang/StringBuilder;I)V

    goto :goto_2

    .line 66
    :cond_5
    if-eq v2, v8, :cond_7

    .line 67
    if-nez v6, :cond_6

    const/4 v7, 0x1

    goto :goto_1

    :cond_6
    move v7, v5

    :goto_1
    move v6, v7

    .line 69
    :cond_7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    nop

    .line 61
    :cond_8
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "i":I
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 104
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "last":C
    .end local v3    # "current":C
    .end local v4    # "indent":I
    .end local v6    # "isInQuotationMarks":Z
    :catch_0
    move-exception v0

    goto :goto_4

    .line 54
    :cond_a
    :goto_3
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 104
    :goto_4
    nop

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 106
    const-string v1, ""

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static json2Map(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 113
    .local v0, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 114
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 116
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 118
    :cond_0
    return-object v0

    .line 120
    .end local v0    # "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static mergeDistinctProperty(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 5
    .param p0, "source"    # Lorg/json/JSONObject;
    .param p1, "dest"    # Lorg/json/JSONObject;

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 131
    .local v0, "superPropertiesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 137
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/Date;

    if-eqz v3, :cond_1

    const-string v3, "$time"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 138
    move-object v3, v2

    check-cast v3, Ljava/util/Date;

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->formatDate(Ljava/util/Date;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 140
    :cond_1
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 145
    .end local v0    # "superPropertiesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    goto :goto_2

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 146
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public static optionalStringKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Lorg/json/JSONObject;
    .param p1, "k"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 38
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
