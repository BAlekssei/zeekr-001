.class Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$29;
.super Ljava/lang/Object;
.source "StatusBarViewForPMA.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;
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

    .line 2237
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$29;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 2240
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$29;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {p2}, Lcom/zeekr/eva/service/IEvaService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zeekr/eva/service/IEvaService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$2902(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Lcom/zeekr/eva/service/IEvaService;)Lcom/zeekr/eva/service/IEvaService;

    .line 2241
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 2245
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$29;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$2902(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Lcom/zeekr/eva/service/IEvaService;)Lcom/zeekr/eva/service/IEvaService;

    .line 2246
    return-void
.end method
