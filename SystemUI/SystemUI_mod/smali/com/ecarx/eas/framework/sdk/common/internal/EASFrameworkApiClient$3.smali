.class Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;


# direct methods
.method constructor <init>(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    .line 130
    nop

    .end local p1    # "this$0":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;
    return-void
.end method


# virtual methods
.method public onBindingDied()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$200(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->removeMessages(I)V

    .line 154
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$200(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->removeMessages(I)V

    .line 155
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$200(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->removeMessages(I)V

    .line 156
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$200(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {v1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$200(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->sendMessage(Landroid/os/Message;)Z

    .line 158
    return-void
.end method

.method public onServiceConnected()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$300(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    move-result-object v0

    if-nez v0, :cond_0

    .line 135
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$400(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 137
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$200(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->removeMessages(I)V

    .line 138
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$200(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {v1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$200(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->sendMessage(Landroid/os/Message;)Z

    .line 140
    return-void
.end method

.method public onServiceConnected(Ljava/lang/String;)V
    .locals 3
    .param p1, "service"    # Ljava/lang/String;

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    return-void

    .line 164
    :cond_0
    const-string v0, "EASFramework"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onServiceConnected() service = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$200(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->removeMessages(ILjava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$200(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->removeMessages(ILjava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$200(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 168
    nop

    .end local p1    # "service":Ljava/lang/String;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 169
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;
    iget-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {p1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$200(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->sendMessage(Landroid/os/Message;)Z

    .line 170
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$200(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->removeMessages(I)V

    .line 145
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$200(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->removeMessages(I)V

    .line 146
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$200(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->removeMessages(I)V

    .line 147
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$200(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {v1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$200(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->sendMessage(Landroid/os/Message;)Z

    .line 149
    return-void
.end method

.method public onServiceDisconnected(Ljava/lang/String;I)V
    .locals 1
    .param p1, "service"    # Ljava/lang/String;

    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 175
    return-void

    .line 176
    :cond_0
    iget-object p2, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {p2}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$200(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->removeMessages(ILjava/lang/Object;)V

    .line 177
    iget-object p2, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {p2}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$200(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    move-result-object p2

    const/4 v0, 0x5

    invoke-virtual {p2, v0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->removeMessages(ILjava/lang/Object;)V

    .line 178
    iget-object p2, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {p2}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$200(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 179
    nop

    .end local p1    # "service":Ljava/lang/String;
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 180
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;
    iget-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {p1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$200(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->sendMessage(Landroid/os/Message;)Z

    .line 181
    return-void
.end method
