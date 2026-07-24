.class public Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;
.super Ljava/lang/Object;
.source "KeyguardUserSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;,
        Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

.field private mAnimating:Z

.field private final mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field private final mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

.field private mBgAnimator:Landroid/animation/ObjectAnimator;

.field private final mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field private mUserSwitcher:Landroid/view/ViewGroup;

.field private final mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

.field private mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;
    .param p1, "x1"    # Z

    .line 43
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAnimating:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    return-object v0
.end method

.method private cancelAnimations()V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 148
    .local v0, "count":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 149
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 155
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAnimating:Z

    .line 156
    return-void
.end method

.method private hide(Z)Z
    .locals 3
    .param p1, "animate"    # Z

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->cancelAnimations()V

    .line 135
    if-eqz p1, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->startDisappearAnimation()V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;->setVisibility(I)V

    .line 140
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setKeyguardUserSwitcherShowing(ZZ)V

    .line 141
    const/4 v0, 0x1

    return v0

    .line 143
    :cond_1
    return v1
.end method

.method private startAppearAnimation()V
    .locals 5

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 160
    .local v0, "count":I
    new-array v1, v0, [Landroid/view/View;

    .line 161
    .local v1, "objects":[Landroid/view/View;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 162
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v1, v3

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 165
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 166
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    new-instance v3, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V

    .line 173
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAnimating:Z

    .line 174
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    const-string v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    .line 175
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 176
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 177
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$2;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 184
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 185
    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private startDisappearAnimation()V
    .locals 3

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAnimating:Z

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 190
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 191
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 192
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$3;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 201
    return-void
.end method


# virtual methods
.method public hideIfNotSimple(Z)Z
    .locals 1
    .param p1, "animate"    # Z

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isSimpleUserSwitcher()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hide(Z)Z

    move-result v0

    return v0

    .line 233
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isAnimating()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAnimating:Z

    return v0
.end method

.method public show(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->cancelAnimations()V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->refresh()V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setKeyguardUserSwitcherShowing(ZZ)V

    .line 126
    if-eqz p1, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->startAppearAnimation()V

    .line 130
    :cond_0
    return-void
.end method
