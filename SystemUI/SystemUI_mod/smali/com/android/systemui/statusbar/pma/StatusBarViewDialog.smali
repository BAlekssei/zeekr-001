.class public Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;
.super Landroid/app/AlertDialog;
.source "StatusBarViewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private animation:Landroid/animation/ValueAnimator;

.field private mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mContext:Landroid/content/Context;

.field private mDialogListener:Lcom/android/systemui/statusbar/pma/PopupDialogListener;

.field private openAnimationView:Landroid/view/View;

.field public paramsHeight:I

.field private paramsWidth:I

.field private showHandler:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 36
    const/16 v0, 0x224

    iput v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->paramsWidth:I

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->paramsHeight:I

    .line 132
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog$1;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 165
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog$2;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->showHandler:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 36
    const/16 v0, 0x224

    iput v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->paramsWidth:I

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->paramsHeight:I

    .line 132
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog$1;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 165
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog$2;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->showHandler:Landroid/os/Handler;

    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;

    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->openAnimationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;)Lcom/android/systemui/statusbar/pma/PopupDialogListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;

    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->mDialogListener:Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;

    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->animation:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 199
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 200
    .local v0, "dialogBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 201
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private openAnimationInit()V
    .locals 4

    .line 91
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->animation:Landroid/animation/ValueAnimator;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->animation:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->paramsHeight:I

    if-nez v2, :cond_0

    const/16 v2, 0x190

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->paramsHeight:I

    :goto_0
    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->animation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->openAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->paramsHeight:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 95
    .local v0, "time":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->animation:Landroid/animation/ValueAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 96
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->animation:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 98
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_1

    .line 99
    const v2, 0x7f1200c9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 101
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->showHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 191
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 192
    .local v0, "message":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 193
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->showHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 195
    .end local v0    # "message":Landroid/os/Message;
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public flashDismissTime()V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->showHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 148
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 149
    .local v0, "message":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 150
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->showHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 151
    return-void
.end method

.method public getIsShowing()Z
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->mDialogListener:Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->mDialogListener:Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/PopupDialogListener;->windowShow(Z)V

    .line 57
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->openAnimationView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->openAnimationView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 213
    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setDialogDismiss()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->showHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->showHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->mDialogListener:Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->mDialogListener:Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/PopupDialogListener;->windowShow(Z)V

    .line 159
    :cond_0
    return-void
.end method

.method public setDialogListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->mDialogListener:Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    .line 61
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 62
    return-void
.end method

.method public setDialogShow()V
    .locals 4

    .line 65
    const-string v0, "StatusBarViewDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDialogShow isShowing(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->showHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->dismiss()V

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->mDialogListener:Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->mDialogListener:Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/PopupDialogListener;->windowShow(Z)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->showHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->show()V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 81
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 82
    .local v0, "message":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 83
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->showHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 84
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->mDialogListener:Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    if-eqz v1, :cond_3

    .line 85
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->mDialogListener:Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/pma/PopupDialogListener;->windowShow(Z)V

    .line 88
    .end local v0    # "message":Landroid/os/Message;
    :cond_3
    :goto_0
    return-void
.end method

.method public setOpenAnimationView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 104
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->openAnimationView:Landroid/view/View;

    .line 105
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->openAnimationInit()V

    .line 106
    return-void
.end method

.method public updateAnimation(II)Z
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 109
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->paramsHeight:I

    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    .line 110
    return v1

    .line 112
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->paramsWidth:I

    .line 113
    iput p2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->paramsHeight:I

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->openAnimationView:Landroid/view/View;

    if-eqz v0, :cond_2

    if-lez p2, :cond_2

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    const/4 v2, 0x2

    const/16 v3, 0x1f4

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 118
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->paramsHeight:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 119
    .local v0, "time":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->animation:Landroid/animation/ValueAnimator;

    new-array v2, v2, [I

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->openAnimationView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    aput v5, v2, v1

    iget v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->paramsHeight:I

    aput v1, v2, v4

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->animation:Landroid/animation/ValueAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 121
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 122
    return v4

    .line 124
    .end local v0    # "time":I
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->paramsHeight:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 125
    .restart local v0    # "time":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->animation:Landroid/animation/ValueAnimator;

    new-array v2, v2, [I

    aput v1, v2, v1

    iget v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->paramsHeight:I

    aput v5, v2, v4

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 126
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->animation:Landroid/animation/ValueAnimator;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 129
    .end local v0    # "time":I
    :cond_2
    return v1
.end method
