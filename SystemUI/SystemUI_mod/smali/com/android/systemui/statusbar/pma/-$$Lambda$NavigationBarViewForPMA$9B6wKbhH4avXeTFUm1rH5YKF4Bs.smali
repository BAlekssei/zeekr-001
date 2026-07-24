.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$9B6wKbhH4avXeTFUm1rH5YKF4Bs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$9B6wKbhH4avXeTFUm1rH5YKF4Bs;->f$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$9B6wKbhH4avXeTFUm1rH5YKF4Bs;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$9B6wKbhH4avXeTFUm1rH5YKF4Bs;->f$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$9B6wKbhH4avXeTFUm1rH5YKF4Bs;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->lambda$setPassengerTempStringState$10(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Ljava/lang/String;)V

    return-void
.end method
