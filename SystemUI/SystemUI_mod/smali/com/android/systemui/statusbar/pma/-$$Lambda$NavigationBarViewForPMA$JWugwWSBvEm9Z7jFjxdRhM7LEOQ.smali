.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$JWugwWSBvEm9Z7jFjxdRhM7LEOQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

.field private final synthetic f$1:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$JWugwWSBvEm9Z7jFjxdRhM7LEOQ;->f$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$JWugwWSBvEm9Z7jFjxdRhM7LEOQ;->f$1:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$JWugwWSBvEm9Z7jFjxdRhM7LEOQ;->f$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$JWugwWSBvEm9Z7jFjxdRhM7LEOQ;->f$1:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->lambda$setDriverTempOff$9(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Ljava/lang/Boolean;)V

    return-void
.end method
