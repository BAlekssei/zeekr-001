.class Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$19;
.super Ljava/lang/Object;
.source "StatusBarViewForPMA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setPm25ContentInversion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 1564
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$19;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1567
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$19;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3400(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->setVisibility(I)V

    .line 1568
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$19;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3500(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1569
    return-void
.end method
