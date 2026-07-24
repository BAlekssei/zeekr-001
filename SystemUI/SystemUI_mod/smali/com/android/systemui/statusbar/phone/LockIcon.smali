.class public Lcom/android/systemui/statusbar/phone/LockIcon;
.super Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.source "LockIcon.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;
    }
.end annotation


# instance fields
.field private mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private mDensity:I

.field private mDeviceInteractive:Z

.field private final mDrawOffTimeout:Ljava/lang/Runnable;

.field private mHasFaceUnlockIcon:Z

.field private mHasFingerPrintIcon:Z

.field private mLastDeviceInteractive:Z

.field private mLastScreenOn:Z

.field private mLastState:I

.field private mScreenOn:Z

.field private mTransientFpError:Z

.field private mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUserAvatarIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    .line 61
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockIcon$0dMARpPtuLHOj252cR_FbaJx3Kc;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockIcon$0dMARpPtuLHOj252cR_FbaJx3Kc;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    .line 65
    new-instance v0, Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 67
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 68
    return-void
.end method

.method private getAnimationResForTransition(IIZZZZ)I
    .locals 3
    .param p1, "oldState"    # I
    .param p2, "newState"    # I
    .param p3, "oldDeviceInteractive"    # Z
    .param p4, "deviceInteractive"    # Z
    .param p5, "oldScreenOn"    # Z
    .param p6, "screenOn"    # Z

    .line 287
    const/4 v0, 0x4

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_0

    .line 288
    const v0, 0x7f080342

    return v0

    .line 289
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    if-ne p2, v0, :cond_1

    .line 290
    const v0, 0x7f0806f3

    return v0

    .line 291
    :cond_1
    if-ne p1, v0, :cond_2

    if-ne p2, v2, :cond_2

    .line 292
    const v0, 0x7f08014b

    return v0

    .line 293
    :cond_2
    if-ne p1, v0, :cond_3

    if-ne p2, v1, :cond_3

    .line 294
    const v0, 0x7f080340

    return v0

    .line 295
    :cond_3
    if-ne p1, v1, :cond_4

    if-ne p2, v2, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 296
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 297
    const v0, 0x7f08033c

    return v0

    .line 298
    :cond_4
    if-ne p2, v1, :cond_7

    if-nez p5, :cond_5

    if-eqz p6, :cond_5

    if-nez p4, :cond_6

    :cond_5
    if-eqz p6, :cond_7

    if-nez p3, :cond_7

    if-eqz p4, :cond_7

    .line 300
    :cond_6
    const v0, 0x7f08033e

    return v0

    .line 302
    :cond_7
    const/4 v0, -0x1

    return v0
.end method

.method private getIconForState(IZZ)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "state"    # I
    .param p2, "screenOn"    # Z
    .param p3, "deviceInteractive"    # Z

    .line 252
    packed-switch p1, :pswitch_data_0

    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 275
    :pswitch_0
    const v0, 0x7f080198

    .line 276
    .local v0, "iconRes":I
    goto :goto_1

    .line 270
    .end local v0    # "iconRes":I
    :pswitch_1
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 271
    const v0, 0x7f080197

    goto :goto_0

    .line 272
    :cond_0
    const v0, 0x7f08033e

    .line 273
    .restart local v0    # "iconRes":I
    :goto_0
    goto :goto_1

    .line 265
    .end local v0    # "iconRes":I
    :pswitch_2
    const v0, 0x7f080196

    .line 266
    .restart local v0    # "iconRes":I
    goto :goto_1

    .line 257
    .end local v0    # "iconRes":I
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUserAvatarIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUserAvatarIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 261
    :cond_1
    const v0, 0x7f0801d8

    .line 263
    .restart local v0    # "iconRes":I
    goto :goto_1

    .line 254
    .end local v0    # "iconRes":I
    :pswitch_4
    const v0, 0x7f0801d7

    .line 255
    .restart local v0    # "iconRes":I
    nop

    .line 278
    :goto_1
    nop

    .line 281
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getState()I
    .locals 4

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 308
    .local v0, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v1

    .line 309
    .local v1, "fingerprintRunning":Z
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v2

    .line 310
    .local v2, "unlockingAllowed":Z
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientFpError:Z

    if-eqz v3, :cond_0

    .line 311
    const/4 v3, 0x4

    return v3

    .line 312
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 313
    const/4 v3, 0x1

    return v3

    .line 314
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isFaceUnlockRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 315
    const/4 v3, 0x2

    return v3

    .line 316
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 317
    const/4 v3, 0x3

    return v3

    .line 319
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .locals 1

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method private updateClickability()V
    .locals 5

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    if-nez v0, :cond_0

    .line 215
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v0

    .line 218
    .local v0, "clickToUnlock":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 220
    .local v1, "clickToForceLock":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v1, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    .line 222
    .local v4, "longClickToForceLock":Z
    :goto_1
    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    goto :goto_3

    :cond_4
    :goto_2
    move v2, v3

    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setClickable(Z)V

    .line 223
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/LockIcon;->setLongClickable(Z)V

    .line 224
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setFocusable(Z)V

    .line 225
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 109
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 110
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 111
    .local v0, "density":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    if-eq v0, v1, :cond_0

    .line 112
    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    .line 114
    new-instance v1, Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/TrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    .line 115
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 118
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 82
    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onDetachedFromWindow()V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    .line 84
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 229
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 230
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFingerPrintIcon:Z

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    .line 234
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1100f7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 235
    .local v0, "unlock":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1100fd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    .line 238
    .end local v0    # "unlock":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFaceUnlockIcon:Z

    if-eqz v0, :cond_1

    .line 240
    const-class v0, Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1100ea

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 244
    :cond_1
    :goto_0
    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "picture"    # Landroid/graphics/drawable/Drawable;
    .param p3, "userAccount"    # Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUserAvatarIcon:Landroid/graphics/drawable/Drawable;

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 90
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 72
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->start()V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    .line 78
    :goto_0
    return-void
