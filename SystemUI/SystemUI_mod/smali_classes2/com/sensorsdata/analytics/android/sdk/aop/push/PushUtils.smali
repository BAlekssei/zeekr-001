.class public Lcom/sensorsdata/analytics/android/sdk/aop/push/PushUtils;
.super Ljava/lang/Object;
.source "PushUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJPushSDKName(B)Ljava/lang/String;
    .locals 1
    .param p0, "whichPushSDK"    # B

    .line 30
    packed-switch p0, :pswitch_data_0

    .line 47
    const/4 v0, 0x0

    goto :goto_0

    .line 44
    :pswitch_0
    const-string v0, "vivo"

    .line 45
    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    .line 41
    .end local v0    # "name":Ljava/lang/String;
    :pswitch_1
    const-string v0, "OPPO"

    .line 42
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 38
    .end local v0    # "name":Ljava/lang/String;
    :pswitch_2
    const-string v0, "Meizu"

    .line 39
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 35
    .end local v0    # "name":Ljava/lang/String;
    :pswitch_3
    const-string v0, "HUAWEI"

    .line 36
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 32
    .end local v0    # "name":Ljava/lang/String;
    :pswitch_4
    const-string v0, "Xiaomi"

    .line 33
    .restart local v0    # "name":Ljava/lang/String;
    nop

    .line 47
    :goto_0
    nop

    .line 49
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
