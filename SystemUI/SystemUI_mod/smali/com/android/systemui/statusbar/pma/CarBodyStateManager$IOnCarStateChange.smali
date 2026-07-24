.class public interface abstract Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
.super Ljava/lang/Object;
.source "CarBodyStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOnCarStateChange"
.end annotation


# virtual methods
.method public onAQIStatusChange(I)V
    .locals 0
    .param p1, "AQIStatus"    # I

    .line 5444
    return-void
.end method

.method public onAcPowerStateChange(Z)V
    .locals 0
    .param p1, "shift"    # Z

    .line 5429
    return-void
.end method

.method public onAdjustableTempChange(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 5414
    .local p1, "adjustableTemp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    return-void
.end method

.method public onAqiCO2Change(II)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "auto"    # I

    .line 5579
    return-void
.end method

.method public onAqiCO2HighChange(Z)V
    .locals 0
    .param p1, "isHigh"    # Z

    .line 5581
    return-void
.end method

.method public onBatteryACStateChange(I)V
    .locals 0
    .param p1, "batteryACState"    # I

    .line 5465
    return-void
.end method

.method public onBatteryColorChange(I)V
    .locals 0
    .param p1, "batteryColor"    # I

    .line 5480
    return-void
.end method

.method public onBatteryDCStateChange(I)V
    .locals 0
    .param p1, "batteryDCState"    # I

    .line 5468
    return-void
.end method

.method public onBatteryFailureChange(I)V
    .locals 0
    .param p1, "batteryFail"    # I

    .line 5477
    return-void
.end method

.method public onBatteryLevelChange(F)V
    .locals 0
    .param p1, "batteryLevel"    # F

    .line 5459
    return-void
.end method

.method public onBatteryPreheatingChange(I)V
    .locals 0
    .param p1, "state"    # I

    .line 5585
    return-void
.end method

.method public onBatteryTempChange(IZ)V
    .locals 0
    .param p1, "temp"    # I
    .param p2, "isNeedShow"    # Z

    .line 5583
    return-void
.end method

.method public onCarGearChange(I)V
    .locals 0
    .param p1, "gear"    # I

    .line 5561
    return-void
.end method

.method public onCarSpeedChange(I)V
    .locals 0
    .param p1, "speed"    # I

    .line 5577
    return-void
.end method

.method public onCarSpeedCheck(I)V
    .locals 0
    .param p1, "speed"    # I

    .line 5546
    return-void
.end method

.method public onChargeACCapAvailChange(I)V
    .locals 0
    .param p1, "chargeACCapAvail"    # I

    .line 5531
    return-void
.end method

.method public onChargeACCapStateChange(I)V
    .locals 0
    .param p1, "chargeACCapState"    # I

    .line 5525
    return-void
.end method

.method public onChargeDCCapAvailChange(I)V
    .locals 0
    .param p1, "chargeDCCapAvail"    # I

    .line 5534
    return-void
.end method

.method public onChargeDCCapStateChange(I)V
    .locals 0
    .param p1, "chargeDCCapState"    # I

    .line 5528
    return-void
.end method

.method public onChargeSOCLevelChange(F)V
    .locals 0
    .param p1, "chargeSOCLevel"    # F

    .line 5513
    return-void
.end method

.method public onClimateChange(I)V
    .locals 0
    .param p1, "shift"    # I

    .line 5426
    return-void
.end method

.method public onConnected()V
    .locals 0

    .line 5432
    return-void
.end method

.method public onDateFormatChange(I)V
    .locals 0
    .param p1, "mDateFormat"    # I

    .line 5393
    return-void
.end method

.method public onDayNightModeChange(I)V
    .locals 0
    .param p1, "dayNightMode"    # I

    .line 5504
    return-void
.end method

.method public onDischargeSOCLevelChange(F)V
    .locals 0
    .param p1, "chargeSOCLevel"    # F

    .line 5516
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    .line 5435
    return-void
.end method

.method public onDriverHeatOrVentilationChange(I)V
    .locals 0
    .param p1, "shift"    # I

    .line 5420
    return-void
.end method

.method public onDriverHeatOrVentilationVailChange()V
    .locals 0

    .line 5453
    return-void
.end method

.method public onDriverTempChange(F)V
    .locals 0
    .param p1, "temp"    # F

    .line 5408
    return-void
.end method

.method public onDvrCFGChange(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .line 5548
    return-void
.end method

.method public onDvrStateChange(I)V
    .locals 0
    .param p1, "mDvrState"    # I

    .line 5399
    return-void
.end method

.method public onECOStatusChange(Z)V
    .locals 0
    .param p1, "ECOStatus"    # Z

    .line 5447
    return-void
.end method

.method public onEnduranceMileageChange(I)V
    .locals 0
    .param p1, "enduranceMileage"    # I

    .line 5498
    return-void
.end method

.method public onEstimatedTimeChange(F)V
    .locals 0
    .param p1, "estimatedTime"    # F

    .line 5495
    return-void
.end method

.method public onHideOrShowBtDialerIconChange(ZI)V
    .locals 0
    .param p1, "isShowIcon"    # Z
    .param p2, "type"    # I

    .line 5555
    return-void
.end method

.method public onHideOrShowRemoteLogcatIconChange(Z)V
    .locals 0
    .param p1, "isShowIcon"    # Z

    .line 5557
    return-void
.end method

.method public onInsideAirQualityChange(I)V
    .locals 0
    .param p1, "aqi"    # I

    .line 5405
    return-void
.end method

.method public onInsideAirStateChange(I)V
    .locals 0
    .param p1, "insidePm25State"    # I

    .line 5438
    return-void
.end method

.method public onLanguageChange(I)V
    .locals 0
    .param p1, "mLanguage"    # I

    .line 5537
    return-void
.end method

.method public onLauncherApp(I)V
    .locals 0
    .param p1, "appIndex"    # I

    .line 5540
    return-void
.end method

.method public onLocationModeChange(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 5573
    return-void
.end method

.method public onMicModeChange(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 5567
    return-void
.end method

.method public onMicModeVolume(I)V
    .locals 0
    .param p1, "volume"    # I

    .line 5569
    return-void
.end method

.method public onMicReverb(I)V
    .locals 0
    .param p1, "volume"    # I

    .line 5571
    return-void
.end method

.method public onOTAMessageChange(I)V
    .locals 0
    .param p1, "MessageId"    # I

    .line 5507
    return-void
.end method

.method public onOutsideAirQualityChange(I)V
    .locals 0
    .param p1, "aqi"    # I

    .line 5402
    return-void
.end method

.method public onOutsideTempChange(FZ)V
    .locals 0
    .param p1, "temp"    # F
    .param p2, "isCelsius"    # Z

    .line 5390
    return-void
.end method

.method public onPDCStatusChange(Z)V
    .locals 0
    .param p1, "pdcStatus"    # Z

    .line 5441
    return-void
.end method

.method public onParkComfortModeChange(I)V
    .locals 0
    .param p1, "ParkComfortValue"    # I

    .line 5489
    return-void
.end method

.method public onParkComfortModeLeftTimeChange(I)V
    .locals 0
    .param p1, "ParkComfortLeftTime"    # I

    .line 5492
    return-void
.end method

.method public onPassengerDoorPosChange(I)V
    .locals 0
    .param p1, "passengerDoorPos"    # I

    .line 5551
    return-void
.end method

.method public onPassengerHeatOrVentilationChange(I)V
    .locals 0
    .param p1, "shift"    # I

    .line 5423
    return-void
.end method

.method public onPassengerHeatVentilationVailChange()V
    .locals 0

    .line 5456
    return-void
.end method

.method public onPassengerTempChange(F)V
    .locals 0
    .param p1, "temp"    # F

    .line 5411
    return-void
.end method

.method public onPlugACStateChange(I)V
    .locals 0
    .param p1, "plugACState"    # I

    .line 5471
    return-void
.end method

.method public onPlugDCStateChange(I)V
    .locals 0
    .param p1, "plugDCState"    # I

    .line 5474
    return-void
.end method

.method public onRoadSlipStateChange(I)V
    .locals 0
    .param p1, "isRoadSlip"    # I

    .line 5387
    return-void
.end method

.method public onSceneModeChange(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 5559
    return-void
.end method

.method public onSentryModeChange(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 5563
    return-void
.end method

.method public onSongModeChange(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 5565
    return-void
.end method

.method public onStatusBarModeChange(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 5575
    return-void
.end method

.method public onStrModeChange()V
    .locals 0

    .line 5543
    return-void
.end method

.method public onSuppertElectricDoorChange(Z)V
    .locals 0
    .param p1, "support"    # Z

    .line 5553
    return-void
.end method

.method public onTempSyncStateChange(Z)V
    .locals 0
    .param p1, "isSync"    # Z

    .line 5417
    return-void
.end method

.method public onTimeFormatChange(I)V
    .locals 0
    .param p1, "mTimeFormat"    # I

    .line 5396
    return-void
.end method

.method public onTopBarBatteryColorChange(I)V
    .locals 0
    .param p1, "batteryColor"    # I

    .line 5462
    return-void
.end method

.method public onUSBModeChange(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .line 5510
    return-void
.end method

.method public onUnitDrvDistanceChange(I)V
    .locals 0
    .param p1, "unitDis"    # I

    .line 5501
    return-void
.end method

.method public onV2LStateChange(I)V
    .locals 0
    .param p1, "mV2LState"    # I

    .line 5519
    return-void
.end method

.method public onV2VStateChange(I)V
    .locals 0
    .param p1, "mV2VState"    # I

    .line 5522
    return-void
.end method

.method public onWPCChargeModeChange(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 5486
    return-void
.end method

.method public onWPCChargeStatusChange(I)V
    .locals 0
    .param p1, "status"    # I

    .line 5483
    return-void
.end method
