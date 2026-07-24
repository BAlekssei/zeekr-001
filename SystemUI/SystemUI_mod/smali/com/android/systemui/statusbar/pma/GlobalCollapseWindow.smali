.class public Lcom/android/systemui/statusbar/pma/GlobalCollapseWindow;
.super Ljava/lang/Object;
.source "GlobalCollapseWindow.java"


# instance fields
.field private isShowing:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/GlobalCollapseWindow;->mContext:Landroid/content/Context;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/GlobalCollapseWindow;->isShowing:Z

    .line 69
    return-void
.end method
