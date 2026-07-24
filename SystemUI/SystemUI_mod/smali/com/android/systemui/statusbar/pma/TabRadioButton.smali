.class public Lcom/android/systemui/statusbar/pma/TabRadioButton;
.super Landroid/support/v7/widget/AppCompatRadioButton;
.source "TabRadioButton.java"


# instance fields
.field private bottomDrawable:Landroid/graphics/drawable/Drawable;

.field private drawablePadding:I

.field private drawableSize:I

.field private duration:J

.field private enableAnimation:Z

.field private leftDrawable:Landroid/graphics/drawable/Drawable;

.field private pressedAnimator:Landroid/animation/Animator;

.field private releasedAnimator:Landroid/animation/Animator;

.field private rightDrawable:Landroid/graphics/drawable/Drawable;

.field private scaleRate:F

.field private text:Ljava/lang/String;

.field private textHeight:F

.field private textWidth:F

.field private topDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/pma/TabRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/TabRadioButton;->parseAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/TabRadioButton;->init()V

    .line 61
    return-void
.end method

.method private getAnimator(Z)Landroid/animation/Animator;
    .locals 4
    .param p1, "whenPressed"    # Z

    .line 161
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    .line 162
    move v1, v0

    goto :goto_0

    .line 161
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->scaleRate:F

    .line 162
    :goto_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->scaleRate:F

    nop

    :cond_1
    iget-wide v2, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->duration:J

    .line 161
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/systemui/statusbar/pma/TabRadioButton;->getDefaultScaleAnimator(FFJ)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultScaleAnimator(FFJ)Landroid/animation/Animator;
    .locals 6
    .param p1, "from"    # F
    .param p2, "to"    # F
    .param p3, "duration"    # J

    .line 166
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 167
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const-string v1, "ScaleX"

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v5, 0x1

    aput p2, v3, v5

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 168
    .local v1, "animatorX":Landroid/animation/ObjectAnimator;
    const-string v3, "ScaleY"

    new-array v2, v2, [F

    aput p1, v2, v4

    aput p2, v2, v5

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 169
    .local v2, "animatorY":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 170
    invoke-virtual {v0, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 171
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 172
    return-object v0
.end method

.method private getFontHeight(Landroid/graphics/Paint;)F
    .locals 3
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 180
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 181
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v2

    return v1
.end method

.method private getFontWidth(Landroid/graphics/Paint;Ljava/lang/String;)F
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/String;

    .line 176
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private init()V
    .locals 2

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/TabRadioButton;->setClickable(Z)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/TabRadioButton;->setFocusable(Z)V

    .line 78
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/TabRadioButton;->setGravity(I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/TabRadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->text:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/TabRadioButton;->setTextSize(F)V

    .line 85
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/TabRadioButton;->getAnimator(Z)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->pressedAnimator:Landroid/animation/Animator;

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/TabRadioButton;->getAnimator(Z)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->releasedAnimator:Landroid/animation/Animator;

    .line 87
    return-void
.end method

.method private parseAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 64
    sget-object v0, Lcom/android/systemui/R$styleable;->TabRadioButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, "array":Landroid/content/res/TypedArray;
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->drawableSize:I

    .line 66
    const/4 v3, 0x3

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->scaleRate:F

    .line 67
    const/4 v3, 0x1

    const/16 v4, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->duration:J

    .line 68
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->enableAnimation:Z

    .line 69
    iget v2, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->drawableSize:I

    if-gez v2, :cond_0

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->drawableSize:I

    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->drawableSize:I

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/TabRadioButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 117
    .local v0, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->leftDrawable:Landroid/graphics/drawable/Drawable;

    .line 118
    const/4 v2, 0x1

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->topDrawable:Landroid/graphics/drawable/Drawable;

    .line 119
    const/4 v2, 0x2

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->rightDrawable:Landroid/graphics/drawable/Drawable;

    .line 120
    const/4 v2, 0x3

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->bottomDrawable:Landroid/graphics/drawable/Drawable;

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/TabRadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->text:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/pma/TabRadioButton;->getFontWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->textWidth:F

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/TabRadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/pma/TabRadioButton;->getFontHeight(Landroid/graphics/Paint;)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->textHeight:F

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/TabRadioButton;->getCompoundDrawablePadding()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->drawablePadding:I

    .line 130
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->leftDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->topDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->bottomDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 131
    iget v2, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->drawableSize:I

    if-gez v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_0

    .line 133
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->drawableSize:I

    .line 134
    .local v2, "drawableWidth":I
    :goto_0
    iget v4, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->drawableSize:I

    if-gez v4, :cond_1

    .line 135
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    goto :goto_1

    .line 136
    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->drawableSize:I

    .line 137
    .local v4, "drawableHeight":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/TabRadioButton;->getWidth()I

    move-result v5

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->drawablePadding:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->textWidth:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v3

    float-to-int v5, v5

    .line 138
    .local v5, "left":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->leftDrawable:Landroid/graphics/drawable/Drawable;

    add-int v7, v5, v2

    invoke-virtual {v6, v5, v1, v7, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 141
    .end local v2    # "drawableWidth":I
    .end local v4    # "drawableHeight":I
    .end local v5    # "left":I
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->topDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->leftDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->bottomDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    .line 142
    iget v2, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->drawableSize:I

    if-gez v2, :cond_3

    .line 143
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->topDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_2

    .line 144
    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->drawableSize:I

    .line 145
    .restart local v2    # "drawableWidth":I
    :goto_2
    iget v4, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->drawableSize:I

    if-gez v4, :cond_4

    .line 146
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->topDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    goto :goto_3

    .line 147
    :cond_4
    iget v4, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->drawableSize:I

    .line 148
    .restart local v4    # "drawableHeight":I
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/TabRadioButton;->getHeight()I

    move-result v5

    sub-int/2addr v5, v4

    iget v6, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->drawablePadding:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->textHeight:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v3

    float-to-int v3, v5

    .line 149
    .local v3, "top":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->topDrawable:Landroid/graphics/drawable/Drawable;

    add-int v6, v3, v4

    invoke-virtual {v5, v1, v3, v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 152
    .end local v2    # "drawableWidth":I
    .end local v3    # "top":I
    .end local v4    # "drawableHeight":I
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->leftDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->topDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->rightDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->bottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/pma/TabRadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 153
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatRadioButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 154
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/TabRadioButton;->performClick()Z

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 101
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->enableAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->releasedAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->releasedAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 95
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->enableAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->pressedAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/TabRadioButton;->pressedAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 106
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatRadioButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    .line 111
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatRadioButton;->performClick()Z

    move-result v0

    return v0
.end method
