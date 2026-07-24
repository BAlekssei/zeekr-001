.class public Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;
.super Ljava/lang/Object;
.source "NavigationBarCarBodyDisplayController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;


# static fields
.field private static final DEBUG:Z

.field public static driverHeatOrVentilationAVAI:I

.field public static isOn:Z

.field public static passengerHeatOrVentilationAVAI:I


# instance fields
.field public DRIVER_HEAT_GREY_VENTILATION_SHOW:I

.field public DRIVER_HEAT_SHOW_VENTILATION_GREY:I

.field public DRIVER_HEAT_VENTILATION_SHOW:I

.field public DRIVER_ONLY_HEAT_SHOW:I

.field public DRIVER_ONLY_VENTILATION_SHOW:I

.field public NONE:I

.field public PASSENGER_HEAT_GREY_VENTILATION_SHOW:I

.field public PASSENGER_HEAT_SHOW_VENTILATION_GREY:I

.field public PASSENGER_HEAT_VENTILATION_SHOW:I

.field public PASSENGER_ONLY_HEAT_SHOW:I

.field public PASSENGER_ONLY_VENTILATION_SHOW:I

.field auto:I

.field private climateEcoShiftIcons:Landroid/content/res/TypedArray;

.field private climateShiftIcons:Landroid/content/res/TypedArray;

.field dayNight:I

.field private driverHeatVentilationIcons:Landroid/content/res/TypedArray;

.field eco:I

.field ecoAuto:I

.field private mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private mClimateEcoShiftIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mClimateShiftIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDriverHeatVentilationIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mDriverState:I

.field private mDriverTemp:F

.field private mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

.field private mPassengerHeatVentilationIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mPassengerState:I

.field private mPassengerTemp:F

.field private passengerHeatVentilationIcons:Landroid/content/res/TypedArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->DEBUG:Z

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->isOn:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, -0x3e8

    iput v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->DRIVER_HEAT_VENTILATION_SHOW:I

    .line 36
    const/16 v1, -0x7d0

    iput v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->DRIVER_HEAT_SHOW_VENTILATION_GREY:I

    .line 37
    const/16 v2, -0xbb8

    iput v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->DRIVER_HEAT_GREY_VENTILATION_SHOW:I

    .line 38
    const/16 v3, -0xfa0

    iput v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->DRIVER_ONLY_HEAT_SHOW:I

    .line 39
    const/16 v4, -0x1388

    iput v4, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->DRIVER_ONLY_VENTILATION_SHOW:I

    .line 40
    const/16 v5, -0x1770

    iput v5, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->NONE:I

    .line 41
    iput v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->PASSENGER_HEAT_VENTILATION_SHOW:I

    .line 42
    iput v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->PASSENGER_HEAT_SHOW_VENTILATION_GREY:I

    .line 43
    iput v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->PASSENGER_HEAT_GREY_VENTILATION_SHOW:I

    .line 44
    iput v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->PASSENGER_ONLY_HEAT_SHOW:I

    .line 45
    iput v4, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->PASSENGER_ONLY_VENTILATION_SHOW:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mDriverHeatVentilationIcons:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mPassengerHeatVentilationIcons:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mClimateShiftIcons:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mClimateEcoShiftIcons:Ljava/util/List;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mDriverState:I

    .line 57
    iput v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mPassengerState:I

    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mContext:Landroid/content/Context;

    .line 73
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->setClimateDNmode(I)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->driverHeatVentilationIcons:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->passengerHeatVentilationIcons:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->climateShiftIcons:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    return-void
.end method

.method public static synthetic lambda$onOneWorldAppList$1(Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;)V
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->onDayNightModeChange(I)V

    .line 437
    return-void
.end method

