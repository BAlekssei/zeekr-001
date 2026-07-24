.class Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$20;
.super Ljava/lang/Object;
.source "StatusBarViewForPMA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setInsideAirQuality(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

.field final synthetic val$aqi:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 1574
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$20;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$20;->val$aqi:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1577
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$20;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3400(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->setVisibility(I)V

    .line 1578
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$20;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3500(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1579
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$20;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3500(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$20;->val$aqi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1580
    return-void
.end method
