.class public Lcom/android/systemui/statusbar/pma/SliderWindowManager;
.super Ljava/lang/Object;
.source "SliderWindowManager.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;
.implements Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
.implements Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$OnSeekBarTargetStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;,
        Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;,
        Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppListTouchListener;,
        Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static DRIVER_HEAT_GREY_VENTILATION_SHOW:I

.field public static DRIVER_HEAT_SHOW_VENTILATION_GREY:I

.field public static DRIVER_HEAT_VENTILATION_SHOW:I

.field public static DRIVER_ONLY_HEAT_SHOW:I

.field public static DRIVER_ONLY_VENTILATION_SHOW:I

.field public static NONE:I

.field public static PASSENGER_HEAT_GREY_VENTILATION_SHOW:I

.field public static PASSENGER_HEAT_SHOW_VENTILATION_GREY:I

.field public static PASSENGER_HEAT_VENTILATION_SHOW:I

.field public static PASSENGER_ONLY_HEAT_SHOW:I

.field public static PASSENGER_ONLY_VENTILATION_SHOW:I

.field public static SHOWALL:I

.field public static SHOWHALF:I

.field private static isHiCarConnect:Z

.field public static mDriverHeatOrVentilationAVAI:I

.field public static mDriverPosition:I

.field public static mIsActionExterior:Z

.field public static mIsSettingsExterior:Z

.field public static mIsTopActivityExterior:Z

.field public static mPassengerHeatVentilationAVAI:I

.field public static mPassengerPosition:I


# instance fields
.field private final POSITION_LEFT:I

.field private final POSITION_RIGHT:I

.field private actrueClimate:I

.field private acutreClimateShift:I

.field private alphaAnimator:Landroid/animation/ValueAnimator;

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private appCount:I

.field private appDeleteBin:Landroid/widget/FrameLayout;

.field private appDivider:Landroid/widget/FrameLayout;

.field private appListAniHide:Landroid/animation/ValueAnimator;

.field private appListAniShow:Landroid/animation/ValueAnimator;

.field private appListBGHide:Landroid/view/animation/AlphaAnimation;

.field private appListBGShow:Landroid/view/animation/AlphaAnimation;

.field private appListBackground:Landroid/widget/ImageView;

.field private appListBottom:I

.field private appListExit:Landroid/widget/FrameLayout;

.field private appListLeft:I

.field private appListOffsetPixels:I

.field private appListRight:I

.field private appListSlider:Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;

.field private appListTop:I

.field private appPowerUpFileReadEnd:Z

.field private appPowerUpRefrsh:Z

.field private appPowerUpRefrshStart:Z

.field private appTaskInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/zeekrlife/market/update/AppTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private appViewPagerAdapter:Lcom/android/systemui/statusbar/pma/applist/AppViewPagerAdapter;

.field private apps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/pma/applist/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private changePagewidth:I

.field private climateHandler:Landroid/os/Handler;

.field private climateLevelShow:Landroid/widget/ImageView;

.field private climateMaxIcon:Landroid/widget/ImageView;

.field private climateMinIcon:Landroid/widget/ImageView;

.field private climateSlider:Landroid/view/View;

.field private climateSliderTouch:Landroid/view/View;

.field private curIndex:I

.field private currentClimateShift:I

.field private currentLocalSource:I

.field private currentMediaSource:I

.field private deleteApp:Landroid/widget/ImageView;

.field private deleteBackground:Landroid/widget/FrameLayout;

.field private dragTime:J

.field private dragX:F

.field private dragY:F

.field private driverSeatAnimationSelected:Landroid/animation/ValueAnimator;

.field private group:Landroid/widget/LinearLayout;

.field private group_hiCar:Landroid/widget/LinearLayout;

.field private heatNeedScroll:Z

.field private heatVentViewHeight:I

.field private heatVentViewWigth:I

.field private heightAnimator:Landroid/animation/ValueAnimator;

.field private heightAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private hiCarPageCount:I

.field private hiCarSelectedIndex:I

.field private hiCarViewPager:Landroidx/viewpager/widget/ViewPager;

.field private hiCarViewPagerAdapter:Lcom/android/systemui/statusbar/pma/applist/AppViewPagerAdapter;

.field private hicarAppInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/pma/applist/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private hicarMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private hmiEnterStatus:I

.field private imgDeleteBin:Landroid/widget/ImageView;

.field private imgDimBackground:Landroid/widget/ImageView;

.field private imgNoRecent:Landroid/widget/ImageView;

.field private inflater:Landroid/view/LayoutInflater;

.field private isAcTrunOnDri:Z

.field private isAcTrunOnPass:Z

.field private isAppListShowing:Z

.field private isAutoClimate:Z

.field private isClimateChanged:Z

.field private isDriverNeedWaite:Ljava/lang/Boolean;

.field private isDriverSetNeedWaite:Ljava/lang/Boolean;

.field private isNeedSaveApplistData:Z

.field private isNeedUninstall:Z

.field private isPassengerNeedWaite:Ljava/lang/Boolean;

.field private isPassengerSetNeedWaite:Ljava/lang/Boolean;

.field private isShowing:Z

.field private isStatusBarTouch:Z

.field private isWaitingTurn:Z

.field private lastClickTime:J

.field private mActiveStream:I

.field mApiReadyCallback:Lcom/zeekr/sdk/base/ApiReadyCallback;

.field private mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

.field private mAppListTouchListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppListTouchListener;

.field private mAppTabLayout:Landroid/support/design/widget/TabLayout;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/zeekr/sdk/base/ApiReadyCallback;

.field private mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private mClimateSliderShiftDraws:Landroid/content/res/TypedArray;

.field private mClimateSliderShiftIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDriTemp:I

.field private mDriverHeatIcons_Selected:Landroid/content/res/TypedArray;

.field private mDriverHeatOrVentilationShift:I

.field private mDriverHeatSelected:Landroid/widget/ImageView;

.field private mDriverHeatShort:Z

.field private mDriverHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

.field private mDriverHeatVentilationDecoration:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderDecoration;

.field private mDriverHeatVentilationLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mDriverHeatVentilationLinearSnapHelper:Landroid/support/v7/widget/LinearSnapHelper;

.field private mDriverLayoutManger:Landroid/support/v7/widget/LinearLayoutManager;

.field private mDriverSelectedIcons:Landroid/content/res/TypedArray;

.field private mDriverTempLinearSnapHelper:Landroid/support/v7/widget/LinearSnapHelper;

.field private mDriverTempSlider:Landroid/view/View;

.field private mDriverTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

.field private mDriverTouch:Landroid/view/View;

.field private mDriverVentilationIcons_Selected:Landroid/content/res/TypedArray;

.field private mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

.field private mHeatOrVentilationBg:I

.field private mHeatOrVentilationShortBg:I

.field private mHeight:I

.field mHicarAppInfoBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAudioServiceFeedBack:Z

.field private mIsBlack:Z

.field private mIsDriverScroll:Z

.field protected mIsSyncVolumeState:Z

.field mItemTagCallBack:Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter$IClickTagCallBack;

.field private mMusicRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

.field private mNavRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

.field private mNavigationBarCarBodyDisplayController:Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;

.field mOnDragListenerApplist:Landroid/view/View$OnDragListener;

.field private mOutRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mPassTemp:I

.field private mPassengerHeatIcons_Selected:Landroid/content/res/TypedArray;

.field private mPassengerHeatOrVentilationShift:I

.field private mPassengerHeatSelected:Landroid/widget/ImageView;

.field private mPassengerHeatShort:Z

.field private mPassengerHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

.field private mPassengerHeatVentilationDecoration:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderDecoration;

.field private mPassengerHeatVentilationLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mPassengerHeatVentilationLinearSnapHelper:Landroid/support/v7/widget/LinearSnapHelper;

.field private mPassengerLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mPassengerSelectedIcons:Landroid/content/res/TypedArray;

.field private mPassengerTempLinearSnapHelper:Landroid/support/v7/widget/LinearSnapHelper;

.field private mPassengerTempSlider:Landroid/view/View;

.field private mPassengerTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

.field private mPassengerTouch:Landroid/view/View;

.field private mPassengerVentilationIcons_Selected:Landroid/content/res/TypedArray;

.field private mPhoneRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

.field private mReceiveWidgetInfoCallback:Lecarx/xsf/widget/IReceiveWidgetInfoCallback;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecentAppAdapter:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

.field private mShouldPowerHvac:Z

.field private mSignalClusterViewForPMA:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

.field private mSimpleOnGestureListener:Landroid/view/GestureDetector;

.field private mSliderAppListView:Landroid/view/View;

.field private mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

.field private mSliderView:Landroid/view/View;

.field private mStartupStateObserver:Lcom/zeekr/sdk/policy/observers/StartupStateObserver;

.field private mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

.field private mSyncTempIcon:Landroid/widget/TextView;

.field private mSyncTempIconLayout:Landroid/widget/FrameLayout;

.field private mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

.field private mVolumLevel:I

.field private mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

.field private mVolumeSlider:Landroid/view/ViewGroup;

.field private mVolumeTouch:Landroid/view/ViewGroup;

.field private mVrRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

.field private mWidth:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private map:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private marginOutRowLayout:Landroid/widget/FrameLayout;

.field private muteButton:Landroid/widget/FrameLayout;

.field private muteIcon:Landroid/widget/ImageView;

.field private muteText:Landroid/widget/TextView;

.field private outRowButton:Landroid/widget/FrameLayout;

.field private outRowButtonText:Landroid/widget/TextView;

.field private outRowLayout:Landroid/widget/FrameLayout;

.field private overMinSkipDis:Z

.field private packageManager:Landroid/content/pm/PackageManager;

.field private pageCount:I

.field private passengerSeatAnimationSelected:Landroid/animation/ValueAnimator;

.field private policyReady:Z

.field private recent:Landroidx/recyclerview/widget/RecyclerView;

.field private recentApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/pma/applist/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private rootView:Landroid/widget/FrameLayout;

.field private rvDriverHeatVentilation:Landroid/support/v7/widget/RecyclerView;

.field private rvDriverHeatVentilationSlider:Landroid/view/View;

.field private rvPassengerHeatVentilation:Landroid/support/v7/widget/RecyclerView;

.field private rvPassengerHeatVentilationSlider:Landroid/view/View;

.field private scrollOverLayout:Lcom/android/systemui/statusbar/pma/ScrollOverLayout;

.field private shiftDriverItemMargin:I

.field private shiftItemHeight:I

.field private shiftPassengerItemMargin:I

.field private statusBarWindowState:I

.field private tempItemHeight:I

.field public touchHandler:Landroid/os/Handler;

.field private translateAniBig:Landroid/view/animation/TranslateAnimation;

.field private translateAniDown:Landroid/view/animation/TranslateAnimation;

.field private translateAniSmall:Landroid/view/animation/TranslateAnimation;

.field private translateAniUp:Landroid/view/animation/TranslateAnimation;

.field private tvAppDelete:Landroid/widget/TextView;

.field private tvRecent:Landroid/widget/TextView;

.field final um:Landroid/os/UserManager;

.field private uninstallBackground:Landroid/widget/FrameLayout;

.field vh:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;

.field private windowManagerParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 144
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    .line 166
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsTopActivityExterior:Z

    .line 167
    sput-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsActionExterior:Z

    .line 168
    sput-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsSettingsExterior:Z

    .line 169
    const/4 v1, -0x1

    sput v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverPosition:I

    .line 170
    sput v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerPosition:I

    .line 194
    const/16 v1, -0x3e8

    sput v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DRIVER_HEAT_VENTILATION_SHOW:I

    .line 195
    const/16 v2, -0x7d0

    sput v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DRIVER_HEAT_SHOW_VENTILATION_GREY:I

    .line 196
    const/16 v3, -0xbb8

    sput v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DRIVER_HEAT_GREY_VENTILATION_SHOW:I

    .line 197
    const/16 v4, -0xfa0

    sput v4, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DRIVER_ONLY_HEAT_SHOW:I

    .line 198
    const/16 v5, -0x1388

    sput v5, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DRIVER_ONLY_VENTILATION_SHOW:I

    .line 200
    sput v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->PASSENGER_HEAT_VENTILATION_SHOW:I

    .line 201
    sput v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->PASSENGER_HEAT_SHOW_VENTILATION_GREY:I

    .line 202
    sput v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->PASSENGER_HEAT_GREY_VENTILATION_SHOW:I

    .line 203
    sput v4, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->PASSENGER_ONLY_HEAT_SHOW:I

    .line 204
    sput v5, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->PASSENGER_ONLY_VENTILATION_SHOW:I

    .line 205
    const/16 v1, -0x1770

    sput v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->NONE:I

    .line 210
    const/16 v1, -0xc

    sput v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->SHOWALL:I

    .line 211
    const/16 v1, -0xd

    sput v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->SHOWHALF:I

    .line 303
    sput-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isHiCarConnect:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHicarAppInfoBeanList:Ljava/util/List;

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->POSITION_LEFT:I

    .line 214
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->POSITION_RIGHT:I

    .line 253
    new-instance v2, Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-direct {v2}, Lcom/android/systemui/plugins/VolumeDialogController$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 254
    new-instance v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    .line 275
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mClimateSliderShiftIcons:Ljava/util/List;

    .line 280
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatShort:Z

    .line 281
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatShort:Z

    .line 284
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isAcTrunOnDri:Z

    .line 285
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isAcTrunOnPass:Z

    .line 290
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsDriverScroll:Z

    .line 291
    iput v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hmiEnterStatus:I

    .line 292
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->lastClickTime:J

    .line 294
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsAudioServiceFeedBack:Z

    .line 297
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsSyncVolumeState:Z

    .line 338
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mShouldPowerHvac:Z

    .line 341
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->heatNeedScroll:Z

    .line 342
    iput v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentClimateShift:I

    .line 343
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentMediaSource:I

    .line 344
    iput v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentLocalSource:I

    .line 364
    iput v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hiCarSelectedIndex:I

    .line 365
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isWaitingTurn:Z

    .line 366
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isNeedSaveApplistData:Z

    .line 368
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appPowerUpRefrsh:Z

    .line 369
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appPowerUpRefrshStart:Z

    .line 370
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appPowerUpFileReadEnd:Z

    .line 371
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->policyReady:Z

    .line 372
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    .line 373
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hicarAppInfoList:Ljava/util/ArrayList;

    .line 374
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->recentApps:Ljava/util/ArrayList;

    .line 375
    iput-wide v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->dragTime:J

    .line 382
    iput v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->statusBarWindowState:I

    .line 422
    new-instance v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$1;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mApiReadyCallback:Lcom/zeekr/sdk/base/ApiReadyCallback;

    .line 548
    new-instance v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$2;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAppListTouchListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppListTouchListener;

    .line 685
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isClimateChanged:Z

    .line 1068
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager$20;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$20;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSimpleOnGestureListener:Landroid/view/GestureDetector;

    .line 1138
    new-instance v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$22;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$22;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mStartupStateObserver:Lcom/zeekr/sdk/policy/observers/StartupStateObserver;

    .line 1425
    const/16 v1, 0x139

    iput v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListLeft:I

    .line 1426
    const/16 v1, 0x733

    iput v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListRight:I

    .line 1427
    const/16 v1, 0x28

    iput v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListTop:I

    .line 1428
    const/16 v1, 0x2c2

    iput v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListBottom:I

    .line 1429
    const/16 v1, 0x64a

    iput v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->changePagewidth:I

    .line 1433
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->overMinSkipDis:Z

    .line 1434
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isNeedUninstall:Z

    .line 1436
    new-instance v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mOnDragListenerApplist:Landroid/view/View$OnDragListener;

    .line 1649
    new-instance v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$30;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$30;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mItemTagCallBack:Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter$IClickTagCallBack;

    .line 1967
    iput v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListOffsetPixels:I

    .line 2002
    new-instance v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$33;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$33;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mReceiveWidgetInfoCallback:Lecarx/xsf/widget/IReceiveWidgetInfoCallback;

    .line 2098
    new-instance v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$34;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$34;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCallback:Lcom/zeekr/sdk/base/ApiReadyCallback;

    .line 2108
    new-instance v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    .line 2184
    iput v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->actrueClimate:I

    .line 2185
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isAutoClimate:Z

    .line 2187
    new-instance v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$36;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$36;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateHandler:Landroid/os/Handler;

    .line 2576
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isDriverNeedWaite:Ljava/lang/Boolean;

    .line 2577
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isPassengerNeedWaite:Ljava/lang/Boolean;

    .line 2578
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isDriverSetNeedWaite:Ljava/lang/Boolean;

    .line 2579
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isPassengerSetNeedWaite:Ljava/lang/Boolean;

    .line 3920
    iput v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->acutreClimateShift:I

    .line 5501
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appTaskInfos:Ljava/util/Map;

    .line 5698
    new-instance v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$48;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$48;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 5847
    new-instance v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$51;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$51;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->heightAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 385
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isShowing:Z

    .line 386
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    .line 387
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->ObserveOutVolume()V

    .line 388
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->ObserveHiCarAppList()V

    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->packageManager:Landroid/content/pm/PackageManager;

    .line 390
    invoke-static {}, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->getAppDefault()V

    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->um:Landroid/os/UserManager;

    .line 392
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 393
    const-class v0, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 395
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mWindowManager:Landroid/view/WindowManager;

    .line 396
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 397
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 398
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mWidth:I

    .line 399
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHeight:I

    .line 401
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->createSliderAppListWindowView()V

    .line 402
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->createSliderWindowView()V

    .line 403
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->initMediaApi()V

    .line 404
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAnimation()V

    .line 405
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAnimationBin()V

    .line 406
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAnimationFloat()V

    .line 407
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->outrowCloseAnimation()V

    .line 409
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessage(I)Z

    .line 410
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const/16 v2, 0x71

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessage(I)Z

    .line 411
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const/16 v2, 0x73

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessage(I)Z

    .line 412
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAudioManager:Landroid/media/AudioManager;

    .line 413
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "systemhmi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/systemHMI/SystemHMIManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    .line 414
    new-instance v1, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSignalClusterViewForPMA:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    .line 415
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSignalClusterViewForPMA:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    const v2, 0x7f0a01ae

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->findViewById(I)Landroid/view/View;

    .line 417
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 418
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "ACTION_START_APPLIST_HICAR"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 419
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 420
    return-void
.end method

.method private ObserveHiCarAppList()V
    .locals 5

    .line 5597
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 5598
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5599
    .local v0, "mHiCarAppListResolver":Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$46;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$46;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Landroid/os/Handler;)V

    .line 5608
    .local v1, "observer":Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.zeekrlife.connect.core.HiCarAppListPropertiesProvider/query/all"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5612
    .end local v0    # "mHiCarAppListResolver":Landroid/content/ContentResolver;
    .end local v1    # "observer":Landroid/database/ContentObserver;
    :cond_0
    goto :goto_0

    .line 5610
    :catch_0
    move-exception v0

    .line 5611
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5613
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private ObserveOutVolume()V
    .locals 5

    .line 5580
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 5581
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5582
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$45;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$45;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 5591
    .local v1, "observer":Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "audio_exterior_status"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5593
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "observer":Landroid/database/ContentObserver;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->policyReady:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hiCarSelectedIndex:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # I

    .line 139
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hiCarSelectedIndex:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # Z

    .line 139
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->policyReady:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->heatNeedScroll:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/support/v7/widget/LinearSnapHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationLinearSnapHelper:Landroid/support/v7/widget/LinearSnapHelper;

    return-object v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .line 139
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->driverSeatSelected(ZI)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/support/v7/widget/LinearSnapHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationLinearSnapHelper:Landroid/support/v7/widget/LinearSnapHelper;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/pma/SliderWindowManager;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->passengerSeatSelected(ZI)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isClimateChanged:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # Z

    .line 139
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isClimateChanged:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentClimateShift:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # I

    .line 139
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentClimateShift:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSimpleOnGestureListener:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->acutreClimateShift:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # I

    .line 139
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->acutreClimateShift:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateLevelShow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->systemTimeVerification()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isAllStreamMute()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->marginOutRowLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->animatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->tvAppDelete:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroidx/viewpager/widget/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appDeleteBin:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListSlider:Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/view/animation/TranslateAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniBig:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # I

    .line 139
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListOffsetPixels:I

    return p1
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/support/design/widget/TabLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAppTabLayout:Landroid/support/design/widget/TabLayout;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->curIndex:I

    return v0
.end method

