.class public Lcom/sensorsdata/analytics/android/sdk/util/KeyboardViewUtil;
.super Ljava/lang/Object;
.source "KeyboardViewUtil.java"


# static fields
.field private static final MATCH_RULE_KEYBOARD:Ljava/lang/String; = "^([A-Za-z]|[0-9])"

.field private static final TAG_KEYBOARD:Ljava/lang/String; = "keyboard_tag"

.field private static isSensorsCheckKeyboard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/KeyboardViewUtil;->isSensorsCheckKeyboard:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getKeyboardSimilarFatherView(Landroid/view/View;)Z
    .locals 13
    .param p0, "viewParent"    # Landroid/view/View;

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 62
    .local v0, "viewGroupParent":Landroid/view/ViewGroup;
    sget v2, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_keyboard:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 63
    return v3

    .line 65
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 66
    .local v2, "viewGroupParentChildCount":I
    if-le v2, v3, :cond_8

    .line 67
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 68
    .local v3, "viewGroupIndex":I
    const/4 v4, 0x0

    .line 69
    .local v4, "isKeyboardFatherView":Z
    move v5, v1

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_7

    .line 70
    if-eq v3, v5, :cond_6

    .line 71
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 72
    .local v6, "viewTemp":Landroid/view/View;
    sget v7, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_keyboard:I

    invoke-virtual {v6, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 73
    const/4 v4, 0x1

    .line 74
    goto :goto_4

    .line 76
    :cond_1
    instance-of v7, v6, Landroid/view/ViewGroup;

    if-eqz v7, :cond_5

    .line 77
    move-object v7, v6

    check-cast v7, Landroid/view/ViewGroup;

    .line 78
    .local v7, "viewGroupOther":Landroid/view/ViewGroup;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 79
    .local v8, "numOther":I
    const/4 v9, 0x0

    .line 80
    .local v9, "isKeyBoardSunView":Z
    move v10, v1

    .local v10, "n":I
    :goto_1
    if-ge v10, v8, :cond_3

    .line 81
    const-string v11, "^([A-Za-z]|[0-9])"

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-static {v12}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getViewContentAndType(Landroid/view/View;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewContent()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 82
    const/4 v9, 0x1

    .line 83
    goto :goto_2

    .line 80
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 86
    .end local v10    # "n":I
    :cond_3
    :goto_2
    if-eqz v9, :cond_4

    .line 87
    sget v1, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_keyboard:I

    const-string v10, "keyboard_tag"

    invoke-virtual {v7, v1, v10}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 88
    sget v1, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_keyboard:I

    const-string v10, "keyboard_tag"

    invoke-virtual {v0, v1, v10}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 89
    const/4 v4, 0x1

    .line 90
    goto :goto_4

    .line 92
    .end local v7    # "viewGroupOther":Landroid/view/ViewGroup;
    .end local v8    # "numOther":I
    .end local v9    # "isKeyBoardSunView":Z
    :cond_4
    goto :goto_3

    .line 93
    :cond_5
    const-string v7, "^([A-Za-z]|[0-9])"

    invoke-static {v6}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getViewContentAndType(Landroid/view/View;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewContent()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 94
    sget v1, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_keyboard:I

    const-string v7, "keyboard_tag"

    invoke-virtual {v6, v1, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 95
    sget v1, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_keyboard:I

    const-string v7, "keyboard_tag"

    invoke-virtual {v0, v1, v7}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 96
    const/4 v4, 0x1

    .line 97
    goto :goto_4

    .line 69
    .end local v6    # "viewTemp":Landroid/view/View;
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 102
    .end local v5    # "i":I
    :cond_7
    :goto_4
    return v4

    .line 105
    .end local v0    # "viewGroupParent":Landroid/view/ViewGroup;
    .end local v2    # "viewGroupParentChildCount":I
    .end local v3    # "viewGroupIndex":I
    .end local v4    # "isKeyboardFatherView":Z
    :cond_8
    return v1
.end method

.method private static getKeyboardSimilarView(Landroid/view/View;)Z
    .locals 8
    .param p0, "view"    # Landroid/view/View;

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 31
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    sget v1, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_keyboard:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 32
    return v2

    .line 34
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 35
    .local v1, "currentIndex":I
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 36
    .local v3, "viewCount":I
    if-le v3, v2, :cond_4

    .line 37
    const/4 v4, 0x0

    .line 38
    .local v4, "isKeyboardView":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 39
    if-eq v1, v5, :cond_1

    const-string v6, "^([A-Za-z]|[0-9])"

    .line 40
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getViewContentAndType(Landroid/view/View;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewContent()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 41
    const/4 v4, 0x1

    .line 42
    goto :goto_1

    .line 38
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 45
    .end local v5    # "i":I
    :cond_2
    :goto_1
    if-nez v4, :cond_3

    .line 46
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/KeyboardViewUtil;->getKeyboardSimilarFatherView(Landroid/view/View;)Z

    move-result v2

    return v2

    .line 48
    :cond_3
    sget v5, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_keyboard:I

    const-string v6, "keyboard_tag"

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 49
    return v2

    .line 52
    .end local v4    # "isKeyboardView":Z
    :cond_4
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/KeyboardViewUtil;->getKeyboardSimilarFatherView(Landroid/view/View;)Z

    move-result v2

    return v2

    .line 55
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    .end local v1    # "currentIndex":I
    .end local v3    # "viewCount":I
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/KeyboardViewUtil;->getKeyboardSimilarFatherView(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isKeyboardView(Landroid/view/View;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 17
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/KeyboardViewUtil;->isSensorsCheckKeyboard:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getViewContentAndType(Landroid/view/View;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v0

    .line 21
    .local v0, "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewContent()Ljava/lang/String;

    move-result-object v2

    .line 22
    .local v2, "viewText":Ljava/lang/String;
    const-string v3, "^([A-Za-z]|[0-9])"

    invoke-static {v3, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 23
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/KeyboardViewUtil;->getKeyboardSimilarView(Landroid/view/View;)Z

    move-result v1

    return v1

    .line 25
    :cond_1
    return v1

    .line 18
    .end local v0    # "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .end local v2    # "viewText":Ljava/lang/String;
    :cond_2
    :goto_0
    return v1
.end method
