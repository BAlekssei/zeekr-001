.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$JU1eGe7VZo6CmoecdnOpQgCLJVY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$JU1eGe7VZo6CmoecdnOpQgCLJVY;->f$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$JU1eGe7VZo6CmoecdnOpQgCLJVY;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$JU1eGe7VZo6CmoecdnOpQgCLJVY;->f$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$JU1eGe7VZo6CmoecdnOpQgCLJVY;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->lambda$onAqiCO2HighChange$15(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Z)V

    return-void
.end method
