.class Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView$1;
.super Ljava/lang/Object;
.source "PmaLoadingIndicatorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;

    .line 37
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->access$002(Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;Z)Z

    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->access$102(Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;J)J

    .line 44
    return-void
.end method