.end method

.method public setAccessibilityController(Lcom/android/systemui/statusbar/policy/AccessibilityController;)V
    .locals 0
    .param p1, "accessibilityController"    # Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 247
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 248
    return-void
.end method

.method public setDeviceInteractive(Z)V
    .locals 0
    .param p1, "deviceInteractive"    # Z

    .line 98
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 100
    return-void
.end method

.method public setScreenOn(Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .line 103
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 105
    return-void
.end method

.method public setTransientFpError(Z)V
    .locals 0
    .param p1, "transientFpError"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientFpError:Z

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 95
    return-void
.end method

.method public update()V
    .locals 1

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    .line 122
    return-void
.end method

.method public update(Z)V
    .locals 17
    .param p1, "force"    # Z

    move-object/from16 v7, p0

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->isShown()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    .line 126
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v9

    :goto_0
    move v10, v0

    .line 127
    .local v10, "visible":Z
    if-eqz v10, :cond_1

    .line 128
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->start()V

    goto :goto_1

    .line 130
    :cond_1
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    .line 132
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getState()I

    move-result v11

    .line 133
    .local v11, "state":I
    const/4 v0, 0x3

    if-eq v11, v0, :cond_3

    const/4 v0, 0x4

    if-ne v11, v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v9

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    move v12, v0

    .line 134
    .local v12, "anyFingerprintIcon":Z
    const/4 v0, 0x2

    if-ne v11, v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    move v0, v9

    :goto_4
    iput-boolean v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFaceUnlockIcon:Z

    .line 135
    move v13, v12

    .line 136
    .local v13, "useAdditionalPadding":Z
    move v14, v12

    .line 137
    .local v14, "trustHidden":Z
    iget v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    if-ne v11, v0, :cond_6

    iget-boolean v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    iget-boolean v1, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    if-ne v0, v1, :cond_6

    iget-boolean v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    iget-boolean v1, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    if-ne v0, v1, :cond_6

    if-eqz p1, :cond_5

    goto :goto_5

    .line 208
    :cond_5
    move/from16 v16, v10

    goto/16 :goto_e

    .line 139
    :cond_6
    :goto_5
    iget v1, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    iget-boolean v3, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    iget-boolean v4, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    iget-boolean v5, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    iget-boolean v6, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    .line 140
    move-object v0, v7

    move v2, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/LockIcon;->getAnimationResForTransition(IIZZZZ)I

    move-result v0

    .line 142
    .local v0, "iconAnimRes":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x1

    goto :goto_6

    :cond_7
    move v1, v9

    .line 143
    .local v1, "isAnim":Z
    :goto_6
    const v2, 0x7f08033c

    if-ne v0, v2, :cond_8

    .line 144
    const/4 v12, 0x1

    .line 145
    const/4 v13, 0x1

    .line 146
    const/4 v3, 0x1

    .line 158
    .end local v14    # "trustHidden":Z
    .local v3, "trustHidden":Z
    :goto_7
    move v14, v3

    goto :goto_8

    .line 147
    .end local v3    # "trustHidden":Z
    .restart local v14    # "trustHidden":Z
    :cond_8
    const v3, 0x7f0806f3

    if-ne v0, v3, :cond_9

    .line 148
    const/4 v12, 0x1

    .line 149
    const/4 v13, 0x0

    .line 150
    const/4 v3, 0x1

    goto :goto_7

    .line 151
    :cond_9
    const v3, 0x7f08014b

    if-ne v0, v3, :cond_a

    .line 152
    const/4 v12, 0x1

    .line 153
    const/4 v13, 0x0

    .line 154
    const/4 v3, 0x0

    goto :goto_7

    .line 158
    :cond_a
    :goto_8
    if-eqz v1, :cond_b

    .line 160
    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_9

    .line 163
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_b
    iget-boolean v3, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    iget-boolean v4, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    invoke-direct {v7, v11, v3, v4}, Lcom/android/systemui/statusbar/phone/LockIcon;->getIconForState(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 166
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_9
    instance-of v4, v3, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v4, :cond_c

    .line 167
    move-object v4, v3

    check-cast v4, Landroid/graphics/drawable/AnimatedVectorDrawable;

    goto :goto_a

    .line 168
    :cond_c
    const/4 v4, 0x0

    .line 169
    .local v4, "animation":Landroid/graphics/drawable/AnimatedVectorDrawable;
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070199

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 171
    .local v5, "iconHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f07019a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 173
    .local v6, "iconWidth":I
    if-nez v12, :cond_e

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    if-ne v8, v5, :cond_d

    .line 174
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    if-eq v8, v6, :cond_e

    .line 175
    :cond_d
    new-instance v8, Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;

    invoke-direct {v8, v3, v6, v5}, Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v3, v8

    .line 177
    :cond_e
    if-eqz v13, :cond_f

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v2, 0x7f070178

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_b

    .line 180
    :cond_f
    nop

    .line 177
    move v2, v9

    :goto_b
    invoke-virtual {v7, v9, v9, v9, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setPaddingRelative(IIII)V

    .line 181
    nop

    .line 182
    if-eqz v12, :cond_10

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_10
    const/high16 v2, 0x3f000000    # 0.5f

    .line 181
    :goto_c
    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setRestingAlpha(F)V

    .line 183
    invoke-virtual {v7, v3, v9}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 184
    iget-boolean v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFaceUnlockIcon:Z

    if-eqz v2, :cond_11

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    const v8, 0x7f1100ea

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 189
    :cond_11
    iput-boolean v12, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFingerPrintIcon:Z

    .line 190
    if-eqz v4, :cond_12

    if-eqz v1, :cond_12

    .line 191
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    .line 192
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 195
    :cond_12
    const v2, 0x7f08033c

    if-ne v0, v2, :cond_13

    .line 196
    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 197
    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    move/from16 v16, v10

    const-wide/16 v9, 0x320

    .end local v10    # "visible":Z
    .local v16, "visible":Z
    invoke-virtual {v7, v2, v9, v10}, Lcom/android/systemui/statusbar/phone/LockIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d

    .line 199
    .end local v16    # "visible":Z
    .restart local v10    # "visible":Z
    :cond_13
    move/from16 v16, v10

    .end local v10    # "visible":Z
    .restart local v16    # "visible":Z
    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 202
    :goto_d
    iput v11, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    .line 203
    iget-boolean v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    iput-boolean v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    .line 204
    iget-boolean v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    iput-boolean v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    .line 208
    .end local v0    # "iconAnimRes":I
    .end local v1    # "isAnim":Z
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "animation":Landroid/graphics/drawable/AnimatedVectorDrawable;
    .end local v5    # "iconHeight":I
    .end local v6    # "iconWidth":I
    :goto_e
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v0

    if-eqz v0, :cond_14

    if-nez v14, :cond_14

    const/4 v15, 0x1

    goto :goto_f

    :cond_14
    const/4 v15, 0x0

    :goto_f
    move v0, v15

    .line 209
    .local v0, "trustManaged":Z
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->setTrustManaged(Z)V

    .line 210
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateClickability()V

    .line 211
    return-void
.end method