.method static synthetic access$3502(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # I

    .line 139
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->curIndex:I

    return p1
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->overMinSkipDis:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # Z

    .line 139
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->overMinSkipDis:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->dragX:F

    return v0
.end method

.method static synthetic access$3702(Lcom/android/systemui/statusbar/pma/SliderWindowManager;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # F

    .line 139
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->dragX:F

    return p1
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->dragY:F

    return v0
.end method

.method static synthetic access$3802(Lcom/android/systemui/statusbar/pma/SliderWindowManager;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # F

    .line 139
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->dragY:F

    return p1
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isNeedUninstall:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # Z

    .line 139
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isNeedUninstall:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroidx/viewpager/widget/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hiCarViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isNeedSaveApplistData:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # Z

    .line 139
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isNeedSaveApplistData:Z

    return p1
.end method

.method static synthetic access$4076(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # I

    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isNeedSaveApplistData:Z

    or-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isNeedSaveApplistData:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isWaitingTurn:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # Z

    .line 139
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isWaitingTurn:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListLeft:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListRight:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListTop:I

    return v0
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListBottom:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/DragEvent;

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->handleDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-wide v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->dragTime:J

    return-wide v0
.end method

.method static synthetic access$4900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/view/animation/TranslateAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniSmall:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->group:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->refreshAppListPage()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentMediaSource:I

    return v0
.end method

.method static synthetic access$5102(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # I

    .line 139
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentMediaSource:I

    return p1
.end method

.method static synthetic access$5202(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # I

    .line 139
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentLocalSource:I

    return p1
.end method

.method static synthetic access$5300(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lecarx/xsf/widget/IReceiveWidgetInfoCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mReceiveWidgetInfoCallback:Lecarx/xsf/widget/IReceiveWidgetInfoCallback;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->deleteApp:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->uninstallBackground:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isAcTrunOnDri:Z

    return v0
.end method

.method static synthetic access$5802(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # Z

    .line 139
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isAcTrunOnDri:Z

    return p1
.end method

.method static synthetic access$5900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriTemp:I

    return v0
.end method

.method static synthetic access$5902(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # I

    .line 139
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriTemp:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hiCarPageCount:I

    return v0
.end method

.method static synthetic access$6002(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # Z

    .line 139
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsDriverScroll:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveToPosition(II)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isAcTrunOnPass:Z

    return v0
.end method

.method static synthetic access$6202(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # Z

    .line 139
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isAcTrunOnPass:Z

    return p1
.end method

.method static synthetic access$6300(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassTemp:I

    return v0
.end method

.method static synthetic access$6302(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # I

    .line 139
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassTemp:I

    return p1
.end method

.method static synthetic access$6400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateAllStreamSlider()V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/plugins/VolumeDialogController$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateHeatVentilationLayout(II)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mMusicRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mOutRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->group_hiCar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appPowerUpFileReadEnd:Z

    return v0
.end method

.method static synthetic access$7002(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # Z

    .line 139
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appPowerUpFileReadEnd:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appPowerUpRefrshStart:Z

    return v0
.end method

.method static synthetic access$7102(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # Z

    .line 139
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appPowerUpRefrshStart:Z

    return p1
.end method

.method static synthetic access$7200(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appPowerUpRefrsh:Z

    return v0
.end method

.method static synthetic access$7202(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # Z

    .line 139
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appPowerUpRefrsh:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hicarAppInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7302(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 139
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hicarAppInfoList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$7400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->recentApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 139
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->initRecent(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mRecentAppAdapter:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->registerStartupStateObserverHandle()V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appTaskInfos:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->recent:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/ScrollOverLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->scrollOverLayout:Lcom/android/systemui/statusbar/pma/ScrollOverLayout;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->tvRecent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->imgNoRecent:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isDriverNeedWaite:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isDriverSetNeedWaite:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$8302(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 139
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isDriverSetNeedWaite:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$8400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isPassengerNeedWaite:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isPassengerSetNeedWaite:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$8502(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 139
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isPassengerSetNeedWaite:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$8600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->openApplistInternal()V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p1, "x1"    # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->openSliderInternal(I)V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderAppListView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatSelected:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->pageCount:I

    return v0
.end method

.method static synthetic access$9000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatSelected:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->outRowLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private appListAnimationHide()V
    .locals 5

    .line 5323
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    .line 5324
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isAppListShowing:Z

    if-nez v0, :cond_0

    .line 5325
    return-void

    .line 5327
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5328
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAniShow:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5329
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAniShow:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5331
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->vh:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5332
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->vh:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 5333
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->vh:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->startAnimationSmall()V

    .line 5334
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->vh:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->setAppDeleteIconVisible(Z)V

    .line 5336
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAniHide:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5337
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListSlider:Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->getY()F

    move-result v0

    const/high16 v2, 0x44960000    # 1200.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 5338
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAniHide:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListSlider:Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->getY()F

    move-result v3

    sub-float v3, v2, v3

    const/high16 v4, 0x44610000    # 900.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x43480000    # 200.0f

    mul-float/2addr v3, v4

    float-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5339
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAniHide:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListSlider:Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->getY()F

    move-result v4

    aput v4, v3, v1

    const/4 v1, 0x1

    aput v2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 5340
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAniHide:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 5342
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListSlider:Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->setY(F)V

    .line 5343
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeAppList()V

    .line 5346
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 5347
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListBGHide:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5348
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListBackground:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5349
    return-void
.end method

.method private appListAnimationShow()V
    .locals 5

    .line 5352
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAniHide:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5353
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAniHide:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5355
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAniShow:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5356
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListSlider:Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->getY()F

    move-result v0

    const/high16 v1, 0x43960000    # 300.0f

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 5357
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAniShow:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListSlider:Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->getY()F

    move-result v3

    sub-float/2addr v3, v1

    const/high16 v4, 0x44610000    # 900.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x43480000    # 200.0f

    mul-float/2addr v3, v4

    float-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5358
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAniShow:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListSlider:Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->getY()F

    move-result v4

    aput v4, v3, v2

    const/4 v2, 0x1

    aput v1, v3, v2

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 5359
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAniShow:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 5360
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListSlider:Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->getY()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 5361
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListSlider:Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->setY(F)V

    .line 5362
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListBackground:Landroid/widget/ImageView;

    const/16 v1, 0x3e

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 5365
    :cond_2
    :goto_0
    return-void
.end method

.method private changeClimateSliderType(Z)V
    .locals 4
    .param p1, "isDay"    # Z

    .line 2382
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mClimateSliderShiftIcons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2383
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mClimateSliderShiftDraws:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 2384
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2385
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mClimateSliderShiftIcons:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mClimateSliderShiftDraws:Landroid/content/res/TypedArray;

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2384
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2387
    .end local v1    # "i":I
    :cond_0
    if-eqz p1, :cond_1

    .line 2388
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    const v2, 0x7f08042e

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2389
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateMinIcon:Landroid/widget/ImageView;

    const v2, 0x7f08050b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2390
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateMaxIcon:Landroid/widget/ImageView;

    const v2, 0x7f080509

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 2392
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    const v2, 0x7f08042f

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2393
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateMinIcon:Landroid/widget/ImageView;

    const v2, 0x7f08050c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2394
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateMaxIcon:Landroid/widget/ImageView;

    const v2, 0x7f08050a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2396
    :goto_1
    return-void
.end method

.method private changeMuteButtonType(Z)V
    .locals 3
    .param p1, "isDay"    # Z

    .line 2368
    if-eqz p1, :cond_0

    .line 2369
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->muteButton:Landroid/widget/FrameLayout;

    const v1, 0x7f080642

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 2370
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->muteIcon:Landroid/widget/ImageView;

    const v1, 0x7f080644

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2371
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->muteText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060155

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 2373
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->muteButton:Landroid/widget/FrameLayout;

    const v1, 0x7f080643

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 2374
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->muteIcon:Landroid/widget/ImageView;

    const v1, 0x7f080645

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2375
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->muteText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2377
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->muteButton:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2378
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->checkMute()V

    .line 2379
    return-void
.end method

.method private changeOutRowButtonType(Z)V
    .locals 3
    .param p1, "isDay"    # Z

    .line 2356
    if-eqz p1, :cond_0

    .line 2357
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->outRowButton:Landroid/widget/FrameLayout;

    const v1, 0x7f080646

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 2358
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->outRowButtonText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060155

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 2360
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->outRowButton:Landroid/widget/FrameLayout;

    const v1, 0x7f080647

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 2361
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->outRowButtonText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2363
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->outRowButton:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2364
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->checkMute()V

    .line 2365
    return-void
.end method

.method private changeTheme(I)V
    .locals 11
    .param p1, "value"    # I

    .line 3223
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 3224
    .local v2, "isDay":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    if-eqz v3, :cond_3

    .line 3225
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    if-eqz v2, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->setDayNight(Z)V

    .line 3226
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    if-eqz v2, :cond_2

    move v4, v0

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->setDayNight(Z)V

    .line 3232
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListSlider:Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;

    const/16 v4, 0x2e

    const/16 v5, 0x28

    const/16 v6, 0xf2

    if-eqz v2, :cond_4

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    goto :goto_3

    :cond_4
    invoke-static {v5, v5, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    :goto_3
    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->setBackgroundColor(I)V

    .line 3233
    if-eqz v2, :cond_5

    .line 3234
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAppTabLayout:Landroid/support/design/widget/TabLayout;

    const/16 v7, 0x88

    const/16 v8, 0x89

    const/16 v9, 0x8b

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    const/16 v8, 0x38

    const/16 v9, 0x3a

    const/16 v10, 0x3d

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/support/design/widget/TabLayout;->setTabTextColors(II)V

    goto :goto_4

    .line 3236
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAppTabLayout:Landroid/support/design/widget/TabLayout;

    const-string v7, "#99B4B9BE"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0xb4

    const/16 v9, 0xb9

    const/16 v10, 0xbe

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/support/design/widget/TabLayout;->setTabTextColors(II)V

    .line 3238
    :goto_4
    sget-boolean v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isHiCarConnect:Z

    if-eqz v3, :cond_6

    .line 3239
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAppTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3, v0}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 3241
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAppTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3, v0}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3243
    :goto_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->deleteBackground:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_7

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    goto :goto_6

    :cond_7
    invoke-static {v5, v5, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    :goto_6
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 3244
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appDivider:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_8

    const/16 v4, 0xd8

    const/16 v5, 0xda

    const/16 v6, 0xdb

    :goto_7
    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    goto :goto_8

    :cond_8
    const/16 v5, 0x2f

    const/16 v6, 0x33

    goto :goto_7

    :goto_8
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 3245
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$qLzAoRa_W9YjZcHiF9QqAfDViZc;

    invoke-direct {v4, p0, v2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$qLzAoRa_W9YjZcHiF9QqAfDViZc;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 3263
    if-nez v2, :cond_9

    move v0, v1

    nop

    :cond_9
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsBlack:Z

    .line 3264
    return-void
.end method

.method private checkMute()V
    .locals 7

    .line 2399
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mOutRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getTargetLevel()I

    move-result v0

    .line 2400
    .local v0, "outProg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mMusicRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getTargetLevel()I

    move-result v1

    .line 2401
    .local v1, "musicProg":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mNavRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getTargetLevel()I

    move-result v2

    .line 2402
    .local v2, "navProg":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPhoneRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getTargetLevel()I

    move-result v3

    .line 2403
    .local v3, "phoneProg":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVrRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getTargetLevel()I

    move-result v4

    .line 2404
    .local v4, "vrProg":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->animatorSet:Landroid/animation/AnimatorSet;

    if-nez v5, :cond_0

    .line 2405
    return-void

    .line 2407
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->marginOutRowLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2408
    :cond_1
    const/4 v0, 0x0

    .line 2410
    :cond_2
    if-gtz v0, :cond_4

    if-gtz v1, :cond_4

    if-gtz v2, :cond_4

    if-gtz v3, :cond_4

    if-lez v4, :cond_3

    goto :goto_0

    .line 2416
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->muteButton:Landroid/widget/FrameLayout;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 2417
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->muteIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2418
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->muteText:Landroid/widget/TextView;

    const v6, 0x7f11042f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 2411
    :cond_4
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->muteButton:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 2412
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->muteIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2413
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->muteText:Landroid/widget/TextView;

    const v6, 0x7f11042d

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 2420
    :goto_1
    return-void
.end method

.method private createSliderAppListWindowView()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 557
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0d013a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderAppListView:Landroid/view/View;

    .line 558
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderAppListView:Landroid/view/View;

    const v1, 0x7f0a005f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAppTabLayout:Landroid/support/design/widget/TabLayout;

    .line 559
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderAppListView:Landroid/view/View;

    const v1, 0x7f0a0058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListSlider:Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;

    .line 560
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderAppListView:Landroid/view/View;

    const v1, 0x7f0a0262

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appDivider:Landroid/widget/FrameLayout;

    .line 561
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderAppListView:Landroid/view/View;

    const v1, 0x7f0a0103

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->deleteApp:Landroid/widget/ImageView;

    .line 562
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderAppListView:Landroid/view/View;

    const v1, 0x7f0a01ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListBackground:Landroid/widget/ImageView;

    .line 563
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderAppListView:Landroid/view/View;

    const v1, 0x7f0a03a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 564
    .local v0, "recentMask":Landroid/view/View;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderAppListView:Landroid/view/View;

    const v2, 0x7f0a0104

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->deleteBackground:Landroid/widget/FrameLayout;

    .line 565
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderAppListView:Landroid/view/View;

    const v2, 0x7f0a04f2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->uninstallBackground:Landroid/widget/FrameLayout;

    .line 566
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderAppListView:Landroid/view/View;

    const v2, 0x7f0a0050

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appDeleteBin:Landroid/widget/FrameLayout;

    .line 567
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderAppListView:Landroid/view/View;

    const v2, 0x7f0a01db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->imgDeleteBin:Landroid/widget/ImageView;

    .line 568
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderAppListView:Landroid/view/View;

    const v2, 0x7f0a04a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->tvAppDelete:Landroid/widget/TextView;

    .line 569
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderAppListView:Landroid/view/View;

    const v2, 0x7f0a0057

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListExit:Landroid/widget/FrameLayout;

    .line 570
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderAppListView:Landroid/view/View;

    const v2, 0x7f0a01f1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->imgNoRecent:Landroid/widget/ImageView;

    .line 571
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderAppListView:Landroid/view/View;

    const v2, 0x7f0a04a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->tvRecent:Landroid/widget/TextView;

    .line 572
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderAppListView:Landroid/view/View;

    const v2, 0x7f0a03a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->recent:Landroidx/recyclerview/widget/RecyclerView;

    .line 573
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListSlider:Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mOnDragListenerApplist:Landroid/view/View$OnDragListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 574
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListSlider:Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAppListTouchListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppListTouchListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->setAppListTouchListener(Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppListTouchListener;)V

    .line 575
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->deleteBackground:Landroid/widget/FrameLayout;

    const v2, 0x3f2e147b    # 0.68f

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 576
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v1

    const/16 v2, 0x3d

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 577
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListSlider:Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;

    const/16 v4, 0xf2

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->setBackgroundColor(I)V

    .line 578
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->deleteBackground:Landroid/widget/FrameLayout;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 579
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAppTabLayout:Landroid/support/design/widget/TabLayout;

    const/16 v4, 0x88

    const/16 v5, 0x89

    const/16 v6, 0x8b

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    const/16 v5, 0x38

    const/16 v6, 0x3a

    invoke-static {v5, v6, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/support/design/widget/TabLayout;->setTabTextColors(II)V

    goto :goto_0

    .line 581
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListSlider:Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;

    const/16 v4, 0x17

    const/16 v5, 0x15

    const/16 v6, 0x14

    invoke-static {v6, v5, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->setBackgroundColor(I)V

    .line 582
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->deleteBackground:Landroid/widget/FrameLayout;

    invoke-static {v6, v5, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 583
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAppTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/16 v4, 0x83

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/support/design/widget/TabLayout;->setTabTextColors(II)V

    .line 585
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isHiCarConnect:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 586
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAppTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 588
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAppTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 590
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListBackground:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$HYIqigyCbC2nzAYpyl2cNnn5WcQ;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$HYIqigyCbC2nzAYpyl2cNnn5WcQ;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    sget-object v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$KCuxJCNLd3yky_vVjO4HIDm3j2w;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$KCuxJCNLd3yky_vVjO4HIDm3j2w;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 592
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListSlider:Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;

    new-instance v4, Lcom/android/systemui/statusbar/pma/SliderWindowManager$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$3;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 600
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListExit:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/android/systemui/statusbar/pma/SliderWindowManager$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$4;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->uninstallBackground:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/android/systemui/statusbar/pma/SliderWindowManager$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$5;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appDeleteBin:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/android/systemui/statusbar/pma/SliderWindowManager$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$6;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAppTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 623
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListSlider:Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;

    const v2, 0x7f0a03f7

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->scrollOverLayout:Lcom/android/systemui/statusbar/pma/ScrollOverLayout;

    .line 624
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAppTabLayout:Landroid/support/design/widget/TabLayout;

    new-instance v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 683
    return-void
.end method

.method private createSliderWindowView()V
    .locals 5

    .line 688
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0d013c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rootView:Landroid/widget/FrameLayout;

    .line 689
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rootView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 690
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rootView:Landroid/widget/FrameLayout;

    .line 691
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rootView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 694
    new-instance v0, Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    .line 695
    .local v0, "viewStub":Landroid/view/ViewStub;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 698
    const v1, 0x7f0d013b

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 699
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 701
    .end local v0    # "viewStub":Landroid/view/ViewStub;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rootView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0430

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 703
    .restart local v0    # "viewStub":Landroid/view/ViewStub;
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    .line 704
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a045f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSyncTempIconLayout:Landroid/widget/FrameLayout;

    .line 705
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a045e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSyncTempIcon:Landroid/widget/TextView;

    .line 708
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a0378

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    .line 709
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a0380

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    .line 710
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a0133

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilation:Landroid/support/v7/widget/RecyclerView;

    .line 711
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a0353

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilation:Landroid/support/v7/widget/RecyclerView;

    .line 712
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a00cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    .line 713
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a00cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSliderTouch:Landroid/view/View;

    .line 714
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a01dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->imgDimBackground:Landroid/widget/ImageView;

    .line 715
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a052d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    .line 716
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a052e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeTouch:Landroid/view/ViewGroup;

    .line 717
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a02b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->marginOutRowLayout:Landroid/widget/FrameLayout;

    .line 718
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a0340

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->outRowLayout:Landroid/widget/FrameLayout;

    .line 719
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a033e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mOutRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    .line 720
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a0300

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mNavRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    .line 721
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a035b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPhoneRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    .line 722
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a02fa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mMusicRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    .line 723
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a0535

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVrRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    .line 724
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a0136

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    .line 725
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a0356

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    .line 726
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a0135

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTouch:Landroid/view/View;

    .line 727
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a0355

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTouch:Landroid/view/View;

    .line 728
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a0134

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    .line 729
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a0354

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    .line 730
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a01e0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatSelected:Landroid/widget/ImageView;

    .line 731
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a01fe

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatSelected:Landroid/widget/ImageView;

    .line 732
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a033f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->outRowButton:Landroid/widget/FrameLayout;

    .line 733
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a04d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->outRowButtonText:Landroid/widget/TextView;

    .line 734
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a02fb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->muteButton:Landroid/widget/FrameLayout;

    .line 735
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a0229

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->muteIcon:Landroid/widget/ImageView;

    .line 736
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a04c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->muteText:Landroid/widget/TextView;

    .line 737
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a00cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateMinIcon:Landroid/widget/ImageView;

    .line 738
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a00ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateMaxIcon:Landroid/widget/ImageView;

    .line 739
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    const v2, 0x7f0a0226

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateLevelShow:Landroid/widget/ImageView;

    .line 740
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mOutRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setVolumeType(II)V

    .line 741
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mNavRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setVolumeType(II)V

    .line 742
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPhoneRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setVolumeType(II)V

    .line 743
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mMusicRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setVolumeType(II)V

    .line 744
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVrRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    const/16 v2, 0xc

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setVolumeType(II)V

    .line 745
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 746
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    const v4, 0x7f0806fe

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 747
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->changeMuteButtonType(Z)V

    .line 748
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->changeOutRowButtonType(Z)V

    .line 749
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    const v4, 0x7f080618

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 750
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->setDayOrNight(Z)V

    .line 751
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->setDayOrNight(Z)V

    goto :goto_1

    .line 753
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    const v2, 0x7f0806fb

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 754
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->changeMuteButtonType(Z)V

    .line 755
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->changeOutRowButtonType(Z)V

    .line 756
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    const v2, 0x7f080619

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 757
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->setDayOrNight(Z)V

    .line 758
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->setDayOrNight(Z)V

    .line 760
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mOutRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setSeekBarStateListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 761
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mNavRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setSeekBarStateListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 762
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPhoneRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setSeekBarStateListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 763
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mMusicRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setSeekBarStateListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 764
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVrRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setSeekBarStateListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 765
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mOutRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setOnSeekBarTargetStateListener(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$OnSeekBarTargetStateListener;)V

    .line 766
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mNavRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setOnSeekBarTargetStateListener(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$OnSeekBarTargetStateListener;)V

    .line 767
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPhoneRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setOnSeekBarTargetStateListener(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$OnSeekBarTargetStateListener;)V

    .line 768
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mMusicRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setOnSeekBarTargetStateListener(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$OnSeekBarTargetStateListener;)V

    .line 769
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVrRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setOnSeekBarTargetStateListener(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$OnSeekBarTargetStateListener;)V

    .line 771
    const/16 v1, 0x4c

    iput v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->tempItemHeight:I

    .line 772
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070379

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->shiftItemHeight:I

    .line 773
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070378

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->heatVentViewHeight:I

    .line 774
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070369

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->heatVentViewWigth:I

    .line 775
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070367

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->shiftDriverItemMargin:I

    .line 776
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070370

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->shiftPassengerItemMargin:I

    .line 778
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverLayoutManger:Landroid/support/v7/widget/LinearLayoutManager;

    .line 779
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverLayoutManger:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 782
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 783
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 788
    new-instance v1, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    .line 789
    new-instance v1, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    .line 790
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 791
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 792
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 793
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 794
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilation:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 795
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilation:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 796
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilation:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 797
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilation:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 799
    new-instance v1, Landroid/support/v7/widget/LinearSnapHelper;

    invoke-direct {v1}, Landroid/support/v7/widget/LinearSnapHelper;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempLinearSnapHelper:Landroid/support/v7/widget/LinearSnapHelper;

    .line 800
    new-instance v1, Landroid/support/v7/widget/LinearSnapHelper;

    invoke-direct {v1}, Landroid/support/v7/widget/LinearSnapHelper;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempLinearSnapHelper:Landroid/support/v7/widget/LinearSnapHelper;

    .line 801
    new-instance v1, Landroid/support/v7/widget/LinearSnapHelper;

    invoke-direct {v1}, Landroid/support/v7/widget/LinearSnapHelper;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationLinearSnapHelper:Landroid/support/v7/widget/LinearSnapHelper;

    .line 802
    new-instance v1, Landroid/support/v7/widget/LinearSnapHelper;

    invoke-direct {v1}, Landroid/support/v7/widget/LinearSnapHelper;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationLinearSnapHelper:Landroid/support/v7/widget/LinearSnapHelper;

    .line 804
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationLinearSnapHelper:Landroid/support/v7/widget/LinearSnapHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilation:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/LinearSnapHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 805
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationLinearSnapHelper:Landroid/support/v7/widget/LinearSnapHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilation:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/LinearSnapHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 807
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setSliderDNmode(I)V

    .line 808
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setDriverHeatVentilationBasis()V

    .line 809
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setPassengerHeatVentilationBasis()V

    .line 811
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilation:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 812
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilation:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 814
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilation:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$8;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 852
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilation:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$9;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 889
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->imgDimBackground:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$SX1O4WkBRd2BBW2Vn0iThc14bvE;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$SX1O4WkBRd2BBW2Vn0iThc14bvE;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 890
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTouch:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$10;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 896
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTouch:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager$11;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$11;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 902
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeTouch:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager$12;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$12;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 909
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSliderTouch:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager$13;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$13;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 918
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateMinIcon:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager$14;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$14;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 926
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateMaxIcon:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager$15;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$15;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 935
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateLevelShow:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1011
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSyncTempIconLayout:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager$17;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$17;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1022
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->muteButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager$18;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$18;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1032
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->outRowButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager$19;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$19;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1050
    return-void
.end method

.method private driverSeatSelected(ZI)V
    .locals 5
    .param p1, "isAnimation"    # Z
    .param p2, "pos"    # I

    .line 5368
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->driverSeatAnimationSelected:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5369
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->driverSeatAnimationSelected:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5371
    :cond_0
    const/16 v0, 0x2f

    if-eqz p1, :cond_1

    .line 5372
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->driverSeatAnimationSelected:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5373
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->driverSeatAnimationSelected:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatSelected:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getX()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    mul-int/lit8 v4, p2, 0x62

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x27

    int-to-float v0, v0

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 5374
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->driverSeatAnimationSelected:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 5376
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatSelected:Landroid/widget/ImageView;

    mul-int/lit8 v2, p2, 0x62

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x27

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 5378
    :goto_0
    return-void
.end method

.method private getCurrentStream()I
    .locals 4

    .line 4657
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getActiveStreamType()I

    move-result v0

    .line 4658
    .local v0, "stream":I
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 4659
    const-string v1, "SliderWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentStream stream = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mIsSettingsExterior = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsSettingsExterior:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4662
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 4663
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsSettingsExterior:Z

    if-eqz v1, :cond_7

    .line 4664
    const/16 v0, 0xf

    goto :goto_0

    .line 4666
    :cond_1
    if-nez v0, :cond_2

    goto :goto_0

    .line 4668
    :cond_2
    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 4670
    :cond_3
    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 4672
    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    goto :goto_0

    .line 4675
    :cond_5
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 4676
    const-string v1, "SliderWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentStream Error Not Support Stream = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4678
    :cond_6
    const/4 v0, 0x3

    .line 4681
    :cond_7
    :goto_0
    return v0
.end method

.method private getSeekBarEventName(I)Ljava/lang/String;
    .locals 1
    .param p1, "which"    # I

    .line 4642
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 4652
    const-string/jumbo v0, "\u591a\u5a92\u4f53"

    return-object v0

    .line 4650
    :pswitch_0
    const-string/jumbo v0, "\u8bed\u97f3"

    return-object v0

    .line 4644
    :pswitch_1
    const-string/jumbo v0, "\u5bfc\u822a"

    return-object v0

    .line 4646
    :cond_0
    const-string/jumbo v0, "\u591a\u5a92\u4f53"

    return-object v0

    .line 4648
    :cond_1
    const-string/jumbo v0, "\u7535\u8bdd"

    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSeekBarView(I)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;
    .locals 1
    .param p1, "which"    # I

    .line 4625
    if-eqz p1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 4637
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mMusicRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    return-object v0

    .line 4633
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVrRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    return-object v0

    .line 4627
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mNavRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    return-object v0

    .line 4635
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mOutRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    return-object v0

    .line 4629
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mMusicRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    return-object v0

    .line 4631
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPhoneRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    return-object v0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getStateStream(Lcom/android/systemui/plugins/VolumeDialogController$State;)I
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 4752
    iget v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 4753
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4754
    const-string v0, "SliderWindowManager"

    const-string v1, "getStateStream Error mState Not Active Stream !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4756
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsSettingsExterior:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsActionExterior:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4759
    :cond_1
    const/4 v0, 0x3

    return v0

    .line 4757
    :cond_2
    :goto_0
    const/16 v0, 0xf

    return v0

    .line 4762
    :cond_3
    iget v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    return v0
.end method

.method private getVolumeStateLevel(Lcom/android/systemui/plugins/VolumeDialogController$State;I)I
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/plugins/VolumeDialogController$State;
    .param p2, "stream"    # I

    .line 4714
    iget-object v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 4715
    .local v0, "tmpStreamState":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    if-eqz v0, :cond_0

    .line 4716
    iget v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    return v1

    .line 4718
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private getVolumeStateLevelMax(Lcom/android/systemui/plugins/VolumeDialogController$State;I)I
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/plugins/VolumeDialogController$State;
    .param p2, "stream"    # I

    .line 4722
    iget-object v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 4723
    .local v0, "tmpStreamState":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    if-eqz v0, :cond_0

    .line 4724
    iget v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    return v1

    .line 4726
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private getVolumeStateLevelMin(Lcom/android/systemui/plugins/VolumeDialogController$State;I)I
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/plugins/VolumeDialogController$State;
    .param p2, "stream"    # I

    .line 4730
    iget-object v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 4731
    .local v0, "tmpStreamState":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    if-eqz v0, :cond_0

    .line 4732
    iget v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    return v1

    .line 4734
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private handleDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dragEvent"    # Landroid/view/DragEvent;

    .line 1572
    const/4 v0, 0x0

    .line 1573
    .local v0, "isChange":Z
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;

    .line 1574
    .local v1, "dragData":Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;
    const/4 v2, 0x0

    .line 1576
    .local v2, "toRecycleView":Landroidx/recyclerview/widget/RecyclerView;
    instance-of v3, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_a

    .line 1577
    move-object v2, p1

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 1578
    if-nez v2, :cond_0

    .line 1579
    return v0

    .line 1581
    :cond_0
    iget-object v3, v1, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    .line 1583
    .local v3, "fromPosition":I
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListLeft:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v5

    const/high16 v6, 0x42700000    # 60.0f

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListTop:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v4

    .line 1585
    .local v4, "item":Landroid/view/View;
    iget-object v5, v1, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v6, 0x15

    const/4 v7, 0x1

    if-ne v2, v5, :cond_4

    .line 1586
    if-nez v4, :cond_1

    .line 1587
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->getItemAppCount()I

    move-result v5

    sub-int/2addr v5, v7

    .local v5, "toPosition":I
    goto :goto_0

    .line 1589
    .end local v5    # "toPosition":I
    :cond_1
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v5

    .line 1590
    .restart local v5    # "toPosition":I
    if-ne v3, v5, :cond_2

    .line 1591
    return v0

    .line 1592
    :cond_2
    if-lt v5, v6, :cond_3

    .line 1593
    const/16 v5, 0x14

    .line 1596
    :cond_3
    :goto_0
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v6, v3, v5}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->onItemMove(II)V

    .line 1597
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 1600
    .end local v5    # "toPosition":I
    :cond_4
    if-nez v4, :cond_5

    .line 1601
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->getItemAppCount()I

    move-result v5

    .line 1602
    .restart local v5    # "toPosition":I
    if-le v5, v6, :cond_6

    .line 1603
    const/16 v5, 0x15

    goto :goto_1

    .line 1606
    .end local v5    # "toPosition":I
    :cond_5
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v5

    .line 1621
    .restart local v5    # "toPosition":I
    :cond_6
    :goto_1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_8

    .line 1622
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->getPage()I

    move-result v6

    iget-object v8, v1, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->getPage()I

    move-result v8

    sub-int/2addr v6, v8

    if-ne v6, v7, :cond_7

    .line 1623
    if-nez v5, :cond_7

    .line 1624
    return v0

    .line 1627
    :cond_7
    iget-object v6, v1, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->getPageData()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    .line 1629
    .local v6, "fromAppInfo":Lcom/android/systemui/statusbar/pma/applist/AppInfo;
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->refreshVacancy(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)V

    .line 1631
    iget-object v7, v1, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v7, v3}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->notifyItemRemoved(I)V

    .line 1632
    const/4 v0, 0x1

    .line 1633
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->refreshAppListPage()V

    goto :goto_2

    .line 1634
    .end local v6    # "fromAppInfo":Lcom/android/systemui/statusbar/pma/applist/AppInfo;
    :cond_8
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_a

    .line 1635
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->addVacancy(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1636
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->refreshAppListPage()V

    .line 1638
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->dragTime:J

    .line 1643
    .end local v3    # "fromPosition":I
    .end local v4    # "item":Landroid/view/View;
    .end local v5    # "toPosition":I
    :cond_a
    :goto_2
    if-eqz v0, :cond_b

    .line 1644
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->dragTime:J

    .line 1646
    :cond_b
    return v0
.end method

.method private initMediaApi()V
    .locals 3

    .line 2095
    invoke-static {}, Lcom/zeekr/sdk/mediacenter/impl/MediaCenterAPI;->get()Lcom/zeekr/sdk/mediacenter/impl/MediaCenterAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCallback:Lcom/zeekr/sdk/base/ApiReadyCallback;

    invoke-virtual {v0, v1, v2}, Lcom/zeekr/sdk/mediacenter/impl/MediaCenterAPI;->init(Landroid/content/Context;Lcom/zeekr/sdk/base/ApiReadyCallback;)V

    .line 2096
    return-void
.end method

.method private initRecent(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/pma/applist/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 1086
    .local p1, "dataSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;"
    new-instance v0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mRecentAppAdapter:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    .line 1087
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mRecentAppAdapter:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->setAppClickListener(Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;)V

    .line 1088
    new-instance v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$21;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$21;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Landroid/content/Context;IZ)V

    .line 1094
    .local v0, "mLayoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->recent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1095
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->recent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/android/systemui/statusbar/pma/applist/RecentAppDecoration;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/pma/applist/RecentAppDecoration;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1096
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->recent:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mRecentAppAdapter:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1097
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->recent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1098
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->tvRecent:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1099
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->imgNoRecent:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1100
    return-void
.end method

.method private isAdjustMediaOrCallVolume()Z
    .locals 3

    .line 5894
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "settings_volume_knob_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private isAllStreamMute()Z
    .locals 6

    .line 4738
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->marginOutRowLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xc

    const/16 v3, 0xb

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4744
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 4745
    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 4746
    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 4747
    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 4748
    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4744
    :cond_1
    move v1, v5

    :goto_0
    return v1

    .line 4739
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 4740
    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 4741
    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 4742
    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 4739
    :cond_3
    move v1, v5

    :goto_2
    return v1
.end method

.method private isRepetition(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "count"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activity"    # Ljava/lang/String;

    .line 5424
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 5425
    return v0

    .line 5427
    :cond_0
    const-string v1, "com.ecarx.multimedia"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 5428
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_4

    .line 5429
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5430
    return v2

    .line 5428
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5434
    .end local v1    # "i":I
    :cond_2
    move v1, v0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, p1, :cond_4

    .line 5435
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5436
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getActivity()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5437
    return v2

    .line 5434
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5442
    .end local v1    # "i":I
    :cond_4
    return v0
.end method

.method public static synthetic lambda$changeTheme$6(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)V
    .locals 4
    .param p1, "isDay"    # Z

    .line 3246
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSyncTempIcon:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->isTempSyncState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3247
    if-eqz p1, :cond_0

    const v1, 0x7f08061a

    goto :goto_0

    :cond_0
    const v1, 0x7f08061b

    goto :goto_0

    .line 3248
    :cond_1
    if-eqz p1, :cond_2

    const v1, 0x7f08061c

    goto :goto_0

    :cond_2
    const v1, 0x7f08061d

    .line 3246
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3250
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSyncTempIcon:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->isTempSyncState()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setSyncTextColor(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3251
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->changeMuteButtonType(Z)V

    .line 3252
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->changeOutRowButtonType(Z)V

    .line 3253
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->changeClimateSliderType(Z)V

    .line 3254
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatShort:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHeatOrVentilationShortBg:I

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHeatOrVentilationBg:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3255
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatShort:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHeatOrVentilationShortBg:I

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHeatOrVentilationBg:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3256
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatSelected:Landroid/widget/ImageView;

    const v1, 0x7f0804a5

    const v2, 0x7f0804a4

    if-eqz p1, :cond_5

    move v3, v2

    goto :goto_3

    :cond_5
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3257
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatSelected:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    move v1, v2

    nop

    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3258
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    const v1, 0x7f080619

    const v2, 0x7f080618

    if-eqz p1, :cond_7

    move v3, v2

    goto :goto_4

    :cond_7
    move v3, v1

    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3259
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    if-eqz p1, :cond_8

    move v1, v2

    nop

    :cond_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3260
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->setDayOrNight(Z)V

    .line 3261
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->setDayOrNight(Z)V

    .line 3262
    return-void
.end method

.method public static synthetic lambda$createSliderAppListWindowView$0(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 590
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeAppListSlider()V

    return-void
.end method

.method static synthetic lambda$createSliderAppListWindowView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 591
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$createSliderWindowView$2(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 889
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeAllSlider(Z)V

    return-void
.end method

.method public static synthetic lambda$onAcPowerStateChange$5(Lcom/android/systemui/statusbar/pma/SliderWindowManager;ZZ)V
    .locals 2
    .param p1, "isSync"    # Z
    .param p2, "isAcPowerState"    # Z

    .line 2849
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSyncTempIcon:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 2850
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsBlack:Z

    if-eqz v1, :cond_0

    const v1, 0x7f08061b

    goto :goto_0

    :cond_0
    const v1, 0x7f08061a

    goto :goto_0

    .line 2851
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsBlack:Z

    if-eqz v1, :cond_2

    const v1, 0x7f08061d

    goto :goto_0

    :cond_2
    const v1, 0x7f08061c

    .line 2849
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2854
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSyncTempIcon:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setSyncTextColor(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2855
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSyncTempIconLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2856
    return-void
.end method

.method public static synthetic lambda$onLanguageChange$4(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)V
    .locals 2
    .param p1, "language"    # I

    .line 2831
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSyncTempIcon:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const-string/jumbo v1, "\u540c\u6b65"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "sync"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2832
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->muteText:Landroid/widget/TextView;

    if-nez p1, :cond_1

    const-string/jumbo v1, "\u5168\u90e8\u9759\u97f3"

    goto :goto_1

    :cond_1
    const-string v1, "all mute"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2833
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->outRowButtonText:Landroid/widget/TextView;

    if-nez p1, :cond_2

    const-string/jumbo v1, "\u5173\u95ed"

    goto :goto_2

    :cond_2
    const-string v1, "close"

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2834
    return-void
.end method

.method public static synthetic lambda$onTempSyncStateChange$3(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)V
    .locals 2
    .param p1, "isSync"    # Z

    .line 2812
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSyncTempIcon:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 2813
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsBlack:Z

    if-eqz v1, :cond_0

    const v1, 0x7f08061b

    goto :goto_0

    :cond_0
    const v1, 0x7f08061a

    goto :goto_0

    .line 2814
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsBlack:Z

    if-eqz v1, :cond_2

    const v1, 0x7f08061d

    goto :goto_0

    :cond_2
    const v1, 0x7f08061c

    .line 2812
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2816
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSyncTempIcon:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setSyncTextColor(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2817
    return-void
.end method

.method public static synthetic lambda$setProgressTaskInfo$11(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Ljava/lang/String;F)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "percent"    # F

    .line 5554
    const/4 v0, 0x0

    move v1, v0

    .line 5554
    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->pageCount:I

    if-ge v1, v2, :cond_3

    .line 5555
    move v2, v0

    .line 5555
    .local v2, "position":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 5556
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    .line 5557
    .local v3, "v":Lcom/android/systemui/statusbar/pma/applist/AppItemView;
    if-eqz v3, :cond_0

    .line 5558
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5559
    const/4 v4, 0x1

    invoke-virtual {v3, v4, p2}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->setDownloadProgress(ZF)V

    goto :goto_2

    .line 5562
    :cond_0
    const-string v4, "SliderWindowManager"

    const-string/jumbo v5, "setProgressTaskInfo: v null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5555
    .end local v3    # "v":Lcom/android/systemui/statusbar/pma/applist/AppItemView;
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5554
    .end local v2    # "position":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5566
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public static synthetic lambda$updateHeatVentilationLayout$10(Lcom/android/systemui/statusbar/pma/SliderWindowManager;II)V
    .locals 4
    .param p1, "pos"    # I
    .param p2, "shift"    # I

    .line 3716
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveToPosition(II)V

    .line 3717
    sget v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->PASSENGER_ONLY_HEAT_SHOW:I

    sget v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAVAI:I

    if-ne v0, v1, :cond_0

    .line 3718
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatOrVentilationShift:I

    .line 3719
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setPassengerHeatVentilationShift(I)V

    goto :goto_0

    .line 3721
    :cond_0
    add-int/lit8 v0, p1, -0x3

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatOrVentilationShift:I

    .line 3722
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    add-int/lit8 v1, p1, -0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setPassengerHeatVentilationShift(I)V

    .line 3724
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3725
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isPassengerSetNeedWaite:Ljava/lang/Boolean;

    .line 3726
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    .line 3727
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessageDelayed(IJ)Z

    .line 3728
    return-void
.end method

.method public static synthetic lambda$updateHeatVentilationLayout$7(Lcom/android/systemui/statusbar/pma/SliderWindowManager;II)V
    .locals 4
    .param p1, "pos"    # I
    .param p2, "shift"    # I

    .line 3641
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->driverSeatAnimationSelected:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3642
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveToPosition(II)V

    .line 3643
    add-int/lit8 v0, p1, -0x3

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationShift:I

    .line 3644
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    add-int/lit8 v1, p1, -0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setDriverHeatVentilationShift(I)V

    .line 3645
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    const/16 v3, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3646
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isDriverSetNeedWaite:Ljava/lang/Boolean;

    .line 3647
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const/16 v3, 0x7c

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    .line 3648
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessageDelayed(IJ)Z

    .line 3649
    return-void
.end method

.method public static synthetic lambda$updateHeatVentilationLayout$8(Lcom/android/systemui/statusbar/pma/SliderWindowManager;II)V
    .locals 4
    .param p1, "pos"    # I
    .param p2, "shift"    # I

    .line 3660
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveToPosition(II)V

    .line 3661
    sget v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DRIVER_ONLY_HEAT_SHOW:I

    sget v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationAVAI:I

    if-ne v0, v1, :cond_0

    .line 3662
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationShift:I

    .line 3663
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setDriverHeatVentilationShift(I)V

    goto :goto_0

    .line 3665
    :cond_0
    add-int/lit8 v0, p1, -0x3

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationShift:I

    .line 3666
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    add-int/lit8 v1, p1, -0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setDriverHeatVentilationShift(I)V

    .line 3668
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3669
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isDriverSetNeedWaite:Ljava/lang/Boolean;

    .line 3670
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    .line 3671
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessageDelayed(IJ)Z

    .line 3672
    return-void
.end method

.method public static synthetic lambda$updateHeatVentilationLayout$9(Lcom/android/systemui/statusbar/pma/SliderWindowManager;II)V
    .locals 4
    .param p1, "pos"    # I
    .param p2, "shift"    # I

    .line 3698
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveToPosition(II)V

    .line 3699
    add-int/lit8 v0, p1, -0x3

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatOrVentilationShift:I

    .line 3700
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    add-int/lit8 v1, p1, -0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setPassengerHeatVentilationShift(I)V

    .line 3701
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    const/16 v3, 0xc9

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3702
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isPassengerSetNeedWaite:Ljava/lang/Boolean;

    .line 3703
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    .line 3704
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessageDelayed(IJ)Z

    .line 3705
    return-void
.end method

.method private moveToPosition(II)V
    .locals 12
    .param p1, "pos"    # I
    .param p2, "type"    # I

    .line 4383
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4384
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##moveToPosition: pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4386
    :cond_0
    const-wide/16 v0, 0x258

    const/4 v2, 0x7

    const/4 v3, -0x3

    const/4 v4, 0x4

    const/4 v5, -0x4

    const/4 v6, 0x2

    const v7, 0x3f19999a    # 0.6f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x1

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_13

    .line 4524
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 4525
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 4526
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isPassengerNeedWaite:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4527
    invoke-direct {p0, v11, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->passengerSeatSelected(ZI)V

    goto :goto_0

    .line 4529
    :cond_1
    invoke-direct {p0, v10, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->passengerSeatSelected(ZI)V

    .line 4531
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isPassengerNeedWaite:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4532
    nop

    .local v10, "i":I
    :goto_1
    move v0, v10

    .end local v10    # "i":I
    .local v0, "i":I
    if-ge v0, v4, :cond_4

    .line 4533
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilation:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 4534
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 4535
    if-ne v0, p1, :cond_2

    .line 4536
    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 4538
    :cond_2
    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 4532
    .end local v1    # "v":Landroid/view/View;
    :cond_3
    :goto_2
    add-int/lit8 v10, v0, 0x1

    .end local v0    # "i":I
    .restart local v10    # "i":I
    goto :goto_1

    .line 4543
    .end local v10    # "i":I
    :cond_4
    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    .line 4544
    goto/16 :goto_13

    .line 4478
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4479
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4480
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isDriverNeedWaite:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4481
    invoke-direct {p0, v11, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->driverSeatSelected(ZI)V

    goto :goto_3

    .line 4483
    :cond_5
    invoke-direct {p0, v10, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->driverSeatSelected(ZI)V

    .line 4485
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isDriverNeedWaite:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4486
    nop

    .restart local v10    # "i":I
    :goto_4
    move v0, v10

    .end local v10    # "i":I
    .restart local v0    # "i":I
    if-ge v0, v4, :cond_8

    .line 4487
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilation:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 4488
    .restart local v1    # "v":Landroid/view/View;
    if-eqz v1, :cond_7

    .line 4489
    if-ne v0, p1, :cond_6

    .line 4490
    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_5

    .line 4492
    :cond_6
    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 4486
    .end local v1    # "v":Landroid/view/View;
    :cond_7
    :goto_5
    add-int/lit8 v10, v0, 0x1

    .end local v0    # "i":I
    .restart local v10    # "i":I
    goto :goto_4

    .line 4497
    .end local v10    # "i":I
    :cond_8
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    .line 4498
    goto/16 :goto_13

    .line 4501
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 4502
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 4503
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isPassengerNeedWaite:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4504
    invoke-direct {p0, v11, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->passengerSeatSelected(ZI)V

    goto :goto_6

    .line 4506
    :cond_9
    invoke-direct {p0, v10, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->passengerSeatSelected(ZI)V

    .line 4508
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isPassengerNeedWaite:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4509
    nop

    .restart local v10    # "i":I
    :goto_7
    move v0, v10

    .end local v10    # "i":I
    .restart local v0    # "i":I
    if-ge v0, v2, :cond_c

    .line 4510
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilation:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 4511
    .restart local v1    # "v":Landroid/view/View;
    if-eqz v1, :cond_b

    .line 4512
    if-ne v0, p1, :cond_a

    .line 4513
    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_8

    .line 4515
    :cond_a
    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 4509
    .end local v1    # "v":Landroid/view/View;
    :cond_b
    :goto_8
    add-int/lit8 v10, v0, 0x1

    .end local v0    # "i":I
    .restart local v10    # "i":I
    goto :goto_7

    .line 4520
    .end local v10    # "i":I
    :cond_c
    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    .line 4521
    goto/16 :goto_13

    .line 4455
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4456
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4457
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isDriverNeedWaite:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4458
    invoke-direct {p0, v11, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->driverSeatSelected(ZI)V

    goto :goto_9

    .line 4460
    :cond_d
    invoke-direct {p0, v10, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->driverSeatSelected(ZI)V

    .line 4462
    :goto_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isDriverNeedWaite:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4463
    nop

    .restart local v10    # "i":I
    :goto_a
    move v0, v10

    .end local v10    # "i":I
    .restart local v0    # "i":I
    if-ge v0, v2, :cond_10

    .line 4464
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilation:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 4465
    .restart local v1    # "v":Landroid/view/View;
    if-eqz v1, :cond_f

    .line 4466
    if-ne v0, p1, :cond_e

    .line 4467
    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_b

    .line 4469
    :cond_e
    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 4463
    .end local v1    # "v":Landroid/view/View;
    :cond_f
    :goto_b
    add-int/lit8 v10, v0, 0x1

    .end local v0    # "i":I
    .restart local v10    # "i":I
    goto :goto_a

    .line 4474
    .end local v10    # "i":I
    :cond_10
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    .line 4475
    goto/16 :goto_13

    .line 4425
    :pswitch_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    invoke-virtual {v2, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 4426
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4427
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->getProgressMin()I

    move-result v2

    if-lt p1, v2, :cond_15

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->getProgressMax()I

    move-result v2

    if-gt p1, v2, :cond_15

    .line 4429
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getAcPowerState()Z

    move-result v2

    if-nez v2, :cond_11

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mShouldPowerHvac:Z

    if-eqz v2, :cond_11

    .line 4430
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v2, v11}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setAcPowerState(Z)V

    .line 4432
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4434
    :goto_c
    goto :goto_d

    .line 4433
    :catch_0
    move-exception v0

    goto :goto_c

    .line 4435
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getAcPowerState()Z

    move-result v0

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mShouldPowerHvac:Z

    if-nez v0, :cond_12

    .line 4436
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mShouldPowerHvac:Z

    .line 4438
    :cond_12
    :goto_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getAcPowerState()Z

    move-result v0

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isStatusBarTouch:Z

    if-eqz v0, :cond_16

    .line 4439
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->getPosTemp(I)F

    move-result v0

    .line 4440
    .local v0, "passengerTemp":F
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v1, :cond_14

    .line 4441
    const-string v1, "SliderWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveToPosition: setPassengerTemp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4443
    :cond_14
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setPassengerTemp(F)V

    .line 4444
    .end local v0    # "passengerTemp":F
    goto :goto_e

    .line 4447
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getAcPowerState()Z

    move-result v0

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mShouldPowerHvac:Z

    if-nez v0, :cond_16

    .line 4448
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mShouldPowerHvac:Z

    .line 4451
    :cond_16
    :goto_e
    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    .line 4452
    goto/16 :goto_13

    .line 4388
    :pswitch_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 4389
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4390
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->getProgressMin()I

    move-result v2

    if-lt p1, v2, :cond_1c

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->getProgressMax()I

    move-result v2

    if-gt p1, v2, :cond_1c

    .line 4392
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getAcPowerState()Z

    move-result v2

    if-nez v2, :cond_17

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mShouldPowerHvac:Z

    if-eqz v2, :cond_17

    .line 4393
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v2, v11}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setAcPowerState(Z)V

    .line 4395
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4397
    :goto_f
    goto :goto_10

    .line 4396
    :catch_1
    move-exception v0

    goto :goto_f

    .line 4398
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getAcPowerState()Z

    move-result v0

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mShouldPowerHvac:Z

    if-nez v0, :cond_18

    .line 4399
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mShouldPowerHvac:Z

    .line 4401
    :cond_18
    :goto_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getAcPowerState()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isStatusBarTouch:Z

    if-eqz v0, :cond_19

    goto :goto_11

    .line 4408
    :cond_19
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 4409
    const-string v0, "SliderWindowManager"

    const-string v1, "moveToPosition: else"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 4402
    :cond_1a
    :goto_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->getPosTemp(I)F

    move-result v0

    .line 4403
    .local v0, "driverTemp":F
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v1, :cond_1b

    .line 4404
    const-string v1, "SliderWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveToPosition: setDriverTemp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4406
    :cond_1b
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setDriverTemp(F)V

    .line 4407
    .end local v0    # "driverTemp":F
    goto :goto_12

    .line 4413
    :cond_1c
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_1d

    .line 4414
    const-string v0, "SliderWindowManager"

    const-string v1, "moveToPosition:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4417
    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getAcPowerState()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mShouldPowerHvac:Z

    if-nez v0, :cond_1e

    .line 4418
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mShouldPowerHvac:Z

    .line 4421
    :cond_1e
    :goto_12
    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    .line 4422
    nop

    .line 4550
    :goto_13
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private openApplistInternal()V
    .locals 7

    .line 3131
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isAppListShowing:Z

    if-nez v0, :cond_2

    .line 3132
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAniShow:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3133
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAniShow:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3135
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAniHide:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3136
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAniHide:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3138
    :cond_1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x7f6

    const/16 v5, 0x720

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    .line 3147
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3148
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3149
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3150
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3151
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3152
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x4b0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3153
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "Slider Applist Window"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 3155
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderAppListView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3156
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListSlider:Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;

    const/high16 v1, 0x44960000    # 1200.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->setY(F)V

    .line 3157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isAppListShowing:Z

    .line 3158
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mNavigationBarCarBodyDisplayController:Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;

    if-eqz v0, :cond_2

    .line 3159
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mNavigationBarCarBodyDisplayController:Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->onOneWorldAppList()V

    .line 3162
    :cond_2
    return-void
.end method

.method private openClimateSliderInternal()V
    .locals 3

    .line 3859
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getClimateShift()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentClimateShift:I

    .line 3860
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3861
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openClimateSliderInternal currentClimateShift "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentClimateShift:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3863
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentClimateShift:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateClimateShift(I)V

    .line 3864
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3865
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3866
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniUp:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3868
    :cond_1
    return-void
.end method

.method private openMediaInternal()V
    .locals 9

    .line 3023
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentMediaSource:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 3024
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;->isMediaTop(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3025
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    const-string v1, "com.zeekr.media.qq"

    const-string v3, ""

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;->startMediaFromSlider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3027
    return-void

    .line 3029
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentMediaSource:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-nez v0, :cond_9

    .line 3030
    invoke-static {}, Lcom/zeekr/sdk/mediacenter/impl/MediaCenterAPI;->get()Lcom/zeekr/sdk/mediacenter/impl/MediaCenterAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/impl/MediaCenterAPI;->getWidgetApi()Lcom/zeekr/sdk/mediacenter/ability/IZeekrWidgetAPI;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/zeekr/sdk/mediacenter/ability/IZeekrWidgetAPI;->getHistory(I)Lcom/zeekr/sdk/mediacenter/bean/HistoryAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/bean/HistoryAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3031
    .local v0, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 3032
    .local v5, "activityName":Ljava/lang/String;
    sget-boolean v6, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 3033
    const-string v6, "SliderWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "openMediaInternal: HistoryAppInfo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3035
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    invoke-interface {v6, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;->isMediaTop(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 3036
    const-string v6, "com.ecarx.multimedia"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentLocalSource:I

    if-eq v6, v1, :cond_5

    .line 3037
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    const-string v6, ""

    invoke-interface {v1, v6}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;->isMediaTop(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 3038
    iget v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentLocalSource:I

    if-ne v1, v2, :cond_2

    .line 3039
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    const-string v3, "com.ecarx.multimedia"

    const-string v4, "com.ecarx.multimedia.offline.USBSplashActivity"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v3, v4, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;->startMediaFromSlider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 3041
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentLocalSource:I

    if-ne v1, v4, :cond_3

    .line 3042
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    const-string v3, "com.ecarx.multimedia"

    const-string v4, "com.ecarx.multimedia.offline.BlueToothSplashActivity"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v3, v4, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;->startMediaFromSlider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 3044
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentLocalSource:I

    if-ne v1, v3, :cond_4

    .line 3045
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    const-string v3, "com.ecarx.multimedia"

    const-string v4, "com.ecarx.multimedia.offline.RadioSplashActivity"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v3, v4, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;->startMediaFromSlider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3048
    :cond_4
    :goto_0
    return-void

    .line 3050
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.zeekr.media.qq"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.ecarx.multimedia"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->checkInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3051
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    invoke-interface {v1, v0, v5}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;->startActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3053
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    const-string v3, "com.zeekr.media.qq"

    const-string v4, ""

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v3, v4, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;->startMediaFromSlider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3056
    :cond_7
    :goto_1
    return-void

    .line 3058
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v5    # "activityName":Ljava/lang/String;
    :cond_8
    goto :goto_3

    .line 3059
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;->isMediaTop(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3060
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentMediaSource:I

    if-ne v0, v2, :cond_a

    .line 3061
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    const-string v1, "com.ecarx.multimedia"

    const-string v3, "com.ecarx.multimedia.offline.USBSplashActivity"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;->startMediaFromSlider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_2

    .line 3063
    :cond_a
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentMediaSource:I

    if-ne v0, v4, :cond_b

    .line 3064
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    const-string v1, "com.ecarx.multimedia"

    const-string v3, "com.ecarx.multimedia.offline.BlueToothSplashActivity"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;->startMediaFromSlider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_2

    .line 3066
    :cond_b
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentMediaSource:I

    if-ne v0, v3, :cond_c

    .line 3067
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    const-string v1, "com.ecarx.multimedia"

    const-string v3, "com.ecarx.multimedia.offline.RadioSplashActivity"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;->startMediaFromSlider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3070
    :cond_c
    :goto_2
    return-void

    .line 3073
    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    if-eqz v0, :cond_f

    .line 3074
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isSliderShow(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAniHide:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_e

    .line 3075
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeAppListSlider()V

    goto :goto_4

    .line 3077
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;->closeMediaApp()V

    .line 3080
    :cond_f
    :goto_4
    return-void
.end method

.method private openSliderInternal(I)V
    .locals 6
    .param p1, "which"    # I

    .line 3282
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getAcPowerState()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    if-ne p1, v1, :cond_1

    .line 3284
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mShouldPowerHvac:Z

    .line 3286
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isStatusBarTouch:Z

    .line 3287
    const/4 v0, 0x7

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-eq p1, v0, :cond_24

    const/16 v0, 0x9

    if-eq p1, v0, :cond_22

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 3482
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3483
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/4 v1, -0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3484
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->imgDimBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3485
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 3486
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3487
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3488
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3489
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3490
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3491
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 3492
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3493
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3495
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 3496
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3497
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3499
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 3500
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3501
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3503
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 3504
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3505
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3507
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 3508
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3509
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3511
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->openVolumeSliderInternal()V

    .line 3512
    goto/16 :goto_0

    .line 3443
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3444
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/4 v5, -0x4

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3445
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->imgDimBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3446
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 3447
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3448
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3449
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3450
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3451
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3452
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 3453
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3454
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3456
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 3457
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3458
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3460
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 3461
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3462
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3464
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 3465
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3466
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3468
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    .line 3469
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3470
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3472
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_c

    .line 3473
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3474
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniUp:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3476
    :cond_c
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_d

    .line 3477
    const-string v0, "SliderWindowManager"

    const-string v2, "openSliderInternal: setData-----------"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3479
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPassengerHeatVentilationShift()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveToCurrentShift(II)V

    .line 3480
    goto/16 :goto_0

    .line 3404
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3405
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3406
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->imgDimBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3407
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 3408
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3409
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3410
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3411
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3412
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3413
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    .line 3414
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3415
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3417
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    .line 3418
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3419
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3421
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 3422
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3423
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3425
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    .line 3426
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3427
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3429
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    .line 3430
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3431
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3433
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_13

    .line 3434
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3435
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniUp:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3437
    :cond_13
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_14

    .line 3438
    const-string v0, "SliderWindowManager"

    const-string v1, "openSliderInternal: setData-----------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3440
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDriverHeatVentilationShift()I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveToCurrentShift(II)V

    .line 3441
    goto/16 :goto_0

    .line 3364
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3365
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/4 v5, -0x2

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3366
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 3367
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3368
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3369
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3370
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3371
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3372
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_15

    .line 3373
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3374
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3376
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    .line 3377
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3378
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3380
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_17

    .line 3381
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3382
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3384
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18

    .line 3385
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3386
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3388
    :cond_18
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_19

    .line 3389
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3390
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3392
    :cond_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2a

    .line 3393
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->imgDimBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3394
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3395
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniUp:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3396
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 3397
    const-string v0, "SliderWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openSliderInternal: mCarBodyStateManager.getPassenger() = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPassengerTemp()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " getPassengerPosition() "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getPassengerPosition()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3399
    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getPassengerPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->setCurrentProgress(I)V

    .line 3400
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getPassengerPosition()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveToCurrentTemp(II)V

    goto/16 :goto_0

    .line 3321
    :pswitch_4
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 3322
    const-string v0, "SliderWindowManager"

    const-string v1, "openSliderInternal: DRIVER_TEMP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3324
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3325
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3326
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 3327
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3328
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3329
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3330
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3331
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3332
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1c

    .line 3333
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3334
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3336
    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1d

    .line 3337
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3338
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3340
    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1e

    .line 3341
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3342
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3344
    :cond_1e
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1f

    .line 3345
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3346
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3348
    :cond_1f
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_20

    .line 3349
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3350
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3352
    :cond_20
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2a

    .line 3353
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->imgDimBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3354
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3355
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniUp:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3356
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_21

    .line 3357
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openSliderInternal: mCarBodyStateManager.getDriverTemp() = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDriverTemp()F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " getDriverPosition() "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getDriverPosition()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3359
    :cond_21
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getDriverPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->setCurrentProgress(I)V

    .line 3360
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getDriverPosition()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveToCurrentTemp(II)V

    goto/16 :goto_0

    .line 3289
    :cond_22
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 3290
    const-string v0, "SliderWindowManager"

    const-string v1, "openSliderInternal: APP_LIST_UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3292
    :cond_23
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeAllSlider(Z)V

    .line 3293
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListBackground:Landroid/widget/ImageView;

    const/16 v1, 0x3e

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 3294
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListSlider:Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->setVisibility(I)V

    .line 3295
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAnimationShow()V

    .line 3296
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3297
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 3298
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListBGShow:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3299
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListBackground:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$39;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$39;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 3319
    goto/16 :goto_0

    .line 3514
    :cond_24
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3515
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/4 v1, -0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3516
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->imgDimBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3517
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 3518
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3519
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3520
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3521
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3522
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3523
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_25

    .line 3524
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3525
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3527
    :cond_25
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_26

    .line 3528
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3529
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3531
    :cond_26
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_27

    .line 3532
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3533
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3535
    :cond_27
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_28

    .line 3536
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3537
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3539
    :cond_28
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_29

    .line 3540
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3541
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3543
    :cond_29
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->openClimateSliderInternal()V

    .line 3544
    nop

    .line 3548
    :cond_2a
    :goto_0
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openSliderInternal: statusBarWindowState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->statusBarWindowState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3549
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->statusBarWindowState:I

    if-ne v0, v3, :cond_2b

    .line 3550
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    .line 3551
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const-wide/16 v2, 0x8ca

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessageDelayed(IJ)Z

    .line 3553
    :cond_2b
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private openSliderWindowInternal()V
    .locals 7

    .line 3165
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isShowing:Z

    if-nez v0, :cond_0

    .line 3166
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x7e8

    const/16 v5, 0x720

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 3175
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3176
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3177
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3178
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3179
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3180
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x458

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3181
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "Slider Window"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 3183
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rootView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3186
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3187
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3188
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3189
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3190
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3192
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isShowing:Z

    .line 3196
    :cond_0
    return-void
.end method

.method private openVolumeSliderInternal()V
    .locals 2

    .line 3967
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3968
    const-string v0, "SliderWindowManager"

    const-string v1, "openVolumeSliderInternal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3970
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3971
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3972
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 3973
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniUp:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3975
    :cond_1
    return-void
.end method

.method private outrowCloseAnimation()V
    .locals 4

    .line 5808
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->alphaAnimator:Landroid/animation/ValueAnimator;

    .line 5809
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->alphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5810
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->alphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5811
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->alphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager$49;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$49;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5822
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->heightAnimator:Landroid/animation/ValueAnimator;

    .line 5823
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->heightAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5824
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->heightAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 5825
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->heightAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5826
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->heightAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->heightAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5828
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->animatorSet:Landroid/animation/AnimatorSet;

    .line 5829
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->alphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->heightAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5831
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$50;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$50;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5845
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x56
        0x0
    .end array-data
.end method

.method private passengerSeatSelected(ZI)V
    .locals 5
    .param p1, "isAnimation"    # Z
    .param p2, "pos"    # I

    .line 5381
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->passengerSeatAnimationSelected:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5382
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->passengerSeatAnimationSelected:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5384
    :cond_0
    const/16 v0, 0x2f

    if-eqz p1, :cond_1

    .line 5385
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->passengerSeatAnimationSelected:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5386
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->passengerSeatAnimationSelected:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatSelected:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getX()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    mul-int/lit8 v4, p2, 0x62

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x27

    int-to-float v0, v0

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 5387
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->passengerSeatAnimationSelected:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 5389
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatSelected:Landroid/widget/ImageView;

    mul-int/lit8 v2, p2, 0x62

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x27

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 5391
    :goto_0
    return-void
.end method

.method private refreshAppListPage()V
    .locals 8

    .line 1676
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appPowerUpRefrsh:Z

    if-nez v0, :cond_0

    .line 1677
    return-void

    .line 1679
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1680
    .local v0, "moveCount":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 1681
    return-void

    .line 1683
    :cond_1
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_4

    .line 1684
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    .line 1685
    .local v4, "count":I
    const/16 v5, 0x15

    if-ge v4, v5, :cond_2

    .line 1686
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->getPageData()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    .line 1687
    .local v5, "fromAppInfo":Lcom/android/systemui/statusbar/pma/applist/AppInfo;
    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->notifyItemRemoved(I)V

    .line 1688
    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->addData(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)V

    .line 1689
    .end local v5    # "fromAppInfo":Lcom/android/systemui/statusbar/pma/applist/AppInfo;
    goto :goto_1

    :cond_2
    if-le v4, v5, :cond_3

    .line 1690
    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->getPageData()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    .line 1691
    .local v6, "fromAppInfo":Lcom/android/systemui/statusbar/pma/applist/AppInfo;
    iget-object v7, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->notifyItemRemoved(I)V

    .line 1692
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v5, v2, v6}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->addData(ILcom/android/systemui/statusbar/pma/applist/AppInfo;)Z

    .line 1683
    .end local v4    # "count":I
    .end local v6    # "fromAppInfo":Lcom/android/systemui/statusbar/pma/applist/AppInfo;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1695
    .end local v3    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->pageCount:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 1696
    iget v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->pageCount:I

    sub-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->removePage(I)V

    .line 1698
    :cond_5
    return-void
.end method

.method private registerStartupStateObserverHandle()V
    .locals 6

    .line 1119
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appPowerUpRefrsh:Z

    if-nez v0, :cond_0

    .line 1120
    return-void

    .line 1122
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1123
    .local v0, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1124
    .local v1, "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;"
    const/4 v2, 0x0

    .line 1124
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1125
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->getPageData()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1124
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1127
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    .line 1128
    .local v3, "a":Lcom/android/systemui/statusbar/pma/applist/AppInfo;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1129
    .end local v3    # "a":Lcom/android/systemui/statusbar/pma/applist/AppInfo;
    goto :goto_1

    .line 1131
    :cond_2
    :try_start_0
    const-string v2, "SliderWindowManager"

    const-string/jumbo v3, "registerStartupStateObserver: "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    invoke-static {}, Lcom/zeekr/sdk/policy/impl/PolicyProxy;->get()Lcom/zeekr/sdk/policy/impl/PolicyAPI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zeekr/sdk/policy/impl/PolicyAPI;->getAppPolicy()Lcom/zeekr/sdk/policy/ability/IAppPolicy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mStartupStateObserver:Lcom/zeekr/sdk/policy/observers/StartupStateObserver;

    invoke-interface {v2, v0, v3}, Lcom/zeekr/sdk/policy/ability/IAppPolicy;->registerStartupStateObserver(Ljava/util/List;Lcom/zeekr/sdk/policy/observers/StartupStateObserver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    goto :goto_2

    .line 1133
    :catch_0
    move-exception v2

    .line 1134
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SliderWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerStartupStateObserver: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private removePage(I)V
    .locals 3
    .param p1, "pageNum"    # I

    .line 1701
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1702
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removePage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->pageCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->pageCount:I

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_1

    .line 1705
    add-int/lit8 v0, p1, 0x1

    .line 1705
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->pageCount:I

    if-ge v0, v1, :cond_1

    .line 1706
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->setPage(I)V

    .line 1705
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1709
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1710
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appViewPagerAdapter:Lcom/android/systemui/statusbar/pma/applist/AppViewPagerAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppViewPagerAdapter;->notifyDataSetChanged()V

    .line 1711
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->group:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1712
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->pageCount:I

    .line 1713
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->showDotLayout(I)V

    .line 1714
    return-void
.end method

.method private setDriverHeatVentilationBasis()V
    .locals 2

    .line 3742
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3743
    const-string v0, "SliderWindowManager.HEAT_VENT"

    const-string/jumbo v1, "setDriverHeatVentilationBasis()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDriverHeatVentilationAvai()I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationAVAI:I

    .line 3747
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    if-eqz v0, :cond_1

    .line 3748
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3749
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3750
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3751
    sget v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationAVAI:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 3752
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 3753
    .end local v0    # "message":Landroid/os/Message;
    goto :goto_0

    .line 3754
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 3755
    const-string v0, "SliderWindowManager"

    const-string/jumbo v1, "setDriverHeatVentilationBasis mHandler == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3759
    :cond_2
    :goto_0
    return-void
.end method

.method private setDriverHeatVentilationData(I)V
    .locals 3
    .param p1, "available"    # I

    .line 3561
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3562
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDriverHeatVentilationData:  available = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3564
    :cond_0
    sget v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DRIVER_HEAT_VENTILATION_SHOW:I

    if-ne p1, v0, :cond_1

    .line 3565
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverSelectedIcons:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverSelectedIcons:Landroid/content/res/TypedArray;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->setData(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    goto :goto_0

    .line 3567
    :cond_1
    sget v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DRIVER_HEAT_SHOW_VENTILATION_GREY:I

    if-ne p1, v0, :cond_2

    .line 3568
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatIcons_Selected:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatIcons_Selected:Landroid/content/res/TypedArray;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->setData(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    goto :goto_0

    .line 3570
    :cond_2
    sget v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DRIVER_HEAT_GREY_VENTILATION_SHOW:I

    if-ne p1, v0, :cond_3

    .line 3571
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverVentilationIcons_Selected:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverVentilationIcons_Selected:Landroid/content/res/TypedArray;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->setData(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    goto :goto_0

    .line 3573
    :cond_3
    sget v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DRIVER_ONLY_HEAT_SHOW:I

    if-ne p1, v0, :cond_4

    .line 3574
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatIcons_Selected:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatIcons_Selected:Landroid/content/res/TypedArray;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->setData(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    goto :goto_0

    .line 3576
    :cond_4
    sget v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DRIVER_ONLY_VENTILATION_SHOW:I

    if-ne p1, v0, :cond_5

    .line 3577
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverVentilationIcons_Selected:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverVentilationIcons_Selected:Landroid/content/res/TypedArray;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->setData(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 3580
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->notifyDataSetChanged()V

    .line 3581
    return-void
.end method

.method private setPassengerHeatVentilationBasis()V
    .locals 2

    .line 3839
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3840
    const-string v0, "SliderWindowManager"

    const-string/jumbo v1, "setPassengerHeatVentilationBasis()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3842
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPassengerHeatVentilationAvai()I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAVAI:I

    .line 3844
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    if-eqz v0, :cond_1

    .line 3845
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3846
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3847
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3848
    sget v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAVAI:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 3849
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 3850
    .end local v0    # "message":Landroid/os/Message;
    goto :goto_0

    .line 3851
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 3852
    const-string v0, "SliderWindowManager"

    const-string/jumbo v1, "setPassengerHeatVentilationBasis mHandler == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3856
    :cond_2
    :goto_0
    return-void
.end method

.method private setPassengerHeatVentilationData(I)V
    .locals 3
    .param p1, "available"    # I

    .line 3817
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3818
    const-string v0, "SliderWindowManager.HEAT_VENT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPassengerHeatVentilationData():  available = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3820
    :cond_0
    sget v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->PASSENGER_HEAT_VENTILATION_SHOW:I

    if-ne p1, v0, :cond_1

    .line 3821
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerSelectedIcons:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerSelectedIcons:Landroid/content/res/TypedArray;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->setData(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    goto :goto_0

    .line 3823
    :cond_1
    sget v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->PASSENGER_HEAT_SHOW_VENTILATION_GREY:I

    if-ne p1, v0, :cond_2

    .line 3824
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatIcons_Selected:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatIcons_Selected:Landroid/content/res/TypedArray;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->setData(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    goto :goto_0

    .line 3826
    :cond_2
    sget v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->PASSENGER_HEAT_GREY_VENTILATION_SHOW:I

    if-ne p1, v0, :cond_3

    .line 3827
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerVentilationIcons_Selected:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerVentilationIcons_Selected:Landroid/content/res/TypedArray;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->setData(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    goto :goto_0

    .line 3829
    :cond_3
    sget v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->PASSENGER_ONLY_HEAT_SHOW:I

    if-ne p1, v0, :cond_4

    .line 3830
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatIcons_Selected:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatIcons_Selected:Landroid/content/res/TypedArray;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->setData(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    goto :goto_0

    .line 3832
    :cond_4
    sget v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->PASSENGER_ONLY_VENTILATION_SHOW:I

    if-ne p1, v0, :cond_5

    .line 3833
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerVentilationIcons_Selected:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerVentilationIcons_Selected:Landroid/content/res/TypedArray;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->setData(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 3835
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->notifyDataSetChanged()V

    .line 3836
    return-void
.end method

.method private setProgressTaskInfo(Ljava/lang/String;F)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "percent"    # F

    .line 5553
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderAppListView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$FrlOk24MAnGkzpXdjADu0KHNI3A;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$FrlOk24MAnGkzpXdjADu0KHNI3A;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 5567
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->recent:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mRecentAppAdapter:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    if-eqz v0, :cond_1

    .line 5568
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mRecentAppAdapter:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5569
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mRecentAppAdapter:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->getRecent()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5570
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->recent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    .line 5571
    .local v1, "r":Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;
    if-eqz v1, :cond_0

    .line 5572
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->updateDownLoading(F)V

    .line 5568
    .end local v1    # "r":Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5577
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private setSliderDNmode(I)V
    .locals 5
    .param p1, "dayOrNight"    # I

    .line 436
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 438
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 439
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    const v3, 0x7f0806fe

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 441
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverSelectedIcons:Landroid/content/res/TypedArray;

    .line 442
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030061

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerSelectedIcons:Landroid/content/res/TypedArray;

    .line 444
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f03003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatIcons_Selected:Landroid/content/res/TypedArray;

    .line 445
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverVentilationIcons_Selected:Landroid/content/res/TypedArray;

    .line 446
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f03005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatIcons_Selected:Landroid/content/res/TypedArray;

    .line 447
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerVentilationIcons_Selected:Landroid/content/res/TypedArray;

    .line 449
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f03002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mClimateSliderShiftDraws:Landroid/content/res/TypedArray;

    .line 450
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->changeClimateSliderType(Z)V

    .line 451
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appDeleteBin:Landroid/widget/FrameLayout;

    const v3, 0x7f0803a1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 452
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->imgDeleteBin:Landroid/widget/ImageView;

    const v3, 0x7f0803a3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 453
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->tvAppDelete:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060155

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 454
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListExit:Landroid/widget/FrameLayout;

    const v3, 0x7f0803a6

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 455
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->imgNoRecent:Landroid/widget/ImageView;

    const v3, 0x7f0805e1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 456
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->tvRecent:Landroid/widget/TextView;

    const-string v3, "#66383a3d"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 459
    move v2, v1

    .line 459
    .local v2, "i":I
    :goto_0
    :try_start_0
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->pageCount:I

    if-ge v2, v3, :cond_1

    .line 460
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->onDayNightModeChange(Z)V

    .line 459
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 462
    .end local v2    # "i":I
    :cond_1
    move v2, v1

    .line 462
    .restart local v2    # "i":I
    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hiCarPageCount:I

    if-ge v2, v3, :cond_2

    .line 463
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hicarMap:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->onDayNightModeChange(Z)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 467
    .end local v2    # "i":I
    :cond_2
    goto :goto_2

    .line 465
    :catch_0
    move-exception v2

    .line 466
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 469
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_2
    const v2, 0x7f0805f8

    iput v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHeatOrVentilationBg:I

    .line 470
    const v2, 0x7f0805fa

    iput v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHeatOrVentilationShortBg:I

    goto/16 :goto_6

    .line 473
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    .line 474
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    const v3, 0x7f0806fc

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 476
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030040

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverSelectedIcons:Landroid/content/res/TypedArray;

    .line 477
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerSelectedIcons:Landroid/content/res/TypedArray;

    .line 479
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f03003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatIcons_Selected:Landroid/content/res/TypedArray;

    .line 480
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverVentilationIcons_Selected:Landroid/content/res/TypedArray;

    .line 481
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f03005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatIcons_Selected:Landroid/content/res/TypedArray;

    .line 482
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030066

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerVentilationIcons_Selected:Landroid/content/res/TypedArray;

    .line 484
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f03002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mClimateSliderShiftDraws:Landroid/content/res/TypedArray;

    .line 485
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->changeClimateSliderType(Z)V

    .line 486
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appDeleteBin:Landroid/widget/FrameLayout;

    const v3, 0x7f0803a2

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 487
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->imgDeleteBin:Landroid/widget/ImageView;

    const v3, 0x7f0803a4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 488
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->tvAppDelete:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060157

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 489
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListExit:Landroid/widget/FrameLayout;

    const v3, 0x7f0803a7

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 490
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->imgNoRecent:Landroid/widget/ImageView;

    const v3, 0x7f0805e2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 491
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->tvRecent:Landroid/widget/TextView;

    const-string v3, "#66ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 494
    move v2, v1

    .line 494
    .local v2, "i":I
    :goto_3
    :try_start_1
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->pageCount:I

    if-ge v2, v3, :cond_5

    .line 495
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->onDayNightModeChange(Z)V

    .line 494
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 497
    .end local v2    # "i":I
    :cond_5
    move v2, v1

    .line 497
    .restart local v2    # "i":I
    :goto_4
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hiCarPageCount:I

    if-ge v2, v3, :cond_6

    .line 498
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hicarMap:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->onDayNightModeChange(Z)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 497
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 502
    .end local v2    # "i":I
    :cond_6
    goto :goto_5

    .line 500
    :catch_1
    move-exception v2

    .line 501
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 504
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_5
    const v2, 0x7f0805f9

    iput v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHeatOrVentilationBg:I

    .line 505
    const v2, 0x7f0805fb

    iput v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHeatOrVentilationShortBg:I

    .line 507
    :goto_6
    iget v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentClimateShift:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateClimateShift(I)V

    .line 508
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->recent:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mRecentAppAdapter:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    if-eqz v2, :cond_9

    .line 509
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mRecentAppAdapter:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    if-ne p1, v0, :cond_7

    goto :goto_7

    :cond_7
    move v0, v1

    :goto_7
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->onDayNightModeChange(Z)V

    .line 510
    move v0, v1

    .line 510
    .local v0, "i":I
    :goto_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mRecentAppAdapter:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 511
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->recent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    .line 512
    .local v2, "r":Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;
    if-eqz v2, :cond_8

    .line 513
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->setDayNightMode()V

    .line 510
    .end local v2    # "r":Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 518
    .end local v0    # "i":I
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    if-eqz v0, :cond_a

    .line 519
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->notifyDataSetChanged()V

    .line 522
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    if-eqz v0, :cond_b

    .line 523
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->notifyDataSetChanged()V

    .line 534
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    if-nez v0, :cond_d

    .line 535
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 536
    const-string v0, "SliderWindowManager"

    const-string/jumbo v1, "setSliderDNmode ,  mSliderView == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_c
    return-void

    .line 541
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mOutRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    const/16 v2, 0xf

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setVolumeType(II)V

    .line 542
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mNavRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    const/16 v2, 0xb

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setVolumeType(II)V

    .line 543
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPhoneRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setVolumeType(II)V

    .line 544
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mMusicRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setVolumeType(II)V

    .line 545
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVrRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setVolumeType(II)V

    .line 546
    return-void
.end method

.method private setSyncTextColor(Z)I
    .locals 1
    .param p1, "isSync"    # Z

    .line 2838
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsBlack:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/high16 v0, -0x1000000

    :goto_0
    return v0
.end method

.method private setVolumeDialogControllerVolume(IIZ)V
    .locals 4
    .param p1, "stream"    # I
    .param p2, "volumeLevel"    # I
    .param p3, "isForce"    # Z

    .line 4608
    if-eqz p3, :cond_0

    goto :goto_0

    .line 4611
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsAudioServiceFeedBack:Z

    if-nez v0, :cond_1

    .line 4612
    return-void

    .line 4615
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsSyncVolumeState:Z

    .line 4616
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsAudioServiceFeedBack:Z

    .line 4617
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setStreamVolume(II)V

    .line 4618
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    .line 4619
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4620
    .local v0, "message":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 4621
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4622
    return-void
.end method

.method private systemTimeVerification()Ljava/lang/Boolean;
    .locals 7

    .line 1054
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1055
    .local v1, "currentTime":J
    iget-wide v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->lastClickTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x12c

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 1056
    iput-wide v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->lastClickTime:J

    .line 1057
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 1058
    :cond_0
    iget-wide v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->lastClickTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 1059
    iput-wide v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->lastClickTime:J

    .line 1060
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 1062
    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1063
    .end local v1    # "currentTime":J
    :catch_0
    move-exception v1

    .line 1064
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private translateAnimation()V
    .locals 7

    .line 5250
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListBGShow:Landroid/view/animation/AlphaAnimation;

    .line 5251
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListBGShow:Landroid/view/animation/AlphaAnimation;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5252
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListBGShow:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v5, 0xc8

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 5253
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListBGShow:Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 5255
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListBGHide:Landroid/view/animation/AlphaAnimation;

    .line 5256
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListBGHide:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5257
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListBGHide:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 5258
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListBGHide:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 5260
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAniShow:Landroid/animation/ValueAnimator;

    .line 5261
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAniShow:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5262
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAniShow:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$40;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$40;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5269
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAniShow:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5271
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAniHide:Landroid/animation/ValueAnimator;

    .line 5272
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAniHide:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5273
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAniHide:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager$41;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$41;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5292
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAniHide:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5293
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAniHide:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$42;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$42;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5301
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->driverSeatAnimationSelected:Landroid/animation/ValueAnimator;

    .line 5302
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->driverSeatAnimationSelected:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5303
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->driverSeatAnimationSelected:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$43;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$43;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5311
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->passengerSeatAnimationSelected:Landroid/animation/ValueAnimator;

    .line 5312
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->passengerSeatAnimationSelected:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5313
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->passengerSeatAnimationSelected:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$44;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$44;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5320
    return-void
.end method

.method private translateAnimationBin()V
    .locals 6

    .line 5409
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, -0x3f000000    # -8.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniBig:Landroid/view/animation/TranslateAnimation;

    .line 5410
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniBig:Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 5412
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniBig:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 5413
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniBig:Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 5416
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniSmall:Landroid/view/animation/TranslateAnimation;

    .line 5417
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniSmall:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 5419
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniSmall:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 5420
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniSmall:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 5421
    return-void
.end method

.method private translateAnimationFloat()V
    .locals 12

    .line 5395
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v9, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniUp:Landroid/view/animation/TranslateAnimation;

    .line 5396
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniUp:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5397
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniUp:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 5398
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniUp:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 5401
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    .line 5403
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5404
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAniDown:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 5405
    return-void
.end method

.method private updateAllStreamSlider()V
    .locals 1

    .line 4035
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mMusicRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    if-eqz v0, :cond_0

    .line 4036
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mMusicRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateSlider(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;)V

    .line 4038
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mNavRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    if-eqz v0, :cond_1

    .line 4039
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mNavRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateSlider(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;)V

    .line 4041
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPhoneRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    if-eqz v0, :cond_2

    .line 4042
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPhoneRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateSlider(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;)V

    .line 4044
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVrRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    if-eqz v0, :cond_3

    .line 4045
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVrRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateSlider(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;)V

    .line 4047
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mOutRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    if-eqz v0, :cond_4

    .line 4048
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mOutRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateSlider(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;)V

    .line 4050
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->checkMute()V

    .line 4051
    return-void
.end method

.method private updateHeatVentilationLayout(II)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "heatVentilationAVAI"    # I

    .line 3613
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3614
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateHeatVentilationLayout type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",heatVentilationAVAI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3616
    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0x1e6

    const/4 v2, 0x0

    const/16 v3, 0x30c

    const/16 v4, 0xbc

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 3682
    :pswitch_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationDecoration:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderDecoration;

    if-eqz v5, :cond_1

    .line 3683
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilation:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationDecoration:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderDecoration;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 3685
    :cond_1
    sget v5, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->NONE:I

    if-ne p2, v5, :cond_2

    .line 3686
    return-void

    .line 3688
    :cond_2
    sget v5, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAVAI:I

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setPassengerHeatVentilationData(I)V

    .line 3689
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 3690
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    sget v6, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->PASSENGER_HEAT_VENTILATION_SHOW:I

    if-ne p2, v6, :cond_3

    .line 3693
    new-instance v0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderDecoration;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->shiftItemHeight:I

    sget v6, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->SHOWALL:I

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderDecoration;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationDecoration:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderDecoration;

    .line 3694
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3695
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3696
    const/16 v0, 0x3df

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 3697
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$uS149K-X3F7rFGVqlxyhuEQjxbw;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$uS149K-X3F7rFGVqlxyhuEQjxbw;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->setOnItemClickListener(Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$OnItemClickListener;)V

    .line 3706
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatShort:Z

    .line 3707
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHeatOrVentilationBg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 3710
    :cond_3
    new-instance v2, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderDecoration;

    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->shiftItemHeight:I

    sget v6, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->SHOWHALF:I

    invoke-direct {v2, v3, v6}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderDecoration;-><init>(II)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationDecoration:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderDecoration;

    .line 3711
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3712
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3713
    const/16 v1, 0x48a

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 3715
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$ppRERhMfshK6uS0xDGBT_o-E29Q;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$ppRERhMfshK6uS0xDGBT_o-E29Q;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->setOnItemClickListener(Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$OnItemClickListener;)V

    .line 3729
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatShort:Z

    .line 3730
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHeatOrVentilationShortBg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3733
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3733
    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_2

    .line 3619
    :pswitch_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationDecoration:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderDecoration;

    if-eqz v5, :cond_4

    .line 3620
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilation:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationDecoration:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderDecoration;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 3623
    :cond_4
    sget v5, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->NONE:I

    if-ne p2, v5, :cond_5

    .line 3624
    return-void

    .line 3628
    :cond_5
    sget v5, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationAVAI:I

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setDriverHeatVentilationData(I)V

    .line 3630
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 3632
    .restart local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    sget v6, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DRIVER_HEAT_VENTILATION_SHOW:I

    if-ne p2, v6, :cond_6

    .line 3635
    new-instance v0, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderDecoration;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->shiftItemHeight:I

    sget v6, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->SHOWALL:I

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderDecoration;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationDecoration:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderDecoration;

    .line 3636
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3637
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3638
    const/16 v0, 0x7d

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 3640
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$Qc0JXZuh3LG7W7EOelX1WtDwW4g;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$Qc0JXZuh3LG7W7EOelX1WtDwW4g;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->setOnItemClickListener(Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$OnItemClickListener;)V

    .line 3650
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatShort:Z

    .line 3651
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHeatOrVentilationBg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 3655
    :cond_6
    new-instance v2, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderDecoration;

    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->shiftItemHeight:I

    sget v6, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->SHOWHALF:I

    invoke-direct {v2, v3, v6}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderDecoration;-><init>(II)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationDecoration:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderDecoration;

    .line 3656
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3657
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3658
    const/16 v1, 0x110

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 3659
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$lbooFO00xtuRVXXbXiZaFqsoloI;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$lbooFO00xtuRVXXbXiZaFqsoloI;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->setOnItemClickListener(Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter$OnItemClickListener;)V

    .line 3673
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatShort:Z

    .line 3674
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHeatOrVentilationShortBg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3677
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3680
    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    nop

    .line 3738
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateSlider(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;)V
    .locals 6
    .param p1, "row"    # Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    .line 4097
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getType()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getVolumeStateLevel(Lcom/android/systemui/plugins/VolumeDialogController$State;I)I

    move-result v0

    .line 4098
    .local v0, "level":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getType()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getVolumeStateLevelMax(Lcom/android/systemui/plugins/VolumeDialogController$State;I)I

    move-result v1

    .line 4099
    .local v1, "max":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getType()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getVolumeStateLevelMin(Lcom/android/systemui/plugins/VolumeDialogController$State;I)I

    move-result v2

    .line 4101
    .local v2, "min":I
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getProgress()I

    move-result v3

    if-ne v3, v0, :cond_0

    if-nez v0, :cond_6

    .line 4102
    :cond_0
    sget-boolean v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 4103
    const-string v3, "SliderWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateSlider((VolumeSeekBarView):  Type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", getProgress() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getProgress()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", getTargetLevel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4104
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getTargetLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isTracking = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isTracking()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mIsSyncVolumeState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsSyncVolumeState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", max = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", row.getMax() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getMax()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4103
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4106
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4108
    return-void

    .line 4110
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getTargetIsCompleted()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4112
    return-void

    .line 4114
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getMax()I

    move-result v3

    if-eq v3, v1, :cond_4

    .line 4115
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setMax(I)V

    .line 4118
    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getMin()I

    move-result v3

    if-eq v3, v2, :cond_5

    .line 4119
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setMin(I)V

    .line 4122
    :cond_5
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsSyncVolumeState:Z

    if-eqz v3, :cond_6

    .line 4123
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setProgress(I)V

    .line 4126
    :cond_6
    return-void
.end method

.method private updateSliderByScrollVolumeBtn(I)I
    .locals 7
    .param p1, "level"    # I

    .line 4130
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getCurrentStream()I

    move-result v0

    .line 4131
    .local v0, "stream":I
    const/4 v1, -0x1

    .line 4132
    .local v1, "isOutOfRange":I
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 4133
    const-string v2, "SliderWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSliderByScrollVolumeBtn(int): type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getSeekBarView(I)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", getProgress() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4134
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getSeekBarView(I)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getProgress()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", getTargetLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getSeekBarView(I)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getTargetLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4133
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4136
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getSeekBarView(I)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getMax()I

    move-result v2

    .line 4137
    .local v2, "max":I
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getSeekBarView(I)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getMin()I

    move-result v3

    .line 4138
    .local v3, "min":I
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getSeekBarView(I)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getProgress()I

    move-result v4

    add-int/2addr v4, p1

    .line 4139
    .local v4, "tmpLevel":I
    if-ge v4, v3, :cond_1

    .line 4140
    const/4 v1, 0x0

    .line 4141
    move v4, v3

    goto :goto_0

    .line 4142
    :cond_1
    if-le v4, v2, :cond_2

    .line 4143
    const/4 v1, 0x1

    .line 4144
    move v4, v2

    .line 4146
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getSeekBarView(I)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isTracking()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getSeekBarView(I)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getTargetIsCompleted()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 4149
    :cond_3
    const-string v5, "HUD\u89e6\u63a7\u5c4f"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getSeekBarEventName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackVolumeStatus(ILjava/lang/String;Ljava/lang/String;)V

    .line 4150
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getSeekBarView(I)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getType()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setStreamVolume(II)V

    .line 4151
    return v1

    .line 4147
    :cond_4
    :goto_1
    return v1
.end method

.method private updateSliderToLevelByRotaryKnob(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;I)V
    .locals 4
    .param p1, "row"    # Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;
    .param p2, "level"    # I

    .line 4193
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4194
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSliderToLevelByRotaryKnob(VolumeSeekBarView, int): type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", getProgress() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", getTargetLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getTargetLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4196
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4197
    return-void

    .line 4199
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getMax()I

    move-result v0

    .line 4200
    .local v0, "max":I
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getMin()I

    move-result v1

    .line 4201
    .local v1, "min":I
    if-ge p2, v1, :cond_2

    .line 4202
    move p2, v1

    goto :goto_0

    .line 4203
    :cond_2
    if-le p2, v0, :cond_3

    .line 4204
    move p2, v0

    .line 4206
    :cond_3
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setTargetLevel(I)Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_4

    .line 4208
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4209
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/4 v3, -0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 4211
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendCloseVolumeBarDelayMsg(I)V

    .line 4213
    :goto_1
    return-void
.end method


# virtual methods
.method public addRecent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;

    .line 1103
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mRecentAppAdapter:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    if-nez v0, :cond_0

    .line 1104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1105
    .local v0, "dataSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;"
    new-instance v1, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    const-string v2, ""

    invoke-direct {v1, v2, p1, p2}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1106
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->initRecent(Ljava/util/ArrayList;)V

    .line 1107
    .end local v0    # "dataSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;"
    goto :goto_0

    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mRecentAppAdapter:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    new-instance v1, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    const-string v2, ""

    invoke-direct {v1, v2, p1, p2}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->addRecentApp(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)V

    .line 1110
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    .line 1111
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessageDelayed(IJ)Z

    .line 1112
    return-void
.end method

.method public appListAdd(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/pma/applist/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 1842
    .local p1, "newApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;"
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appPowerUpRefrsh:Z

    if-nez v0, :cond_0

    .line 1843
    return-void

    .line 1845
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1847
    .local v1, "newAppCount":I
    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->pageCount:I

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->getItemCount()I

    move-result v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int v1, v3, v4

    .line 1850
    goto :goto_0

    .line 1848
    :catch_0
    move-exception v3

    .line 1849
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v4, "SliderWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appListAdd Exception: pageCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->pageCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_0
    const/16 v3, 0x15

    if-le v1, v3, :cond_2

    .line 1852
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1853
    .local v4, "dataSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v2, :cond_1

    .line 1854
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1856
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->pageCount:I

    sub-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->getItemCount()I

    move-result v5

    sub-int/2addr v3, v5

    .line 1857
    .local v3, "count":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p1, v3, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1858
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->pageCount:I

    sub-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->addData(Ljava/util/ArrayList;)V

    .line 1860
    .end local v3    # "count":I
    :goto_1
    new-instance v3, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 1861
    .local v3, "appPage":Landroidx/recyclerview/widget/RecyclerView;
    new-instance v5, Lcom/android/systemui/statusbar/pma/SliderWindowManager$31;

    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    const/4 v7, 0x7

    invoke-direct {v5, p0, v6, v7}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$31;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Landroid/content/Context;I)V

    move-object v11, v5

    .line 1867
    .local v11, "gridLayoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    new-instance v12, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    iget-object v7, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->pageCount:I

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsBlack:Z

    xor-int/lit8 v9, v5, 0x1

    const/4 v10, 0x1

    move-object v5, v12

    move-object v6, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;IZZ)V

    move-object v2, v12

    .line 1868
    .local v2, "adapter":Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->setAppClickListener(Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;)V

    .line 1870
    new-instance v5, Lcom/android/systemui/statusbar/pma/SliderWindowManager$32;

    invoke-direct {v5, p0, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$32;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1917
    .local v5, "l":Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 1919
    invoke-virtual {v3, v11}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1920
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1921
    new-instance v6, Lcom/android/systemui/statusbar/pma/applist/AppItemTouchHelperCallback;

    invoke-direct {v6, v2}, Lcom/android/systemui/statusbar/pma/applist/AppItemTouchHelperCallback;-><init>(Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;)V

    .line 1922
    .local v6, "callback":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    new-instance v7, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {v7, v6}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 1923
    .local v7, "appItemTouchHelper":Landroidx/recyclerview/widget/ItemTouchHelper;
    invoke-virtual {v7, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1925
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1926
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appViewPagerAdapter:Lcom/android/systemui/statusbar/pma/applist/AppViewPagerAdapter;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/pma/applist/AppViewPagerAdapter;->notifyDataSetChanged()V

    .line 1927
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->group:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->inflater:Landroid/view/LayoutInflater;

    const v10, 0x7f0d00ff

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1928
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->pageCount:I

    .line 1929
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->showDotLayout(I)V

    .line 1930
    .end local v2    # "adapter":Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;
    .end local v3    # "appPage":Landroidx/recyclerview/widget/RecyclerView;
    .end local v4    # "dataSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;"
    .end local v5    # "l":Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;
    .end local v6    # "callback":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    .end local v7    # "appItemTouchHelper":Landroidx/recyclerview/widget/ItemTouchHelper;
    .end local v11    # "gridLayoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    goto :goto_2

    .line 1931
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->pageCount:I

    if-lez v3, :cond_4

    .line 1932
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 1933
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->pageCount:I

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->addData(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)V

    goto :goto_2

    .line 1935
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->pageCount:I

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->addData(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 1938
    :cond_4
    const-string v0, "SliderWindowManager"

    const-string v2, "Exception: pageCount < 1"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const/16 v2, 0x6d

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    .line 1942
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessageDelayed(IJ)Z

    .line 1943
    return-void
.end method

.method public changedAppTaskInfo(Lcom/zeekrlife/market/update/AppTaskInfo;)V
    .locals 8
    .param p1, "appTaskInfo"    # Lcom/zeekrlife/market/update/AppTaskInfo;

    .line 5503
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appPowerUpRefrsh:Z

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/zeekrlife/market/update/AppTaskInfo;->getState()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    goto/16 :goto_6

    .line 5506
    :cond_0
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changedAppTaskInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zeekrlife/market/update/AppTaskInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5507
    invoke-virtual {p1}, Lcom/zeekrlife/market/update/AppTaskInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 5508
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/zeekrlife/market/update/AppTaskInfo;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/zeekrlife/market/update/AppTaskInfo;->getState()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    .line 5509
    :cond_1
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lcom/zeekrlife/market/update/AppTaskInfo;->setState(I)V

    .line 5511
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appTaskInfos:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v3, 0x75

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appTaskInfos:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 5518
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appTaskInfos:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zeekrlife/market/update/AppTaskInfo;

    invoke-virtual {v1}, Lcom/zeekrlife/market/update/AppTaskInfo;->getState()I

    move-result v1

    invoke-virtual {p1}, Lcom/zeekrlife/market/update/AppTaskInfo;->getState()I

    move-result v4

    if-eq v1, v4, :cond_5

    .line 5519
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appTaskInfos:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5520
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 5521
    .local v1, "m":Landroid/os/Message;
    iput v3, v1, Landroid/os/Message;->what:I

    .line 5522
    invoke-virtual {p1}, Lcom/zeekrlife/market/update/AppTaskInfo;->getState()I

    move-result v3

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 5523
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5524
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendMessage(Landroid/os/Message;)Z

    .end local v1    # "m":Landroid/os/Message;
    goto :goto_1

    .line 5512
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appTaskInfos:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5513
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 5514
    .restart local v1    # "m":Landroid/os/Message;
    iput v3, v1, Landroid/os/Message;->what:I

    .line 5515
    invoke-virtual {p1}, Lcom/zeekrlife/market/update/AppTaskInfo;->getState()I

    move-result v3

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 5516
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5517
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 5518
    .end local v1    # "m":Landroid/os/Message;
    nop

    .line 5526
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/zeekrlife/market/update/AppTaskInfo;->getState()I

    move-result v1

    const/4 v3, 0x0

    if-lt v1, v2, :cond_8

    invoke-virtual {p1}, Lcom/zeekrlife/market/update/AppTaskInfo;->getState()I

    move-result v1

    const/4 v4, 0x7

    if-gt v1, v4, :cond_8

    .line 5527
    iget-wide v4, p1, Lcom/zeekrlife/market/update/AppTaskInfo;->soFar:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_7

    iget-wide v4, p1, Lcom/zeekrlife/market/update/AppTaskInfo;->total:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/zeekrlife/market/update/AppTaskInfo;->getState()I

    move-result v1

    if-ne v1, v2, :cond_6

    goto :goto_2

    .line 5530
    :cond_6
    iget-wide v1, p1, Lcom/zeekrlife/market/update/AppTaskInfo;->soFar:J

    long-to-double v1, v1

    iget-wide v4, p1, Lcom/zeekrlife/market/update/AppTaskInfo;->total:J

    long-to-double v4, v4

    div-double/2addr v1, v4

    double-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setProgressTaskInfo(Ljava/lang/String;F)V

    goto :goto_3

    .line 5528
    :cond_7
    :goto_2
    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setProgressTaskInfo(Ljava/lang/String;F)V

    .line 5533
    :cond_8
    :goto_3
    invoke-virtual {p1}, Lcom/zeekrlife/market/update/AppTaskInfo;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    .line 5534
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->recent:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mRecentAppAdapter:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    if-eqz v1, :cond_a

    .line 5535
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mRecentAppAdapter:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 5537
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mRecentAppAdapter:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->getRecent()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5538
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->recent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    .line 5539
    .local v2, "r":Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;
    if-eqz v2, :cond_9

    .line 5540
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->setDownLoading(Z)V

    .line 5541
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->updateDownLoading(F)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5546
    .end local v2    # "r":Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;
    :cond_9
    goto :goto_5

    .line 5544
    :catch_0
    move-exception v2

    .line 5545
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "SliderWindowManager"

    const-string v5, "couldn\'t find appInfo frome recent."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5535
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 5550
    .end local v1    # "i":I
    :cond_a
    return-void

    .line 5504
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_b
    :goto_6
    return-void
.end method

.method public checkInstalled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 3083
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3084
    return v1

    .line 3087
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3090
    nop

    .line 3091
    const/4 v0, 0x1

    return v0

    .line 3088
    :catch_0
    move-exception v0

    .line 3089
    .local v0, "x":Ljava/lang/Exception;
    return v1
.end method

.method public clearSaveAppList()V
    .locals 8

    .line 5446
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5447
    .local v0, "size":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_7

    .line 5448
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "com.android.settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_2

    :sswitch_1
    const-string v3, "com.zeekr.speech.adapter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto :goto_2

    :sswitch_2
    const-string v3, "com.zeekr.eva"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_2

    :sswitch_3
    const-string v3, "com.yfvet.engineeringmode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_4
    const-string v3, "com.zeekr.automap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_2

    :sswitch_5
    const-string v3, "com.zeekr.operations"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_2

    :sswitch_6
    const-string v3, "com.zeekr.carlauncher3d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_2

    :sswitch_7
    const-string v3, "com.ecarx.xiaokagui"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_2

    :sswitch_8
    const-string v3, "com.geely.pma.settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 5461
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 5462
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5463
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.ecarx.multimedia"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 5464
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getActivity()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v3, v5}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isRepetition(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5465
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    .line 5458
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5459
    goto/16 :goto_4

    .line 5467
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->checkInstalled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5469
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 5470
    .local v3, "it":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 5471
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setActivity(Ljava/lang/String;)V

    .line 5473
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getActivity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5474
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 5475
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setLabel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "it":Landroid/content/Intent;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_3

    .line 5476
    :catch_0
    move-exception v3

    .line 5477
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5478
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3
    goto :goto_4

    .line 5480
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 5484
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getActivity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5485
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 5486
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v3, :cond_5

    .line 5487
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 5489
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getActivity()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isRepetition(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5490
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 5492
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setLabel(Ljava/lang/String;)V

    .line 5447
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 5499
    .end local v1    # "i":I
    :cond_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3482250c -> :sswitch_8
        -0x27ad586c -> :sswitch_7
        -0x23e7a495 -> :sswitch_6
        -0x201a04ba -> :sswitch_5
        -0x10eb9fcd -> :sswitch_4
        0x485fa13 -> :sswitch_3
        0x1d8117b6 -> :sswitch_2
        0x402ca09d -> :sswitch_1
        0x44f4b98f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public close()V
    .locals 3

    .line 4216
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4217
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close: isShowing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4219
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isShowing:Z

    if-nez v0, :cond_1

    .line 4220
    return-void

    .line 4222
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rootView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 4223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isShowing:Z

    .line 4229
    return-void
.end method

.method public closeAllSlider(Z)V
    .locals 1
    .param p1, "isAppList"    # Z

    .line 2700
    if-eqz p1, :cond_0

    .line 2701
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isSliderShow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAniHide:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2702
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeAppListSlider()V

    .line 2705
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeDriverHeatAll()V

    .line 2706
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closePassengerHeatAll()V

    .line 2707
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeDriverTempAll()V

    .line 2708
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closePassengerTempAll()V

    .line 2709
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeClimateSliderAll()V

    .line 2710
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeVolumeAll()V

    .line 2711
    return-void
.end method

.method public closeAllSliderButApplist()V
    .locals 0

    .line 2714
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeDriverHeatAll()V

    .line 2715
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closePassengerHeatAll()V

    .line 2716
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeDriverTempAll()V

    .line 2717
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closePassengerTempAll()V

    .line 2718
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeClimateSliderAll()V

    .line 2719
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeVolumeAll()V

    .line 2720
    return-void
.end method

.method public closeAppList()V
    .locals 3

    .line 4231
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4232
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeAppList: isShowing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isAppListShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4234
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isAppListShowing:Z

    if-nez v0, :cond_1

    .line 4235
    return-void

    .line 4237
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderAppListView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 4238
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListOffsetPixels:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4239
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->curIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appCount:I

    if-ne v0, v2, :cond_2

    .line 4240
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 4242
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->curIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 4246
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isAppListShowing:Z

    .line 4247
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mNavigationBarCarBodyDisplayController:Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;

    if-eqz v0, :cond_4

    .line 4248
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mNavigationBarCarBodyDisplayController:Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->onOneWorldAppList()V

    .line 4250
    :cond_4
    return-void
.end method

.method public closeAppListSlider()V
    .locals 2

    .line 2477
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2478
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListSlider:Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->DeleteBinShow(Z)V

    .line 2479
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isSliderShow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2480
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAnimationHide()V

    .line 2482
    :cond_0
    return-void
.end method

.method public closeClimateSlider(Z)V
    .locals 1
    .param p1, "isScroll"    # Z

    .line 2348
    if-eqz p1, :cond_0

    .line 2349
    const/4 v0, -0x6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    goto :goto_0

    .line 2351
    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    .line 2353
    :goto_0
    return-void
.end method

.method public closeClimateSliderAll()V
    .locals 2

    .line 2462
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2463
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2464
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->close()V

    .line 2466
    :cond_0
    return-void
.end method

.method public closeDriverHeatAll()V
    .locals 2

    .line 2282
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2283
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2284
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    .line 2285
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    .line 2286
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2288
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->close()V

    .line 2291
    :cond_0
    return-void
.end method

.method public closeDriverHeatSlider(Z)V
    .locals 6
    .param p1, "isScroll"    # Z

    .line 2260
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2261
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isDriverNeedWaite:Ljava/lang/Boolean;

    .line 2262
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const/16 v3, 0x6e

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    .line 2263
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessageDelayed(IJ)Z

    .line 2264
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isDriverSetNeedWaite:Ljava/lang/Boolean;

    .line 2265
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    .line 2266
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessageDelayed(IJ)Z

    .line 2267
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationShift:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setDriverHeatVentilationShift(I)V

    .line 2268
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    goto :goto_0

    .line 2270
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isDriverNeedWaite:Ljava/lang/Boolean;

    .line 2271
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    .line 2273
    :goto_0
    nop

    .local v1, "i":I
    :goto_1
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    const/4 v1, 0x7

    if-ge v0, v1, :cond_2

    .line 2274
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilation:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 2275
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 2276
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2273
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_1

    .line 2279
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public closeDriverTempAll()V
    .locals 2

    .line 2228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsDriverScroll:Z

    .line 2229
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2230
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2232
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    .line 2233
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    .line 2234
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2235
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->close()V

    .line 2238
    :cond_0
    return-void
.end method

.method public closeDriverTempSlider(Z)V
    .locals 1
    .param p1, "isScroll"    # Z

    .line 2202
    if-eqz p1, :cond_0

    .line 2203
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    goto :goto_0

    .line 2205
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    .line 2207
    :goto_0
    return-void
.end method

.method public closePassengerHeatAll()V
    .locals 2

    .line 2316
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2317
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2318
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    .line 2319
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    .line 2321
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2323
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->close()V

    .line 2326
    :cond_0
    return-void
.end method

.method public closePassengerHeatSlider(Z)V
    .locals 6
    .param p1, "isScroll"    # Z

    .line 2294
    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2295
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isPassengerNeedWaite:Ljava/lang/Boolean;

    .line 2296
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const/16 v3, 0x6f

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    .line 2297
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessageDelayed(IJ)Z

    .line 2298
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isPassengerSetNeedWaite:Ljava/lang/Boolean;

    .line 2299
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    .line 2300
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessageDelayed(IJ)Z

    .line 2301
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatOrVentilationShift:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setPassengerHeatVentilationShift(I)V

    .line 2302
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    goto :goto_0

    .line 2304
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isPassengerNeedWaite:Ljava/lang/Boolean;

    .line 2305
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    .line 2307
    :goto_0
    nop

    .local v1, "i":I
    :goto_1
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    const/4 v1, 0x7

    if-ge v0, v1, :cond_2

    .line 2308
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilation:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 2309
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 2310
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2307
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_1

    .line 2313
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public closePassengerTempAll()V
    .locals 2

    .line 2249
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2250
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2251
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    .line 2252
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    .line 2253
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2254
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->close()V

    .line 2257
    :cond_0
    return-void
.end method

.method public closePassengerTempSlider(Z)V
    .locals 1
    .param p1, "isScroll"    # Z

    .line 2241
    if-eqz p1, :cond_0

    .line 2242
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    goto :goto_0

    .line 2244
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    .line 2246
    :goto_0
    return-void
.end method

.method public closeVolumeAll()V
    .locals 2

    .line 2454
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2455
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2457
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->close()V

    .line 2459
    :cond_0
    return-void
.end method

.method public closeVolumeSlider(Z)V
    .locals 1
    .param p1, "isScroll"    # Z

    .line 2340
    if-eqz p1, :cond_0

    .line 2341
    const/4 v0, -0x5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    goto :goto_0

    .line 2343
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    .line 2345
    :goto_0
    return-void
.end method

.method public getAppInfoNotInSaved()V
    .locals 10

    .line 1154
    const/4 v0, 0x0

    .line 1155
    .local v0, "bean":Lcom/android/systemui/statusbar/pma/applist/AppInfo;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1156
    .local v1, "filterIntent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1157
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->packageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1158
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1159
    .local v4, "p":Landroid/content/pm/ResolveInfo;
    const/4 v5, 0x0

    .line 1160
    .local v5, "isIn":Z
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v8, "com.ecarx.ai.val"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v7, 0x4

    goto/16 :goto_1

    :sswitch_1
    const-string v8, "com.ecarx.xiaoka.carcontrol"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v7, 0x2

    goto/16 :goto_1

    :sswitch_2
    const-string v8, "com.android.settings"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v7, 0x7

    goto/16 :goto_1

    :sswitch_3
    const-string v8, "com.zeekr.speech.adapter"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v7, 0xe

    goto/16 :goto_1

    :sswitch_4
    const-string v8, "ecarx.xsf.inputservice"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v7, 0x1

    goto/16 :goto_1

    :sswitch_5
    const-string v8, "ecarx.launcher3"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v7, 0x5

    goto/16 :goto_1

    :sswitch_6
    const-string v8, "com.zeekr.eva"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v7, 0xb

    goto :goto_1

    :sswitch_7
    const-string v8, "com.yfvet.engineeringmode"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v7, 0x8

    goto :goto_1

    :sswitch_8
    const-string v8, "com.zeekr.automap"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v7, 0xd

    goto :goto_1

    :sswitch_9
    const-string v8, "com.zeekr.operations"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v7, 0xc

    goto :goto_1

    :sswitch_a
    const-string v8, "com.zeekr.carlauncher3d"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v7, 0xf

    goto :goto_1

    :sswitch_b
    const-string v8, "com.ecarx.xiaokagui"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v7, 0xa

    goto :goto_1

    :sswitch_c
    const-string v8, "com.geely.pma.settings"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v7, 0x9

    goto :goto_1

    :sswitch_d
    const-string v8, "com.ecarx.radio.service"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v7, 0x6

    goto :goto_1

    :sswitch_e
    const-string v8, "ecarx.xsf.widget"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v7, 0x0

    goto :goto_1

    :sswitch_f
    const-string v8, "com.ecarx.xcgoncall"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v7, 0x3

    :cond_0
    :goto_1
    packed-switch v7, :pswitch_data_0

    .line 1179
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isInAppDefault(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 1180
    if-nez v5, :cond_1

    .line 1181
    new-instance v6, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 1182
    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v4    # "p":Landroid/content/pm/ResolveInfo;
    .end local v5    # "isIn":Z
    goto :goto_2

    .line 1177
    .restart local v4    # "p":Landroid/content/pm/ResolveInfo;
    .restart local v5    # "isIn":Z
    :pswitch_0
    nop

    .line 1186
    .end local v4    # "p":Landroid/content/pm/ResolveInfo;
    .end local v5    # "isIn":Z
    :cond_1
    :goto_2
    goto/16 :goto_0

    .line 1187
    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5963ea79 -> :sswitch_f
        -0x4690ad34 -> :sswitch_e
        -0x37740c50 -> :sswitch_d
        -0x3482250c -> :sswitch_c
        -0x27ad586c -> :sswitch_b
        -0x23e7a495 -> :sswitch_a
        -0x201a04ba -> :sswitch_9
        -0x10eb9fcd -> :sswitch_8
        0x485fa13 -> :sswitch_7
        0x1d8117b6 -> :sswitch_6
        0x214001ee -> :sswitch_5
        0x30b36a33 -> :sswitch_4
        0x402ca09d -> :sswitch_3
        0x44f4b98f -> :sswitch_2
        0x470ffb10 -> :sswitch_1
        0x4aaaa42d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getDriverPosition()I
    .locals 3

    .line 4294
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    if-nez v0, :cond_1

    .line 4295
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4296
    const-string v0, "SliderWindowManager"

    const-string v1, "mDriverTmpSeekbar == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4298
    :cond_0
    const/16 v0, 0xd

    return v0

    .line 4300
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 4301
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDriverPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4303
    :cond_2
    sget v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverPosition:I

    return v0
.end method

.method public getPassengerPosition()I
    .locals 3

    .line 4308
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    if-nez v0, :cond_1

    .line 4309
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4310
    const-string v0, "SliderWindowManager"

    const-string v1, "mPassengerTmpSeekbar == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4312
    :cond_0
    const/16 v0, 0xd

    return v0

    .line 4314
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 4315
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPassengerPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4317
    :cond_2
    sget v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerPosition:I

    return v0
.end method

.method public initAppListData()V
    .locals 2

    .line 5863
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessage(I)Z

    .line 5864
    return-void
.end method

.method public initHicarAppList(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/pma/applist/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 1335
    .local p1, "hicarApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;"
    const-string v0, "SliderWindowManager"

    const-string v1, "initHicarAppList :hicarApps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1337
    .local v0, "hicarAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1338
    .local v1, "size":I
    const-string v2, "SliderWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initHicarAppList hicarApps.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1340
    add-int/lit8 v4, v3, 0x15

    if-ge v4, v1, :cond_0

    .line 1341
    new-instance v4, Ljava/util/ArrayList;

    add-int/lit8 v5, v3, 0x15

    invoke-virtual {p1, v3, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1343
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1339
    :goto_1
    add-int/lit8 v3, v3, 0x15

    goto :goto_0

    .line 1346
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hicarMap:Ljava/util/ArrayList;

    .line 1347
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hiCarPageCount:I

    .line 1348
    move v3, v2

    .restart local v3    # "i":I
    :goto_2
    iget v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hiCarPageCount:I

    const/4 v10, 0x1

    if-ge v3, v4, :cond_3

    .line 1349
    new-instance v4, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    move-object v11, v4

    .line 1350
    .local v11, "appPage":Landroidx/recyclerview/widget/RecyclerView;
    new-instance v4, Lcom/android/systemui/statusbar/pma/SliderWindowManager$26;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x7

    invoke-direct {v4, p0, v5, v6}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$26;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Landroid/content/Context;I)V

    move-object v12, v4

    .line 1356
    .local v12, "gridLayoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    new-instance v13, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v4

    if-ne v4, v10, :cond_2

    move v8, v10

    goto :goto_3

    :cond_2
    move v8, v2

    :goto_3
    const/4 v9, 0x0

    move-object v4, v13

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;IZZ)V

    .line 1357
    .local v4, "adapter":Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->setAppClickListener(Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;)V

    .line 1358
    new-instance v5, Lcom/android/systemui/statusbar/pma/SliderWindowManager$27;

    invoke-direct {v5, p0, v11, v10}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$27;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 1374
    .local v5, "l":Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;
    invoke-virtual {v11, v5}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 1375
    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1376
    invoke-virtual {v11, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1377
    new-instance v6, Lcom/android/systemui/statusbar/pma/applist/AppItemTouchHelperCallback;

    invoke-direct {v6, v4, v10}, Lcom/android/systemui/statusbar/pma/applist/AppItemTouchHelperCallback;-><init>(Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;Z)V

    .line 1378
    .local v6, "callback":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    new-instance v7, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {v7, v6}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 1379
    .local v7, "appItemTouchHelper":Landroidx/recyclerview/widget/ItemTouchHelper;
    invoke-virtual {v7, v11}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1380
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hicarMap:Ljava/util/ArrayList;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1348
    .end local v4    # "adapter":Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;
    .end local v5    # "l":Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;
    .end local v6    # "callback":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    .end local v7    # "appItemTouchHelper":Landroidx/recyclerview/widget/ItemTouchHelper;
    .end local v11    # "appPage":Landroidx/recyclerview/widget/RecyclerView;
    .end local v12    # "gridLayoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1383
    .end local v3    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderAppListView:Landroid/view/View;

    const v3, 0x7f0a01af

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->group_hiCar:Landroid/widget/LinearLayout;

    .line 1384
    new-instance v2, Lcom/android/systemui/statusbar/pma/applist/AppViewPagerAdapter;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hicarMap:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/pma/applist/AppViewPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hiCarViewPagerAdapter:Lcom/android/systemui/statusbar/pma/applist/AppViewPagerAdapter;

    .line 1385
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hiCarViewPagerAdapter:Lcom/android/systemui/statusbar/pma/applist/AppViewPagerAdapter;

    if-nez v2, :cond_4

    .line 1386
    const-string v2, "SliderWindowManager"

    const-string v3, "hiCarViewPagerAdapter is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->inflater:Landroid/view/LayoutInflater;

    .line 1389
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hiCarViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v2, :cond_5

    .line 1390
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hiCarViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hiCarViewPagerAdapter:Lcom/android/systemui/statusbar/pma/applist/AppViewPagerAdapter;

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 1391
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hiCarViewPager:Landroidx/viewpager/widget/ViewPager;

    const v3, 0x7f0a0521

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setId(I)V

    .line 1392
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hiCarViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager$28;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$28;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 1417
    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setDotLayout(I)V

    goto :goto_4

    .line 1419
    :cond_5
    const-string v2, "SliderWindowManager"

    const-string v3, "hiCarViewPager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :goto_4
    return-void
.end method

.method public initSaveAppList(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/pma/applist/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 1206
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1207
    .local v0, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1208
    .local v1, "size":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1209
    add-int/lit8 v4, v3, 0x15

    if-ge v4, v1, :cond_0

    .line 1210
    new-instance v4, Ljava/util/ArrayList;

    add-int/lit8 v5, v3, 0x15

    invoke-virtual {p1, v3, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1212
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1208
    :goto_1
    add-int/lit8 v3, v3, 0x15

    goto :goto_0

    .line 1215
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    .line 1216
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->pageCount:I

    .line 1217
    move v3, v2

    .restart local v3    # "i":I
    :goto_2
    iget v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->pageCount:I

    if-ge v3, v4, :cond_3

    .line 1218
    new-instance v4, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    move-object v10, v4

    .line 1219
    .local v10, "appPage":Landroidx/recyclerview/widget/RecyclerView;
    new-instance v4, Lcom/android/systemui/statusbar/pma/SliderWindowManager$23;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x7

    invoke-direct {v4, p0, v5, v6}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$23;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Landroid/content/Context;I)V

    move-object v11, v4

    .line 1225
    .local v11, "gridLayoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    new-instance v12, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_2

    move v8, v7

    goto :goto_3

    :cond_2
    move v8, v2

    :goto_3
    const/4 v9, 0x0

    move-object v4, v12

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;IZZ)V

    .line 1226
    .local v4, "adapter":Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->setAppClickListener(Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;)V

    .line 1227
    new-instance v5, Lcom/android/systemui/statusbar/pma/SliderWindowManager$24;

    invoke-direct {v5, p0, v10}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$24;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1274
    .local v5, "l":Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;
    invoke-virtual {v10, v5}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 1276
    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1277
    invoke-virtual {v10, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1279
    new-instance v6, Lcom/android/systemui/statusbar/pma/applist/AppItemTouchHelperCallback;

    invoke-direct {v6, v4}, Lcom/android/systemui/statusbar/pma/applist/AppItemTouchHelperCallback;-><init>(Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;)V

    .line 1280
    .local v6, "callback":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    new-instance v7, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {v7, v6}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 1281
    .local v7, "appItemTouchHelper":Landroidx/recyclerview/widget/ItemTouchHelper;
    invoke-virtual {v7, v10}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1283
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1217
    .end local v4    # "adapter":Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;
    .end local v5    # "l":Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;
    .end local v6    # "callback":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    .end local v7    # "appItemTouchHelper":Landroidx/recyclerview/widget/ItemTouchHelper;
    .end local v10    # "appPage":Landroidx/recyclerview/widget/RecyclerView;
    .end local v11    # "gridLayoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1286
    .end local v3    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderAppListView:Landroid/view/View;

    const v4, 0x7f0a0056

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->group:Landroid/widget/LinearLayout;

    .line 1287
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderAppListView:Landroid/view/View;

    const v4, 0x7f0a0344

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 1289
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderAppListView:Landroid/view/View;

    const v4, 0x7f0a0348

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hiCarViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 1295
    new-instance v3, Lcom/android/systemui/statusbar/pma/applist/AppViewPagerAdapter;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/pma/applist/AppViewPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appViewPagerAdapter:Lcom/android/systemui/statusbar/pma/applist/AppViewPagerAdapter;

    .line 1296
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->inflater:Landroid/view/LayoutInflater;

    .line 1297
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v3, :cond_4

    .line 1298
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appViewPagerAdapter:Lcom/android/systemui/statusbar/pma/applist/AppViewPagerAdapter;

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 1299
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const v4, 0x7f0a0520

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/ViewPager;->setId(I)V

    .line 1300
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v4, Lcom/android/systemui/statusbar/pma/SliderWindowManager$25;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$25;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 1326
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setDotLayout(I)V

    goto :goto_4

    .line 1328
    :cond_4
    const-string v2, "SliderWindowManager"

    const-string v3, "initAppList :viewPager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    :goto_4
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->open(I)V

    .line 1331
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1332
    return-void
.end method

.method public isActionExterior(I)V
    .locals 3
    .param p1, "state"    # I

    .line 5723
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 5724
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action Exterior: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "streamtype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getActiveStreamType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5726
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 5727
    sput-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsActionExterior:Z

    .line 5728
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mMusicRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setMusicRowGrey()V

    goto :goto_0

    .line 5730
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsActionExterior:Z

    .line 5732
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateEnterStatus()V

    .line 5733
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateOutRow()V

    .line 5734
    return-void
.end method

.method public isInAppDefault(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityInfo"    # Ljava/lang/String;

    .line 1190
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->apps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    .line 1191
    .local v1, "app":Lcom/android/systemui/statusbar/pma/applist/AppInfo;
    const-string v2, "com.ecarx.multimedia"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1192
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getActivity()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1193
    return v3

    .line 1196
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1197
    return v3

    .line 1201
    .end local v1    # "app":Lcom/android/systemui/statusbar/pma/applist/AppInfo;
    :cond_1
    goto :goto_0

    .line 1202
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isInPagesAndChange(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "s"    # I

    .line 1717
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInPagesAndChange pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    const/16 v0, 0xe

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    const/4 v2, 0x3

    if-lt p2, v2, :cond_6

    if-ge p2, v0, :cond_6

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->recent:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mRecentAppAdapter:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    if-eqz v2, :cond_6

    .line 1719
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mRecentAppAdapter:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->getActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1720
    .local v2, "activity":Ljava/lang/String;
    move v3, v1

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mRecentAppAdapter:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->getAllCount()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 1721
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mRecentAppAdapter:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->getRecent()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1722
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mRecentAppAdapter:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 1723
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->recent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    .line 1724
    .local v4, "r":Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;
    if-eqz v4, :cond_4

    .line 1725
    if-gez p2, :cond_1

    .line 1726
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->refresh(Ljava/lang/String;)V

    goto :goto_2

    .line 1727
    :cond_1
    const/16 v5, 0x9

    if-eq p2, v5, :cond_3

    const/16 v5, 0xf

    if-ne p2, v5, :cond_2

    goto :goto_1

    .line 1732
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->setDownLoading(Z)V

    .line 1733
    const/16 v5, 0xa

    if-lt p2, v5, :cond_4

    .line 1734
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->updateDownLoading(F)V

    .end local v4    # "r":Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;
    goto :goto_2

    .line 1728
    .restart local v4    # "r":Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;
    :cond_3
    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->setDownLoading(Z)V

    .line 1729
    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->updateDownLoading(F)V

    .line 1730
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->isPrepare()V

    .line 1739
    .end local v4    # "r":Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;
    :cond_4
    :goto_2
    if-gez p2, :cond_5

    .line 1740
    const-string v4, "com.ecarx.multimedia"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1741
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mRecentAppAdapter:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    invoke-virtual {v4, v3, v2}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->refreshActivity(ILjava/lang/String;)V

    .line 1720
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1747
    .end local v2    # "activity":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_6
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appPowerUpRefrsh:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_7

    goto :goto_5

    .line 1750
    :cond_7
    const/4 v2, 0x0

    .line 1753
    .local v2, "isIn":Z
    nop

    .local v1, "i":I
    :goto_3
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->pageCount:I

    if-ge v1, v3, :cond_c

    .line 1754
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v3, p1, p2}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->changedAppTaskInfoState(Ljava/lang/String;I)I

    move-result v3

    .line 1755
    .local v3, "position":I
    if-gez v3, :cond_8

    const/4 v4, -0x2

    if-ne v3, v4, :cond_b

    .line 1756
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    .line 1757
    .local v4, "v":Lcom/android/systemui/statusbar/pma/applist/AppItemView;
    if-eqz v4, :cond_a

    .line 1758
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1759
    if-eq p2, v0, :cond_a

    .line 1760
    if-gez p2, :cond_9

    .line 1761
    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->setStateLabel(I)V

    goto :goto_4

    .line 1763
    :cond_9
    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->setStateLabel(I)V

    .line 1765
    :goto_4
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->setNewApp()V

    .line 1766
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->checkStartup()I

    .line 1770
    :cond_a
    const/4 v2, 0x1

    .line 1753
    .end local v4    # "v":Lcom/android/systemui/statusbar/pma/applist/AppItemView;
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1773
    .end local v3    # "position":I
    :cond_c
    return v2

    .line 1748
    .end local v1    # "i":I
    .end local v2    # "isIn":Z
    :cond_d
    :goto_5
    return v1
.end method

.method public isSettingsExterior(I)V
    .locals 3
    .param p1, "state"    # I

    .line 5709
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 5710
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings Exterior: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "streamtype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getActiveStreamType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5712
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 5713
    sput-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsSettingsExterior:Z

    .line 5714
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mMusicRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setMusicRowGrey()V

    goto :goto_0

    .line 5715
    :cond_1
    if-nez p1, :cond_2

    .line 5716
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsSettingsExterior:Z

    .line 5718
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateEnterStatus()V

    .line 5719
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateOutRow()V

    .line 5720
    return-void
.end method

.method public isSliderShow(I)Z
    .locals 3
    .param p1, "viewType"    # I

    .line 3897
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne p1, v2, :cond_1

    .line 3898
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isAppListShowing:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAniHide:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 3900
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isShowing:Z

    if-nez v2, :cond_2

    .line 3901
    return v1

    .line 3903
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 3917
    return v1

    .line 3905
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0

    .line 3907
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    return v0

    .line 3909
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvDriverHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    return v0

    .line 3911
    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->rvPassengerHeatVentilationSlider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    move v0, v1

    :goto_4
    return v0

    .line 3913
    :pswitch_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    move v0, v1

    :goto_5
    return v0

    .line 3915
    :pswitch_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateSlider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    goto :goto_6

    :cond_8
    move v0, v1

    :goto_6
    return v0

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isTopActivityExterior(Z)V
    .locals 3
    .param p1, "state"    # Z

    .line 5737
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 5738
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TopActivity Exterior: state=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5740
    :cond_0
    sput-boolean p1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsTopActivityExterior:Z

    .line 5741
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateOutRow()V

    .line 5742
    return-void
.end method

.method public moveClimatePosition(I)V
    .locals 5
    .param p1, "direction"    # I

    .line 3922
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/4 v1, -0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3923
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3924
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3925
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveClimatePosition direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " currentClimateShift "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentClimateShift:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCarBodyStateManager.getClimateShift() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getClimateShift()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCarBodyStateManager.getLastClimateShift() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getLastClimateShift()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3927
    :cond_0
    const-wide/16 v0, 0x50

    const/4 v2, 0x1

    if-nez p1, :cond_5

    .line 3928
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentClimateShift:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 3929
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setLastClimateShift(I)V

    .line 3930
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getClimateShift()I

    move-result v3

    if-nez v3, :cond_1

    .line 3931
    return-void

    .line 3933
    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->acutreClimateShift:I

    iput v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentClimateShift:I

    .line 3934
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3935
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3936
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateClimateShift(I)V

    .line 3937
    return-void

    .line 3938
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentClimateShift:I

    if-ne v3, v2, :cond_3

    .line 3939
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setLastClimateShift(I)V

    goto :goto_0

    .line 3940
    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentClimateShift:I

    if-nez v3, :cond_4

    .line 3941
    return-void

    .line 3943
    :cond_4
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentClimateShift:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentClimateShift:I

    .line 3944
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentClimateShift:I

    iput v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->acutreClimateShift:I

    goto :goto_1

    .line 3945
    :cond_5
    if-ne v2, p1, :cond_9

    .line 3946
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentClimateShift:I

    const/16 v4, 0xe

    if-eq v3, v4, :cond_8

    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentClimateShift:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_6

    goto :goto_2

    .line 3948
    :cond_6
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentClimateShift:I

    if-nez v3, :cond_7

    .line 3949
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getLastClimateShift()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentClimateShift:I

    .line 3950
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentClimateShift:I

    iput v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->acutreClimateShift:I

    .line 3951
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3952
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3953
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentClimateShift:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateClimateShift(I)V

    .line 3954
    return-void

    .line 3956
    :cond_7
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentClimateShift:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentClimateShift:I

    .line 3957
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentClimateShift:I

    iput v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->acutreClimateShift:I

    .line 3961
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3962
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3963
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentClimateShift:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateClimateShift(I)V

    .line 3964
    return-void

    .line 3947
    :cond_8
    :goto_2
    return-void

    .line 3959
    :cond_9
    return-void
.end method

.method public moveDriverHeatPosition(I)I
    .locals 7
    .param p1, "direction"    # I

    .line 2581
    const/4 v0, -0x1

    .line 2582
    .local v0, "isOutOfRange":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2583
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDriverHeatVentilationAvai()I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationAVAI:I

    .line 2584
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2585
    const-string v1, "SliderWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveDriverHeatPosition(), mDriverHeatOrVentilationAVAI:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationAVAI:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " before = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationShift:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " direction ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    :cond_0
    sget v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationAVAI:I

    sget v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->NONE:I

    if-eq v1, v3, :cond_b

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    if-nez v1, :cond_1

    goto :goto_2

    .line 2591
    :cond_1
    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 2592
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationShift:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationShift:I

    goto :goto_0

    .line 2593
    :cond_2
    if-ne v1, p1, :cond_a

    .line 2594
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationShift:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationShift:I

    .line 2598
    :goto_0
    sget v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationAVAI:I

    sget v4, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DRIVER_HEAT_VENTILATION_SHOW:I

    const/4 v5, 0x3

    if-ne v3, v4, :cond_4

    .line 2599
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationShift:I

    if-ge v3, v2, :cond_3

    .line 2600
    const/4 v0, 0x0

    .line 2601
    iput v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationShift:I

    .line 2603
    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationShift:I

    if-le v3, v5, :cond_8

    .line 2604
    const/4 v0, 0x1

    .line 2605
    iput v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationShift:I

    goto :goto_1

    .line 2608
    :cond_4
    sget v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationAVAI:I

    sget v4, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DRIVER_ONLY_VENTILATION_SHOW:I

    const/4 v6, 0x0

    if-ne v3, v4, :cond_6

    .line 2609
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationShift:I

    if-ge v3, v2, :cond_5

    .line 2610
    const/4 v0, 0x0

    .line 2611
    iput v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationShift:I

    .line 2613
    :cond_5
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationShift:I

    if-lez v3, :cond_6

    .line 2614
    const/4 v0, 0x1

    .line 2615
    iput v6, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationShift:I

    .line 2618
    :cond_6
    sget v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationAVAI:I

    sget v4, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DRIVER_ONLY_HEAT_SHOW:I

    if-ne v3, v4, :cond_8

    .line 2619
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationShift:I

    if-gez v3, :cond_7

    .line 2620
    const/4 v0, 0x0

    .line 2621
    iput v6, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationShift:I

    .line 2623
    :cond_7
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationShift:I

    if-le v3, v5, :cond_8

    .line 2624
    const/4 v0, 0x1

    .line 2625
    iput v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationShift:I

    .line 2629
    :cond_8
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isDriverNeedWaite:Ljava/lang/Boolean;

    .line 2630
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isSliderShow(I)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_9

    .line 2631
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->open(I)V

    .line 2633
    :cond_9
    iget v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationShift:I

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveToCurrentShift(II)V

    .line 2634
    return v0

    .line 2596
    :cond_a
    return v0

    .line 2588
    :cond_b
    :goto_2
    return v0
.end method

.method public moveDriverTempPosition(I)V
    .locals 4
    .param p1, "direction"    # I

    .line 2513
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " moveDriverTempPosition , direction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsDriverScroll:Z

    .line 2515
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2516
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isSliderShow(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2517
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->open(I)V

    .line 2519
    :cond_0
    if-nez p1, :cond_1

    .line 2521
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isStatusBarTouch:Z

    .line 2522
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->adjustProgress(Z)V

    goto :goto_0

    .line 2523
    :cond_1
    if-ne v0, p1, :cond_2

    .line 2525
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isStatusBarTouch:Z

    .line 2526
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->adjustProgress(Z)V

    .line 2545
    :goto_0
    return-void

    .line 2528
    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 2529
    const-string v0, "SliderWindowManager"

    const-string v1, "moveDriverTempPosition: error direction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    :cond_3
    return-void
.end method

.method public movePassengerHeatPosition(I)I
    .locals 8
    .param p1, "direction"    # I

    .line 2638
    const/4 v0, -0x1

    .line 2639
    .local v0, "isOutOfRange":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/4 v2, -0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2640
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPassengerHeatVentilationAvai()I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAVAI:I

    .line 2641
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2642
    const-string v1, "SliderWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "movePassengerHeatPosition(), mPassengerHeatVentilationAVAI:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAVAI:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " before = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatOrVentilationShift:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " direction ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    :cond_0
    sget v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAVAI:I

    sget v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->NONE:I

    if-ne v1, v3, :cond_1

    .line 2645
    return v0

    .line 2647
    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 2648
    const-string v1, "SliderWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "movePassengerHeatPosition: before = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatOrVentilationShift:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    :cond_2
    const/4 v1, 0x1

    if-nez p1, :cond_3

    .line 2651
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatOrVentilationShift:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatOrVentilationShift:I

    goto :goto_0

    .line 2652
    :cond_3
    if-ne v1, p1, :cond_c

    .line 2653
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatOrVentilationShift:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatOrVentilationShift:I

    .line 2657
    :goto_0
    sget v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAVAI:I

    sget v4, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->PASSENGER_HEAT_VENTILATION_SHOW:I

    const/4 v5, -0x3

    const/4 v6, 0x3

    if-ne v3, v4, :cond_5

    .line 2658
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatOrVentilationShift:I

    if-ge v3, v5, :cond_4

    .line 2659
    const/4 v0, 0x0

    .line 2660
    iput v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatOrVentilationShift:I

    .line 2662
    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatOrVentilationShift:I

    if-le v3, v6, :cond_9

    .line 2663
    const/4 v0, 0x1

    .line 2664
    iput v6, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatOrVentilationShift:I

    goto :goto_1

    .line 2667
    :cond_5
    sget v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAVAI:I

    sget v4, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->PASSENGER_ONLY_VENTILATION_SHOW:I

    const/4 v7, 0x0

    if-ne v3, v4, :cond_7

    .line 2668
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatOrVentilationShift:I

    if-ge v3, v5, :cond_6

    .line 2669
    const/4 v0, 0x0

    .line 2670
    iput v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatOrVentilationShift:I

    .line 2672
    :cond_6
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatOrVentilationShift:I

    if-lez v3, :cond_7

    .line 2673
    const/4 v0, 0x1

    .line 2674
    iput v7, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatOrVentilationShift:I

    .line 2677
    :cond_7
    sget v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAVAI:I

    sget v4, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->PASSENGER_ONLY_HEAT_SHOW:I

    if-ne v3, v4, :cond_9

    .line 2678
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatOrVentilationShift:I

    if-gez v3, :cond_8

    .line 2679
    const/4 v0, 0x0

    .line 2680
    iput v7, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatOrVentilationShift:I

    .line 2682
    :cond_8
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatOrVentilationShift:I

    if-le v3, v6, :cond_9

    .line 2683
    const/4 v0, 0x1

    .line 2684
    iput v6, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatOrVentilationShift:I

    .line 2688
    :cond_9
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    if-nez v3, :cond_a

    .line 2689
    return v0

    .line 2691
    :cond_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isPassengerNeedWaite:Ljava/lang/Boolean;

    .line 2692
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isSliderShow(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2693
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->open(I)V

    .line 2695
    :cond_b
    iget v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatOrVentilationShift:I

    invoke-virtual {p0, v1, v6}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveToCurrentShift(II)V

    .line 2696
    return v0

    .line 2655
    :cond_c
    return v0
.end method

.method public movePassengerTempPosition(I)V
    .locals 2
    .param p1, "direction"    # I

    .line 2548
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isSliderShow(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2549
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->open(I)V

    .line 2551
    :cond_0
    if-nez p1, :cond_1

    .line 2552
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isStatusBarTouch:Z

    .line 2553
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->adjustProgress(Z)V

    goto :goto_0

    .line 2555
    :cond_1
    if-ne v1, p1, :cond_2

    .line 2556
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isStatusBarTouch:Z

    .line 2557
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->adjustProgress(Z)V

    .line 2574
    :goto_0
    return-void

    .line 2560
    :cond_2
    return-void
.end method

.method public moveToCurrentShift(II)V
    .locals 6
    .param p1, "shift"    # I
    .param p2, "type"    # I

    .line 4323
    add-int/lit8 v0, p1, 0x3

    .line 4324
    .local v0, "pos":I
    const/4 v1, 0x0

    if-ltz v0, :cond_b

    const/4 v2, 0x6

    if-le v0, v2, :cond_0

    goto/16 :goto_1

    .line 4330
    :cond_0
    sget-boolean v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 4331
    const-string v3, "SliderWindowManager.HEAT_VENT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " moveToCurrentShift(), pos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , mDriverHeatOrVentilationAVAI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationAVAI:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mPassengerHeatVentilationAVAI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAVAI:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v1}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4335
    :cond_1
    const/4 v1, 0x3

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 4357
    :pswitch_0
    sget v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAVAI:I

    sget v4, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->PASSENGER_HEAT_VENTILATION_SHOW:I

    if-ne v3, v4, :cond_2

    .line 4358
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveToPosition(II)V

    .line 4359
    return-void

    .line 4361
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    if-nez v3, :cond_3

    .line 4362
    return-void

    .line 4364
    :cond_3
    if-le v0, v1, :cond_4

    .line 4365
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveToPosition(II)V

    goto :goto_0

    .line 4367
    :cond_4
    sget v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->PASSENGER_ONLY_HEAT_SHOW:I

    sget v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAVAI:I

    if-ne v1, v3, :cond_5

    .line 4368
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveToPosition(II)V

    goto :goto_0

    .line 4369
    :cond_5
    sget v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->PASSENGER_ONLY_VENTILATION_SHOW:I

    sget v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAVAI:I

    if-ne v1, v3, :cond_a

    .line 4370
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveToPosition(II)V

    goto :goto_0

    .line 4337
    :pswitch_1
    sget v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationAVAI:I

    sget v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DRIVER_HEAT_VENTILATION_SHOW:I

    if-ne v2, v3, :cond_6

    .line 4338
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveToPosition(II)V

    .line 4339
    return-void

    .line 4341
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    if-nez v2, :cond_7

    .line 4342
    return-void

    .line 4344
    :cond_7
    const/4 v2, 0x5

    if-le v0, v1, :cond_8

    .line 4345
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveToPosition(II)V

    goto :goto_0

    .line 4347
    :cond_8
    sget v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DRIVER_ONLY_VENTILATION_SHOW:I

    sget v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationAVAI:I

    if-ne v1, v3, :cond_9

    .line 4348
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveToPosition(II)V

    goto :goto_0

    .line 4349
    :cond_9
    sget v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DRIVER_ONLY_HEAT_SHOW:I

    sget v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationAVAI:I

    if-ne v1, v3, :cond_a

    .line 4350
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveToPosition(II)V

    .line 4379
    :cond_a
    :goto_0
    return-void

    .line 4325
    :cond_b
    :goto_1
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v2, :cond_c

    .line 4326
    const-string v2, "SliderWindowManager.HEAT_VENT"

    const-string v3, "moveToCurrentShift(),  Can not find the value of %d in the driver heat or ventilation list"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4328
    :cond_c
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public moveToCurrentTemp(II)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "type"    # I

    .line 4258
    const/4 v0, -0x1

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 4276
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    if-nez v2, :cond_0

    .line 4277
    return-void

    .line 4280
    :cond_0
    move v2, p1

    .line 4281
    .local v2, "pos":I
    if-ne v2, v0, :cond_2

    .line 4282
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 4283
    const-string v0, "SliderWindowManager"

    const-string v3, "Can not find the value of in passenger temp list"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4285
    :cond_1
    return-void

    .line 4287
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveToPosition(II)V

    .end local v2    # "pos":I
    goto :goto_0

    .line 4261
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    if-nez v2, :cond_3

    .line 4262
    return-void

    .line 4265
    :cond_3
    move v2, p1

    .line 4266
    .restart local v2    # "pos":I
    if-ne v2, v0, :cond_5

    .line 4267
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 4268
    const-string v0, "SliderWindowManager"

    const-string v3, "Can not find the value of in driver temp list"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4270
    :cond_4
    return-void

    .line 4272
    :cond_5
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveToPosition(II)V

    .line 4273
    nop

    .line 4290
    .end local v2    # "pos":I
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public moveVolumeUiPosition(I)I
    .locals 2
    .param p1, "direction"    # I

    .line 2724
    const/4 v0, 0x0

    .line 2725
    .local v0, "tmp_level":I
    if-nez p1, :cond_0

    .line 2726
    const/4 v0, -0x1

    goto :goto_0

    .line 2727
    :cond_0
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 2728
    const/4 v0, 0x1

    .line 2732
    :goto_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->open(I)V

    .line 2733
    const/4 v1, -0x5

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendCloseVolumeBarDelayMsg(I)V

    .line 2734
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateSliderByScrollVolumeBtn(I)I

    move-result v1

    return v1

    .line 2730
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public notifyHmiOutVolumeEnterStatus(I)V
    .locals 5
    .param p1, "status"    # I

    .line 4055
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4056
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "domain"

    const-string v2, "Media"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4057
    const-string v1, "id"

    const-string v2, "MEDIA_OUT_SOUND_ENTER_LEAVE_STASUS"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4058
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4059
    .local v1, "payload":Lorg/json/JSONObject;
    const-string v2, "Status"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4060
    const-string v2, "payload"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4061
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    if-eqz v2, :cond_1

    .line 4062
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/systemHMI/SystemHMIManager;->set(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4063
    const-string v2, "SliderWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MEDIA_OUT_SOUND_ENTER_LEAVE_STASUS set json success jsonObject="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4065
    :cond_0
    const-string v2, "SliderWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MEDIA_OUT_SOUND_ENTER_LEAVE_STASUS set json failed jsonObject="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4070
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "payload":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    goto :goto_1

    .line 4068
    :catch_0
    move-exception v0

    .line 4069
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "SliderWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MEDIA_OUT_SOUND_ENTER_LEAVE_STASUS json error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4071
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public notifyHmiUpdateOutVolumeLevel(I)V
    .locals 5
    .param p1, "level"    # I

    .line 4075
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 4076
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4077
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "domain"

    const-string v2, "Media"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4078
    const-string v1, "id"

    const-string v2, "MEDIA_UPDATE_OUT_VOLUME_LEVEL_NOTIFY"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4079
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4080
    .local v1, "payload":Lorg/json/JSONObject;
    const-string v2, "VolumeLevel"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4081
    const-string v2, "payload"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4082
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    if-eqz v2, :cond_1

    .line 4083
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/systemHMI/SystemHMIManager;->set(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4084
    const-string v2, "SliderWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MEDIA_UPDATE_OUT_VOLUME_LEVEL_NOTIFY set json success jsonObject="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4086
    :cond_0
    const-string v2, "SliderWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MEDIA_UPDATE_OUT_VOLUME_LEVEL_NOTIFY set json failed jsonObject="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4092
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "payload":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    goto :goto_1

    .line 4090
    :catch_0
    move-exception v0

    .line 4091
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "SliderWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MEDIA_UPDATE_OUT_VOLUME_LEVEL_NOTIFY json error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4093
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public onAcPowerStateChange(Z)V
    .locals 4
    .param p1, "isAcPowerState"    # Z

    .line 2843
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->isTempSyncState()Z

    move-result v0

    .line 2844
    .local v0, "isSync":Z
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2845
    const-string v1, "SliderWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAcPowerStateChange: isAcPowerState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isSync = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$XjQJh50rxTzrQsfiu5HxWb6jeAQ;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$XjQJh50rxTzrQsfiu5HxWb6jeAQ;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;ZZ)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2857
    if-eqz p1, :cond_2

    .line 2858
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isAcTrunOnDri:Z

    if-eqz v1, :cond_1

    .line 2859
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2860
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isAcTrunOnPass:Z

    if-eqz v1, :cond_2

    .line 2861
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessage(I)Z

    .line 2864
    :cond_2
    :goto_0
    return-void
.end method

.method public onAdjustableTempChange(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 2868
    .local p1, "adjustableTemp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2879
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2880
    const-string v0, "SliderWindowManager"

    const-string v1, "onAdjustableTempChange:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2882
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    if-eqz v0, :cond_2

    .line 2884
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->setData(Ljava/util/List;)V

    .line 2885
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    new-instance v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$37;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$37;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->addPmaTemperatureCallback(Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar$PmaTemperatureSeekbarCallback;)V

    .line 2906
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->setData(Ljava/util/List;)V

    .line 2907
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    new-instance v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$38;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$38;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->addPmaTemperatureCallback(Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar$PmaTemperatureSeekbarCallback;)V

    .line 2927
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateDriverTemp(ZF)V

    .line 2928
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updatePassengerTemp(ZF)V

    .line 2950
    :cond_2
    return-void

    .line 2869
    :cond_3
    :goto_0
    return-void
.end method

.method public onClimateChange(I)V
    .locals 3
    .param p1, "shift"    # I

    .line 3872
    const/4 v0, -0x6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isSliderShow(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-lez p1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentClimateShift:I

    if-eqz v0, :cond_2

    .line 3873
    const/16 v0, 0xa

    const/16 v1, 0x9

    if-le p1, v1, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentClimateShift:I

    if-lt v2, v0, :cond_1

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->currentClimateShift:I

    if-le v2, v1, :cond_2

    if-ge p1, v0, :cond_2

    .line 3874
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateClimateShift(I)V

    .line 3877
    :cond_2
    return-void
.end method

.method public onDayNightModeChange(I)V
    .locals 6
    .param p1, "dayNightMode"    # I

    .line 3200
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3201
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDayNightModeChange , dayNightMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3203
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Entertainment_open"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3204
    .local v0, "oneWorld":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "launcher_stop_flag"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3206
    .local v1, "launcherFlag":I
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isSliderShow(I)Z

    move-result v2

    .line 3207
    .local v2, "isAppListShow":Z
    const-string v3, "SliderWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDayNightModeChange: launcherOpen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , oneWorld = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , isAppListShow = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3208
    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-ne v0, v3, :cond_1

    if-nez v2, :cond_1

    .line 3209
    const/4 p1, 0x2

    .line 3210
    const-string v3, "SliderWindowManager"

    const-string v4, "onDayNightModeChange: change theme to night cause onWorld"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3212
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->changeTheme(I)V

    .line 3213
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setSliderDNmode(I)V

    .line 3214
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    if-eqz v3, :cond_2

    .line 3215
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDriverHeatVentilationAvai()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setDriverHeatVentilationData(I)V

    .line 3217
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    if-eqz v3, :cond_3

    .line 3218
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPassengerHeatVentilationAvai()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setPassengerHeatVentilationData(I)V

    .line 3220
    :cond_3
    return-void
.end method

.method public onDriverHeatOrVentilationChange(I)V
    .locals 4
    .param p1, "shift"    # I

    .line 2954
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2955
    const-string v0, "SliderWindowManager.HEAT_VENT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDriverHeatOrVentilationChange: moveToCurrentShift, shift = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isDriverNeedWaite:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isDriverSetNeedWaite:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2961
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationShift:I

    .line 2962
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveToCurrentShift(II)V

    goto :goto_1

    .line 2958
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    .line 2959
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessageDelayed(IJ)Z

    .line 2964
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2965
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->setEnable(Z)V

    .line 2966
    return-void
.end method

.method public onDriverHeatOrVentilationVailChange()V
    .locals 2

    .line 3586
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3587
    const-string v0, "SliderWindowManager"

    const-string v1, "onDriverHeatOrVentilationVailChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3590
    :cond_0
    sget v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationAVAI:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDriverHeatVentilationAvai()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 3592
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDriverHeatVentilationAvai()I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationAVAI:I

    .line 3594
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    if-eqz v0, :cond_1

    .line 3595
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3596
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3597
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3598
    sget v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationAVAI:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 3599
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 3600
    .end local v0    # "message":Landroid/os/Message;
    goto :goto_0

    .line 3601
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 3602
    const-string v0, "SliderWindowManager"

    const-string v1, "onDriverHeatOrVentilationVailChange mHandler == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3607
    :cond_2
    :goto_0
    return-void
.end method

.method public onDriverTempChange(F)V
    .locals 4
    .param p1, "temp"    # F

    .line 2739
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2740
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDriverTempChange: temp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2742
    :cond_0
    const v0, -0x3ac48000    # -3000.0f

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_4

    .line 2744
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->getTempPos(F)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverPosition:I

    .line 2745
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->isTempSyncState()Z

    move-result v0

    .line 2746
    .local v0, "isSync":Z
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 2747
    const-string v1, "SliderWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDriverTempChange: position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isSync = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    :cond_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 2751
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 2752
    const-string v1, "SliderWindowManager"

    const-string v2, "onDriverTempChange: moveToCurrentTemp"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    :cond_2
    sget v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverPosition:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveToCurrentTemp(II)V

    .line 2756
    .end local v0    # "isSync":Z
    :cond_3
    goto :goto_0

    .line 2757
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2758
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2759
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 2760
    const-string v0, "SliderWindowManager"

    const-string v1, "DriverTemp is availabel close driverTemp slider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeDriverTempAll()V

    .line 2764
    :goto_0
    return-void
.end method

.method public onLanguageChange(I)V
    .locals 2
    .param p1, "language"    # I

    .line 2830
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$Ps4LRMSSy__YnKUh_uwr4DNoOlE;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$Ps4LRMSSy__YnKUh_uwr4DNoOlE;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2835
    return-void
.end method

.method public onPassengerHeatOrVentilationChange(I)V
    .locals 4
    .param p1, "shift"    # I

    .line 2970
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2971
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPassengerHeatOrVentilationChange: moveToCurrentShift = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isPassengerNeedWaite:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isPassengerSetNeedWaite:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2977
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatOrVentilationShift:I

    .line 2978
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveToCurrentShift(II)V

    goto :goto_1

    .line 2974
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    .line 2975
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessageDelayed(IJ)Z

    .line 2980
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2981
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAdapter:Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->setEnable(Z)V

    .line 2982
    return-void
.end method

.method public onPassengerHeatVentilationVailChange()V
    .locals 2

    .line 3763
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3764
    const-string v0, "SliderWindowManager"

    const-string v1, "onPassengerHeatVentilationVailChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3766
    :cond_0
    sget v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAVAI:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPassengerHeatVentilationAvai()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 3767
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPassengerHeatVentilationAvai()I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAVAI:I

    .line 3769
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    if-eqz v0, :cond_1

    .line 3770
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3771
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3772
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3773
    sget v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAVAI:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 3774
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 3775
    .end local v0    # "message":Landroid/os/Message;
    goto :goto_0

    .line 3776
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 3777
    const-string v0, "SliderWindowManager"

    const-string v1, "onPassengerHeatVentilationVailChange mHandler == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3782
    :cond_2
    :goto_0
    return-void
.end method

.method public onPassengerTempChange(F)V
    .locals 4
    .param p1, "temp"    # F

    .line 2768
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2769
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPassengerTempChange: temp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2771
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->isTempSyncState()Z

    move-result v0

    .line 2772
    .local v0, "isSync":Z
    const v1, -0x3ac48000    # -3000.0f

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 2774
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTmpSeekbar:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->getTempPos(F)I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerPosition:I

    .line 2775
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 2776
    const-string v1, "SliderWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPassengerTempChange: position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mDriverPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mIsDriverScroll = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsDriverScroll:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , isSync = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2797
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2798
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2799
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 2800
    const-string v1, "SliderWindowManager"

    const-string v2, "PassengerTemp is availabel close passengerTemp slider"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closePassengerTempAll()V

    .line 2804
    :cond_3
    :goto_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 4555
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getSeekBarView(I)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    move-result-object v0

    .line 4556
    .local v0, "row":Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 4557
    const-string v1, "SliderWindowManager"

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

    .line 4558
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getTargetIsCompleted()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsAudioServiceFeedBack = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsAudioServiceFeedBack:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4557
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4561
    :cond_0
    const/4 v1, 0x0

    if-eqz p3, :cond_2

    .line 4562
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->syncTargetLevel(I)V

    .line 4563
    if-lez p2, :cond_1

    .line 4564
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setVolumeTypeIcon(I)V

    .line 4566
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getType()I

    move-result v2

    invoke-direct {p0, v2, p2, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setVolumeDialogControllerVolume(IIZ)V

    .line 4569
    :cond_2
    if-nez p2, :cond_3

    .line 4570
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->checkMute()V

    .line 4573
    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getTargetIsCompleted()Z

    move-result v2

    if-nez v2, :cond_4

    .line 4574
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getType()I

    move-result v2

    invoke-direct {p0, v2, p2, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setVolumeDialogControllerVolume(IIZ)V

    .line 4576
    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getType()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumLevel:I

    if-eq v1, p2, :cond_5

    .line 4577
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->notifyHmiUpdateOutVolumeLevel(I)V

    .line 4579
    :cond_5
    iput p2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumLevel:I

    .line 4580
    return-void
.end method

.method public onShowRequested(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 3007
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3008
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowRequested:  reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->open(I)V

    .line 3011
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendCloseVolumeBarDelayMsg(I)V

    .line 3012
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 4585
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4586
    const-string v0, "SliderWindowManager"

    const-string v1, "onStartTrackingTouch: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4588
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4589
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/4 v1, -0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4590
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getSeekBarView(I)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    move-result-object v0

    .line 4591
    .local v0, "row":Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setTracking(Z)V

    .line 4592
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 2986
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2987
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChanged: activeStream = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v3, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getVolumeStateLevel(Lcom/android/systemui/plugins/VolumeDialogController$State;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsAudioServiceFeedBack:Z

    .line 2991
    const/4 v0, 0x0

    .line 2992
    .local v0, "acticeStreamChange":Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getCurrentStream()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getStateStream(Lcom/android/systemui/plugins/VolumeDialogController$State;)I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 2993
    const/4 v0, 0x1

    .line 2995
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 2996
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getActiveStreamType()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mActiveStream:I

    .line 2997
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateAllStreamSlider()V

    .line 3003
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 4597
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getSeekBarView(I)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    move-result-object v0

    .line 4598
    .local v0, "row":Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 4599
    const-string v1, "SliderWindowManager"

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

    .line 4601
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getProgress()I

    move-result v1

    const-string v2, "HUD\u89e6\u63a7\u5c4f"

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getType()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getSeekBarEventName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackVolumeStatus(ILjava/lang/String;Ljava/lang/String;)V

    .line 4602
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setTracking(Z)V

    .line 4603
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getType()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getProgress()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setVolumeDialogControllerVolume(IIZ)V

    .line 4604
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendCloseVolumeBarDelayMsg(I)V

    .line 4605
    return-void
.end method

.method public onTargetStateChange(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;I)V
    .locals 3
    .param p1, "seekBar"    # Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;
    .param p2, "state"    # I

    .line 5145
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 5146
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTargetStateChange seekBar Type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5148
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 5149
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getType()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getProgress()I

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setVolumeDialogControllerVolume(IIZ)V

    .line 5150
    const/4 v0, -0x5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendCloseVolumeBarDelayMsg(I)V

    .line 5152
    :cond_1
    return-void
.end method

.method public onTempSyncStateChange(Z)V
    .locals 3
    .param p1, "isSync"    # Z

    .line 2808
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2809
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTempSyncStateChange: isSync = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$TG0C1wrVuNRlU42FxpOwv4vgTyE;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$TG0C1wrVuNRlU42FxpOwv4vgTyE;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2818
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isShowing:Z

    if-eqz v0, :cond_1

    .line 2819
    if-eqz p1, :cond_1

    .line 2820
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2821
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerTempSlider:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2825
    :cond_1
    return-void
.end method

.method public open(I)V
    .locals 1
    .param p1, "which"    # I

    .line 3096
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 3097
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->openMediaInternal()V

    .line 3098
    return-void

    .line 3099
    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 3100
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    .line 3101
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->openApplistInternal()V

    .line 3102
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeAllSliderButApplist()V

    goto :goto_0

    .line 3104
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->openSliderWindowInternal()V

    .line 3106
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->openSliderInternal(I)V

    .line 3107
    return-void
.end method

.method public openApplist(Z)V
    .locals 4
    .param p1, "closeClimate"    # Z

    .line 3267
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3268
    const-string v0, "SliderWindowManager"

    const-string v1, "openSliderInternal: APP_LIST_UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3270
    :cond_0
    const/16 v0, 0x7e

    if-eqz p1, :cond_1

    .line 3271
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3273
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    .line 3274
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    .line 3275
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->openApplistInternal()V

    .line 3276
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeAllSliderButApplist()V

    .line 3277
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->openSliderInternal(I)V

    .line 3279
    :goto_0
    return-void
.end method

.method public pCheckStartup()V
    .locals 5

    .line 1777
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appPowerUpRefrsh:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1779
    :cond_1
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->pageCount:I

    if-ge v0, v2, :cond_4

    .line 1780
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    .line 1781
    .local v2, "count":I
    move v3, v1

    .local v3, "position":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 1782
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    .line 1783
    .local v4, "v":Lcom/android/systemui/statusbar/pma/applist/AppItemView;
    if-eqz v4, :cond_2

    .line 1784
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->pState()V

    .line 1781
    .end local v4    # "v":Lcom/android/systemui/statusbar/pma/applist/AppItemView;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1779
    .end local v2    # "count":I
    .end local v3    # "position":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1789
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hicarMap:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appPowerUpRefrsh:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hicarMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1791
    :cond_5
    move v0, v1

    .restart local v0    # "i":I
    :goto_2
    iget v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hiCarPageCount:I

    if-ge v0, v2, :cond_8

    .line 1792
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hicarMap:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    .line 1793
    .restart local v2    # "count":I
    move v3, v1

    .restart local v3    # "position":I
    :goto_3
    if-ge v3, v2, :cond_7

    .line 1794
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hicarMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    .line 1795
    .restart local v4    # "v":Lcom/android/systemui/statusbar/pma/applist/AppItemView;
    if-eqz v4, :cond_6

    .line 1796
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->pState()V

    .line 1793
    .end local v4    # "v":Lcom/android/systemui/statusbar/pma/applist/AppItemView;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1791
    .end local v2    # "count":I
    .end local v3    # "position":I
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1801
    .end local v0    # "i":I
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->recent:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mRecentAppAdapter:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    if-eqz v0, :cond_a

    .line 1802
    nop

    .local v1, "i":I
    :goto_4
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mRecentAppAdapter:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 1803
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->recent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    .line 1804
    .local v1, "r":Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;
    if-eqz v1, :cond_9

    .line 1805
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->pState()V

    .line 1802
    .end local v1    # "r":Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;
    :cond_9
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_4

    .line 1809
    .end local v1    # "i":I
    :cond_a
    return-void
.end method

.method public registerStartupStateObserver()V
    .locals 2

    .line 1115
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessage(I)Z

    .line 1116
    return-void
.end method

.method public removeAppList(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1662
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1663
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0x76

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1664
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1665
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 1666
    return-void
.end method

.method public removeNewApp(Ljava/lang/String;)V
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1812
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeNewApp: pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "appPowerUpRefrsh = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appPowerUpRefrsh:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , map = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appPowerUpRefrsh:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1818
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1818
    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->pageCount:I

    if-ge v1, v2, :cond_5

    .line 1819
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    .line 1820
    .local v2, "adapter":Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->getPageData()Ljava/util/ArrayList;

    move-result-object v3

    .line 1821
    .local v3, "pageData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;"
    move v4, v0

    .line 1821
    .local v4, "removePosition":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1822
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1823
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    .line 1824
    .local v5, "v":Lcom/android/systemui/statusbar/pma/applist/AppItemView;
    if-eqz v5, :cond_1

    .line 1825
    const-string v6, "AppItemView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeNewApp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->setNewApp()V

    .line 1827
    goto :goto_2

    .line 1821
    .end local v5    # "v":Lcom/android/systemui/statusbar/pma/applist/AppItemView;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1831
    .end local v4    # "removePosition":I
    :cond_2
    :goto_2
    const/4 v4, -0x2

    invoke-virtual {v2, p1, v4}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->changedAppTaskInfoState(Ljava/lang/String;I)I

    move-result v5

    .line 1832
    .local v5, "position":I
    if-gez v5, :cond_3

    if-ne v5, v4, :cond_4

    .line 1833
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->map:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    .line 1834
    .local v4, "v":Lcom/android/systemui/statusbar/pma/applist/AppItemView;
    if-eqz v4, :cond_4

    .line 1835
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->setNewApp()V

    .line 1818
    .end local v2    # "adapter":Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;
    .end local v3    # "pageData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;"
    .end local v4    # "v":Lcom/android/systemui/statusbar/pma/applist/AppItemView;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1839
    .end local v5    # "position":I
    :cond_5
    return-void

    .line 1814
    .end local v1    # "i":I
    :cond_6
    :goto_3
    return-void
.end method

.method public removeTask(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1669
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1670
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0x78

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1671
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1672
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 1673
    return-void
.end method

.method public requestMuteVolume()V
    .locals 4

    .line 2431
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getCurrentStream()I

    move-result v0

    .line 2433
    .local v0, "activeStream":I
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getSeekBarView(I)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getTargetIsCompleted()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getSeekBarView(I)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2436
    :cond_0
    const-string v1, "SliderWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getTargetIsCompleted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getSeekBarView(I)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getTargetIsCompleted()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , isTracking = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getSeekBarView(I)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isTracking()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isAllStreamMute()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setAllStreamMute(Z)V

    .line 2438
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 2439
    const/4 v1, -0x5

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendCloseVolumeBarDelayMsg(I)V

    .line 2441
    :cond_1
    return-void

    .line 2434
    :cond_2
    :goto_0
    return-void
.end method

.method public sendCloseVolumeBarDelayMsg(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 5155
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5156
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/4 v1, -0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5157
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    .line 5158
    return-void
.end method

.method public sendMsg(I)V
    .locals 4
    .param p1, "touchType"    # I

    .line 2485
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2486
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2487
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2488
    const/4 v1, 0x7

    const-wide/16 v2, 0x1388

    if-eq p1, v1, :cond_1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2503
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2504
    goto :goto_0

    .line 2506
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2495
    :cond_1
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2496
    nop

    .line 2510
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setAllStreamMute(Z)V
    .locals 3
    .param p1, "isMute"    # Z

    .line 4685
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4686
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAllStreamMute: isMute = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4688
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 4689
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setStreamMute(IZ)V

    .line 4692
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eq v0, p1, :cond_2

    .line 4693
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setStreamMute(IZ)V

    .line 4696
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eq v0, p1, :cond_3

    .line 4697
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setStreamMute(IZ)V

    .line 4700
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eq v0, p1, :cond_4

    .line 4701
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setStreamMute(IZ)V

    .line 4704
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eq v0, p1, :cond_5

    .line 4705
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setStreamMute(IZ)V

    .line 4708
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eq v0, p1, :cond_6

    .line 4709
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setStreamMute(IZ)V

    .line 4711
    :cond_6
    return-void
.end method

.method public setAppClickListener(Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    .line 5246
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAppClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    .line 5247
    return-void
.end method

.method public setDotLayout(I)V
    .locals 7
    .param p1, "type"    # I

    .line 1970
    const/4 v0, 0x0

    const v1, 0x7f0d00ff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_1

    .line 1971
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->group:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1972
    move v4, v2

    .local v4, "i":I
    :goto_0
    iget v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->pageCount:I

    if-ge v4, v5, :cond_0

    .line 1973
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->group:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v6, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1972
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1976
    .end local v4    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->group:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1977
    nop

    .local v3, "i":I
    :goto_1
    move v0, v3

    .end local v3    # "i":I
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->group:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1978
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->group:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1977
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 1980
    .end local v3    # "i":I
    :cond_1
    if-ne p1, v3, :cond_3

    .line 1981
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->group_hiCar:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1982
    iget v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hiCarPageCount:I

    if-lez v4, :cond_4

    .line 1983
    move v4, v2

    .restart local v4    # "i":I
    :goto_2
    iget v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hiCarPageCount:I

    if-ge v4, v5, :cond_2

    .line 1984
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->group_hiCar:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v6, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1983
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1987
    .end local v4    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->group_hiCar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1988
    nop

    .restart local v3    # "i":I
    :goto_3
    move v0, v3

    .end local v3    # "i":I
    .restart local v0    # "i":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->group_hiCar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1989
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->group_hiCar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1988
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .restart local v3    # "i":I
    goto :goto_3

    .line 1994
    .end local v3    # "i":I
    :cond_3
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: setDotLayout type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->showDotLayout(I)V

    .line 1997
    return-void
.end method

.method public setMusicLevel(I)V
    .locals 2
    .param p1, "level"    # I

    .line 5161
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mMusicRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    if-nez v0, :cond_0

    .line 5162
    return-void

    .line 5164
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    if-eqz v0, :cond_1

    .line 5165
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5166
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5167
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 5168
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 5170
    .end local v0    # "message":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public setNavigationBarCarBodyDisplayController(Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;)V
    .locals 0
    .param p1, "mController"    # Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;

    .line 5859
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mNavigationBarCarBodyDisplayController:Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;

    .line 5860
    return-void
.end method

.method public setOccLevel(I)V
    .locals 2
    .param p1, "level"    # I

    .line 5173
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mOutRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    if-nez v0, :cond_0

    .line 5174
    return-void

    .line 5176
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    if-eqz v0, :cond_1

    .line 5177
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5178
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x7a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5179
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 5180
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 5182
    .end local v0    # "message":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public setRotaryKnobEvent(II)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "value"    # I

    .line 5185
    const/4 v0, -0x5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isSliderShow(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5186
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "STATUS_BAR_VISIBLE_STATE"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5187
    .local v0, "statusBarVisibleState":I
    if-nez v0, :cond_0

    .line 5188
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->open(I)V

    .line 5189
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendCloseVolumeBarDelayMsg(I)V

    .line 5193
    .end local v0    # "statusBarVisibleState":I
    :cond_0
    if-nez p2, :cond_1

    .line 5194
    return-void

    .line 5197
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getCurrentStream()I

    move-result v0

    .line 5199
    .local v0, "stream":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isAdjustMediaOrCallVolume()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5200
    if-nez v0, :cond_2

    .line 5201
    const/4 v0, 0x0

    goto :goto_0

    .line 5203
    :cond_2
    const/4 v0, 0x3

    .line 5207
    :cond_3
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 5208
    const-string v1, "SliderWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRotaryKnobEvent stream = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5210
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getSeekBarView(I)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    move-result-object v1

    .line 5211
    .local v1, "mVolumeSeekBarView":Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getMax()I

    move-result v2

    .line 5212
    .local v2, "maybeActiveStreamTypeMaxVolume":I
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getMin()I

    move-result v3

    .line 5213
    .local v3, "maybeActiveStreamTypeMinVolume":I
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getTargetLevel()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getProgress()I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 5214
    sget-boolean v4, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 5215
    const-string v4, "SliderWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setRotaryKnobEvent mVolumeSeekBarView.getTargetLevel() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getTargetLevel()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mVolumeSeekBarView.getProgress() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getProgress()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5217
    :cond_5
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getProgress()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->syncTargetLevel(I)V

    .line 5219
    :cond_6
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getTargetLevel()I

    move-result v4

    .line 5221
    .local v4, "maybeActiveStreamTypeCurrentVolume":I
    const/4 v5, 0x1

    if-ne p1, v5, :cond_7

    .line 5222
    sub-int/2addr v4, p2

    goto :goto_1

    .line 5223
    :cond_7
    if-nez p1, :cond_a

    .line 5224
    add-int/2addr v4, p2

    .line 5231
    :goto_1
    if-le v3, v4, :cond_8

    .line 5232
    move v4, v3

    goto :goto_2

    .line 5233
    :cond_8
    if-le v4, v2, :cond_9

    .line 5234
    move v4, v2

    .line 5236
    :cond_9
    :goto_2
    const-string/jumbo v5, "\u786c\u4ef6\u65cb\u94ae"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getSeekBarEventName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackVolumeStatus(ILjava/lang/String;Ljava/lang/String;)V

    .line 5237
    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateSliderToLevelByRotaryKnob(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;I)V

    .line 5238
    return-void

    .line 5226
    :cond_a
    sget-boolean v5, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    if-eqz v5, :cond_b

    .line 5227
    const-string v5, "SliderWindowManager"

    const-string/jumbo v6, "setRotaryKnobEvent Direction Of Rotation Error!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5229
    :cond_b
    return-void
.end method

.method public setSliderClickListener(Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    .line 5241
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    .line 5242
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAppListTouchListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppListTouchListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;->setAppListTouchListener(Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppListTouchListener;)V

    .line 5243
    return-void
.end method

.method public setStatusBarWindowState(I)V
    .locals 3
    .param p1, "statusBarWindowState"    # I

    .line 4766
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStatusBarWindowState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4767
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->statusBarWindowState:I

    .line 4768
    return-void
.end method

.method public setSyncButtonGrey(Z)V
    .locals 2
    .param p1, "isGrey"    # Z

    .line 2329
    if-eqz p1, :cond_0

    .line 2330
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSyncTempIconLayout:Landroid/widget/FrameLayout;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2331
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSyncTempIcon:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 2333
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSyncTempIconLayout:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2334
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSyncTempIcon:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2336
    :goto_0
    return-void
.end method

.method public showDotLayout(I)V
    .locals 4
    .param p1, "type"    # I

    .line 1946
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showDotLayout type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pageCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->pageCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hiCarPageCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hiCarPageCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-nez p1, :cond_1

    .line 1949
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->pageCount:I

    if-le v3, v1, :cond_0

    .line 1950
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->group:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1952
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->group:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1954
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->group_hiCar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->group_hiCar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 1955
    :cond_1
    if-ne p1, v1, :cond_3

    .line 1956
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hiCarPageCount:I

    if-le v3, v1, :cond_2

    .line 1957
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->group_hiCar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 1959
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->group_hiCar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1961
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->group:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->group:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 1963
    :cond_3
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: showDotLayout type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    :cond_4
    :goto_2
    return-void
.end method

.method public translateHicarAppInfoBeanToHicarAppInfoList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/pma/applist/AppInfo;",
            ">;"
        }
    .end annotation

    .line 5678
    .local p1, "mHicarAppInfoBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5683
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5684
    .local v0, "mHicarAppInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;"
    const-string v1, "SliderWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHicarAppInfoBeanList.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5685
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;

    .line 5686
    .local v2, "bean":Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;
    new-instance v3, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;-><init>()V

    .line 5687
    .local v3, "appInfo":Lcom/android/systemui/statusbar/pma/applist/AppInfo;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setHiCarApp(Z)V

    .line 5688
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->uid:J

    .line 5689
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->package_name:Ljava/lang/String;

    .line 5690
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->label:Ljava/lang/String;

    .line 5691
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->getIcon()[B

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->iconBytes:[B

    .line 5692
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->getType()I

    move-result v4

    iput v4, v3, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->state:I

    .line 5693
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5694
    .end local v2    # "bean":Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;
    .end local v3    # "appInfo":Lcom/android/systemui/statusbar/pma/applist/AppInfo;
    goto :goto_0

    .line 5695
    :cond_1
    return-object v0

    .line 5679
    .end local v0    # "mHicarAppInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;"
    :cond_2
    :goto_1
    const-string v0, "SliderWindowManager"

    const-string/jumbo v1, "translateHicarAppInfoBeanToHicarAppInfoList mHicarAppInfoBeanList = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5680
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateClimateShift(I)V
    .locals 3
    .param p1, "shift"    # I

    .line 3880
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateClimateShift , shift = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3883
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getLastClimateShift()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x9

    if-le v0, v2, :cond_2

    if-eqz p1, :cond_0

    if-ne p1, v1, :cond_2

    .line 3884
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateLevelShow:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsBlack:Z

    if-nez v1, :cond_1

    .line 3885
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    const v2, 0x7f080445

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 3886
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    const v2, 0x7f080446

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3884
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 3888
    :cond_2
    if-ne p1, v1, :cond_3

    .line 3889
    const/4 p1, 0x0

    .line 3891
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->climateLevelShow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mClimateSliderShiftIcons:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3894
    :goto_1
    return-void
.end method

.method public updateEnterStatus()V
    .locals 4

    .line 5745
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DEBUG:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 5746
    const-string v0, "SliderWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateEnterStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsSettingsExterior:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsActionExterior:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5748
    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsSettingsExterior:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsActionExterior:Z

    if-eqz v0, :cond_3

    goto :goto_2

    .line 5751
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->notifyHmiOutVolumeEnterStatus(I)V

    goto :goto_3

    .line 5749
    :cond_4
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->notifyHmiOutVolumeEnterStatus(I)V

    .line 5753
    :goto_3
    return-void
.end method

.method public updateHiCarAppBeanList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/pma/applist/AppInfo;",
            ">;"
        }
    .end annotation

    .line 5616
    const/4 v0, 0x0

    .line 5617
    .local v0, "cursor":Landroid/database/Cursor;
    const-string v1, "content://com.zeekrlife.connect.core.HiCarAppListPropertiesProvider/query/all"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 5619
    .local v3, "uri":Landroid/net/Uri;
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 5621
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_0

    .line 5631
    :cond_0
    sput-boolean v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isHiCarConnect:Z

    .line 5632
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHicarAppInfoBeanList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 5633
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAppTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v4, v2}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5634
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSignalClusterViewForPMA:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->updateHicar(Z)V

    .line 5635
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHandler:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    new-instance v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager$47;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$47;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5653
    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;-><init>()V

    .line 5654
    .local v1, "mHicarAppInfoBean":Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;
    const-string v2, "id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->setId(Ljava/lang/Long;)V

    .line 5655
    const-string v2, "mPackageName"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->setPackageName(Ljava/lang/String;)V

    .line 5656
    const-string v2, "mName"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->setName(Ljava/lang/String;)V

    .line 5657
    const-string v2, "mIcon"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->setIcon([B)V

    .line 5658
    const-string v2, "mType"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->setType(I)V

    .line 5659
    const-string v2, "SliderWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mHicarAppInfoBean = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5660
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHicarAppInfoBeanList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5661
    .end local v1    # "mHicarAppInfoBean":Lcom/android/systemui/statusbar/pma/HicarAppInfoBean;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5662
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHicarAppInfoBeanList:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateHicarAppInfoBeanToHicarAppInfoList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hicarAppInfoList:Ljava/util/ArrayList;

    .line 5668
    if-eqz v0, :cond_4

    goto :goto_1

    .line 5622
    :cond_2
    :goto_0
    const-string v4, "SliderWindowManager"

    const-string v5, "No data found or cursor is null or HiCar disconnect!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5623
    sput-boolean v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isHiCarConnect:Z

    .line 5624
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hicarAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 5625
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mHicarAppInfoBeanList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 5626
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAppTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v4, v2}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5627
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mAppTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 5628
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSignalClusterViewForPMA:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->updateHicar(Z)V

    .line 5629
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hicarAppInfoList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5668
    if-eqz v0, :cond_3

    .line 5669
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5671
    :cond_3
    const/4 v0, 0x0

    .line 5629
    return-object v1

    .line 5668
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 5664
    :catch_0
    move-exception v1

    .line 5665
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "SliderWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateHiCarAppBeanList  Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5666
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5668
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_4

    .line 5669
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5671
    :cond_4
    const/4 v0, 0x0

    .line 5672
    nop

    .line 5673
    const-string v1, "SliderWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hicarAppInfoList = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hicarAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5674
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->hicarAppInfoList:Ljava/util/ArrayList;

    return-object v1

    .line 5668
    :goto_2
    if-eqz v0, :cond_5

    .line 5669
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5671
    :cond_5
    const/4 v0, 0x0

    throw v1
.end method

.method public updateOutRow()V
    .locals 8

    .line 5756
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsSettingsExterior:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x56

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 5757
    const-string v0, "SliderWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateOutRow: mIsSettingsExterior"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsSettingsExterior:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5758
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    if-eqz v0, :cond_0

    .line 5759
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;->onChangeImgVolume(Z)V

    .line 5761
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->outRowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5762
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->marginOutRowLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5763
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5764
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->marginOutRowLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5765
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->outRowLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5766
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->marginOutRowLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5767
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mOutRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 5768
    .local v1, "rowLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x168

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 5769
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mOutRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5770
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "rowLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_2

    .line 5771
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->outRowButton:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5772
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsActionExterior:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsTopActivityExterior:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 5793
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mMusicRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setMusicRowNormal()V

    .line 5794
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    if-eqz v0, :cond_3

    .line 5795
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    invoke-interface {v0, v4}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;->onChangeImgVolume(Z)V

    .line 5797
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_8

    .line 5798
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOutRow: !animatorSet.isRunning() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5799
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->marginOutRowLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 5773
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mOutRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 5774
    .local v0, "rowLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x1f4

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 5775
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mOutRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5776
    const-string v5, "SliderWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateOutRow: mIsActionExterior "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsActionExterior:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "mIsTopActivityExterior "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsTopActivityExterior:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5777
    sget-boolean v5, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsActionExterior:Z

    if-eqz v5, :cond_5

    .line 5778
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    if-eqz v5, :cond_7

    .line 5779
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    invoke-interface {v5, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;->onChangeImgVolume(Z)V

    goto :goto_1

    .line 5782
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    if-eqz v3, :cond_6

    .line 5783
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mSliderClickListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;->onChangeImgVolume(Z)V

    .line 5785
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mMusicRow:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setMusicRowNormal()V

    .line 5787
    :cond_7
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->marginOutRowLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 5788
    .local v3, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5789
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->marginOutRowLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5790
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->outRowLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5791
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->marginOutRowLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5792
    .end local v0    # "rowLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    nop

    .line 5803
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mVolumeSlider:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 5804
    return-void
.end method
