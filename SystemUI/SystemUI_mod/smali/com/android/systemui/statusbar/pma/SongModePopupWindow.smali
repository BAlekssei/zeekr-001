.class public Lcom/android/systemui/statusbar/pma/SongModePopupWindow;
.super Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;
.source "SongModePopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;
.implements Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
.implements Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$OnSeekBarTargetStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/pma/SongModePopupWindow$H;
    }
.end annotation


# instance fields
.field private background:Landroid/view/View;

.field private btn1:Landroid/widget/Button;

.field private btn2:Landroid/widget/Button;

.field private btn3:Landroid/widget/Button;

.field private btn4:Landroid/widget/Button;

.field private buttonCount:I

.field private dayNight:I

.field private exit:Landroid/widget/Button;

.field private isFirst:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/systemui/statusbar/pma/SongModePopupWindow$H;

.field protected mIsSyncVolumeState:Z

.field private mMusicRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

.field private mPeopleRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

.field private mPositionX:I

.field private mReverbLevel:I

.field private mText:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mVolumLevel:I

.field private mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

.field private micLocation:I

.field private s1:Z

.field private s2:Z

.field private s3:Z

.field private s4:Z

.field private selectHabitTime:J

.field private tv1:Landroid/widget/TextView;

.field private tv2:Landroid/widget/TextView;

.field private tv3:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;-><init>(Landroid/content/Context;I)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mPositionX:I

    .line 53
    iput v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    .line 56
    new-instance v0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow$H;-><init>(Lcom/android/systemui/statusbar/pma/SongModePopupWindow;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mHandler:Lcom/android/systemui/statusbar/pma/SongModePopupWindow$H;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mIsSyncVolumeState:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->isFirst:Z

    .line 264
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->selectHabitTime:J

    .line 86
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mContext:Landroid/content/Context;

    .line 87
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mContentResolver:Landroid/content/ContentResolver;

    .line 89
    const/16 v0, 0x1fe

    const/16 v1, 0x294

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->updateAnimation(II)Z

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mAudioManager:Landroid/media/AudioManager;

    .line 91
    const-class v0, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mHandler:Lcom/android/systemui/statusbar/pma/SongModePopupWindow$H;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mView:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mView:Landroid/view/View;

    const v1, 0x7f0a04e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mText:Landroid/widget/TextView;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/pma/SongModePopupWindow;)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SongModePopupWindow;

    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mPeopleRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pma/SongModePopupWindow;)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SongModePopupWindow;

    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mMusicRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    return-object v0
.end method

.method private getSeekBarView(I)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;
    .locals 1
    .param p1, "which"    # I

    .line 490
    packed-switch p1, :pswitch_data_0

    .line 496
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mPeopleRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    return-object v0

    .line 494
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mMusicRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    return-object v0

    .line 492
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mPeopleRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initView(ZI)V
    .locals 3
    .param p1, "isFullScreen"    # Z
    .param p2, "layoutMode"    # I

    .line 238
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->setCanceledOnTouchOutside(Z)V

    .line 239
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 240
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 241
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    const v1, 0x7f1200c9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 243
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 244
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x700

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 247
    const v2, 0x800033

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 248
    const/16 v2, 0x203

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 249
    const/16 v2, 0x2da

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 250
    iget v2, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mPositionX:I

    add-int/lit16 v2, v2, 0x4f1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 251
    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 252
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 253
    return-void
.end method

.method private setSliderDNmode(I)V
    .locals 3
    .param p1, "dayOrNight"    # I

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mPeopleRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v1

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setVolumeType(II)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mMusicRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v1

    const/16 v2, 0x65

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setVolumeType(II)V

    .line 191
    return-void
.end method

