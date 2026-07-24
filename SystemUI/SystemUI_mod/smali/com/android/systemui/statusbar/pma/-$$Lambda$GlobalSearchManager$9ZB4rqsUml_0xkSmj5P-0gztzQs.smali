.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$GlobalSearchManager$9ZB4rqsUml_0xkSmj5P-0gztzQs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/pma/GlobalSearchManager;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/pma/GlobalSearchManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$GlobalSearchManager$9ZB4rqsUml_0xkSmj5P-0gztzQs;->f$0:Lcom/android/systemui/statusbar/pma/GlobalSearchManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$GlobalSearchManager$9ZB4rqsUml_0xkSmj5P-0gztzQs;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$GlobalSearchManager$9ZB4rqsUml_0xkSmj5P-0gztzQs;->f$0:Lcom/android/systemui/statusbar/pma/GlobalSearchManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$GlobalSearchManager$9ZB4rqsUml_0xkSmj5P-0gztzQs;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/pma/GlobalSearchManager;->lambda$search$0(Lcom/android/systemui/statusbar/pma/GlobalSearchManager;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
