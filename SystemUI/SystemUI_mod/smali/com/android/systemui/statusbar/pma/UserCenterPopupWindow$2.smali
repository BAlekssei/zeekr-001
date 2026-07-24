.class Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$2;
.super Landroid/support/v7/widget/GridLayoutManager;
.source "UserCenterPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .line 191
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$2;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    .line 194
    const/4 v0, 0x0

    return v0
.end method
