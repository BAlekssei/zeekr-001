.class public interface abstract Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;
.super Ljava/lang/Object;
.source "SliderWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/SliderWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SliderClickListener"
.end annotation


# virtual methods
.method public abstract closeMediaApp()V
.end method

.method public abstract isMediaTop(Ljava/lang/String;)Z
.end method

.method public abstract onChangeImgVolume(Z)V
.end method

.method public abstract setAppListTouchListener(Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppListTouchListener;)V
.end method

.method public abstract startMediaFromSlider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
.end method
