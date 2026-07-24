.class public Lcom/airbnb/lottie/parser/GradientColorParser;
.super Ljava/lang/Object;
.source "GradientColorParser.java"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser<",
        "Lcom/airbnb/lottie/model/content/GradientColor;",
        ">;"
    }
.end annotation


# instance fields
.field private colorPoints:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "colorPoints"    # I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 23
    return-void
.end method

.method private addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/model/content/GradientColor;Ljava/util/List;)V
    .locals 10
    .param p1, "gradientColor"    # Lcom/airbnb/lottie/model/content/GradientColor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 122
    .local p2, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    iget v0, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    mul-int/lit8 v0, v0, 0x4

    .line 123
    .local v0, "startIndex":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 124
    return-void

    .line 127
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 128
    .local v1, "opacityStops":I
    new-array v2, v1, [D

    .line 129
    .local v2, "positions":[D
    new-array v3, v1, [D

    .line 131
    .local v3, "opacities":[D
    move v4, v0

    .local v4, "i":I
    const/4 v5, 0x0

    move v6, v4

    move v4, v5

    .local v4, "j":I
    .local v6, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 132
    rem-int/lit8 v7, v6, 0x2

    if-nez v7, :cond_1

    .line 133
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v7, v7

    aput-wide v7, v2, v4

    goto :goto_1

    .line 135
    :cond_1
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v7, v7

    aput-wide v7, v3, v4

    .line 136
    add-int/lit8 v4, v4, 0x1

    .line 131
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 140
    .end local v4    # "j":I
    .end local v6    # "i":I
    :cond_2
    nop

    .local v5, "i":I
    :goto_2
    move v4, v5

    .end local v5    # "i":I
    .local v4, "i":I
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getSize()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 141
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v5

    aget v5, v5, v4

    .line 142
    .local v5, "color":I
    nop

    .line 143
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    move-result-object v6

    aget v6, v6, v4

    float-to-double v6, v6

    invoke-direct {p0, v6, v7, v2, v3}, Lcom/airbnb/lottie/parser/GradientColorParser;->getOpacityAtPosition(D[D[D)I

    move-result v6

    .line 144
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 145
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v8

    .line 146
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    .line 142
    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    .line 148
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v6

    aput v5, v6, v4

    .line 140
    .end local v5    # "color":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    goto :goto_2

    .line 150
    .end local v5    # "i":I
    :cond_3
    return-void
.end method

.method private getOpacityAtPosition(D[D[D)I
    .locals 27
    .param p1, "position"    # D
    .param p3, "positions"    # [D
    .param p4, "opacities"    # [D

    move-object/from16 v0, p3

    .line 154
    move-object/from16 v1, p4

    const/4 v2, 0x1

    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    const-wide v5, 0x406fe00000000000L    # 255.0

    if-ge v3, v4, :cond_1

    .line 155
    add-int/lit8 v4, v3, -0x1

    aget-wide v7, v0, v4

    .line 156
    .local v7, "lastPosition":D
    aget-wide v9, v0, v3

    .line 157
    .local v9, "thisPosition":D
    aget-wide v11, v0, v3

    cmpl-double v4, v11, p1

    if-ltz v4, :cond_0

    .line 158
    sub-double v11, p1, v7

    sub-double v13, v9, v7

    div-double v15, v11, v13

    const-wide/16 v17, 0x0

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v15 .. v20}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(DDD)D

    move-result-wide v11

    .line 159
    .local v11, "progress":D
    add-int/lit8 v2, v3, -0x1

    aget-wide v21, v1, v2

    aget-wide v23, v1, v3

    move-wide/from16 v25, v11

    invoke-static/range {v21 .. v26}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(DDD)D

    move-result-wide v13

    mul-double/2addr v5, v13

    double-to-int v2, v5

    return v2

    .line 154
    .end local v7    # "lastPosition":D
    .end local v9    # "thisPosition":D
    .end local v11    # "progress":D
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    .end local v3    # "i":I
    :cond_1
    array-length v3, v1

    sub-int/2addr v3, v2

    aget-wide v2, v1, v3

    mul-double/2addr v5, v2

    double-to-int v2, v5

    return v2
.end method


# virtual methods
.method public parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lcom/airbnb/lottie/model/content/GradientColor;
    .locals 15
    .param p1, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v1, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    sget-object v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    .line 52
    .local v2, "isArray":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 55
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v3, v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x4

    if-ne v3, v6, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v7

    if-nez v3, :cond_3

    .line 62
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    const/4 v5, 0x3

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iput v3, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 69
    :cond_3
    if-eqz v2, :cond_4

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 72
    :cond_4
    iget v3, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_5

    .line 73
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v3, v6

    iput v3, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 76
    :cond_5
    iget v3, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    new-array v3, v3, [F

    .line 77
    .local v3, "positions":[F
    iget v5, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    new-array v5, v5, [I

    .line 79
    .local v5, "colors":[I
    const/4 v7, 0x0

    .line 80
    .local v7, "r":I
    const/4 v8, 0x0

    .line 81
    .local v8, "g":I
    nop

    .local v4, "i":I
    :goto_2
    iget v9, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    mul-int/2addr v9, v6

    if-ge v4, v9, :cond_7

    .line 82
    div-int/lit8 v9, v4, 0x4

    .line 83
    .local v9, "colorIndex":I
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    float-to-double v10, v10

    .line 84
    .local v10, "value":D
    rem-int/lit8 v12, v4, 0x4

    const-wide v13, 0x406fe00000000000L    # 255.0

    packed-switch v12, :pswitch_data_0

    .end local v9    # "colorIndex":I
    .end local v10    # "value":D
    goto :goto_3

    .line 101
    .restart local v9    # "colorIndex":I
    .restart local v10    # "value":D
    :pswitch_0
    mul-double/2addr v13, v10

    double-to-int v12, v13

    .line 102
    .local v12, "b":I
    const/16 v13, 0xff

    invoke-static {v13, v7, v8, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v13

    aput v13, v5, v9

    .end local v9    # "colorIndex":I
    .end local v10    # "value":D
    .end local v12    # "b":I
    goto :goto_3

    .line 98
    .restart local v9    # "colorIndex":I
    .restart local v10    # "value":D
    :pswitch_1
    mul-double/2addr v13, v10

    double-to-int v8, v13

    .line 99
    goto :goto_3

    .line 95
    :pswitch_2
    mul-double/2addr v13, v10

    double-to-int v7, v13

    .line 96
    goto :goto_3

    .line 88
    :pswitch_3
    if-lez v9, :cond_6

    add-int/lit8 v12, v9, -0x1

    aget v12, v3, v12

    double-to-float v13, v10

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_6

    .line 89
    double-to-float v12, v10

    const v13, 0x3c23d70a    # 0.01f

    add-float/2addr v12, v13

    aput v12, v3, v9

    goto :goto_3

    .line 91
    :cond_6
    double-to-float v12, v10

    aput v12, v3, v9

    .line 93
    nop

    .line 81
    .end local v9    # "colorIndex":I
    .end local v10    # "value":D
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 107
    .end local v4    # "i":I
    :cond_7
    new-instance v4, Lcom/airbnb/lottie/model/content/GradientColor;

    invoke-direct {v4, v3, v5}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    .line 108
    .local v4, "gradientColor":Lcom/airbnb/lottie/model/content/GradientColor;
    invoke-direct {v0, v4, v1}, Lcom/airbnb/lottie/parser/GradientColorParser;->addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/model/content/GradientColor;Ljava/util/List;)V

    .line 109
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/parser/GradientColorParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lcom/airbnb/lottie/model/content/GradientColor;

    move-result-object p1

    return-object p1
.end method
