.class Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;
.super Ljava/lang/Object;
.source "SensorsDataAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackInstallation(Ljava/lang/String;Lorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

.field final synthetic val$disableCallback:Z

.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$eventProperties:Lorg/json/JSONObject;

.field final synthetic val$loginId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;ZLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 1248
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iput-boolean p2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->val$disableCallback:Z

    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->val$eventProperties:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->val$eventName:Ljava/lang/String;

    iput-object p5, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->val$loginId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .line 1251
    move-object/from16 v1, p0

    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mIsMainProcess:Z

    if-nez v0, :cond_0

    .line 1252
    return-void

    .line 1256
    :cond_0
    :try_start_0
    iget-boolean v0, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->val$disableCallback:Z

    if-eqz v0, :cond_1

    .line 1257
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mFirstTrackInstallationWithCallback:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallationWithCallback;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallationWithCallback;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .local v0, "firstTrackInstallation":Z
    goto :goto_0

    .line 1259
    .end local v0    # "firstTrackInstallation":Z
    :cond_1
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mFirstTrackInstallation:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallation;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallation;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .restart local v0    # "firstTrackInstallation":Z
    :goto_0
    move v2, v0

    .line 1261
    .end local v0    # "firstTrackInstallation":Z
    .local v2, "firstTrackInstallation":Z
    if-eqz v2, :cond_a

    .line 1262
    const/4 v3, 0x0

    move v4, v3

    .line 1264
    .local v4, "isCorrectTrackInstallation":Z
    :try_start_1
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->val$eventProperties:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->hasUtmProperties(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1265
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->val$eventProperties:Lorg/json/JSONObject;

    invoke-static {v0, v5}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->mergeUtmByMetaData(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 1268
    :cond_2
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->val$eventProperties:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->hasUtmProperties(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1269
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    .line 1272
    .local v0, "androidId":Ljava/lang/String;
    iget-object v5, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->val$eventProperties:Lorg/json/JSONObject;

    const-string v6, "$oaid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1273
    iget-object v5, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->val$eventProperties:Lorg/json/JSONObject;

    const-string v6, "$oaid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1274
    .local v5, "oaid":Ljava/lang/String;
    iget-object v6, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iget-object v6, v6, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mContext:Landroid/content/Context;

    invoke-static {v6, v0, v5}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->getDeviceInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1275
    .local v6, "installSource":Ljava/lang/String;
    const-string v7, "SA.SensorsDataAPI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "properties has oaid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1277
    .end local v5    # "oaid":Ljava/lang/String;
    .end local v6    # "installSource":Ljava/lang/String;
    :cond_3
    iget-object v5, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iget-object v5, v5, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->getOAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1278
    .restart local v5    # "oaid":Ljava/lang/String;
    iget-object v6, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iget-object v6, v6, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mContext:Landroid/content/Context;

    invoke-static {v6, v0, v5}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->getDeviceInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1281
    .restart local v6    # "installSource":Ljava/lang/String;
    :goto_1
    iget-object v7, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->val$eventProperties:Lorg/json/JSONObject;

    const-string v8, "$gaid"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1282
    const-string v7, "%s##gaid=%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v3

    const/4 v9, 0x1

    iget-object v10, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->val$eventProperties:Lorg/json/JSONObject;

    const-string v11, "$gaid"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 1284
    :cond_4
    iget-object v7, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iget-object v7, v7, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mContext:Landroid/content/Context;

    invoke-static {v7, v0, v5}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->isGetDeviceInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    move v4, v7

    .line 1285
    iget-object v7, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->val$eventProperties:Lorg/json/JSONObject;

    const-string v8, "$ios_install_source"

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1287
    .end local v0    # "androidId":Ljava/lang/String;
    .end local v5    # "oaid":Ljava/lang/String;
    .end local v6    # "installSource":Ljava/lang/String;
    :cond_5
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->val$eventProperties:Lorg/json/JSONObject;

    const-string v5, "$oaid"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1288
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->val$eventProperties:Lorg/json/JSONObject;

    const-string v5, "$oaid"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1291
    :cond_6
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->val$eventProperties:Lorg/json/JSONObject;

    const-string v5, "$gaid"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1292
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->val$eventProperties:Lorg/json/JSONObject;

    const-string v5, "$gaid"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1295
    :cond_7
    iget-boolean v0, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->val$disableCallback:Z

    if-eqz v0, :cond_8

    .line 1296
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->val$eventProperties:Lorg/json/JSONObject;

    const-string v5, "$ios_install_disable_callback"

    iget-boolean v6, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->val$disableCallback:Z

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1300
    :cond_8
    goto :goto_2

    .line 1298
    :catch_0
    move-exception v0

    .line 1299
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1301
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getDistinctId()Ljava/lang/String;

    move-result-object v10

    .line 1303
    .local v10, "distinctId":Ljava/lang/String;
    iget-object v5, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    sget-object v6, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    iget-object v7, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->val$eventName:Ljava/lang/String;

    iget-object v8, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->val$eventProperties:Lorg/json/JSONObject;

    const/4 v9, 0x0

    iget-object v11, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->val$loginId:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackEvent(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1307
    .local v0, "profileProperties":Lorg/json/JSONObject;
    iget-object v5, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->val$eventProperties:Lorg/json/JSONObject;

    const-string v6, "$ios_install_disable_callback"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1308
    iget-object v5, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->val$eventProperties:Lorg/json/JSONObject;

    invoke-static {v5, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 1309
    const-string v5, "$first_visit_time"

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1310
    iget-object v11, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    sget-object v12, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->PROFILE_SET_ONCE:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    const/4 v13, 0x0

    const/4 v15, 0x0

    iget-object v5, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->val$loginId:Ljava/lang/String;

    const/16 v18, 0x0

    move-object v14, v0

    move-object/from16 v16, v10

    move-object/from16 v17, v5

    invoke-virtual/range {v11 .. v18}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackEvent(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    iget-boolean v5, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->val$disableCallback:Z

    if-eqz v5, :cond_9

    .line 1313
    iget-object v5, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iget-object v5, v5, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mFirstTrackInstallationWithCallback:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallationWithCallback;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallationWithCallback;->commit(Ljava/lang/Object;)V

    goto :goto_3

    .line 1315
    :cond_9
    iget-object v5, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iget-object v5, v5, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mFirstTrackInstallation:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallation;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallation;->commit(Ljava/lang/Object;)V

    .line 1317
    :goto_3
    iget-object v3, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iget-object v3, v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->saveCorrectTrackInstallation(Landroid/content/Context;Z)V

    .line 1319
    .end local v0    # "profileProperties":Lorg/json/JSONObject;
    .end local v4    # "isCorrectTrackInstallation":Z
    .end local v10    # "distinctId":Ljava/lang/String;
    :cond_a
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1322
    .end local v2    # "firstTrackInstallation":Z
    goto :goto_4

    .line 1320
    :catch_1
    move-exception v0

    .line 1321
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1323
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method
