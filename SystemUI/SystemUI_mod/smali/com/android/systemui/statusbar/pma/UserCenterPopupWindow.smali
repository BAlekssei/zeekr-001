.class public Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;
.super Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;
.source "UserCenterPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$UserOnClickLister;,
        Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static loginLable:Ljava/lang/String;


# instance fields
.field private animation:Landroid/animation/ValueAnimator;

.field private checkIcon:Landroid/widget/ImageView;

.field private currentPhoto:Lcom/android/systemui/statusbar/pma/CircleImage;

.field private currentSelectHabit:I

.field private currentUserContent:Landroid/widget/LinearLayout;

.field private currentUserId:Ljava/lang/String;

.field private currentUserInfo:Landroid/widget/LinearLayout;

.field private currentUserLabel:Landroid/widget/ImageView;

.field private currentUserName:Landroid/widget/TextView;

.field private exitAccountBtn:Landroid/widget/TextView;

.field private exitDialog:Landroid/view/View;

.field private expandHistory:Landroid/widget/ImageView;

.field private expandHistoryContent:Landroid/view/View;

.field private imageDownloadHandler:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler;

.field private isDay:Z

.field private isExpand:Z

.field private lisenter:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$UserOnClickLister;

.field private loginBtn:Landroid/widget/TextView;

.field private mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/pma/UserAccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLogin:Z

.field private mProfileProxy:Lcom/android/systemui/statusbar/pma/ProfileProxy;

.field private mText:Landroid/widget/TextView;

.field private mUserPositionX:I

.field private mView:Landroid/view/View;

.field private otherAccountBtn:Landroid/widget/TextView;

.field private popupContent:Landroid/widget/FrameLayout;

.field private recycler:Lcom/android/systemui/statusbar/pma/UserRecyclerView;

.field private rotateExpand:Landroid/view/animation/RotateAnimation;

.field private rotateRetract:Landroid/view/animation/RotateAnimation;

.field private selectHabitTime:J

.field private timeEnd:J

.field private timeStart:J

.field private tvHistory:Landroid/widget/TextView;

.field private userBtnContent:Landroid/widget/FrameLayout;

.field private userCenterBtn:Landroid/widget/TextView;

.field private userDefaultPreference1:Landroid/widget/TextView;

.field private userDefaultPreference2:Landroid/widget/TextView;

.field private userDefaultPreference3:Landroid/widget/TextView;

.field private userFamily:Landroid/widget/FrameLayout;

.field private userHabitOne:Landroid/widget/LinearLayout;

.field private userHabitThree:Landroid/widget/LinearLayout;

.field private userHabitTv1:Landroid/widget/TextView;

.field private userHabitTv2:Landroid/widget/TextView;

.field private userHabitTv3:Landroid/widget/TextView;

.field private userHabitTwo:Landroid/widget/LinearLayout;

