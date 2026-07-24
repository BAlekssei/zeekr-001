.class public final Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;


# direct methods
.method public constructor <init>(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 970
    nop

    .end local p1    # "this$0":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    .line 971
    nop

    .end local p2    # "looper":Landroid/os/Looper;
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 972
    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 976
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 977
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;
    .end local p1    # "msg":Landroid/os/Message;
    goto/16 :goto_0

    .line 1012
    .restart local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;
    .restart local p1    # "msg":Landroid/os/Message;
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1013
    .end local p1    # "msg":Landroid/os/Message;
    if-eqz p1, :cond_1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1015
    check-cast p1, Ljava/lang/String;

    .line 1016
    const-string v0, "EASFramework"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SERVICE_DISCONNECTED_SUPPORT_NOTIFITY >> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {v0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$1000(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;Ljava/lang/String;)V

    goto :goto_0

    .line 1003
    .restart local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;
    .restart local p1    # "msg":Landroid/os/Message;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1004
    nop

    .end local p1    # "msg":Landroid/os/Message;
    if-eqz v0, :cond_1

    instance-of p1, v0, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1006
    check-cast v0, Ljava/lang/String;

    .line 1007
    const-string p1, "EASFramework"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SERVICE_CONNECTED_SUPPORT_NOTIFITY >> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    iget-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {p1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$900(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;Ljava/lang/String;)V

    .line 1009
    return-void

    .line 998
    .restart local p1    # "msg":Landroid/os/Message;
    :pswitch_2
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$800(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)V

    .line 999
    return-void

    .line 994
    :pswitch_3
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$700(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)V

    .line 995
    return-void

    .line 990
    :pswitch_4
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$600(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)V

    .line 991
    return-void

    .line 979
    :pswitch_5
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$300(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$300(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    return-void

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$500(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Z

    .line 983
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    return-void

    .line 984
    :catch_0
    move-exception v0

    .line 985
    move-object p1, v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 987
    return-void

    .line 1021
    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;
    .end local p1    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
