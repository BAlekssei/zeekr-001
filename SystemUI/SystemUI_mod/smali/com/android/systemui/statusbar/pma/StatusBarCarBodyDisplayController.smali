.class public Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;
.super Ljava/lang/Object;
.source "StatusBarCarBodyDisplayController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAQSColorIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private mDateAndClockBarView:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

.field private mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mAQSColorIcons:Ljava/util/List;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 32
    .local v0, "AQSColorIcons":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 33
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mAQSColorIcons:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    const-class v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 37
    return-void
.end method

.method private handleInSidePM25(II)V
    .locals 4
    .param p1, "pm25State"    # I
    .param p2, "pm25Value"    # I

    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 378
    return-void

    .line 380
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 381
    const-string v0, "StatusBarCarBodyDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInSidePM25, pm25State = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pm25Value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_1
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 384
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setInsideAirQualityVisible(Z)V

    .line 385
    return-void

    .line 387
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setInsideAirQualityVisible(Z)V

    .line 388
    if-nez p1, :cond_3

    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    const-string v2, "--"

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setInsideAirQuality(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setPm25Value(I)V

    goto :goto_0

    .line 391
    :cond_3
    if-ne p1, v3, :cond_4

    .line 393
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setPm25ContentInversion()V

    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setPm25Value(I)V

    goto :goto_0

    .line 395
    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 396
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    const-string v2, "--"

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setInsideAirQuality(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setPm25Value(I)V

    goto :goto_0

    .line 399
    :cond_5
    const/16 v2, -0xbb8

    if-ne p2, v2, :cond_6

    .line 400
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setInsideAirQuality(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setPm25Value(I)V

    goto :goto_0

    .line 402
    :cond_6
    const/16 v2, -0x7d0

    if-ne p2, v2, :cond_7

    .line 403
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setInsideAirQuality(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setPm25Value(I)V

    goto :goto_0

    .line 406
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setInsideAirQuality(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setPm25Value(I)V

    .line 411
    :goto_0
    return-void
.end method

.method public static synthetic lambda$setView$0(Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getInsidePm()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->onInsideAirQualityChange(I)V

    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getOutsidePm()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->onOutsideAirQualityChange(I)V

    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getOutsideTemp()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getIsCelsius()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->onOutsideTempChange(FZ)V

    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getRoadSlipState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->onRoadSlipStateChange(I)V

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPDCStatus()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->onPDCStatusChange(Z)V

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getAQSState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->onAQIStatusChange(I)V

    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getBatteryLevel()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->onBatteryLevelChange(F)V

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDvrCfg()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->onDvrCFGChange(Z)V

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->addCallback(Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;)V

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getBatteryColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->onTopBarBatteryColorChange(I)V

    .line 52
    return-void
.end method


# virtual methods
.method public onAQIStatusChange(I)V
    .locals 3
    .param p1, "AQIStatus"    # I

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 144
    return-void

    .line 146
    :cond_0
    const-string v0, "StatusBarCarBodyDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAQIStatusChange AQIStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setPopupAQSColor(ZI)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setPopupAQSColor(ZI)V

    .line 152
    :goto_0
    return-void
.end method

.method public onAqiCO2Change(II)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "auto"    # I

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 157
    return-void

    .line 159
    :cond_0
    const-string v0, "StatusBarCarBodyDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAqiCO2Change AQIStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setPopupAQSCO2(II)V

    .line 161
    return-void
.end method

.method public onAqiCO2HighChange(Z)V
    .locals 1
    .param p1, "isHigh"    # Z

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 166
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->onAqiCO2HighChange(Z)V

    .line 169
    return-void
.end method

.method public onBatteryACStateChange(I)V
    .locals 1
    .param p1, "batteryACState"    # I

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 202
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setBatteryACState(I)V

    .line 205
    return-void
.end method

.method public onBatteryColorChange(I)V
    .locals 1
    .param p1, "mBatteryColor"    # I

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 242
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setBatteryColor(I)V

    .line 245
    return-void
.end method

.method public onBatteryDCStateChange(I)V
    .locals 1
    .param p1, "batteryDCState"    # I

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 210
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setBatteryDCState(I)V

    .line 213
    return-void
.end method

.method public onBatteryFailureChange(I)V
    .locals 1
    .param p1, "batteryFail"    # I

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 234
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setBatteryFailure(I)V

    .line 237
    return-void
.end method

.method public onBatteryLevelChange(F)V
    .locals 1
    .param p1, "isBatteryLevel"    # F

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 186
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setBatteryLevel(F)V

    .line 189
    return-void
.end method

.method public onBatteryPreheatingChange(I)V
    .locals 1
    .param p1, "state"    # I

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 258
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setBatteryPreheatingChange(I)V

    .line 261
    return-void
.end method

.method public onBatteryTempChange(IZ)V
    .locals 1
    .param p1, "temp"    # I
    .param p2, "isNeedShow"    # Z

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 250
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setBatteryTemp(IZ)V

    .line 253
    return-void
.end method

.method public onChargeACCapAvailChange(I)V
    .locals 1
    .param p1, "chargeACCapAvail"    # I

    .line 363
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 364
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setChargeACCapAvail(I)V

    .line 367
    return-void
.end method

.method public onChargeACCapStateChange(I)V
    .locals 1
    .param p1, "chargeACCapState"    # I

    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 350
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setChargeACCapState(I)V

    .line 353
    return-void
.end method

.method public onChargeDCCapAvailChange(I)V
    .locals 1
    .param p1, "chargeDCCapAvail"    # I

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 371
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setChargeDCCapAvail(I)V

    .line 374
    return-void
.end method

.method public onChargeDCCapStateChange(I)V
    .locals 1
    .param p1, "chargeDCCapState"    # I

    .line 356
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 357
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setChargeDCCapState(I)V

    .line 360
    return-void
.end method

.method public onChargeSOCLevelChange(F)V
    .locals 1
    .param p1, "chargeSOCLevel"    # F

    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 318
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setChargeSOCLevel(F)V

    .line 321
    return-void
.end method

.method public onDateFormatChange(I)V
    .locals 4
    .param p1, "dateFormat"    # I

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mDateAndClockBarView:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    if-nez v0, :cond_0

    .line 108
    return-void

    .line 111
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mDateAndClockBarView:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->setDateFormat(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StatusBarCarBodyDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDateFormatChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onDischargeSOCLevelChange(F)V
    .locals 1
    .param p1, "dischargeSOCLevel"    # F

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 326
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setDisChargeSOCLevel(F)V

    .line 329
    return-void
.end method

.method public onDvrCFGChange(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .line 415
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 416
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setDvrViewVisible(Z)V

    .line 419
    return-void
.end method

.method public onDvrStateChange(I)V
    .locals 1
    .param p1, "mDvrState"    # I

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 128
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setDvrState(I)V

    .line 131
    return-void
.end method

.method public onEnduranceMileageChange(I)V
    .locals 1
    .param p1, "enduranceMileage"    # I

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 274
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setEnduranceMileage(I)V

    .line 277
    return-void
.end method

.method public onEstimatedTimeChange(F)V
    .locals 1
    .param p1, "mEstimatedTime"    # F

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 266
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setEstimateTime(F)V

    .line 269
    return-void
.end method

.method public onInsideAirQualityChange(I)V
    .locals 2
    .param p1, "aqi"    # I

    .line 299
    move v0, p1

    .line 300
    .local v0, "mInsidePm25Value":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPm25State()I

    move-result v1

    .line 301
    .local v1, "pm25State":I
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->handleInSidePM25(II)V

    .line 302
    return-void
.end method

.method public onInsideAirStateChange(I)V
    .locals 2
    .param p1, "insidePm25State"    # I

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 308
    return-void

    .line 310
    :cond_0
    move v0, p1

    .line 311
    .local v0, "mInsidePm25State":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPm25Value()I

    move-result v1

    .line 312
    .local v1, "insidePM25Level":I
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->handleInSidePM25(II)V

    .line 313
    return-void
.end method

.method public onLanguageChange(I)V
    .locals 3
    .param p1, "mLanguage"    # I

    .line 173
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "StatusBarCarBodyDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLanguageChange: mLanguage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getBatteryStateAC()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->onBatteryACStateChange(I)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getBatteryStateDC()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->onBatteryDCStateChange(I)V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getBatteryFail()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->onBatteryFailureChange(I)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPlugACState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->onPlugACStateChange(I)V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPlugDCState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->onPlugDCStateChange(I)V

    .line 181
    return-void
.end method

.method public onOutsideAirQualityChange(I)V
    .locals 2
    .param p1, "aqi"    # I

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 62
    return-void

    .line 64
    :cond_0
    const/16 v0, -0xbb8

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setOutsideAirQuality(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    const/16 v0, -0x7d0

    if-ne p1, v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setOutsideAirQuality(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setOutsideAirQuality(Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void
.end method

.method public onOutsideTempChange(FZ)V
    .locals 5
    .param p1, "temp"    # F
    .param p2, "isCelsius"    # Z

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 76
    return-void

    .line 80
    :cond_0
    const/high16 v0, -0x3b060000    # -2000.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 81
    const-string v0, "--"

    .local v0, "strTemp":Ljava/lang/String;
    :goto_0
    goto :goto_4

    .line 82
    .end local v0    # "strTemp":Ljava/lang/String;
    :cond_1
    const v0, -0x3ac48000    # -3000.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    .line 83
    const-string v0, "--"

    goto :goto_0

    .line 85
    :cond_2
    const v0, 0x3fe66666    # 1.8f

    mul-float/2addr v0, p1

    const/high16 v1, 0x42000000    # 32.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 86
    .local v0, "tempF":I
    float-to-double v1, p1

    const-wide v3, -0x3fb9800000000000L    # -45.0

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_3

    float-to-double v1, p1

    const-wide/high16 v3, -0x3fb7000000000000L    # -50.0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_3

    .line 87
    const/high16 p1, -0x3dcc0000    # -45.0f

    goto :goto_1

    .line 88
    :cond_3
    float-to-double v1, p1

    const-wide/high16 v3, 0x4054000000000000L    # 80.0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_4

    float-to-double v1, p1

    const-wide v3, 0x4055400000000000L    # 85.0

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_4

    .line 89
    const/high16 p1, 0x42a00000    # 80.0f

    .line 91
    :cond_4
    :goto_1
    const/16 v1, -0x32

    if-gt v0, v1, :cond_5

    const/16 v1, -0x3c

    if-lt v0, v1, :cond_5

    .line 92
    const/16 v0, -0x32

    goto :goto_2

    .line 93
    :cond_5
    const/16 v1, 0xaf

    if-lt v0, v1, :cond_6

    const/16 v1, 0xb9

    if-gt v0, v1, :cond_6

    .line 94
    const/16 v0, 0xaf

    .line 96
    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    float-to-int v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .end local v0    # "tempF":I
    :goto_3
    move-object v0, v1

    .line 98
    .local v0, "strTemp":Ljava/lang/String;
    :goto_4
    if-eqz p2, :cond_8

    const-string v1, " \u2103"

    goto :goto_5

    :cond_8
    const-string v1, " \u2109"

    .line 100
    .local v1, "strUnit":Ljava/lang/String;
    :goto_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setOutsideTemperature(Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setOutsideTempUnit(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public onPDCStatusChange(Z)V
    .locals 2
    .param p1, "pdcStatus"    # Z

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 136
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setPDCVisible(Z)V

    .line 139
    return-void
.end method

.method public onPlugACStateChange(I)V
    .locals 1
    .param p1, "plugACState"    # I

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 218
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setPlugACState(I)V

    .line 221
    return-void
.end method

.method public onPlugDCStateChange(I)V
    .locals 1
    .param p1, "plugDCState"    # I

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 226
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setPlugDCState(I)V

    .line 229
    return-void
.end method

.method public onRoadSlipStateChange(I)V
    .locals 2
    .param p1, "isRoadSlip"    # I

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 291
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setRoadSlipVisible(Z)V

    .line 294
    return-void
.end method

.method public onTimeFormatChange(I)V
    .locals 1
    .param p1, "timeFormat"    # I

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mDateAndClockBarView:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    if-nez v0, :cond_0

    .line 120
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mDateAndClockBarView:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->setTimeFormat(I)V

    .line 123
    return-void
.end method

.method public onTopBarBatteryColorChange(I)V
    .locals 1
    .param p1, "batteryColor"    # I

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 194
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setTopBarBatteryColor(I)V

    .line 197
    return-void
.end method

.method public onUnitDrvDistanceChange(I)V
    .locals 1
    .param p1, "unitDis"    # I

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 282
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setUnitDrvDis(I)V

    .line 285
    return-void
.end method

.method public onV2LStateChange(I)V
    .locals 1
    .param p1, "v2LState"    # I

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 342
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setV2LState(I)V

    .line 345
    return-void
.end method

.method public onV2VStateChange(I)V
    .locals 1
    .param p1, "v2VState"    # I

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-nez v0, :cond_0

    .line 334
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setV2VState(I)V

    .line 337
    return-void
.end method

.method public setView(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 40
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarCarBodyDisplayController$sB1jSgxPwyrI4iwbw9jwYRjuMww;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarCarBodyDisplayController$sB1jSgxPwyrI4iwbw9jwYRjuMww;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mStatusBarView:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    const v1, 0x7f0a0460

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 54
    .local v0, "systemIconArea":Landroid/widget/LinearLayout;
    const v1, 0x7f0a0374

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->mDateAndClockBarView:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    .line 55
    return-void
.end method
