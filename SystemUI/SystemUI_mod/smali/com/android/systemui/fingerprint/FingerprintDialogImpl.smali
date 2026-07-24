.class public Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
.super Lcom/android/systemui/SystemUI;
.source "FingerprintDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field private mDialogShowing:Z

.field private mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 54
    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$1;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Lcom/android/internal/os/SomeArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Lcom/android/internal/os/SomeArgs;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleShowDialog(Lcom/android/internal/os/SomeArgs;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 34
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintAuthenticated()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintHelp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Z

    .line 34
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 34
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleButtonNegative()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 34
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleUserCanceled()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 34
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleButtonPositive()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 34
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleClearMessage()V

    return-void
.end method

.method private handleButtonNegative()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    if-nez v0, :cond_0

    .line 195
    const-string v0, "FingerprintDialogImpl"

    const-string v1, "Receiver is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void

    .line 199
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/IBiometricPromptReceiver;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintDialogImpl"

    const-string v2, "Remote exception when handling negative button"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    .line 204
    return-void
.end method

.method private handleButtonPositive()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    if-nez v0, :cond_0

    .line 208
    const-string v0, "FingerprintDialogImpl"

    const-string v1, "Receiver is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void

    .line 212
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/IBiometricPromptReceiver;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintDialogImpl"

    const-string v2, "Remote exception when handling positive button"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    .line 217
    return-void
.end method

.method private handleClearMessage()V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->resetMessage()V

    .line 221
    return-void
.end method

.method private handleFingerprintAuthenticated()V
    .locals 3

    .line 152
    const-string v0, "FingerprintDialogImpl"

    const-string v1, "handleFingerprintAuthenticated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    .line 154
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040226

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    .line 157
    return-void
.end method

.method private handleFingerprintError(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .line 165
    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFingerprintError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-nez v0, :cond_0

    .line 167
    const-string v0, "FingerprintDialogImpl"

    const-string v1, "Dialog already dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showErrorMessage(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method private handleFingerprintHelp(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 160
    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFingerprintHelp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showHelpMessage(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method private handleHideDialog(Z)V
    .locals 3
    .param p1, "userCanceled"    # Z

    .line 174
    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleHideDialog, userCanceled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-nez v0, :cond_0

    .line 178
    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog already dismissed, userCanceled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 181
    :cond_0
    if-eqz p1, :cond_1

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/IBiometricPromptReceiver;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintDialogImpl"

    const-string v2, "RemoteException when hiding dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    .line 190
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->startDismiss()V

    .line 191
    return-void
.end method

.method private handleShowDialog(Lcom/android/internal/os/SomeArgs;)V
    .locals 3
    .param p1, "args"    # Lcom/android/internal/os/SomeArgs;

    .line 137
    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleShowDialog, isAnimatingAway: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 138
    invoke-virtual {v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isAnimatingAway()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isAnimatingAway()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->forceRemove()V

    goto :goto_0

    .line 141
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-eqz v0, :cond_1

    .line 142
    const-string v0, "FingerprintDialogImpl"

    const-string v1, "Dialog already showing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void

    .line 145
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/biometrics/IBiometricPromptReceiver;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    .line 146
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setBundle(Landroid/os/Bundle;)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    .line 149
    return-void
.end method

.method private handleUserCanceled()V
    .locals 1

    .line 224
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    .line 225
    return-void
.end method


# virtual methods
.method public hideFingerprintDialog()V
    .locals 3

    .line 132
    const-string v0, "FingerprintDialogImpl"

    const-string v1, "hideFingerprintDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 134
    return-void
.end method

.method public onFingerprintAuthenticated()V
    .locals 2

    .line 114
    const-string v0, "FingerprintDialogImpl"

    const-string v1, "onFingerprintAuthenticated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 116
    return-void
.end method

.method public onFingerprintError(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .line 126
    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFingerprintError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 128
    return-void
.end method

.method public onFingerprintHelp(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 120
    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFingerprintHelp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 122
    return-void
.end method

.method public showFingerprintDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "receiver"    # Landroid/hardware/biometrics/IBiometricPromptReceiver;

    .line 101
    const-string v0, "FingerprintDialogImpl"

    const-string/jumbo v1, "showFingerprintDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 107
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 108
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 109
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 110
    return-void
.end method

.method public start()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    return-void

    .line 94
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    .line 96
    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 97
    return-void
.end method