.method public static synthetic lambda$setView$0(Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getClimateShift()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->onClimateChange(I)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDriverHeatVentilationShift()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->onDriverHeatOrVentilationChange(I)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPassengerHeatVentilationShift()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->onPassengerHeatOrVentilationChange(I)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDriverTemp()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->onDriverTempChange(F)V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPassengerTemp()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->onPassengerTempChange(F)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getIsAcPower()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->onAcPowerStateChange(Z)V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getECOStatu()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->onECOStatusChange(Z)V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->onDayNightModeChange(I)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->addCallback(Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;)V

    .line 103
    return-void
.end method

.method private setClimateDNmode(I)V
    .locals 4
    .param p1, "dayOrNight"    # I

    .line 107
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->driverHeatVentilationIcons:Landroid/content/res/TypedArray;

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->passengerHeatVentilationIcons:Landroid/content/res/TypedArray;

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mContext:Landroid/content/Context;

    .line 113
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->climateShiftIcons:Landroid/content/res/TypedArray;

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mContext:Landroid/content/Context;

    .line 115
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->climateEcoShiftIcons:Landroid/content/res/TypedArray;

    .line 116
    const v0, 0x7f08042c

    iput v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->eco:I

    .line 117
    const v0, 0x7f08042a

    iput v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->ecoAuto:I

    .line 118
    const v0, 0x7f080427

    iput v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->auto:I

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->driverHeatVentilationIcons:Landroid/content/res/TypedArray;

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mContext:Landroid/content/Context;

    .line 123
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->passengerHeatVentilationIcons:Landroid/content/res/TypedArray;

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mContext:Landroid/content/Context;

    .line 125
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->climateShiftIcons:Landroid/content/res/TypedArray;

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mContext:Landroid/content/Context;

    .line 127
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->climateEcoShiftIcons:Landroid/content/res/TypedArray;

    .line 128
    const v0, 0x7f08042d

    iput v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->eco:I

    .line 129
    const v0, 0x7f08042b

    iput v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->ecoAuto:I

    .line 130
    const v0, 0x7f080428

    iput v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->auto:I

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mDriverHeatVentilationIcons:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mDriverHeatVentilationIcons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mDriverHeatVentilationIcons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mPassengerHeatVentilationIcons:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mPassengerHeatVentilationIcons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mPassengerHeatVentilationIcons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mClimateShiftIcons:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mClimateShiftIcons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mClimateShiftIcons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mClimateEcoShiftIcons:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mClimateEcoShiftIcons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mClimateEcoShiftIcons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 145
    :cond_4
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->driverHeatVentilationIcons:Landroid/content/res/TypedArray;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 146
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mDriverHeatVentilationIcons:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->driverHeatVentilationIcons:Landroid/content/res/TypedArray;

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mPassengerHeatVentilationIcons:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->passengerHeatVentilationIcons:Landroid/content/res/TypedArray;

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 150
    .end local v1    # "i":I
    :cond_5
    move v1, v0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->climateShiftIcons:Landroid/content/res/TypedArray;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 151
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mClimateShiftIcons:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->climateShiftIcons:Landroid/content/res/TypedArray;

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 154
    .end local v1    # "i":I
    :cond_6
    nop

    .local v0, "i":I
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->climateEcoShiftIcons:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 155
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mClimateEcoShiftIcons:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->climateEcoShiftIcons:Landroid/content/res/TypedArray;

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 157
    .end local v0    # "i":I
    :cond_7
    return-void
.end method


# virtual methods
.method public onAcPowerStateChange(Z)V
    .locals 3
    .param p1, "shift"    # Z

    .line 416
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 417
    const-string v0, "NavigationBarCarBodyDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAcPowerStateChange , shift = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_0
    sput-boolean p1, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->isOn:Z

    .line 420
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    if-nez v0, :cond_1

    .line 421
    return-void

    .line 423
    :cond_1
    if-eqz p1, :cond_2

    .line 425
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDriverTemp()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->onDriverTempChange(F)V

    .line 426
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPassengerTemp()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->onPassengerTempChange(F)V

    goto :goto_0

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setDriverTempOff(Ljava/lang/Boolean;)V

    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setPassengerTempOff(Ljava/lang/Boolean;)V

    .line 432
    :goto_0
    return-void
.end method

.method public onAdjustableTempChange(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 312
    .local p1, "adjustableTemp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    if-nez v0, :cond_0

    .line 313
    return-void

    .line 315
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 316
    return-void

    .line 318
    :cond_1
    return-void
.end method

.method public onClimateChange(I)V
    .locals 5
    .param p1, "shift"    # I

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    if-nez v0, :cond_0

    .line 163
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mClimateShiftIcons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 166
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 167
    const-string v0, "NavigationBarCarBodyDisplayController"

    const-string v1, "error : shift >= mClimateShiftIcons.length()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_1
    return-void

    .line 171
    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 172
    const-string v0, "NavigationBarCarBodyDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClimateChange shift = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_3
    const/16 v0, -0xbb8

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_5

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setClimateClickable(Z)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setClimate(Ljava/lang/Boolean;)V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getECOStatu()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->eco:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setClimateEcoAuto(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 181
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setClimateEcoAuto(Landroid/graphics/drawable/Drawable;)V

    .line 183
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mClimateShiftIcons:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setClimateShift(ILandroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 184
    :cond_5
    const/16 v0, -0x7d0

    if-eq p1, v0, :cond_f

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    goto/16 :goto_7

    .line 194
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setClimateClickable(Z)V

    .line 196
    if-nez p1, :cond_7

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setClimate(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 199
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setClimate(Ljava/lang/Boolean;)V

    .line 201
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getLastClimateShift()I

    move-result v0

    const/16 v4, 0x9

    if-le v0, v4, :cond_a

    if-nez p1, :cond_a

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setClimateAuto(Z)V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    .line 204
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 203
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v1

    if-ne v1, v2, :cond_8

    .line 205
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mContext:Landroid/content/Context;

    const v2, 0x7f0804de

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    .line 206
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mContext:Landroid/content/Context;

    const v2, 0x7f0804dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 203
    :goto_2
    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setClimateShift(ILandroid/graphics/drawable/Drawable;)V

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getECOStatu()Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->ecoAuto:I

    goto :goto_3

    :cond_9
    iget v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->auto:I

    :goto_3
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setClimateEcoAuto(Landroid/graphics/drawable/Drawable;)V

    .line 210
    return-void

    .line 212
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    if-le p1, v4, :cond_b

    goto :goto_4

    :cond_b
    move v2, v3

    :goto_4
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setClimateAuto(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getECOStatu()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-le p1, v4, :cond_c

    iget v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->ecoAuto:I

    goto :goto_5

    :cond_c
    iget v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->eco:I

    :goto_5
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setClimateEcoAuto(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 216
    :cond_d
    if-le p1, v4, :cond_e

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->auto:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setClimateEcoAuto(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 219
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setClimateEcoAuto(Landroid/graphics/drawable/Drawable;)V

    .line 223
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mClimateShiftIcons:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setClimateShift(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_9

    .line 185
    :cond_f
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setClimateClickable(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setClimate(Ljava/lang/Boolean;)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getECOStatu()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->eco:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setClimateEcoAuto(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 190
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setClimateEcoAuto(Landroid/graphics/drawable/Drawable;)V

    .line 192
    :goto_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mClimateShiftIcons:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setClimateShift(ILandroid/graphics/drawable/Drawable;)V

    .line 225
    :goto_9
    return-void
.end method

.method public onDayNightModeChange(I)V
    .locals 6
    .param p1, "dayNightMode"    # I

    .line 443
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isLauncherHomeForeground()Z

    move-result v0

    .line 444
    .local v0, "launcherOpen":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "Entertainment_open"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 445
    .local v1, "oneWorld":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v2, v2, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    const/16 v3, 0x9

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->isSliderShow(I)Z

    move-result v2

    .line 446
    .local v2, "isSliderShow":Z
    const-string v3, "NavigationBarCarBodyDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDayNightModeChange , dayNightMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " launcherOpen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " oneWorld"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " dayNight"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->dayNight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isSliderShow"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    if-nez v2, :cond_0

    .line 448
    const/4 p1, 0x2

    .line 450
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->dayNight:I

    if-ne p1, v3, :cond_1

    .line 451
    return-void

    .line 453
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->dayNight:I

    .line 455
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->setClimateDNmode(I)V

    .line 456
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getClimateShift()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->onClimateChange(I)V

    .line 457
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    if-nez v3, :cond_2

    .line 458
    return-void

    .line 461
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->changeDayNigtMode(I)V

    .line 463
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIsMute:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget v5, v5, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mLevel:I

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setMuteState(ZI)V

    .line 465
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPassengerTemp()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->onPassengerTempChange(F)V

    .line 466
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDriverTemp()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->onDriverTempChange(F)V

    .line 467
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDriverHeatVentilationShift()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->onDriverHeatOrVentilationChange(I)V

    .line 468
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPassengerHeatVentilationShift()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->onPassengerHeatOrVentilationChange(I)V

    .line 469
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v3, v3, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v3, p1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->setSliderDayNightMode(I)V

    .line 470
    return-void
.end method

.method public onDriverHeatOrVentilationChange(I)V
    .locals 5
    .param p1, "shift"    # I

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    if-nez v0, :cond_0

    .line 235
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->driverHeatOrVentilationChange()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mDriverState:I

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDriverHeatVentilationAvai()I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->driverHeatOrVentilationAVAI:I

    .line 239
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 240
    const-string v0, "NavigationBarCarBodyDisplayController.HEAT_VENT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDriverHeatOrVentilationChange: mDriverState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mDriverState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " driverHeatOrVentilationAVAI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->driverHeatOrVentilationAVAI:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " shift = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mDriverState:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setDriverVisible(Z)V

    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setDriverHeatClickable(Z)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mDriverHeatVentilationIcons:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setDriverHeatVentilation(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 246
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mDriverState:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v3, :cond_3

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mDriverHeatVentilationIcons:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setDriverHeatVentilation(Landroid/graphics/drawable/Drawable;)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setDriverVisible(Z)V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setDriverHeatClickable(Z)V

    goto :goto_2

    .line 250
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mDriverState:I

    if-ne v0, v4, :cond_8

    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setDriverVisible(Z)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setDriverHeatClickable(Z)V

    .line 253
    if-gt p1, v2, :cond_7

    const/4 v0, -0x3

    if-ge p1, v0, :cond_4

    goto :goto_1

    .line 257
    :cond_4
    sget v0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->driverHeatOrVentilationAVAI:I

    iget v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->DRIVER_ONLY_HEAT_SHOW:I

    if-ne v0, v1, :cond_5

    .line 258
    if-gez p1, :cond_6

    .line 259
    add-int/lit8 p1, p1, 0x3

    goto :goto_0

    .line 261
    :cond_5
    sget v0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->driverHeatOrVentilationAVAI:I

    iget v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->DRIVER_ONLY_VENTILATION_SHOW:I

    if-ne v0, v1, :cond_6

    .line 262
    if-lez p1, :cond_6

    .line 263
    add-int/lit8 p1, p1, -0x3

    .line 266
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mDriverHeatVentilationIcons:Ljava/util/List;

    add-int/lit8 v2, p1, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setDriverHeatVentilation(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 255
    :cond_7
    :goto_1
    return-void

    .line 268
    :cond_8
    :goto_2
    return-void
.end method

.method public onDriverTempChange(F)V
    .locals 5
    .param p1, "temp"    # F

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    if-nez v0, :cond_0

    .line 327
    return-void

    .line 329
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 330
    const-string v0, "NavigationBarCarBodyDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDriverTempChange: temp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mDriverTemp:F

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDriverTempAVAI()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setDriverTempClickable(Z)V

    .line 335
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setDriverTempOff(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setDriverTempClickable(Z)V

    .line 338
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->isOn:Z

    if-eqz v0, :cond_3

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setDriverTempOff(Ljava/lang/Boolean;)V

    .line 345
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getAdjustableTemp()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, -0x1

    if-ge v0, v2, :cond_6

    .line 346
    const/high16 v0, 0x41780000    # 15.5f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_4

    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    const-string v2, "LOW"

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setDriverTempStringState(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setDriverTempArrowaAlpha(I)V

    goto/16 :goto_1

    .line 349
    :cond_4
    const/high16 v0, 0x41e40000    # 28.5f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_5

    .line 350
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    const-string v1, "HIGH"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setDriverTempStringState(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setDriverTempArrowaAlpha(I)V

    goto :goto_1

    .line 353
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setDriverTempNormalState(F)V

    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setDriverTempArrowaAlpha(I)V

    goto :goto_1

    .line 356
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getAdjustableTemp()Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getAdjustableTemp()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_7

    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    const-string v1, "HIGH"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setDriverTempStringState(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setDriverTempArrowaAlpha(I)V

    goto :goto_1

    .line 361
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getAdjustableTemp()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_8

    .line 362
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    const-string v2, "LOW"

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setDriverTempStringState(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setDriverTempArrowaAlpha(I)V

    goto :goto_1

    .line 365
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setDriverTempNormalState(F)V

    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setDriverTempArrowaAlpha(I)V

    .line 368
    :goto_1
    return-void
.end method

.method public onECOStatusChange(Z)V
    .locals 1
    .param p1, "ECOStatus"    # Z

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getClimateShift()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->onClimateChange(I)V

    .line 230
    return-void
.end method

.method public onOneWorldAppList()V
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarCarBodyDisplayController$lFsDCx4s4lwtmpwQ6QoGDDdSHYY;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarCarBodyDisplayController$lFsDCx4s4lwtmpwQ6QoGDDdSHYY;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 438
    return-void
.end method

.method public onPassengerHeatOrVentilationChange(I)V
    .locals 6
    .param p1, "shift"    # I

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    if-nez v0, :cond_0

    .line 273
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPassengerHeatVentilationAvai()I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->passengerHeatOrVentilationAVAI:I

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->passengerHeatOrVentilationChange()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mPassengerState:I

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPassengerHeatVentilationAvai()I

    move-result v0

    .line 279
    .local v0, "passengerHeatVentilationAvai":I
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 280
    const-string v1, "NavigationBarCarBodyDisplayController.HEAT_VENT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPassengerHeatOrVentilationChange: mPassengerState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mPassengerState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " shift = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mPassengerState:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 283
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setPassengerVisible(Z)V

    .line 284
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setPassengerHeatClickable(Z)V

    .line 285
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mPassengerHeatVentilationIcons:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setPassengerHeatVentilation(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 286
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mPassengerState:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v1, v4, :cond_3

    .line 287
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mPassengerHeatVentilationIcons:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setPassengerHeatVentilation(Landroid/graphics/drawable/Drawable;)V

    .line 288
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setPassengerVisible(Z)V

    .line 289
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setPassengerHeatClickable(Z)V

    goto :goto_2

    .line 290
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mPassengerState:I

    if-ne v1, v5, :cond_8

    .line 291
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setPassengerVisible(Z)V

    .line 292
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setPassengerHeatClickable(Z)V

    .line 293
    if-gt p1, v3, :cond_7

    const/4 v1, -0x3

    if-ge p1, v1, :cond_4

    goto :goto_1

    .line 297
    :cond_4
    sget v1, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->passengerHeatOrVentilationAVAI:I

    iget v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->PASSENGER_ONLY_HEAT_SHOW:I

    if-ne v1, v2, :cond_5

    .line 298
    if-gez p1, :cond_6

    .line 299
    add-int/lit8 p1, p1, 0x3

    goto :goto_0

    .line 301
    :cond_5
    sget v1, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->passengerHeatOrVentilationAVAI:I

    iget v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->PASSENGER_ONLY_VENTILATION_SHOW:I

    if-ne v1, v2, :cond_6

    .line 302
    if-lez p1, :cond_6

    .line 303
    add-int/lit8 p1, p1, -0x3

    .line 306
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mPassengerHeatVentilationIcons:Ljava/util/List;

    add-int/lit8 v3, p1, 0x3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setPassengerHeatVentilation(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 295
    :cond_7
    :goto_1
    return-void

    .line 308
    :cond_8
    :goto_2
    return-void
.end method

.method public onPassengerTempChange(F)V
    .locals 5
    .param p1, "temp"    # F

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    if-nez v0, :cond_0

    .line 373
    return-void

    .line 375
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 376
    const-string v0, "NavigationBarCarBodyDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPassengerTempChange: temp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mPassengerTemp:F

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPassengerTempAVAI()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setPassengerTempClickable(Z)V

    .line 381
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setPassengerTempOff(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setPassengerTempClickable(Z)V

    .line 384
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->isOn:Z

    if-eqz v0, :cond_3

    .line 385
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setPassengerTempOff(Ljava/lang/Boolean;)V

    .line 389
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getAdjustableTemp()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, -0x1

    if-ge v0, v2, :cond_6

    .line 390
    const/high16 v0, 0x41780000    # 15.5f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_4

    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    const-string v2, "LOW"

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setPassengerTempStringState(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setPassengerTempArrowAlpha(I)V

    goto/16 :goto_1

    .line 393
    :cond_4
    const/high16 v0, 0x41e40000    # 28.5f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_5

    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    const-string v1, "HIGH"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setPassengerTempStringState(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setPassengerTempArrowAlpha(I)V

    goto :goto_1

    .line 397
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setPassengerTempNormalState(F)V

    .line 398
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setPassengerTempArrowAlpha(I)V

    goto :goto_1

    .line 400
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getAdjustableTemp()Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getAdjustableTemp()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_7

    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    const-string v1, "HIGH"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setPassengerTempStringState(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setPassengerTempArrowAlpha(I)V

    goto :goto_1

    .line 405
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getAdjustableTemp()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_8

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    const-string v2, "LOW"

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setPassengerTempStringState(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setPassengerTempArrowAlpha(I)V

    goto :goto_1

    .line 409
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setPassengerTempNormalState(F)V

    .line 410
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setPassengerTempArrowAlpha(I)V

    .line 412
    :goto_1
    return-void
.end method

.method public onStrModeChange()V
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setIsStrFirstSetting()V

    .line 475
    return-void
.end method

.method public setView(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    .line 92
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarCarBodyDisplayController$c1dhQpqdHktTBE3nloIP60jjibM;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarCarBodyDisplayController$c1dhQpqdHktTBE3nloIP60jjibM;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 104
    return-void
.end method
