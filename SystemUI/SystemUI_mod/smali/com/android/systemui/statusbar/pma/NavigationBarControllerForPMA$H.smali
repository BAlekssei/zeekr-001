.class final Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$H;
.super Landroid/os/Handler;
.source "NavigationBarControllerForPMA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)V
    .locals 0

    .line 1174
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$H;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    .line 1175
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1176
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1180
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1182
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$H;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$2300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)V

    .line 1183
    nop

    .line 1187
    :goto_0
    return-void
.end method
