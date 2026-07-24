.class public interface abstract Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;
.super Ljava/lang/Object;
.source "NavigationBarViewForPMA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOnViewClickListener"
.end annotation


# virtual methods
.method public abstract closeAllSlider(Z)V
.end method

.method public abstract closeAppListSlider()V
.end method

.method public abstract closeClimateSlider(Z)V
.end method

.method public abstract closeDriverHeatSlider(Z)V
.end method

.method public abstract closeDriverTempSlider(Z)V
.end method

.method public abstract closeDropDownBoxView()V
.end method

.method public abstract closePassengerHeatSlider(Z)V
.end method

.method public abstract closePassengerTempSlider(Z)V
.end method

.method public abstract closeVolumeSlider(Z)V
.end method

.method public abstract isAllStreamMute()Z
.end method

.method public abstract isSliderShow(I)Z
.end method

.method public abstract isTopActivityExterior(Z)V
.end method

.method public abstract moveClimatePosition(I)V
.end method

.method public abstract moveDriverHeatPosition(I)I
.end method

.method public abstract moveDriverTempPosition(I)V
.end method

.method public abstract movePassengerHeatPosition(I)I
.end method

.method public abstract movePassengerTempPosition(I)V
.end method

.method public abstract moveVolumeUiPosition(I)I
.end method

.method public abstract muteVolume()V
.end method

.method public abstract open360()V
.end method

.method public abstract openAppListApp()V
.end method

.method public abstract openCarSettingApp()V
.end method

.method public abstract openClimateApp()V
.end method

.method public abstract openClimateSlider(F)V
.end method

.method public abstract openDriverHeatVentilationSlider(F)V
.end method

.method public abstract openDriverTempSlider(F)V
.end method

.method public abstract openLauncher()V
.end method

.method public abstract openMediaSlider(F)V
.end method

.method public abstract openPassengerHeatVentilationSlider(F)V
.end method

.method public abstract openPassengerTempSlider(F)V
.end method

.method public abstract openVolumeUI(F)V
.end method

.method public abstract removeNewApp(Ljava/lang/String;)V
.end method

.method public abstract setSliderDayNightMode(I)V
.end method
