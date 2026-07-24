.class Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;
.super Ljava/lang/Object;
.source "ViewSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RootViewInfo"
.end annotation


# instance fields
.field final activityTitle:Ljava/lang/String;

.field final rootView:Landroid/view/View;

.field scale:F

.field final screenName:Ljava/lang/String;

.field screenshot:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "activityTitle"    # Ljava/lang/String;
    .param p3, "rootView"    # Landroid/view/View;

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 775
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;->screenName:Ljava/lang/String;

    .line 776
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;->activityTitle:Ljava/lang/String;

    .line 777
    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;->rootView:Landroid/view/View;

    .line 778
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;->screenshot:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;

    .line 779
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;->scale:F

    .line 780
    return-void
.end method
