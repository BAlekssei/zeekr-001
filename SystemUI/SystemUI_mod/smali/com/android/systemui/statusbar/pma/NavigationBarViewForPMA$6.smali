.class Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$6;
.super Ljava/lang/Object;
.source "NavigationBarViewForPMA.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;
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

    .line 1589
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$6;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 1592
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$6;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {p2}, Lcom/zeekr/eva/service/IEvaService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zeekr/eva/service/IEvaService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$2002(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Lcom/zeekr/eva/service/IEvaService;)Lcom/zeekr/eva/service/IEvaService;

    .line 1593
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1597
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$6;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$2002(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Lcom/zeekr/eva/service/IEvaService;)Lcom/zeekr/eva/service/IEvaService;

    .line 1598
    return-void
.end method
