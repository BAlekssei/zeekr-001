.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$lfNm3U8wrzrcMfkJaFJAT3VMigY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

.field private final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$lfNm3U8wrzrcMfkJaFJAT3VMigY;->f$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iput p2, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$lfNm3U8wrzrcMfkJaFJAT3VMigY;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$lfNm3U8wrzrcMfkJaFJAT3VMigY;->f$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$lfNm3U8wrzrcMfkJaFJAT3VMigY;->f$1:F

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->lambda$setPassengerTempNormalState$11(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;F)V

    return-void
.end method
