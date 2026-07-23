.class public Landroid/support/car/input/CarRestrictedEditText;
.super Landroid/widget/EditText;
.source "CarRestrictedEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/car/input/CarRestrictedEditText$KeyListener;
    }
.end annotation


# instance fields
.field private mCarEditableListener:Landroid/support/car/input/CarEditableListener;

.field private mCursorClamped:Z

.field private mLastSelEnd:I

.field private mLastSelStart:I

.field private mListener:Landroid/support/car/input/CarRestrictedEditText$KeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/car/input/CarRestrictedEditText;->mLastSelEnd:I

    .line 43
    iput v0, p0, Landroid/support/car/input/CarRestrictedEditText;->mLastSelStart:I

    .line 59
    invoke-virtual {p0}, Landroid/support/car/input/CarRestrictedEditText;->getInputType()I

    move-result v1

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/support/car/input/CarRestrictedEditText;->setInputType(I)V

    .line 60
    invoke-virtual {p0, v0}, Landroid/support/car/input/CarRestrictedEditText;->setTextIsSelectable(Z)V

    .line 61
    invoke-virtual {p0}, Landroid/support/car/input/CarRestrictedEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/car/input/CarRestrictedEditText;->setSelection(I)V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/car/input/CarRestrictedEditText;->mCursorClamped:Z

    .line 63
    new-instance v0, Landroid/support/car/input/CarRestrictedEditText$1;

    invoke-direct {v0, p0}, Landroid/support/car/input/CarRestrictedEditText$1;-><init>(Landroid/support/car/input/CarRestrictedEditText;)V

    invoke-virtual {p0, v0}, Landroid/support/car/input/CarRestrictedEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Landroid/support/car/input/CarRestrictedEditText;)Landroid/support/car/input/CarRestrictedEditText$KeyListener;
    .locals 1
    .param p0, "x0"    # Landroid/support/car/input/CarRestrictedEditText;

    .line 38
    iget-object v0, p0, Landroid/support/car/input/CarRestrictedEditText;->mListener:Landroid/support/car/input/CarRestrictedEditText$KeyListener;

    return-object v0
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 110
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 111
    .local v0, "inputConnection":Landroid/view/inputmethod/InputConnection;
    new-instance v1, Landroid/support/car/input/CarRestrictedEditText$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Landroid/support/car/input/CarRestrictedEditText$2;-><init>(Landroid/support/car/input/CarRestrictedEditText;Landroid/view/inputmethod/InputConnection;Z)V

    return-object v1
.end method

.method protected onSelectionChanged(II)V
    .locals 3
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .line 82
    iget-boolean v0, p0, Landroid/support/car/input/CarRestrictedEditText;->mCursorClamped:Z

    .line 86
    iget-object v0, p0, Landroid/support/car/input/CarRestrictedEditText;->mCarEditableListener:Landroid/support/car/input/CarEditableListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Landroid/support/car/input/CarRestrictedEditText;->mCarEditableListener:Landroid/support/car/input/CarEditableListener;

    iget v1, p0, Landroid/support/car/input/CarRestrictedEditText;->mLastSelStart:I

    iget v2, p0, Landroid/support/car/input/CarRestrictedEditText;->mLastSelEnd:I

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/support/car/input/CarEditableListener;->onUpdateSelection(IIII)V

    .line 89
    :cond_0
    iput p1, p0, Landroid/support/car/input/CarRestrictedEditText;->mLastSelStart:I

    .line 90
    iput p2, p0, Landroid/support/car/input/CarRestrictedEditText;->mLastSelEnd:I

    .line 91
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method
