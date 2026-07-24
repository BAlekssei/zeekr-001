.class Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$3;
.super Landroid/content/BroadcastReceiver;
.source "NavigationBarViewForPMA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    .line 440
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 443
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$800(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    sget-object v1, Lcom/android/systemui/statusbar/pma/DockItemAdapter;->CLIMATE:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->getTopPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openClimateApp()V

    .line 452
    :cond_1
    :goto_0
    return-void
.end method
