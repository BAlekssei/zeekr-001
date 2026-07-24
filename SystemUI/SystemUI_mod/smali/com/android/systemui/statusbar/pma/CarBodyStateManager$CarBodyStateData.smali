.class Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;
.super Ljava/lang/Object;
.source "CarBodyStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarBodyStateData"
.end annotation


# instance fields
.field public inPm25State:I

.field public isAcPowerState:Z

.field public isAqiHighConfig:Z

.field public isAutoClimate:Z

.field public isCelsius:Z

.field public isDvrIconShow:Z

.field public isRoadSlip:I

.field public isSupportElectricDoor:Z

.field public isTempSync:Z

.field public isUSBIconShow:Z

.field public mAQICO2AutoState:I

.field public mAQICO2Level:I

.field public mAQICO2TimeOut:I

.field public mAQILevel:I

.field public mAdjustableTemp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mBatteryColor:I

.field public mBatteryFail:I

.field public mBatteryLevel:F

.field public mBatteryPreheating:I

.field public mBatteryStateAC:I

.field public mBatteryStateDC:I

.field public mBatteryTemp:I

.field public mBtPhoneType:I

.field public mCarGear:I

.field public mCarSpeed:I

.field public mCelsiusTempList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mChargeACCap:I

.field public mChargeACCapAvail:I

.field public mChargeCap:I

.field public mChargeDCCap:I

.field public mChargeDCCapAvail:I

.field public mChargeSOCLevel:F

.field public mDateFormat:I

.field public mDayOrNight:I

.field public mDischargeSOCLevel:F

.field public mDriverTempAVAI:I

.field public mDvrState:I

.field public mECOAvai:I

.field public mECOStatus:Z

.field public mEnduranceMileage:I

.field public mEstimatedTime:F

.field public mFahrenheitTempList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mLanguage:I

.field public mLastClimateShift:I

.field public mLocationMode:I

.field public mMaxAc:Z

.field public mMicMode:I

.field public mMicReverb:I

.field public mMicVolume:I

.field public mOTAMessageId:I

.field public mPDCStatus:Z

.field public mParkComfortModeLeftTime:I

.field public mParkComfortModeValue:I

.field public mPassengerDoorPos:I

.field public mPassengerTempAVAI:I

.field public mPlugACState:I

.field public mPlugDCState:I

.field public mPreClimateAVAI:I

.field public mPreClimateShift:I

.field public mPreDriverShift:I

.field public mPreDriverTemp:F

.field public mPreInsidePm:I

.field public mPreOutsidePm:I

.field public mPreOutsideTemp:F

.field public mPrePassengerShift:I

.field public mPrePassengerTemp:F

.field public mSTRAppIndex:I

.field public mSceneMode:I

.field public mSeatLeftTempAvai:I

.field public mSeatLeftVentilationAvai:I

.field public mSeatRightTempAvai:I

.field public mSeatRightVentilationAvai:I

.field public mSensorCarSpeed:I

.field public mSentryMode:I

.field public mSongMode:I

.field public mStatusBarMode:I

.field public mStatusBarVisible:I

.field public mTempSize:I

.field public mTimeFormat:I

.field public mTopBarBatteryColor:I

.field public mUnitDis:I

.field public mUsgMode:I

.field public mV2LState:I

.field public mV2VState:I

.field public mWPCChargeMode:I

.field public mWPCChargeStatus:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 5

    .line 412
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    const v0, -0x3ac48000    # -3000.0f

    iput v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreOutsideTemp:F

    iput v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreDriverTemp:F

    iput v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPrePassengerTemp:F

    .line 414
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreClimateAVAI:I

    .line 415
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDischargeSOCLevel:F

    iput v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeSOCLevel:F

    iput v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mEstimatedTime:F

    iput v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryLevel:F

    .line 416
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isCelsius:Z

    .line 417
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isAqiHighConfig:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isAutoClimate:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isSupportElectricDoor:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isDvrIconShow:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isUSBIconShow:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mMaxAc:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mECOStatus:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPDCStatus:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isTempSync:Z

    .line 419
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isAcPowerState:Z

    .line 420
    const/16 v3, -0xbb8

    iput v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mAQILevel:I

    iput v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isRoadSlip:I

    iput v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreClimateShift:I

    iput v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreOutsidePm:I

    .line 421
    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mLocationMode:I

    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSentryMode:I

    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mCarGear:I

    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSceneMode:I

    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mLastClimateShift:I

    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mLanguage:I

    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreInsidePm:I

    .line 422
    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSongMode:I

    .line 423
    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mMicMode:I

    .line 424
    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mStatusBarVisible:I

    .line 425
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mAdjustableTemp:Ljava/util/List;

    .line 426
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mCelsiusTempList:Ljava/util/List;

    .line 427
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mFahrenheitTempList:Ljava/util/List;

    .line 429
    iput v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mAQICO2TimeOut:I

    iput v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatRightTempAvai:I

    iput v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mECOAvai:I

    iput v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatRightVentilationAvai:I

    iput v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatLeftVentilationAvai:I

    iput v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatLeftTempAvai:I

    .line 431
    iput v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPassengerTempAVAI:I

    iput v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDriverTempAVAI:I

    .line 433
    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mStatusBarMode:I

    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mUsgMode:I

    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPrePassengerShift:I

    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreDriverShift:I

    .line 434
    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryPreheating:I

    .line 435
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->inPm25State:I

    .line 436
    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mUnitDis:I

    .line 437
    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryStateDC:I

    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryStateAC:I

    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPlugDCState:I

    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPlugACState:I

    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDvrState:I

    .line 438
    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mCarSpeed:I

    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSTRAppIndex:I

    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeACCap:I

    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeCap:I

    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mV2LState:I

    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mV2VState:I

    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mOTAMessageId:I

    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mEnduranceMileage:I

    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryColor:I

    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryFail:I

    .line 439
    iput v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeDCCap:I

    .line 440
    iput v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeACCapAvail:I

    .line 441
    iput v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeDCCapAvail:I

    .line 442
    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mWPCChargeStatus:I

    .line 443
    iput v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mWPCChargeMode:I

    .line 444
    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPassengerDoorPos:I

    .line 445
    invoke-static {p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$000(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDayOrNight:I

    .line 446
    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mTopBarBatteryColor:I

    .line 447
    return-void
.end method
