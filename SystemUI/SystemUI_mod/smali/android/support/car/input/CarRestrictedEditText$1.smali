.class Landroid/support/car/input/CarRestrictedEditText$1;
.super Ljava/lang/Object;
.source "CarRestrictedEditText.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/car/input/CarRestrictedEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/car/input/CarRestrictedEditText;


# direct methods
.method constructor <init>(Landroid/support/car/input/CarRestrictedEditText;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/car/input/CarRestrictedEditText;

    .line 63
    iput-object p1, p0, Landroid/support/car/input/CarRestrictedEditText$1;->this$0:Landroid/support/car/input/CarRestrictedEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 66
    iget-object v0, p0, Landroid/support/car/input/CarRestrictedEditText$1;->this$0:Landroid/support/car/input/CarRestrictedEditText;

    invoke-static {v0}, Landroid/support/car/input/CarRestrictedEditText;->access$000(Landroid/support/car/input/CarRestrictedEditText;)Landroid/support/car/input/CarRestrictedEditText$KeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 67
    iget-object v0, p0, Landroid/support/car/input/CarRestrictedEditText$1;->this$0:Landroid/support/car/input/CarRestrictedEditText;

    invoke-static {v0}, Landroid/support/car/input/CarRestrictedEditText;->access$000(Landroid/support/car/input/CarRestrictedEditText;)Landroid/support/car/input/CarRestrictedEditText$KeyListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/car/input/CarRestrictedEditText$KeyListener;->onCloseKeyboard()V

    .line 70
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
