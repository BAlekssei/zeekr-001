.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$gYmuDuvQLhK685AGMJANvmZ-YfQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

.field private final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$gYmuDuvQLhK685AGMJANvmZ-YfQ;->f$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$gYmuDuvQLhK685AGMJANvmZ-YfQ;->f$1:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$gYmuDuvQLhK685AGMJANvmZ-YfQ;->f$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$gYmuDuvQLhK685AGMJANvmZ-YfQ;->f$1:[B

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lambda$handleSetDidUsbModeChange$8(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;[B)V

    return-void
.end method
