.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$uXYf8lVuBUAc1z-XCVu7UalLEho;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

.field private final synthetic f$1:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$uXYf8lVuBUAc1z-XCVu7UalLEho;->f$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$uXYf8lVuBUAc1z-XCVu7UalLEho;->f$1:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$uXYf8lVuBUAc1z-XCVu7UalLEho;->f$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$uXYf8lVuBUAc1z-XCVu7UalLEho;->f$1:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->lambda$onTopActivityChanged$0(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Landroid/content/ComponentName;)V

    return-void
.end method
