.class public final synthetic Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$cAFr0dfyXmhekC2SUdHpUeop5aQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# instance fields
.field private final synthetic f$0:Lcom/airbnb/lottie/LottieDrawable;

.field private final synthetic f$1:F

.field private final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$cAFr0dfyXmhekC2SUdHpUeop5aQ;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iput p2, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$cAFr0dfyXmhekC2SUdHpUeop5aQ;->f$1:F

    iput p3, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$cAFr0dfyXmhekC2SUdHpUeop5aQ;->f$2:F

    return-void
.end method


# virtual methods
.method public final run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$cAFr0dfyXmhekC2SUdHpUeop5aQ;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iget v1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$cAFr0dfyXmhekC2SUdHpUeop5aQ;->f$1:F

    iget v2, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$cAFr0dfyXmhekC2SUdHpUeop5aQ;->f$2:F

    invoke-static {v0, v1, v2, p1}, Lcom/airbnb/lottie/LottieDrawable;->lambda$setMinAndMaxProgress$11(Lcom/airbnb/lottie/LottieDrawable;FFLcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
