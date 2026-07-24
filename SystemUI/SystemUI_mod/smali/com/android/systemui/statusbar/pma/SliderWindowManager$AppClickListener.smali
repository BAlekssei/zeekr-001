.class public interface abstract Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;
.super Ljava/lang/Object;
.source "SliderWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/SliderWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppClickListener"
.end annotation


# virtual methods
.method public abstract getIsNewApp(Ljava/lang/String;)Z
.end method

.method public abstract hideAppList()V
.end method

.method public abstract isPState(Ljava/lang/String;Z)Z
.end method

.method public abstract removeApp(Ljava/lang/String;)V
.end method

.method public abstract removeTask(Ljava/lang/String;)V
.end method

.method public abstract showToast(I)V
.end method

.method public abstract startActivity(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract unInstallApp(Ljava/lang/String;Ljava/lang/String;)V
.end method
