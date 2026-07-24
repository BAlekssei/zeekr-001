.class Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$32;
.super Ljava/lang/Object;
.source "StatusBarViewForPMA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->onCarGearChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

.field final synthetic val$gear:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 2344
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$32;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iput p2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$32;->val$gear:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2347
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2348
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCarGearChange gear = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$32;->val$gear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$32;->val$gear:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2351
    .local v0, "show":Z
    :goto_0
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$5500()Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2352
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$32;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4100(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2353
    if-nez v0, :cond_4

    .line 2354
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$32;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4100(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->dismissSentryModePopupWindow()V

    goto :goto_2

    .line 2357
    :cond_3
    const-string v1, "StatusBarViewForPMA"

    const-string v2, "onCarGearChange ,mIStatusbarOnViewClickListener = null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    :cond_4
    :goto_2
    return-void
.end method
