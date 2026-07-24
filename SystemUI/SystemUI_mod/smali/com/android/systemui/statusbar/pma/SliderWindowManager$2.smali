.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$2;
.super Ljava/lang/Object;
.source "SliderWindowManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppListTouchListener;


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

    .line 548
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$2;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeApplistDelayed()V
    .locals 2

    .line 551
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$2;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    .line 552
    return-void
.end method
