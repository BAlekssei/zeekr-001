.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$HYEqsf1dS5yfeK_sbkIAeVGZs6Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$HYEqsf1dS5yfeK_sbkIAeVGZs6Q;->f$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$HYEqsf1dS5yfeK_sbkIAeVGZs6Q;->f$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
