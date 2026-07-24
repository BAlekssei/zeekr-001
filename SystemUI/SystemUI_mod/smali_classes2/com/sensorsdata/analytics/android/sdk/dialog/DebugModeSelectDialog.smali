.class Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;
.super Landroid/app/Dialog;
.source "DebugModeSelectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog$OnDebugModeViewClickListener;
    }
.end annotation


# instance fields
.field private currentDebugMode:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

.field private onDebugModeDialogClickListener:Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog$OnDebugModeViewClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "debugMode"    # Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    .line 42
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->currentDebugMode:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    .line 44
    return-void
.end method

.method private getDrawable()Landroid/graphics/drawable/StateListDrawable;
    .locals 7

    .line 113
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 114
    .local v0, "pressDrawable":Landroid/graphics/drawable/GradientDrawable;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 115
    const-string v2, "#dddddd"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 117
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 118
    .local v2, "normalDrawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 119
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 121
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 122
    .local v3, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v4, 0x1

    new-array v5, v4, [I

    const v6, 0x10100a7

    aput v6, v5, v1

    invoke-virtual {v3, v5, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 123
    new-array v4, v4, [I

    const v5, 0x101009c

    aput v5, v4, v1

    invoke-virtual {v3, v4, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 124
    new-array v1, v1, [I

    invoke-virtual {v3, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 125
    return-object v3
.end method

.method private initView()V
    .locals 8

    .line 73
    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_debug_mode_title:I

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    .local v0, "debugModeTitle":Landroid/widget/TextView;
    const-string v1, "SDK \u8c03\u8bd5\u6a21\u5f0f\u9009\u62e9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    sget v1, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_debug_mode_cancel:I

    invoke-virtual {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 77
    .local v1, "debugModeCancel":Landroid/widget/TextView;
    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 81
    sget v3, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_debug_mode_only:I

    invoke-virtual {p0, v3}, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 82
    .local v3, "debugModeOnly":Landroid/widget/TextView;
    const-string v4, "\u5f00\u542f\u8c03\u8bd5\u6a21\u5f0f\uff08\u4e0d\u5bfc\u5165\u6570\u636e\uff09"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 86
    sget v4, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_debug_mode_track:I

    invoke-virtual {p0, v4}, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 87
    .local v4, "debugModeTrack":Landroid/widget/TextView;
    const-string v5, "\u5f00\u542f\u8c03\u8bd5\u6a21\u5f0f\uff08\u5bfc\u5165\u6570\u636e\uff09"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 91
    const-string v2, "\u8c03\u8bd5\u6a21\u5f0f\u5df2\u5173\u95ed"

    .line 92
    .local v2, "msg":Ljava/lang/String;
    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->currentDebugMode:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    sget-object v6, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;->DEBUG_ONLY:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    if-ne v5, v6, :cond_0

    .line 93
    const-string v2, "\u5f53\u524d\u4e3a \u8c03\u8bd5\u6a21\u5f0f\uff08\u4e0d\u5bfc\u5165\u6570\u636e\uff09"

    goto :goto_0

    .line 94
    :cond_0
    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->currentDebugMode:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    sget-object v6, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;->DEBUG_AND_TRACK:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    if-ne v5, v6, :cond_1

    .line 95
    const-string v2, "\u5f53\u524d\u4e3a \u6d4b\u8bd5\u6a21\u5f0f\uff08\u5bfc\u5165\u6570\u636e\uff09"

    .line 97
    :cond_1
    :goto_0
    sget v5, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_debug_mode_message:I

    invoke-virtual {p0, v5}, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 98
    .local v5, "debugModeMessage":Landroid/widget/TextView;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_2

    .line 102
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->getDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 103
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->getDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->getDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 106
    :cond_2
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->getDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->getDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->getDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    :goto_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->onDebugModeDialogClickListener:Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog$OnDebugModeViewClickListener;

    if-nez v0, :cond_0

    .line 131
    return-void

    .line 133
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 134
    .local v0, "id":I
    sget v1, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_debug_mode_track:I

    if-ne v0, v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->onDebugModeDialogClickListener:Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog$OnDebugModeViewClickListener;

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;->DEBUG_AND_TRACK:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    invoke-interface {v1, p0, v2}, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog$OnDebugModeViewClickListener;->setDebugMode(Landroid/app/Dialog;Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;)V

    goto :goto_0

    .line 136
    :cond_1
    sget v1, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_debug_mode_only:I

    if-ne v0, v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->onDebugModeDialogClickListener:Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog$OnDebugModeViewClickListener;

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;->DEBUG_ONLY:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    invoke-interface {v1, p0, v2}, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog$OnDebugModeViewClickListener;->setDebugMode(Landroid/app/Dialog;Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;)V

    goto :goto_0

    .line 138
    :cond_2
    sget v1, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_debug_mode_cancel:I

    if-ne v0, v1, :cond_3

    .line 139
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->onDebugModeDialogClickListener:Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog$OnDebugModeViewClickListener;

    invoke-interface {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog$OnDebugModeViewClickListener;->onCancel(Landroid/app/Dialog;)V

    .line 141
    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->requestWindowFeature(I)Z

    .line 54
    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$layout;->sensors_analytics_debug_mode_dialog_content:I

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->setContentView(I)V

    .line 55
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->initView()V

    .line 56
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 57
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 59
    .local v1, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x43870000    # 270.0f

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/util/SADisplayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 60
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x43700000    # 240.0f

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/util/SADisplayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 63
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 64
    .local v2, "bg":Landroid/graphics/drawable/GradientDrawable;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 65
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 66
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-static {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/util/SADisplayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 67
    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    .end local v1    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "bg":Landroid/graphics/drawable/GradientDrawable;
    :cond_0
    return-void
.end method

.method setOnDebugModeDialogClickListener(Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog$OnDebugModeViewClickListener;)V
    .locals 0
    .param p1, "onDebugModeDialogClickListener"    # Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog$OnDebugModeViewClickListener;

    .line 47
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->onDebugModeDialogClickListener:Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog$OnDebugModeViewClickListener;

    .line 48
    return-void
.end method
