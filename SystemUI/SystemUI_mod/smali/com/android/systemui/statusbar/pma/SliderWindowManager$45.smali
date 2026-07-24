.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$45;
.super Landroid/database/ContentObserver;
.source "SliderWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/SliderWindowManager;->ObserveOutVolume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 5582
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$45;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$45;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .line 5585
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$45;->val$resolver:Landroid/content/ContentResolver;

    const-string v1, "audio_exterior_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5586
    .local v0, "value":I
    const-string v1, "SliderWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ObserveOutVolume onChange: isExterior "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5587
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$45;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isSettingsExterior(I)V

    .line 5588
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 5589
    return-void
.end method
