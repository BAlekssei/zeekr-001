.class public interface abstract Lcom/android/systemui/statusbar/policy/BluetoothController;
.super Ljava/lang/Object;
.source "BluetoothController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/Dumpable;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract isBluetoothAlreadyEnabled()Z
.end method

.method public abstract isBluetoothConnected()Z
.end method

.method public abstract isBluetoothEnabled()Z
.end method
