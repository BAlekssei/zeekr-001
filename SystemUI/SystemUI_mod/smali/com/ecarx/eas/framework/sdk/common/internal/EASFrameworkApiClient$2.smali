.class Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    .line 106
    nop

    .end local p1    # "this$0":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$2;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$2;
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p2, "intent"    # Landroid/content/Intent;

    .line 109
    if-nez p2, :cond_0

    .line 110
    return-void

    .line 112
    :cond_0
    nop

    .end local p2    # "intent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 114
    return-void

    .line 116
    :cond_1
    const-string p2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 117
    return-void

    .line 119
    :cond_2
    iget-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$2;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {p1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$100(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    iget-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$2;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {p1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$200(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 122
    return-void

    .line 125
    :cond_3
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$2;
    iget-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$2;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    invoke-static {p1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->access$200(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->sendEmptyMessage(I)Z

    .line 127
    return-void
.end method
