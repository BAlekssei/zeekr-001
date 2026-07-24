.class public final synthetic Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$FIEg6-MOBktKh89tsHrpnu231A4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Ljava/util/zip/ZipInputStream;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$FIEg6-MOBktKh89tsHrpnu231A4;->f$0:Ljava/util/zip/ZipInputStream;

    iput-object p2, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$FIEg6-MOBktKh89tsHrpnu231A4;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$FIEg6-MOBktKh89tsHrpnu231A4;->f$0:Ljava/util/zip/ZipInputStream;

    iget-object v1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$FIEg6-MOBktKh89tsHrpnu231A4;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromZipStream$7(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    return-object v0
.end method
