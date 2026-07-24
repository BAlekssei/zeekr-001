.class final Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$ServiceHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field public static final DO_emitNode:I = 0x1

.field public static final DO_emitNodeError:I = 0x3

.field public static final DO_updateAbilityConfig:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;


# direct methods
.method private constructor <init>(Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$ServiceHandler;->this$0:Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$ServiceHandler;
    return-void
.end method

.method synthetic constructor <init>(Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;

    .line 168
    nop

    .end local p1    # "x0":Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$ServiceHandler;-><init>(Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;)V

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$ServiceHandler;
    return-void
.end method


# virtual methods
.method public final doEmitNode(Lcom/ecarx/sdk/smartscene/ServiceModel;)V
    .locals 6
    .param p1, "serviceModel"    # Lcom/ecarx/sdk/smartscene/ServiceModel;

    .line 194
    const-string v0, "AbilityCollector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doEmitNode() called with: serviceModel = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$ServiceHandler;->this$0:Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;

    invoke-static {v0}, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;->access$200(Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$ServiceHandler;->this$0:Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;

    invoke-static {v0}, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;->access$200(Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 197
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 199
    :try_start_0
    iget-object v2, p0, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$ServiceHandler;->this$0:Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;

    invoke-static {v2}, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;->access$200(Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/ecarx/sdk/smartscene/LaunchPad;

    .line 200
    invoke-interface {v2, p1}, Lcom/ecarx/sdk/smartscene/LaunchPad;->callbackServiceResult(Lcom/ecarx/sdk/smartscene/ServiceModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    goto :goto_1

    .line 202
    :catch_0
    move-exception v2

    .line 203
    const-string v3, "AbilityCollector"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "doEmitNode:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local p1    # "serviceModel":Lcom/ecarx/sdk/smartscene/ServiceModel;
    :cond_0
    iget-object p1, p0, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$ServiceHandler;->this$0:Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$ServiceHandler;
    invoke-static {p1}, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;->access$200(Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 208
    :cond_1
    return-void
.end method

.method public final doEmitNodeError(ILcom/ecarx/sdk/smartscene/ServiceModel;)V
    .locals 6
    .param p1, "errorCode"    # I
    .param p2, "serviceModel"    # Lcom/ecarx/sdk/smartscene/ServiceModel;

    .line 228
    const-string v0, "AbilityCollector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doEmitNodeError() called with: errorCode = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], serviceModel = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$ServiceHandler;->this$0:Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;

    invoke-static {v0}, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;->access$200(Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$ServiceHandler;->this$0:Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;

    invoke-static {v0}, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;->access$200(Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 231
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 233
    :try_start_0
    iget-object v2, p0, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$ServiceHandler;->this$0:Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;

    invoke-static {v2}, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;->access$200(Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/ecarx/sdk/smartscene/LaunchPad;

    .line 234
    invoke-interface {v2, p1, p2}, Lcom/ecarx/sdk/smartscene/LaunchPad;->serviceExecuteError(ILcom/ecarx/sdk/smartscene/ServiceModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    goto :goto_1

    .line 235
    :catch_0
    move-exception v2

    .line 236
    const-string v3, "AbilityCollector"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "doEmitNodeError:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    .end local p1    # "errorCode":I
    .end local p2    # "serviceModel":Lcom/ecarx/sdk/smartscene/ServiceModel;
    :cond_0
    iget-object p1, p0, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$ServiceHandler;->this$0:Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$ServiceHandler;
    invoke-static {p1}, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;->access$200(Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 241
    :cond_1
    return-void
.end method

.method public final doUpdateAbilityConfig(Ljava/lang/String;)V
    .locals 6
    .param p1, "jsonData"    # Ljava/lang/String;

    .line 212
    const-string v0, "AbilityCollector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doUpdateAbilityConfig() called with: jsonData = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$ServiceHandler;->this$0:Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;

    invoke-static {v0}, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;->access$200(Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$ServiceHandler;->this$0:Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;

    invoke-static {v0}, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;->access$200(Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 215
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 217
    :try_start_0
    iget-object v2, p0, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$ServiceHandler;->this$0:Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;

    invoke-static {v2}, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;->access$200(Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/ecarx/sdk/smartscene/LaunchPad;

    .line 218
    invoke-interface {v2, p1}, Lcom/ecarx/sdk/smartscene/LaunchPad;->updateAbilityConfig(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    goto :goto_1

    .line 219
    :catch_0
    move-exception v2

    .line 220
    const-string v3, "AbilityCollector"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "doUpdateAbilityConfig:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    .end local p1    # "jsonData":Ljava/lang/String;
    :cond_0
    iget-object p1, p0, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$ServiceHandler;->this$0:Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$ServiceHandler;
    invoke-static {p1}, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;->access$200(Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 225
    :cond_1
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 176
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$ServiceHandler;
    .end local p1    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 186
    .restart local p0    # "this":Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$ServiceHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ecarx/sdk/smartscene/ServiceModel;

    .line 187
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 188
    .end local p1    # "msg":Landroid/os/Message;
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$ServiceHandler;
    invoke-virtual {p0, p1, v0}, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$ServiceHandler;->doEmitNodeError(ILcom/ecarx/sdk/smartscene/ServiceModel;)V

    goto :goto_0

    .line 182
    .restart local p0    # "this":Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$ServiceHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p1    # "msg":Landroid/os/Message;
    check-cast p1, Ljava/lang/String;

    .line 183
    invoke-virtual {p0, p1}, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$ServiceHandler;->doUpdateAbilityConfig(Ljava/lang/String;)V

    .line 184
    return-void

    .line 178
    .restart local p1    # "msg":Landroid/os/Message;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ecarx/sdk/smartscene/ServiceModel;

    .line 179
    .end local p1    # "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$ServiceHandler;->doEmitNode(Lcom/ecarx/sdk/smartscene/ServiceModel;)V

    .line 180
    return-void

    .line 191
    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$ServiceHandler;
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
