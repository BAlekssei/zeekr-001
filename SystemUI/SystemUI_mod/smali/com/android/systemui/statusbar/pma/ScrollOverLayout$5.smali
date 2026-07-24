.class Lcom/android/systemui/statusbar/pma/ScrollOverLayout$5;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScrollOverLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/ScrollOverLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/ScrollOverLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/ScrollOverLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/ScrollOverLayout;

    .line 189
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$5;->this$0:Lcom/android/systemui/statusbar/pma/ScrollOverLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$5;->this$0:Lcom/android/systemui/statusbar/pma/ScrollOverLayout;

    invoke-static {v0, p3}, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->access$302(Lcom/android/systemui/statusbar/pma/ScrollOverLayout;F)F

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 192
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method
