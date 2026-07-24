.class Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$3;
.super Ljava/lang/Object;
.source "StatusBarFragmentForPMA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->autoLogin(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 457
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$3;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 461
    :try_start_0
    const-string v0, "StatusBarFragmentForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoLogin isUserApiInitSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2300()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v0, Lcom/android/systemui/statusbar/pma/CertEntity;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/pma/CertEntity;-><init>()V

    .line 463
    .local v0, "certEntity":Lcom/android/systemui/statusbar/pma/CertEntity;
    const-string v1, "5"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CertEntity;->setType(Ljava/lang/String;)V

    .line 464
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$3;->val$userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CertEntity;->setUserId(Ljava/lang/String;)V

    .line 465
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/zeekr/sdk/user/impl/UserAPI;

    move-result-object v1

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zeekr/sdk/user/impl/UserAPI;->login(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    .end local v0    # "certEntity":Lcom/android/systemui/statusbar/pma/CertEntity;
    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 469
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
