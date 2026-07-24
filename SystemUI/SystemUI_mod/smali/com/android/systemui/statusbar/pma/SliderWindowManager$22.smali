.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$22;
.super Ljava/lang/Object;
.source "SliderWindowManager.java"

# interfaces
.implements Lcom/zeekr/sdk/policy/observers/StartupStateObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/SliderWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 1138
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$22;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zeekr/sdk/policy/bean/AppPolicyInfo;",
            ">;)V"
        }
    .end annotation

    .line 1141
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/zeekr/sdk/policy/bean/AppPolicyInfo;>;"
    const-string v0, "SliderWindowManager"

    const-string v1, "onStateChange: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zeekr/sdk/policy/bean/AppPolicyInfo;

    .line 1143
    .local v1, "mAppPolicyInfo":Lcom/zeekr/sdk/policy/bean/AppPolicyInfo;
    invoke-virtual {v1}, Lcom/zeekr/sdk/policy/bean/AppPolicyInfo;->getCode()I

    move-result v2

    .line 1144
    .local v2, "code":I
    const-string v3, "SliderWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStateChange: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/zeekr/sdk/policy/bean/AppPolicyInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1146
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$22;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$2800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    move-result-object v4

    invoke-virtual {v1}, Lcom/zeekr/sdk/policy/bean/AppPolicyInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;->isPState(Ljava/lang/String;Z)Z

    .line 1148
    .end local v1    # "mAppPolicyInfo":Lcom/zeekr/sdk/policy/bean/AppPolicyInfo;
    .end local v2    # "code":I
    :cond_0
    goto :goto_0

    .line 1149
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$22;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v0

    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessage(I)Z

    .line 1150
    return-void
.end method
