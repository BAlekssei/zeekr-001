.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$FrlOk24MAnGkzpXdjADu0KHNI3A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Ljava/lang/String;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$FrlOk24MAnGkzpXdjADu0KHNI3A;->f$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$FrlOk24MAnGkzpXdjADu0KHNI3A;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$FrlOk24MAnGkzpXdjADu0KHNI3A;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$FrlOk24MAnGkzpXdjADu0KHNI3A;->f$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$FrlOk24MAnGkzpXdjADu0KHNI3A;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SliderWindowManager$FrlOk24MAnGkzpXdjADu0KHNI3A;->f$2:F

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->lambda$setProgressTaskInfo$11(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Ljava/lang/String;F)V

    return-void
.end method
