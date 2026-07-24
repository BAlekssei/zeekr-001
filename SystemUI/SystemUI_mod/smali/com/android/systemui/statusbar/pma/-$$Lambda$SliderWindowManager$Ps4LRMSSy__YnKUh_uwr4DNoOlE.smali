.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$Ps4LRMSSy__YnKUh_uwr4DNoOlE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$Ps4LRMSSy__YnKUh_uwr4DNoOlE;->f$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iput p2, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$Ps4LRMSSy__YnKUh_uwr4DNoOlE;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$Ps4LRMSSy__YnKUh_uwr4DNoOlE;->f$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$Ps4LRMSSy__YnKUh_uwr4DNoOlE;->f$1:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->lambda$onLanguageChange$4(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)V

    return-void
.end method
