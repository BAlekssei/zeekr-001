.class Lcom/haibin/calendarview/CalendarLayout$5;
.super Ljava/lang/Object;
.source "CalendarLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haibin/calendarview/CalendarLayout;->shrink(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haibin/calendarview/CalendarLayout;


# direct methods
.method constructor <init>(Lcom/haibin/calendarview/CalendarLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/haibin/calendarview/CalendarLayout;

    .line 745
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$5;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 748
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 749
    .local v0, "currentValue":F
    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarLayout$5;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-static {v2}, Lcom/haibin/calendarview/CalendarLayout;->access$000(Lcom/haibin/calendarview/CalendarLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 750
    .local v1, "percent":F
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarLayout$5;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarLayout$5;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-static {v3}, Lcom/haibin/calendarview/CalendarLayout;->access$100(Lcom/haibin/calendarview/CalendarLayout;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/haibin/calendarview/MonthViewPager;->setTranslationY(F)V

    .line 751
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarLayout$5;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/haibin/calendarview/CalendarLayout;->access$202(Lcom/haibin/calendarview/CalendarLayout;Z)Z

    .line 752
    return-void
.end method
