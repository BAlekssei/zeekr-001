.class public final synthetic Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$lK2R_rShBqbDnCy_0F8ig5fX-Nk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# instance fields
.field private final synthetic f$0:Lcom/airbnb/lottie/LottieDrawable;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$lK2R_rShBqbDnCy_0F8ig5fX-Nk;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iput-object p2, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$lK2R_rShBqbDnCy_0F8ig5fX-Nk;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$lK2R_rShBqbDnCy_0F8ig5fX-Nk;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$lK2R_rShBqbDnCy_0F8ig5fX-Nk;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$lK2R_rShBqbDnCy_0F8ig5fX-Nk;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$lK2R_rShBqbDnCy_0F8ig5fX-Nk;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$lK2R_rShBqbDnCy_0F8ig5fX-Nk;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$lK2R_rShBqbDnCy_0F8ig5fX-Nk;->f$3:Z

    invoke-static {v0, v1, v2, v3, p1}, Lcom/airbnb/lottie/LottieDrawable;->lambda$setMinAndMaxFrame$9(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;Ljava/lang/String;ZLcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
