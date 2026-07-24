.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$19;
.super Ljava/lang/Object;
.source "SliderWindowManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/SliderWindowManager;->createSliderWindowView()V
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

    .line 1032
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$19;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1035
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$19;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$2500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/FunctionProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/pma/FunctionProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/FunctionProxy;->getIAudio()Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;->switchAudioChannel(I)Lcom/ecarx/xui/adaptapi/CallStatus;

    .line 1036
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$19;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$2500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "audio_exterior_status"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1037
    sput-boolean v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsSettingsExterior:Z

    .line 1038
    const-string v0, "SliderWindowManager"

    const-string v1, "onClick: outVolume close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$19;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$2600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1040
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsActionExterior:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsTopActivityExterior:Z

    if-nez v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$19;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$2700(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$19;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateOutRow()V

    .line 1045
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$19;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateEnterStatus()V

    .line 1046
    return-void
.end method
