.class public interface abstract Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;
.super Ljava/lang/Object;
.source "VolumeDialogController.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/VolumeDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# virtual methods
.method public onAccessibilityModeChanged(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "showA11yStream"    # Ljava/lang/Boolean;

    .line 200
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    .line 195
    return-void
.end method

.method public onDismissRequested(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 192
    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 194
    return-void
.end method

.method public onScreenOff()V
    .locals 0

    .line 198
    return-void
.end method

.method public onShowRequested(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 191
    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 199
    return-void
.end method

.method public onShowSilentHint()V
    .locals 0

    .line 197
    return-void
.end method

.method public onShowVibrateHint()V
    .locals 0

    .line 196
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 193
    return-void
.end method