.field private userdapter:Lcom/android/systemui/statusbar/pma/UserInfoAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->DEBUG:Z

    .line 99
    const-string v0, "owner"

    sput-object v0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->loginLable:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;-><init>(Landroid/content/Context;I)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isDay:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isExpand:Z

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mData:Ljava/util/List;

    .line 96
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentSelectHabit:I

    .line 97
    iput v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mUserPositionX:I

    .line 100
    invoke-static {}, Lcom/android/systemui/statusbar/pma/ProfileProxy;->getInstance()Lcom/android/systemui/statusbar/pma/ProfileProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mProfileProxy:Lcom/android/systemui/statusbar/pma/ProfileProxy;

    .line 531
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->selectHabitTime:J

    .line 570
    new-instance v0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$3;-><init>(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 633
    new-instance v0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$4;-><init>(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mHandler:Landroid/os/Handler;

    .line 121
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mContext:Landroid/content/Context;

    .line 122
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 123
    const/16 v0, 0x224

    const/16 v1, 0x1e9

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->updateAnimation(II)Z

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userFamily:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Lcom/android/systemui/statusbar/pma/CircleImage;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentPhoto:Lcom/android/systemui/statusbar/pma/CircleImage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->popupContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    .line 66
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mLogin:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Lcom/android/systemui/statusbar/pma/UserInfoAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userdapter:Lcom/android/systemui/statusbar/pma/UserInfoAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    .line 66
    iget-wide v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->timeEnd:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;
    .param p1, "x1"    # J

    .line 66
    iput-wide p1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->timeEnd:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    .line 66
    iget-wide v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->timeStart:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;
    .param p1, "x1"    # J

    .line 66
    iput-wide p1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->timeStart:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentUserId:Ljava/lang/String;

    return-object v0
.end method

.method private animationInit()V
    .locals 11

    .line 554
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->animation:Landroid/animation/ValueAnimator;

    .line 555
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->animation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 556
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->animation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 557
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->animation:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 559
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v5, 0x0

    const/high16 v6, -0x3ccc0000    # -180.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->rotateExpand:Landroid/view/animation/RotateAnimation;

    .line 560
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->rotateExpand:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 561
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->rotateExpand:Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 563
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v5, -0x3ccc0000    # -180.0f

    const/4 v6, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->rotateRetract:Landroid/view/animation/RotateAnimation;

    .line 564
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->rotateRetract:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 565
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->rotateRetract:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 566
    return-void
.end method

.method private initView()V
    .locals 3

    .line 409
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->setCanceledOnTouchOutside(Z)V

    .line 410
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 411
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x7e8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 412
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    const v1, 0x7f1200c9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 414
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 415
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x700

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 418
    const v2, 0x800033

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 419
    const/16 v2, 0x224

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 420
    const/16 v2, 0x3e8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 421
    iget v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mUserPositionX:I

    add-int/lit8 v2, v2, -0x18

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 422
    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 423
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 424
    return-void
.end method

.method private selectUserHabit()V
    .locals 6

    .line 738
    const-string v0, "UserCenterPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selectUserHabit currentSelectHabit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentSelectHabit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentSelectHabit:I

    const v1, 0x7f08063a

    const v2, 0x7f080639

    const v3, 0x7f08063c

    const v4, 0x7f08063b

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 751
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitThree:Landroid/widget/LinearLayout;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isDay:Z

    if-eqz v5, :cond_0

    move v1, v2

    nop

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 752
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitTwo:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isDay:Z

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 753
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitOne:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isDay:Z

    if-eqz v1, :cond_2

    move v3, v4

    nop

    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 746
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitTwo:Landroid/widget/LinearLayout;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isDay:Z

    if-eqz v5, :cond_3

    move v1, v2

    nop

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 747
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitOne:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isDay:Z

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 748
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitThree:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isDay:Z

    if-eqz v1, :cond_5

    move v3, v4

    nop

    :cond_5
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 749
    goto :goto_3

    .line 741
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitOne:Landroid/widget/LinearLayout;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isDay:Z

    if-eqz v5, :cond_6

    move v1, v2

    nop

    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 742
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitTwo:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isDay:Z

    if-eqz v1, :cond_7

    move v1, v4

    goto :goto_2

    :cond_7
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 743
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitThree:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isDay:Z

    if-eqz v1, :cond_8

    move v3, v4

    nop

    :cond_8
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 744
    nop

    .line 756
    :goto_3
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setCurrentLabel(Ljava/lang/String;)V
    .locals 3
    .param p1, "lable"    # Ljava/lang/String;

    .line 725
    const-string v0, "UserCenterPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserCenterPopupWindow setCurrentLabel lable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const-string v0, "owner"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mLogin:Z

    if-eqz v0, :cond_1

    .line 727
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentUserLabel:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isDay:Z

    if-eqz v2, :cond_0

    const v2, 0x7f08063d

    goto :goto_0

    :cond_0
    const v2, 0x7f08063e

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 728
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentUserLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 729
    :cond_1
    const-string v0, "affection"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 730
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentUserLabel:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isDay:Z

    if-eqz v2, :cond_2

    const v2, 0x7f08049a

    goto :goto_1

    :cond_2
    const v2, 0x7f08049b

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 731
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentUserLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 733
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentUserLabel:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 735
    :goto_2
    return-void
.end method

.method private setViewColor(Z)V
    .locals 11
    .param p1, "isDay"    # Z

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentUserName:Landroid/widget/TextView;

    const v1, -0xc7c5c2

    const v2, -0x4b4642

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitTv1:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitTv2:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitTv3:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->tvHistory:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    move v3, v2

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentUserInfo:Landroid/widget/LinearLayout;

    const v3, 0x7f08048c

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userDefaultPreference1:Landroid/widget/TextView;

    const v3, 0x7f080638

    const v4, 0x7f080637

    if-eqz p1, :cond_5

    move v5, v4

    goto :goto_5

    :cond_5
    move v5, v3

    :goto_5
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userDefaultPreference2:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    move v5, v4

    goto :goto_6

    :cond_6
    move v5, v3

    :goto_6
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userDefaultPreference3:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    move v3, v4

    nop

    :cond_7
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userDefaultPreference1:Landroid/widget/TextView;

    const v3, -0x414642

    const/4 v4, -0x1

    if-eqz p1, :cond_8

    move v5, v4

    goto :goto_7

    :cond_8
    move v5, v3

    :goto_7
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userDefaultPreference2:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    move v5, v4

    goto :goto_8

    :cond_9
    move v5, v3

    :goto_8
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userDefaultPreference3:Landroid/widget/TextView;

    if-eqz p1, :cond_a

    move v3, v4

    nop

    :cond_a
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->checkIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    const v3, 0x7f080631

    goto :goto_9

    :cond_b
    const v3, 0x7f080632

    :goto_9
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->expandHistory:Landroid/widget/ImageView;

    if-eqz p1, :cond_c

    const v3, 0x7f080498

    goto :goto_a

    :cond_c
    const v3, 0x7f080499

    :goto_a
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->popupContent:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_d

    const v3, 0x7f080491

    goto :goto_b

    :cond_d
    const v3, 0x7f080492

    :goto_b
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->exitAccountBtn:Landroid/widget/TextView;

    if-eqz p1, :cond_e

    move v3, v1

    goto :goto_c

    :cond_e
    move v3, v2

    :goto_c
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->exitAccountBtn:Landroid/widget/TextView;

    const v3, 0x7f0800ef

    const v5, 0x7f0800ee

    if-eqz p1, :cond_f

    move v6, v5

    goto :goto_d

    :cond_f
    move v6, v3

    :goto_d
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->loginBtn:Landroid/widget/TextView;

    const v6, -0xd7d7d2

    if-eqz p1, :cond_10

    move v7, v4

    goto :goto_e

    :cond_10
    move v7, v6

    :goto_e
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->loginBtn:Landroid/widget/TextView;

    const v7, 0x7f0800f1

    const v8, 0x7f0800f0

    if-eqz p1, :cond_11

    move v9, v8

    goto :goto_f

    :cond_11
    move v9, v7

    :goto_f
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mText:Landroid/widget/TextView;

    if-eqz p1, :cond_12

    const v9, 0x7f080640

    goto :goto_10

    :cond_12
    const v9, 0x7f080641

    :goto_10
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mText:Landroid/widget/TextView;

    if-eqz p1, :cond_13

    const v9, -0xc7c5c3

    goto :goto_11

    :cond_13
    move v9, v2

    :goto_11
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    const-string v0, "UserCenterPopupWindow"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setViewColor loginLable: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->loginLable:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mLogin:Z

    const/16 v9, 0x8

    if-eqz v0, :cond_18

    .line 235
    const-string v0, "owner"

    sget-object v10, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->loginLable:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentUserLabel:Landroid/widget/ImageView;

    if-eqz p1, :cond_14

    const v9, 0x7f08063d

    goto :goto_12

    :cond_14
    const v9, 0x7f08063e

    :goto_12
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_15

    .line 237
    :cond_15
    const-string v0, "affection"

    sget-object v10, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->loginLable:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentUserLabel:Landroid/widget/ImageView;

    if-eqz p1, :cond_16

    const v9, 0x7f08049a

    goto :goto_13

    :cond_16
    const v9, 0x7f08049b

    :goto_13
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_15

    .line 240
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentUserLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_15

    .line 243
    :cond_18
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentUserLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentPhoto:Lcom/android/systemui/statusbar/pma/CircleImage;

    if-eqz p1, :cond_19

    const v9, 0x7f080568

    goto :goto_14

    :cond_19
    const v9, 0x7f080569

    :goto_14
    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/pma/CircleImage;->setImageResource(I)V

    .line 246
    :goto_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userCenterBtn:Landroid/widget/TextView;

    if-eqz p1, :cond_1a

    goto :goto_16

    :cond_1a
    move v4, v6

    :goto_16
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userCenterBtn:Landroid/widget/TextView;

    if-eqz p1, :cond_1b

    move v7, v8

    nop

    :cond_1b
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->otherAccountBtn:Landroid/widget/TextView;

    if-eqz p1, :cond_1c

    goto :goto_17

    :cond_1c
    move v1, v2

    :goto_17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->otherAccountBtn:Landroid/widget/TextView;

    if-eqz p1, :cond_1d

    move v3, v5

    nop

    :cond_1d
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userdapter:Lcom/android/systemui/statusbar/pma/UserInfoAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->setDayMode(Z)V

    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userdapter:Lcom/android/systemui/statusbar/pma/UserInfoAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->notifyDataSetChanged()V

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->selectUserHabit()V

    .line 253
    return-void
.end method

.method private switchUserPreferenceToast(I)V
    .locals 4
    .param p1, "selectHabit"    # I

    .line 533
    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 534
    .local v0, "toast":Landroid/widget/Toast;
    iget v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentSelectHabit:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 542
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mText:Landroid/widget/TextView;

    const-string/jumbo v2, "\u5df2\u5207\u6362\u5230\u7528\u8f66\u4e60\u60ef3"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 539
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mText:Landroid/widget/TextView;

    const-string/jumbo v2, "\u5df2\u5207\u6362\u5230\u7528\u8f66\u4e60\u60ef2"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    goto :goto_0

    .line 536
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mText:Landroid/widget/TextView;

    const-string/jumbo v2, "\u5df2\u5207\u6362\u5230\u7528\u8f66\u4e60\u60ef1"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    nop

    .line 545
    :goto_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/16 v3, 0x58

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 546
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 547
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 548
    const/16 v2, 0x37

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 549
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 550
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 551
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public changeTheme(I)V
    .locals 1
    .param p1, "value"    # I

    .line 435
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 436
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isDay:Z

    goto :goto_0

    .line 438
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isDay:Z

    .line 440
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isDay:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->setViewColor(Z)V

    .line 441
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .line 446
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x1

    const/4 v4, 0x2

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 483
    :sswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->selectHabitTime:J

    sub-long/2addr v5, v7

    cmp-long v0, v5, v1

    if-lez v0, :cond_1

    .line 484
    iput v4, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentSelectHabit:I

    .line 485
    const-string v0, "UserCenterPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user habit two currentSelectHabit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentSelectHabit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mProfileProxy:Lcom/android/systemui/statusbar/pma/ProfileProxy;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/pma/ProfileProxy;->switchUserPreference(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->switchUserPreferenceToast(I)V

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitTv2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackUserCenterPreferenceName(Ljava/lang/String;)V

    .line 490
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->selectUserHabit()V

    .line 492
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->selectHabitTime:J

    .line 493
    goto/16 :goto_0

    .line 495
    :sswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->selectHabitTime:J

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-lez v0, :cond_3

    .line 496
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentSelectHabit:I

    .line 497
    const-string v1, "UserCenterPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user habit three currentSelectHabit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentSelectHabit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mProfileProxy:Lcom/android/systemui/statusbar/pma/ProfileProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/ProfileProxy;->switchUserPreference(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 499
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->switchUserPreferenceToast(I)V

    .line 501
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitTv3:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackUserCenterPreferenceName(Ljava/lang/String;)V

    .line 502
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->selectUserHabit()V

    .line 504
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->selectHabitTime:J

    .line 505
    goto/16 :goto_0

    .line 471
    :sswitch_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->selectHabitTime:J

    sub-long/2addr v4, v6

    cmp-long v0, v4, v1

    if-lez v0, :cond_5

    .line 472
    iput v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentSelectHabit:I

    .line 473
    const-string v0, "UserCenterPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user habit one currentSelectHabit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentSelectHabit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mProfileProxy:Lcom/android/systemui/statusbar/pma/ProfileProxy;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/pma/ProfileProxy;->switchUserPreference(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 475
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->switchUserPreferenceToast(I)V

    .line 477
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitTv1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackUserCenterPreferenceName(Ljava/lang/String;)V

    .line 478
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->selectUserHabit()V

    .line 480
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->selectHabitTime:J

    .line 481
    goto/16 :goto_0

    .line 461
    :sswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->lisenter:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$UserOnClickLister;

    if-eqz v0, :cond_b

    .line 462
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->lisenter:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$UserOnClickLister;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$UserOnClickLister;->loginUser()V

    goto/16 :goto_0

    .line 455
    :sswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->lisenter:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$UserOnClickLister;

    if-eqz v0, :cond_b

    .line 456
    const-string v0, "laucher_statusbar_usercenter"

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackOperationTime(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->lisenter:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$UserOnClickLister;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$UserOnClickLister;->goOtherUserActivity()V

    goto/16 :goto_0

    .line 507
    :sswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_b

    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userFamily:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    const/16 v1, 0x224

    const/16 v2, 0x40

    const/16 v5, 0x98

    const/16 v6, 0x1a9

    const/16 v7, 0xb2

    const/16 v8, 0x12d

    if-ne v0, v8, :cond_8

    .line 509
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isExpand:Z

    .line 510
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->animation:Landroid/animation/ValueAnimator;

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 511
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 512
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->expandHistory:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->rotateRetract:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 513
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mLogin:Z

    if-eqz v0, :cond_6

    move v2, v5

    nop

    :cond_6
    add-int/2addr v6, v2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isExpand:Z

    if-eqz v0, :cond_7

    move v7, v8

    nop

    :cond_7
    add-int/2addr v6, v7

    .line 514
    .local v6, "height":I
    invoke-virtual {p0, v1, v6}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->updateAnimation(II)Z

    .line 515
    .end local v6    # "height":I
    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userFamily:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_b

    .line 516
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isExpand:Z

    .line 517
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->animation:Landroid/animation/ValueAnimator;

    new-array v3, v4, [I

    fill-array-data v3, :array_1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 519
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->expandHistory:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->rotateExpand:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 520
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mLogin:Z

    if-eqz v0, :cond_9

    move v2, v5

    nop

    :cond_9
    add-int/2addr v6, v2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isExpand:Z

    if-eqz v0, :cond_a

    move v7, v8

    nop

    :cond_a
    add-int/2addr v6, v7

    .line 521
    .restart local v6    # "height":I
    invoke-virtual {p0, v1, v6}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->updateAnimation(II)Z

    .line 522
    .end local v6    # "height":I
    goto :goto_0

    .line 466
    :sswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->lisenter:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$UserOnClickLister;

    if-eqz v0, :cond_b

    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->lisenter:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$UserOnClickLister;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$UserOnClickLister;->exitUserAccount()V

    goto :goto_0

    .line 526
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->setDialogDismiss()V

    goto :goto_0

    .line 449
    :sswitch_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->lisenter:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$UserOnClickLister;

    if-eqz v0, :cond_b

    .line 450
    const-string v0, "laucher_statusbar_usercenter"

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackOperationTime(Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->lisenter:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$UserOnClickLister;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$UserOnClickLister;->goUserCenterActivity()V

    .line 529
    :cond_b
    :goto_0
    return-void

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a00f8 -> :sswitch_8
        0x7f0a014f -> :sswitch_7
        0x7f0a0150 -> :sswitch_6
        0x7f0a0155 -> :sswitch_5
        0x7f0a0180 -> :sswitch_4
        0x7f0a0186 -> :sswitch_8
        0x7f0a02a4 -> :sswitch_3
        0x7f0a0509 -> :sswitch_2
        0x7f0a050a -> :sswitch_1
        0x7f0a050e -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0x12d
        0xb2
    .end array-data

    :array_1
    .array-data 4
        0xb2
        0x12d
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 128
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const v0, 0x7f0d0142

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->setContentView(I)V

    .line 130
    const v0, 0x7f0a0503

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->popupContent:Landroid/widget/FrameLayout;

    .line 131
    const v0, 0x7f0a014f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->exitDialog:Landroid/view/View;

    .line 132
    const v0, 0x7f0a0186

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userCenterBtn:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f0a0180

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->otherAccountBtn:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f0a0510

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentUserLabel:Landroid/widget/ImageView;

    .line 135
    const v0, 0x7f0a0509

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitOne:Landroid/widget/LinearLayout;

    .line 136
    const v0, 0x7f0a050e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitTwo:Landroid/widget/LinearLayout;

    .line 137
    const v0, 0x7f0a050a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitThree:Landroid/widget/LinearLayout;

    .line 138
    const v0, 0x7f0a0150

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->exitAccountBtn:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f0a0507

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/UserRecyclerView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->recycler:Lcom/android/systemui/statusbar/pma/UserRecyclerView;

    .line 140
    const v0, 0x7f0a0511

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentUserName:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f0a050b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitTv1:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f0a050d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitTv2:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f0a050c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitTv3:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f0a04ba

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userDefaultPreference1:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f0a04bc

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userDefaultPreference2:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f0a04bb

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userDefaultPreference3:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f0a00f7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentUserContent:Landroid/widget/LinearLayout;

    .line 148
    const v0, 0x7f0a02a4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->loginBtn:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f0a0502

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userBtnContent:Landroid/widget/FrameLayout;

    .line 150
    const v0, 0x7f0a0512

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CircleImage;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentPhoto:Lcom/android/systemui/statusbar/pma/CircleImage;

    .line 151
    const v0, 0x7f0a0505

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->checkIcon:Landroid/widget/ImageView;

    .line 152
    const v0, 0x7f0a00f8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentUserInfo:Landroid/widget/LinearLayout;

    .line 153
    const v0, 0x7f0a0155

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->expandHistoryContent:Landroid/view/View;

    .line 154
    const v0, 0x7f0a01e7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->expandHistory:Landroid/widget/ImageView;

    .line 155
    const v0, 0x7f0a0506

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userFamily:Landroid/widget/FrameLayout;

    .line 156
    const v0, 0x7f0a01b0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->tvHistory:Landroid/widget/TextView;

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mView:Landroid/view/View;

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mView:Landroid/view/View;

    const v1, 0x7f0a04e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mText:Landroid/widget/TextView;

    .line 161
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mLogin:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x98

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    :goto_0
    const/16 v1, 0x1a9

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userFamily:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isExpand:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x12d

    goto :goto_1

    :cond_1
    const/16 v0, 0xb2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->paramsHeight:I

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->popupContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 163
    .local v0, "popupContentParams":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->paramsHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 164
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->popupContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->popupContent:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->setOpenAnimationView(Landroid/view/View;)V

    .line 166
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mProfileProxy:Lcom/android/systemui/statusbar/pma/ProfileProxy;

    new-instance v2, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$1;-><init>(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/ProfileProxy;->registerPreferceCallback(Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile$IUserPreferenceObserver;)V

    .line 179
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentUserInfo:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$-AAxTsZtbOJOD3Bjw_ziL8PK-DQ;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$-AAxTsZtbOJOD3Bjw_ziL8PK-DQ;-><init>(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userCenterBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$-AAxTsZtbOJOD3Bjw_ziL8PK-DQ;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$-AAxTsZtbOJOD3Bjw_ziL8PK-DQ;-><init>(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->otherAccountBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$-AAxTsZtbOJOD3Bjw_ziL8PK-DQ;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$-AAxTsZtbOJOD3Bjw_ziL8PK-DQ;-><init>(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->loginBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$-AAxTsZtbOJOD3Bjw_ziL8PK-DQ;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$-AAxTsZtbOJOD3Bjw_ziL8PK-DQ;-><init>(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->exitAccountBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$-AAxTsZtbOJOD3Bjw_ziL8PK-DQ;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$-AAxTsZtbOJOD3Bjw_ziL8PK-DQ;-><init>(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitOne:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$-AAxTsZtbOJOD3Bjw_ziL8PK-DQ;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$-AAxTsZtbOJOD3Bjw_ziL8PK-DQ;-><init>(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitTwo:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$-AAxTsZtbOJOD3Bjw_ziL8PK-DQ;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$-AAxTsZtbOJOD3Bjw_ziL8PK-DQ;-><init>(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitThree:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$-AAxTsZtbOJOD3Bjw_ziL8PK-DQ;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$-AAxTsZtbOJOD3Bjw_ziL8PK-DQ;-><init>(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->expandHistoryContent:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$-AAxTsZtbOJOD3Bjw_ziL8PK-DQ;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$-AAxTsZtbOJOD3Bjw_ziL8PK-DQ;-><init>(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->exitDialog:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$-AAxTsZtbOJOD3Bjw_ziL8PK-DQ;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$-AAxTsZtbOJOD3Bjw_ziL8PK-DQ;-><init>(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    new-instance v1, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userdapter:Lcom/android/systemui/statusbar/pma/UserInfoAdapter;

    .line 191
    new-instance v1, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$2;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$2;-><init>(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;Landroid/content/Context;I)V

    .line 197
    .local v1, "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->recycler:Lcom/android/systemui/statusbar/pma/UserRecyclerView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userdapter:Lcom/android/systemui/statusbar/pma/UserInfoAdapter;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/pma/UserRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 198
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->recycler:Lcom/android/systemui/statusbar/pma/UserRecyclerView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pma/UserRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 199
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->recycler:Lcom/android/systemui/statusbar/pma/UserRecyclerView;

    new-instance v3, Lcom/android/systemui/statusbar/pma/UserInfoDecoration;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/pma/UserInfoDecoration;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/pma/UserRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 200
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isDay:Z

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->setViewColor(Z)V

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->animationInit()V

    .line 202
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "ImageDownloadThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mHandlerThread:Landroid/os/HandlerThread;

    .line 203
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 204
    new-instance v2, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler;-><init>(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->imageDownloadHandler:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler;

    .line 205
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zeekr/sdk/user/bean/AccountBean;",
            ">;)V"
        }
    .end annotation

    .line 256
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/zeekr/sdk/user/bean/AccountBean;>;"
    const-string v0, "UserCenterPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setData data!=null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->recycler:Lcom/android/systemui/statusbar/pma/UserRecyclerView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mLogin:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :cond_1
    const/4 v1, 0x6

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/UserRecyclerView;->setMaxCnt(I)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentUserLabel:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    const/16 v0, 0xb2

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 261
    const-string v3, "UserCenterPopupWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setData data.size() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 263
    .local v3, "cnt":I
    move v4, v2

    .line 263
    .local v4, "i":I
    :goto_2
    const/4 v5, 0x3

    if-ge v4, v3, :cond_6

    .line 264
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zeekr/sdk/user/bean/AccountBean;

    invoke-virtual {v6}, Lcom/zeekr/sdk/user/bean/AccountBean;->getUserMark()Ljava/lang/String;

    move-result-object v6

    .line 265
    .local v6, "accounType":Ljava/lang/String;
    const-string v7, "UserCenterPopupWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentUserId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentUserId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", userId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zeekr/sdk/user/bean/AccountBean;

    invoke-virtual {v9}, Lcom/zeekr/sdk/user/bean/AccountBean;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zeekr/sdk/user/bean/AccountBean;

    invoke-virtual {v9}, Lcom/zeekr/sdk/user/bean/AccountBean;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", accountType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v7, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentUserId:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentUserId:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zeekr/sdk/user/bean/AccountBean;

    invoke-virtual {v8}, Lcom/zeekr/sdk/user/bean/AccountBean;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 267
    sput-object v6, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->loginLable:Ljava/lang/String;

    .line 268
    const-string v5, "UserCenterPopupWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setData loginLable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->loginLable:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-object v5, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->loginLable:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->setCurrentLabel(Ljava/lang/String;)V

    .line 270
    goto/16 :goto_4

    .line 272
    :cond_2
    if-eqz v6, :cond_5

    const-string/jumbo v7, "temporary"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 273
    goto/16 :goto_4

    .line 275
    :cond_3
    new-instance v7, Lcom/android/systemui/statusbar/pma/UserAccountInfo;

    invoke-direct {v7}, Lcom/android/systemui/statusbar/pma/UserAccountInfo;-><init>()V

    .line 276
    .local v7, "info":Lcom/android/systemui/statusbar/pma/UserAccountInfo;
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zeekr/sdk/user/bean/AccountBean;

    invoke-virtual {v8}, Lcom/zeekr/sdk/user/bean/AccountBean;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->setUserId(Ljava/lang/String;)V

    .line 277
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zeekr/sdk/user/bean/AccountBean;

    invoke-virtual {v8}, Lcom/zeekr/sdk/user/bean/AccountBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->setName(Ljava/lang/String;)V

    .line 278
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zeekr/sdk/user/bean/AccountBean;

    invoke-virtual {v8}, Lcom/zeekr/sdk/user/bean/AccountBean;->getAvatarUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->setAvatarUrl(Ljava/lang/String;)V

    .line 279
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zeekr/sdk/user/bean/AccountBean;

    invoke-virtual {v8}, Lcom/zeekr/sdk/user/bean/AccountBean;->isNoPassword()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->setNoPassword(Z)V

    .line 280
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zeekr/sdk/user/bean/AccountBean;

    invoke-virtual {v8}, Lcom/zeekr/sdk/user/bean/AccountBean;->getUserMark()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->setUserMark(Ljava/lang/String;)V

    .line 281
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mContext:Landroid/content/Context;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zeekr/sdk/user/bean/AccountBean;

    invoke-virtual {v9}, Lcom/zeekr/sdk/user/bean/AccountBean;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/zeekr/sdk/user/bean/AccountBean;

    invoke-virtual {v10}, Lcom/zeekr/sdk/user/bean/AccountBean;->getAvatarUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getFileToBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 282
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_4

    .line 283
    const-string v9, "UserCenterPopupWindow"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setData bitmap!=null , url=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zeekr/sdk/user/bean/AccountBean;

    invoke-virtual {v11}, Lcom/zeekr/sdk/user/bean/AccountBean;->getUserId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", id=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zeekr/sdk/user/bean/AccountBean;

    invoke-virtual {v11}, Lcom/zeekr/sdk/user/bean/AccountBean;->getAvatarUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v10, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 285
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v9}, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->setUserDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 287
    :cond_4
    const-string v9, "UserCenterPopupWindow"

    const-string/jumbo v10, "setData: bitmap==null "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :goto_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->imageDownloadHandler:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler;

    invoke-virtual {v9, v5}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 290
    .local v5, "message":Landroid/os/Message;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 291
    .local v9, "bundle":Landroid/os/Bundle;
    const-string v10, "id"

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zeekr/sdk/user/bean/AccountBean;

    invoke-virtual {v11}, Lcom/zeekr/sdk/user/bean/AccountBean;->getUserId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string/jumbo v10, "url"

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zeekr/sdk/user/bean/AccountBean;

    invoke-virtual {v11}, Lcom/zeekr/sdk/user/bean/AccountBean;->getAvatarUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v5, v9}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 294
    iget-object v10, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->imageDownloadHandler:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler;

    invoke-virtual {v10, v5}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler;->sendMessage(Landroid/os/Message;)Z

    .line 295
    iget-object v10, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mData:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    .end local v5    # "message":Landroid/os/Message;
    .end local v6    # "accounType":Ljava/lang/String;
    .end local v7    # "info":Lcom/android/systemui/statusbar/pma/UserAccountInfo;
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "bundle":Landroid/os/Bundle;
    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 297
    .end local v4    # "i":I
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v5, :cond_7

    .line 298
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->expandHistoryContent:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 300
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 301
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 303
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->expandHistoryContent:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userFamily:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 305
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 306
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isExpand:Z

    .line 307
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->expandHistory:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->clearAnimation()V

    .line 308
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userFamily:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    .end local v4    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :goto_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 312
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mData:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 313
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userdapter:Lcom/android/systemui/statusbar/pma/UserInfoAdapter;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mData:Ljava/util/List;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->setData(Ljava/util/List;)V

    .line 314
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userdapter:Lcom/android/systemui/statusbar/pma/UserInfoAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->notifyDataSetChanged()V

    .line 315
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->recycler:Lcom/android/systemui/statusbar/pma/UserRecyclerView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/pma/UserRecyclerView;->setCurrentItemsCount(I)V

    .line 316
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userFamily:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_6

    .line 318
    :cond_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userFamily:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 320
    .end local v3    # "cnt":I
    :goto_6
    goto :goto_7

    .line 321
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->expandHistoryContent:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userFamily:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 323
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userFamily:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 324
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 325
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isExpand:Z

    .line 326
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userFamily:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :goto_7
    const/16 v1, 0x1a9

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mLogin:Z

    if-eqz v3, :cond_b

    const/16 v3, 0x98

    goto :goto_8

    :cond_b
    const/16 v3, 0x40

    :goto_8
    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userFamily:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_d

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isExpand:Z

    if-eqz v2, :cond_c

    const/16 v2, 0x12d

    goto :goto_9

    :cond_c
    move v2, v0

    nop

    :cond_d
    :goto_9
    add-int/2addr v1, v2

    .line 329
    .local v1, "height":I
    const-string v0, "UserCenterPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setData: isExpand ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isExpand:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/16 v0, 0x224

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->updateAnimation(II)Z

    move-result v0

    if-nez v0, :cond_e

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->popupContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 332
    .local v0, "popupContentParams":Landroid/view/ViewGroup$LayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 333
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->popupContent:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    .end local v0    # "popupContentParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_e
    return-void
.end method

.method public setDialogShow()V
    .locals 3

    .line 584
    const-string v0, "UserCenterPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDialogShow isShowing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-super {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->setDialogShow()V

    .line 586
    return-void
.end method

.method public setPositionX(IZ)V
    .locals 3
    .param p1, "userPositionX"    # I
    .param p2, "isFullScreen"    # Z

    .line 403
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "UserCenterPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPositionX isFullScreen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mUserPositionX:I

    .line 405
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->initView()V

    .line 406
    return-void
.end method

.method public setUserListItemClickListener(Lcom/android/systemui/statusbar/pma/UserInfoAdapter$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/pma/UserInfoAdapter$OnItemClickListener;

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userdapter:Lcom/android/systemui/statusbar/pma/UserInfoAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->setOnItemClickListener(Lcom/android/systemui/statusbar/pma/UserInfoAdapter$OnItemClickListener;)V

    .line 209
    return-void
.end method

.method public setUserOnClickLister(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$UserOnClickLister;)V
    .locals 0
    .param p1, "lisenter"    # Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$UserOnClickLister;

    .line 108
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->lisenter:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$UserOnClickLister;

    .line 109
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 110
    return-void
.end method

.method public showLayout(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "isLogin"    # Z
    .param p2, "currentLoginName"    # Ljava/lang/String;
    .param p3, "photoUrl"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "id"    # Ljava/lang/String;

    .line 660
    const-string v0, "UserCenterPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entering showLayout: isLogin=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", currentLoginName=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", photoUrl=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", label=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 662
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mLogin:Z

    if-eq v0, p1, :cond_0

    .line 663
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mLogin:Z

    .line 665
    :cond_0
    if-eqz p1, :cond_1

    .line 666
    iput-object p5, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentUserId:Ljava/lang/String;

    .line 667
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentUserName:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 668
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentUserName:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;

    invoke-direct {v1, p0, p3, p1, p5}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;-><init>(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 706
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 708
    :cond_1
    const-string v0, "UserCenterPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showLayout isLogin == false "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentUserId:Ljava/lang/String;

    .line 710
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentUserName:Landroid/widget/TextView;

    const-string/jumbo v1, "\u672a\u767b\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentPhoto:Lcom/android/systemui/statusbar/pma/CircleImage;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isDay:Z

    if-eqz v1, :cond_2

    const v1, 0x7f080568

    goto :goto_0

    :cond_2
    const v1, 0x7f080569

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CircleImage;->setImageResource(I)V

    .line 713
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userBtnContent:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 714
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->loginBtn:Landroid/widget/TextView;

    if-nez p1, :cond_4

    move v1, v2

    nop

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 715
    const/16 v0, 0x1a9

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mLogin:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x98

    goto :goto_3

    :cond_5
    const/16 v1, 0x40

    :goto_3
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userFamily:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isExpand:Z

    if-eqz v1, :cond_6

    const/16 v2, 0x12d

    goto :goto_4

    :cond_6
    const/16 v2, 0xb2

    nop

    :cond_7
    :goto_4
    add-int/2addr v0, v2

    .line 716
    .local v0, "height":I
    const-string v1, "UserCenterPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showLayout: userFamily.visibility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userFamily:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , isExpand = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isExpand:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const/16 v1, 0x224

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->updateAnimation(II)Z

    move-result v1

    if-nez v1, :cond_8

    .line 718
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->popupContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 719
    .local v1, "popupContentParams":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 720
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->popupContent:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 722
    .end local v1    # "popupContentParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_8
    return-void
.end method

.method public switchToCurrentPreference()V
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mProfileProxy:Lcom/android/systemui/statusbar/pma/ProfileProxy;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/ProfileProxy;->getCurrentPreferenceId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentSelectHabit:I

    .line 373
    const-string v0, "UserCenterPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchToCurrentPreference currentSelectHabit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->currentSelectHabit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->selectUserHabit()V

    .line 375
    return-void
.end method

.method public updateDefaultPreference()V
    .locals 4

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->mProfileProxy:Lcom/android/systemui/statusbar/pma/ProfileProxy;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/ProfileProxy;->getDefaultPreferenceId()I

    move-result v0

    .line 380
    .local v0, "defaultPreference":I
    const-string v1, "UserCenterPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showDefaultPreference defaultPreference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v1, 0x0

    const/16 v2, 0x8

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 393
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userDefaultPreference1:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 394
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userDefaultPreference2:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userDefaultPreference3:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    goto :goto_0

    .line 388
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userDefaultPreference1:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userDefaultPreference2:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userDefaultPreference3:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    goto :goto_0

    .line 383
    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userDefaultPreference1:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userDefaultPreference2:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userDefaultPreference3:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    nop

    .line 400
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateUserHabit(ILjava/lang/String;)V
    .locals 3
    .param p1, "profileId"    # I
    .param p2, "profileName"    # Ljava/lang/String;

    .line 759
    const-string v0, "UserCenterPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUserHabit profileId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", profileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 770
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitThree:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 771
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitTv3:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    goto :goto_0

    .line 766
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitTwo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 767
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitTv2:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 768
    goto :goto_0

    .line 762
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitOne:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 763
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->userHabitTv1:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    nop

    .line 776
    :goto_0
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
