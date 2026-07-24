.class public Lcom/android/systemui/statusbar/pma/DockItemAdapter;
.super Ljava/lang/Object;
.source "DockItemAdapter.java"


# static fields
.field public static final AMAPAUTO:Ljava/lang/String;

.field public static final AMAPAUTO_ACTIVITY:Ljava/lang/String;

.field public static final CLIMATE:Ljava/lang/String;

.field public static final CLIMATE_ACTIVITY:Ljava/lang/String;

.field public static final PROJECT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    const-string/jumbo v0, "ro.product.project"

    const-string v1, "DC1E_CN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DC1E_CN"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/DockItemAdapter;->PROJECT:Z

    .line 6
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/DockItemAdapter;->PROJECT:Z

    if-eqz v0, :cond_0

    const-string v0, "com.zeekr.automap"

    goto :goto_0

    :cond_0
    const-string v0, "com.ecarx.navi"

    :goto_0
    sput-object v0, Lcom/android/systemui/statusbar/pma/DockItemAdapter;->AMAPAUTO:Ljava/lang/String;

    .line 7
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/DockItemAdapter;->PROJECT:Z

    if-eqz v0, :cond_1

    const-string v0, "com.zeekr.automap.activity.MainActivity"

    goto :goto_1

    :cond_1
    const-string v0, "com.ecarx.navi.MainActivity"

    :goto_1
    sput-object v0, Lcom/android/systemui/statusbar/pma/DockItemAdapter;->AMAPAUTO_ACTIVITY:Ljava/lang/String;

    .line 12
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/DockItemAdapter;->PROJECT:Z

    if-eqz v0, :cond_2

    const-string v0, "com.geely.pma.climate"

    goto :goto_2

    :cond_2
    const-string v0, "com.zeekr.climate.a1"

    :goto_2
    sput-object v0, Lcom/android/systemui/statusbar/pma/DockItemAdapter;->CLIMATE:Ljava/lang/String;

    .line 13
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/DockItemAdapter;->PROJECT:Z

    if-eqz v0, :cond_3

    const-string v0, "com.geely.pma.climate.ClimateActivity"

    goto :goto_3

    :cond_3
    const-string v0, "com.zeekr.climate.a1.ClimateActivity"

    :goto_3
    sput-object v0, Lcom/android/systemui/statusbar/pma/DockItemAdapter;->CLIMATE_ACTIVITY:Ljava/lang/String;

    return-void
.end method
