.class public Lcom/android/systemui/statusbar/pma/NotificationDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "NotificationDecoration.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NotificationDecoration;->mPaint:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NotificationDecoration;->mPaint:Landroid/graphics/Paint;

    const v1, 0xffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NotificationDecoration;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    return-void
.end method

.method private drawHorizontalLine(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    .line 59
    .local v2, "left":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 60
    .local v3, "right":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v4

    .line 61
    .local v4, "childSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 62
    invoke-virtual {v1, v5}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 63
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v7

    .line 64
    .local v7, "adaptionNum":I
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 65
    .local v8, "layoutParams":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v9

    iget v10, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v9, v10

    .line 66
    .local v9, "top":I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v10

    iget v11, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    .line 67
    .local v10, "bottom":I
    if-nez v7, :cond_0

    .line 68
    int-to-float v12, v2

    add-int/lit8 v11, v9, 0x2

    int-to-float v13, v11

    int-to-float v14, v3

    int-to-float v15, v10

    iget-object v11, v0, Lcom/android/systemui/statusbar/pma/NotificationDecoration;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v11

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 70
    :cond_0
    int-to-float v11, v2

    int-to-float v12, v10

    int-to-float v13, v3

    add-int/lit8 v14, v10, -0x2

    int-to-float v14, v14

    iget-object v15, v0, Lcom/android/systemui/statusbar/pma/NotificationDecoration;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, p1

    move/from16 v18, v11

    move/from16 v19, v12

    move/from16 v20, v13

    move/from16 v21, v14

    move-object/from16 v22, v15

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 61
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "adaptionNum":I
    .end local v8    # "layoutParams":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .end local v9    # "top":I
    .end local v10    # "bottom":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 72
    .end local v5    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 50
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 51
    .local v0, "pos":I
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p1, v2, v1, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1, v2, v2, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 56
    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 44
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/pma/NotificationDecoration;->drawHorizontalLine(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 46
    return-void
.end method
