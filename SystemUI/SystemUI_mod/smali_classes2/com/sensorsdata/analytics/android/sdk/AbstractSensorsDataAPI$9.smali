.class Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$9;
.super Ljava/lang/Object;
.source "AbstractSensorsDataAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->showDebugModeWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;

    .line 1188
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$9;->this$0:Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1191
    const/4 v0, 0x0

    .line 1192
    .local v0, "info":Ljava/lang/String;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$9;->this$0:Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mDebugMode:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;->DEBUG_ONLY:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    if-ne v1, v2, :cond_0

    .line 1193
    const-string v0, "\u73b0\u5728\u60a8\u6253\u5f00\u4e86 SensorsData SDK \u7684 \'DEBUG_ONLY\' \u6a21\u5f0f\uff0c\u6b64\u6a21\u5f0f\u4e0b\u53ea\u6821\u9a8c\u6570\u636e\u4f46\u4e0d\u5bfc\u5165\u6570\u636e\uff0c\u6570\u636e\u51fa\u9519\u65f6\u4f1a\u4ee5 Toast \u7684\u65b9\u5f0f\u63d0\u793a\u5f00\u53d1\u8005\uff0c\u8bf7\u4e0a\u7ebf\u524d\u4e00\u5b9a\u4f7f\u7528 DEBUG_OFF \u6a21\u5f0f\u3002"

    goto :goto_0

    .line 1194
    :cond_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$9;->this$0:Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mDebugMode:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;->DEBUG_AND_TRACK:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    if-ne v1, v2, :cond_1

    .line 1195
    const-string v0, "\u73b0\u5728\u60a8\u6253\u5f00\u4e86\u795e\u7b56 SensorsData SDK \u7684 \'DEBUG_AND_TRACK\' \u6a21\u5f0f\uff0c\u6b64\u6a21\u5f0f\u4e0b\u6821\u9a8c\u6570\u636e\u5e76\u4e14\u5bfc\u5165\u6570\u636e\uff0c\u6570\u636e\u51fa\u9519\u65f6\u4f1a\u4ee5 Toast \u7684\u65b9\u5f0f\u63d0\u793a\u5f00\u53d1\u8005\uff0c\u8bf7\u4e0a\u7ebf\u524d\u4e00\u5b9a\u4f7f\u7528 DEBUG_OFF \u6a21\u5f0f\u3002"

    .line 1197
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$9;->this$0:Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getAppName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1198
    .local v1, "appName":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1199
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "%s\uff1a%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1201
    :cond_2
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$9;->this$0:Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;

    iget-object v2, v2, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ToastUtil;->showLong(Landroid/content/Context;Ljava/lang/String;)V

    .line 1202
    return-void
.end method
