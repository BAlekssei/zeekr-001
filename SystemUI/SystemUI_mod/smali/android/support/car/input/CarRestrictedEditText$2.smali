.class Landroid/support/car/input/CarRestrictedEditText$2;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "CarRestrictedEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/car/input/CarRestrictedEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/car/input/CarRestrictedEditText;


# direct methods
.method constructor <init>(Landroid/support/car/input/CarRestrictedEditText;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/car/input/CarRestrictedEditText;
    .param p2, "x0"    # Landroid/view/inputmethod/InputConnection;
    .param p3, "x1"    # Z

    .line 111
    iput-object p1, p0, Landroid/support/car/input/CarRestrictedEditText$2;->this$0:Landroid/support/car/input/CarRestrictedEditText;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I

    .line 136
    iget-object v0, p0, Landroid/support/car/input/CarRestrictedEditText$2;->this$0:Landroid/support/car/input/CarRestrictedEditText;

    invoke-static {v0}, Landroid/support/car/input/CarRestrictedEditText;->access$000(Landroid/support/car/input/CarRestrictedEditText;)Landroid/support/car/input/CarRestrictedEditText$KeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Landroid/support/car/input/CarRestrictedEditText$2;->this$0:Landroid/support/car/input/CarRestrictedEditText;

    invoke-static {v0}, Landroid/support/car/input/CarRestrictedEditText;->access$000(Landroid/support/car/input/CarRestrictedEditText;)Landroid/support/car/input/CarRestrictedEditText$KeyListener;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/car/input/CarRestrictedEditText$KeyListener;->onCommitText(Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x1

    return v0

    .line 140
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 1
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .line 145
    iget-object v0, p0, Landroid/support/car/input/CarRestrictedEditText$2;->this$0:Landroid/support/car/input/CarRestrictedEditText;

    invoke-static {v0}, Landroid/support/car/input/CarRestrictedEditText;->access$000(Landroid/support/car/input/CarRestrictedEditText;)Landroid/support/car/input/CarRestrictedEditText$KeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Landroid/support/car/input/CarRestrictedEditText$2;->this$0:Landroid/support/car/input/CarRestrictedEditText;

    invoke-static {v0}, Landroid/support/car/input/CarRestrictedEditText;->access$000(Landroid/support/car/input/CarRestrictedEditText;)Landroid/support/car/input/CarRestrictedEditText$KeyListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/car/input/CarRestrictedEditText$KeyListener;->onDelete()V

    .line 147
    const/4 v0, 0x1

    return v0

    .line 149
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result v0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 114
    iget-object v0, p0, Landroid/support/car/input/CarRestrictedEditText$2;->this$0:Landroid/support/car/input/CarRestrictedEditText;

    invoke-static {v0}, Landroid/support/car/input/CarRestrictedEditText;->access$000(Landroid/support/car/input/CarRestrictedEditText;)Landroid/support/car/input/CarRestrictedEditText$KeyListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Landroid/support/car/input/CarRestrictedEditText$2;->this$0:Landroid/support/car/input/CarRestrictedEditText;

    invoke-static {v0}, Landroid/support/car/input/CarRestrictedEditText;->access$000(Landroid/support/car/input/CarRestrictedEditText;)Landroid/support/car/input/CarRestrictedEditText$KeyListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/support/car/input/CarRestrictedEditText$KeyListener;->onKeyDown(I)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 118
    iget-object v0, p0, Landroid/support/car/input/CarRestrictedEditText$2;->this$0:Landroid/support/car/input/CarRestrictedEditText;

    invoke-static {v0}, Landroid/support/car/input/CarRestrictedEditText;->access$000(Landroid/support/car/input/CarRestrictedEditText;)Landroid/support/car/input/CarRestrictedEditText$KeyListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/support/car/input/CarRestrictedEditText$KeyListener;->onKeyUp(I)V

    .line 123
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    int-to-char v0, v0

    .line 124
    .local v0, "unicodeChar":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/support/car/input/CarRestrictedEditText$2;->commitText(Ljava/lang/CharSequence;I)Z

    .line 128
    .end local v0    # "unicodeChar":C
    :cond_1
    :goto_0
    return v1

    .line 130
    :cond_2
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