.method private setVolumeDialogControllerVolume(IIZ)V
    .locals 4
    .param p1, "stream"    # I
    .param p2, "volumeLevel"    # I
    .param p3, "isForce"    # Z

    .line 501
    nop

    .line 506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mIsSyncVolumeState:Z

    .line 507
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 508
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setMicVolume(I)V

    .line 510
    :cond_0
    const/16 v1, 0x65

    if-ne p1, v1, :cond_1

    .line 511
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    div-int/lit8 v2, p2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setMicReverb(I)V

    .line 513
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mHandler:Lcom/android/systemui/statusbar/pma/SongModePopupWindow$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow$H;->removeMessages(I)V

    .line 514
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 515
    .local v1, "message":Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->what:I

    .line 516
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mHandler:Lcom/android/systemui/statusbar/pma/SongModePopupWindow$H;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 517
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .line 562
    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 563
    .local v0, "toast":Landroid/widget/Toast;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/16 v3, 0x58

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 565
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 567
    const/4 v2, 0x0

    const/16 v3, 0x37

    invoke-virtual {v0, v3, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 568
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 569
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 570
    const-string v2, "SongModePopupWindow"

    const-string/jumbo v3, "showToast: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return-void
.end method


# virtual methods
.method public changeTheme(I)V
    .locals 3
    .param p1, "dayNightMode"    # I

    .line 194
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->setSliderDNmode(I)V

    .line 195
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->dayNight:I

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mText:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const v2, 0x7f080640

    goto :goto_0

    :cond_0
    const v2, 0x7f080641

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mText:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    const v2, -0xc7c5c3

    goto :goto_1

    :cond_1
    const v2, -0x4b4642

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    if-ne p1, v1, :cond_2

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->tvTitle:Landroid/widget/TextView;

    const-string v1, "#383A3D"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->tv1:Landroid/widget/TextView;

    const-string v1, "#383A3D"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->tv2:Landroid/widget/TextView;

    const-string v1, "#383A3D"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->tv3:Landroid/widget/TextView;

    const-string v1, "#383A3D"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->background:Landroid/view/View;

    const v1, 0x7f080491

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn1:Landroid/widget/Button;

    const v1, 0x7f0803fe

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn2:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn3:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn4:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->exit:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn1:Landroid/widget/Button;

    const-string v1, "#383A3D"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn2:Landroid/widget/Button;

    const-string v1, "#383A3D"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn3:Landroid/widget/Button;

    const-string v1, "#383A3D"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn4:Landroid/widget/Button;

    const-string v1, "#383A3D"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->exit:Landroid/widget/Button;

    const-string v1, "#383A3D"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_2

    .line 232
    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->tvTitle:Landroid/widget/TextView;

    const-string v1, "#85898C"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->tv1:Landroid/widget/TextView;

    const-string v1, "#85898C"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->tv2:Landroid/widget/TextView;

    const-string v1, "#85898C"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->tv3:Landroid/widget/TextView;

    const-string v1, "#85898C"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->background:Landroid/view/View;

    const v1, 0x7f080492

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn1:Landroid/widget/Button;

    const v1, 0x7f0803ff

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn2:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn3:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn4:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->exit:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn1:Landroid/widget/Button;

    const-string v1, "#85898C"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn2:Landroid/widget/Button;

    const-string v1, "#85898C"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn3:Landroid/widget/Button;

    const-string v1, "#85898C"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn4:Landroid/widget/Button;

    const-string v1, "#85898C"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->exit:Landroid/widget/Button;

    const-string v1, "#85898C"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_2
    goto :goto_4

    .line 232
    :goto_3
    nop

    .line 233
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 235
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_4
    return-void
.end method

.method public isMicLocationChecked(II)Z
    .locals 5
    .param p1, "data"    # I
    .param p2, "location"    # I

    .line 341
    const-string v0, "SongModePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMicLocationChecked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", location "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v0, 0x1

    if-gtz p1, :cond_0

    .line 343
    const-string v1, "SongModePopupWindow"

    const-string v2, "isMicLocationChecked error"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return v0

    .line 347
    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p2, v1, :cond_2

    const/16 v1, 0x8

    if-eq p2, v1, :cond_1

    packed-switch p2, :pswitch_data_0

    .line 361
    return v2

    .line 352
    :pswitch_0
    const/4 v1, 0x2

    .line 353
    .local v1, "value":I
    goto :goto_0

    .line 349
    .end local v1    # "value":I
    :pswitch_1
    const/4 v1, 0x1

    .line 350
    .restart local v1    # "value":I
    goto :goto_0

    .line 358
    .end local v1    # "value":I
    :cond_1
    const/16 v1, 0x8

    .line 359
    .restart local v1    # "value":I
    goto :goto_0

    .line 355
    .end local v1    # "value":I
    :cond_2
    const/4 v1, 0x4

    .line 356
    .restart local v1    # "value":I
    nop

    .line 361
    :goto_0
    nop

    .line 363
    and-int v3, p1, v1

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    .line 364
    .local v0, "result":Z
    :goto_1
    const-string v2, "SongModePopupWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMicLocationChecked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a014d

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    const-wide/16 v3, 0x12c

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 317
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->selectHabitTime:J

    sub-long/2addr v5, v7

    cmp-long v0, v5, v3

    if-lez v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn4:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    if-ne v0, v1, :cond_0

    .line 320
    const-string/jumbo v0, "\u81f3\u5c11\u4fdd\u7559\u4e00\u4e2a\u97f3\u533a"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->micLocation:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->micLocation:I

    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn4:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 326
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->micLocation:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->micLocation:I

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn4:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 330
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->selectHabitTime:J

    .line 331
    goto/16 :goto_4

    .line 301
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->selectHabitTime:J

    sub-long/2addr v5, v7

    cmp-long v0, v5, v3

    if-lez v0, :cond_5

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn3:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 303
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    if-ne v0, v1, :cond_3

    .line 304
    const-string/jumbo v0, "\u81f3\u5c11\u4fdd\u7559\u4e00\u4e2a\u97f3\u533a"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 306
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->micLocation:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->micLocation:I

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn3:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_1

    .line 310
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->micLocation:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->micLocation:I

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn3:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 314
    :cond_5
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->selectHabitTime:J

    .line 315
    goto/16 :goto_4

    .line 285
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->selectHabitTime:J

    sub-long/2addr v5, v7

    cmp-long v0, v5, v3

    if-lez v0, :cond_8

    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn2:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 287
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    if-ne v0, v1, :cond_6

    .line 288
    const-string/jumbo v0, "\u81f3\u5c11\u4fdd\u7559\u4e00\u4e2a\u97f3\u533a"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->showToast(Ljava/lang/String;)V

    goto :goto_2

    .line 290
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->micLocation:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->micLocation:I

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn2:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_2

    .line 294
    :cond_7
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->micLocation:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->micLocation:I

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn2:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 298
    :cond_8
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->selectHabitTime:J

    .line 299
    goto :goto_4

    .line 269
    :pswitch_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->selectHabitTime:J

    sub-long/2addr v5, v7

    cmp-long v0, v5, v3

    if-lez v0, :cond_b

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn1:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 271
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    if-ne v0, v1, :cond_9

    .line 272
    const-string/jumbo v0, "\u81f3\u5c11\u4fdd\u7559\u4e00\u4e2a\u97f3\u533a"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->showToast(Ljava/lang/String;)V

    goto :goto_3

    .line 274
    :cond_9
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->micLocation:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->micLocation:I

    .line 275
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn1:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_3

    .line 278
    :cond_a
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->micLocation:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->micLocation:I

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn1:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 282
    :cond_b
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->selectHabitTime:J

    .line 283
    goto :goto_4

    .line 333
    :cond_c
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->setEnable(Z)V

    .line 334
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->dismiss()V

    .line 337
    :goto_4
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->micLocation:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->setLocation(I)V

    .line 338
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00a1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 99
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v0, 0x7f0d013d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->setContentView(I)V

    .line 101
    const v0, 0x7f0a04e0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->tvTitle:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f0a0311

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->tv1:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f0a0312

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->tv2:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f0a0313

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->tv3:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f0a00a1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn1:Landroid/widget/Button;

    .line 106
    const v0, 0x7f0a00a2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn2:Landroid/widget/Button;

    .line 107
    const v0, 0x7f0a00a3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn3:Landroid/widget/Button;

    .line 108
    const v0, 0x7f0a00a4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn4:Landroid/widget/Button;

    .line 109
    const v0, 0x7f0a014d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->exit:Landroid/widget/Button;

    .line 110
    const v0, 0x7f0a043b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->background:Landroid/view/View;

    .line 111
    const/16 v0, 0x2da

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->paramsHeight:I

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->background:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->setOpenAnimationView(Landroid/view/View;)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn3:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn4:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->exit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v0, 0x7f0a0359

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mPeopleRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mPeopleRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v1

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setVolumeType(II)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mPeopleRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setSeekBarStateListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mPeopleRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setOnSeekBarTargetStateListener(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$OnSeekBarTargetStateListener;)V

    .line 122
    const v0, 0x7f0a02fa

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mMusicRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mMusicRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v1

    const/16 v2, 0x65

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setVolumeType(II)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mMusicRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setSeekBarStateListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mMusicRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setOnSeekBarTargetStateListener(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$OnSeekBarTargetStateListener;)V

    .line 126
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->initView(ZI)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->changeTheme(I)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->setSliderDNmode(I)V

    .line 129
    return-void
.end method

.method public onLocationChanged(I)V
    .locals 6
    .param p1, "location"    # I

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn1:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->isMicLocationChecked(II)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn2:Landroid/widget/Button;

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->isMicLocationChecked(II)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 371
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn3:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->isMicLocationChecked(II)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setSelected(Z)V

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->btn4:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->isMicLocationChecked(II)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setSelected(Z)V

    .line 373
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->isMicLocationChecked(II)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 374
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->isFirst:Z

    if-eqz v0, :cond_0

    .line 375
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    .line 376
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->s1:Z

    goto :goto_0

    .line 378
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->s1:Z

    if-nez v0, :cond_2

    .line 379
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    .line 380
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->s1:Z

    goto :goto_0

    .line 384
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->isFirst:Z

    if-nez v0, :cond_2

    .line 385
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->s1:Z

    if-eqz v0, :cond_2

    .line 386
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    .line 387
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->s1:Z

    .line 391
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->isMicLocationChecked(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 392
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->isFirst:Z

    if-eqz v0, :cond_3

    .line 393
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    .line 394
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->s2:Z

    goto :goto_1

    .line 396
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->s2:Z

    if-nez v0, :cond_5

    .line 397
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    .line 398
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->s2:Z

    goto :goto_1

    .line 402
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->isFirst:Z

    if-nez v0, :cond_5

    .line 403
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->s2:Z

    if-eqz v0, :cond_5

    .line 404
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    .line 405
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->s2:Z

    .line 409
    :cond_5
    :goto_1
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->isMicLocationChecked(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 410
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->isFirst:Z

    if-eqz v0, :cond_6

    .line 411
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    .line 412
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->s3:Z

    goto :goto_2

    .line 414
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->s3:Z

    if-nez v0, :cond_8

    .line 415
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    .line 416
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->s3:Z

    goto :goto_2

    .line 420
    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->isFirst:Z

    if-nez v0, :cond_8

    .line 421
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->s3:Z

    if-eqz v0, :cond_8

    .line 422
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    .line 423
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->s3:Z

    .line 427
    :cond_8
    :goto_2
    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->isMicLocationChecked(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 428
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->isFirst:Z

    if-eqz v0, :cond_9

    .line 429
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    .line 430
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->s4:Z

    goto :goto_3

    .line 432
    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->s4:Z

    if-nez v0, :cond_b

    .line 433
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    .line 434
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->s4:Z

    goto :goto_3

    .line 438
    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->isFirst:Z

    if-nez v0, :cond_b

    .line 439
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->s4:Z

    if-eqz v0, :cond_b

    .line 440
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    .line 441
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->s4:Z

    .line 445
    :cond_b
    :goto_3
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->isFirst:Z

    .line 446
    if-gez p1, :cond_c

    .line 447
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->micLocation:I

    goto :goto_4

    .line 449
    :cond_c
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->micLocation:I

    .line 451
    :goto_4
    const-string v0, "SongModePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buttonCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->buttonCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return-void
.end method

.method public onMicReverbChange(I)V
    .locals 3
    .param p1, "value"    # I

    .line 455
    const-string v0, "SongModePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMicReverbChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    move v0, p1

    .line 457
    .local v0, "reverbLevel":I
    if-gez v0, :cond_0

    .line 458
    const/4 v0, 0x0

    goto :goto_0

    .line 459
    :cond_0
    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 460
    const/16 v0, 0xa

    .line 462
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mMusicRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isTracking()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mReverbLevel:I

    if-eq v1, v0, :cond_2

    .line 463
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mMusicRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    mul-int/lit8 v2, v0, 0xa

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setProgress(I)V

    .line 465
    :cond_2
    return-void
.end method

.method public onMicVolumeChange(I)V
    .locals 3
    .param p1, "volume"    # I

    .line 467
    const-string v0, "SongModePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMicVolumeChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    move v0, p1

    .line 469
    .local v0, "volumeLevel":I
    if-gez v0, :cond_0

    .line 470
    const/4 v0, 0x0

    goto :goto_0

    .line 471
    :cond_0
    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 472
    const/16 v0, 0x64

    .line 474
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mPeopleRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isTracking()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mVolumLevel:I

    if-eq v1, v0, :cond_2

    .line 475
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mPeopleRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setProgress(I)V

    .line 477
    :cond_2
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 521
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->getSeekBarView(I)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    move-result-object v0

    .line 522
    .local v0, "row":Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;
    const-string v1, "SongModePopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProgressChanged: Type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isTracking() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isTracking()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", progress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", fromUser = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", getTargetIsCompleted() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getTargetIsCompleted()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 522
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 525
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->syncTargetLevel(I)V

    .line 526
    if-lez p2, :cond_0

    .line 527
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setVolumeTypeIcon(I)V

    .line 529
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getType()I

    move-result v2

    invoke-direct {p0, v2, p2, v1}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->setVolumeDialogControllerVolume(IIZ)V

    .line 531
    :cond_1
    nop

    .line 534
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getTargetIsCompleted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 535
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getType()I

    move-result v2

    invoke-direct {p0, v2, p2, v1}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->setVolumeDialogControllerVolume(IIZ)V

    .line 537
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getType()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_3

    .line 538
    iput p2, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mVolumLevel:I

    goto :goto_0

    .line 539
    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getType()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_4

    .line 540
    div-int/lit8 v1, p2, 0xa

    iput v1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mReverbLevel:I

    .line 542
    :cond_4
    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 546
    const-string v0, "SongModePopupWindow"

    const-string v1, "onStartTrackingTouch: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->getSeekBarView(I)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    move-result-object v0

    .line 548
    .local v0, "row":Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setTracking(Z)V

    .line 549
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 553
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->getSeekBarView(I)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    move-result-object v0

    .line 554
    .local v0, "row":Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;
    const-string v1, "SongModePopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStopTrackingTouch: Type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", targetLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getTargetLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setTracking(Z)V

    .line 557
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getProgress()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->setMusicLevel(I)V

    .line 558
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getType()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getProgress()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->setVolumeDialogControllerVolume(IIZ)V

    .line 559
    return-void
.end method

.method public setDialogShow()V
    .locals 0

    .line 256
    invoke-super {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->setDialogShow()V

    .line 257
    return-void
.end method

.method public setEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setNoMicEnable(Z)V

    .line 486
    const-string v0, "SongModePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return-void
.end method

.method public setLocation(I)V
    .locals 3
    .param p1, "location"    # I

    .line 480
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setMicLocation(I)V

    .line 481
    const-string v0, "SongModePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    return-void
.end method

.method public setMusicLevel(I)V
    .locals 2
    .param p1, "level"    # I

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mPeopleRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    if-nez v0, :cond_0

    .line 166
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mHandler:Lcom/android/systemui/statusbar/pma/SongModePopupWindow$H;

    if-eqz v0, :cond_1

    .line 169
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 170
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    .line 171
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 172
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mHandler:Lcom/android/systemui/statusbar/pma/SongModePopupWindow$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow$H;->sendMessage(Landroid/os/Message;)Z

    .line 174
    .end local v0    # "message":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public setPositionX(IZ)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "isFullScreen"    # Z

    .line 260
    const-string v0, "SongModePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPositionX "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mPositionX:I

    .line 262
    return-void
.end method
