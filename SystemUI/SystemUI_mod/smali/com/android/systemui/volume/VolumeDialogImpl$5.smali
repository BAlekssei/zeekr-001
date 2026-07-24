.class Lcom/android/systemui/volume/VolumeDialogImpl$5;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 1046
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityModeChanged(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "showA11yStream"    # Ljava/lang/Boolean;

    .line 1100
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3602(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z

    .line 1101
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3700(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v0

    .line 1102
    .local v0, "activeRow":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3600(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xa

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1103
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    goto :goto_1

    .line 1105
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3800(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 1108
    :goto_1
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    .line 1074
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3000(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->dismiss()V

    .line 1075
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3100(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 1076
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3200(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/ConfigurableTexts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/ConfigurableTexts;->update()V

    .line 1077
    return-void
.end method

.method public onDismissRequested(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 1054
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    .line 1055
    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .line 1069
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$2900(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 1070
    return-void
.end method

.method public onScreenOff()V
    .locals 2

    .line 1059
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    .line 1060
    return-void
.end method

.method public onShowRequested(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 1049
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$2800(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 1050
    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 1095
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3500(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 1096
    return-void
.end method

.method public onShowSilentHint()V
    .locals 3

    .line 1088
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3300(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3400(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    .line 1091
    :cond_0
    return-void
.end method

.method public onShowVibrateHint()V
    .locals 2

    .line 1081
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3300(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3400(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    .line 1084
    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 1064
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->onStateChangedH(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    .line 1065
    return-void
.end method
