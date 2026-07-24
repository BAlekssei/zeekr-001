.class public Lcom/airbnb/lottie/parser/LayerParser;
.super Ljava/lang/Object;
.source "LayerParser.java"


# static fields
.field private static final EFFECTS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final TEXT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 29
    const-string v0, "nm"

    const-string v1, "ind"

    const-string/jumbo v2, "refId"

    const-string/jumbo v3, "ty"

    const-string v4, "parent"

    const-string/jumbo v5, "sw"

    const-string/jumbo v6, "sh"

    const-string/jumbo v7, "sc"

    const-string v8, "ks"

    const-string/jumbo v9, "tt"

    const-string v10, "masksProperties"

    const-string/jumbo v11, "shapes"

    const-string/jumbo v12, "t"

    const-string v13, "ef"

    const-string/jumbo v14, "sr"

    const-string/jumbo v15, "st"

    const-string/jumbo v16, "w"

    const-string v17, "h"

    const-string v18, "ip"

    const-string v19, "op"

    const-string/jumbo v20, "tm"

    const-string v21, "cl"

    const-string v22, "hd"

    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 65
    const-string v0, "d"

    const-string v1, "a"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->TEXT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 70
    const-string/jumbo v0, "ty"

    const-string v1, "nm"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->EFFECTS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 29
    .param p0, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 57
    .local v0, "bounds":Landroid/graphics/Rect;
    new-instance v28, Lcom/airbnb/lottie/model/layer/Layer;

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const-string v4, "__container"

    sget-object v7, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->PRE_COMP:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    invoke-direct {v12}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>()V

    .line 61
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v18

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v19

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v22

    sget-object v23, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->NONE:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    const-wide/16 v5, -0x1

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v1, v28

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v27}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFIILcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;ZLcom/airbnb/lottie/model/content/BlurEffect;Lcom/airbnb/lottie/parser/DropShadowEffect;)V

    .line 57
    return-object v28
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 59
    .param p0, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 78
    move-object/from16 v15, p1

    const-string v1, "UNSET"

    .line 79
    .local v1, "layerName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 80
    .local v2, "layerType":Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    const/4 v3, 0x0

    .line 81
    .local v3, "refId":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 82
    .local v4, "layerId":J
    const/4 v6, 0x0

    .line 83
    .local v6, "solidWidth":I
    const/4 v7, 0x0

    .line 84
    .local v7, "solidHeight":I
    const/4 v8, 0x0

    .line 85
    .local v8, "solidColor":I
    const/4 v9, 0x0

    .line 86
    .local v9, "preCompWidth":I
    const/4 v10, 0x0

    .line 87
    .local v10, "preCompHeight":I
    const-wide/16 v11, -0x1

    .line 88
    .local v11, "parentId":J
    const/high16 v13, 0x3f800000    # 1.0f

    .line 89
    .local v13, "timeStretch":F
    const/4 v14, 0x0

    .line 90
    .local v14, "startFrame":F
    const/16 v16, 0x0

    .line 91
    .local v16, "inFrame":F
    const/16 v17, 0x0

    .line 92
    .local v17, "outFrame":F
    const/16 v18, 0x0

    .line 93
    .local v18, "cl":Ljava/lang/String;
    const/16 v19, 0x0

    .line 94
    .local v19, "hidden":Z
    const/16 v20, 0x0

    .line 95
    .local v20, "blurEffect":Lcom/airbnb/lottie/model/content/BlurEffect;
    const/16 v21, 0x0

    .line 97
    .local v21, "dropShadowEffect":Lcom/airbnb/lottie/parser/DropShadowEffect;
    sget-object v22, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->NONE:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 98
    .local v22, "matteType":Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    const/16 v23, 0x0

    .line 99
    .local v23, "transform":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    const/16 v24, 0x0

    .line 100
    .local v24, "text":Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;
    const/16 v25, 0x0

    .line 101
    .local v25, "textProperties":Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    const/16 v26, 0x0

    .line 103
    .local v26, "timeRemapping":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object/from16 v28, v1

    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "layerName":Ljava/lang/String;
    .local v28, "layerName":Ljava/lang/String;
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v1, "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    move-object/from16 v29, v2

    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "layerType":Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    .local v29, "layerType":Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v2, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 107
    move-object/from16 v30, v3

    move/from16 v33, v6

    move/from16 v34, v7

    move/from16 v35, v8

    move/from16 v39, v9

    move/from16 v40, v10

    move-wide/from16 v31, v11

    move/from16 v37, v13

    move/from16 v38, v14

    move/from16 v14, v16

    move-object/from16 v12, v18

    move/from16 v42, v19

    move-object/from16 v47, v20

    move-object/from16 v48, v21

    move-object/from16 v44, v22

    move-object/from16 v36, v23

    move-object/from16 v45, v24

    move-object/from16 v46, v25

    move-object/from16 v41, v26

    move-object/from16 v13, v28

    move-object/from16 v43, v29

    move-wide/from16 v28, v4

    .end local v3    # "refId":Ljava/lang/String;
    .end local v4    # "layerId":J
    .end local v6    # "solidWidth":I
    .end local v7    # "solidHeight":I
    .end local v8    # "solidColor":I
    .end local v9    # "preCompWidth":I
    .end local v10    # "preCompHeight":I
    .end local v11    # "parentId":J
    .end local v16    # "inFrame":F
    .end local v18    # "cl":Ljava/lang/String;
    .end local v19    # "hidden":Z
    .end local v20    # "blurEffect":Lcom/airbnb/lottie/model/content/BlurEffect;
    .end local v21    # "dropShadowEffect":Lcom/airbnb/lottie/parser/DropShadowEffect;
    .end local v22    # "matteType":Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    .end local v23    # "transform":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .end local v24    # "text":Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;
    .end local v25    # "textProperties":Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    .end local v26    # "timeRemapping":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .end local v29    # "layerType":Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    .local v12, "cl":Ljava/lang/String;
    .local v13, "layerName":Ljava/lang/String;
    .local v14, "inFrame":F
    .local v28, "layerId":J
    .local v30, "refId":Ljava/lang/String;
    .local v31, "parentId":J
    .local v33, "solidWidth":I
    .local v34, "solidHeight":I
    .local v35, "solidColor":I
    .local v36, "transform":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .local v37, "timeStretch":F
    .local v38, "startFrame":F
    .local v39, "preCompWidth":I
    .local v40, "preCompHeight":I
    .local v41, "timeRemapping":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .local v42, "hidden":Z
    .local v43, "layerType":Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    .local v44, "matteType":Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    .local v45, "text":Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;
    .local v46, "textProperties":Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    .local v47, "blurEffect":Lcom/airbnb/lottie/model/content/BlurEffect;
    .local v48, "dropShadowEffect":Lcom/airbnb/lottie/parser/DropShadowEffect;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 108
    sget-object v3, Lcom/airbnb/lottie/parser/LayerParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 257
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v42

    .line 258
    goto :goto_0

    .line 254
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v12

    .line 255
    goto :goto_0

    .line 251
    :pswitch_2
    const/4 v3, 0x0

    invoke-static {v0, v15, v3}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v41

    .line 252
    goto :goto_0

    .line 248
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v3, v3

    .line 249
    .end local v17    # "outFrame":F
    .local v3, "outFrame":F
    nop

    .line 107
    move/from16 v17, v3

    goto :goto_0

    .line 245
    .end local v3    # "outFrame":F
    .restart local v17    # "outFrame":F
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v14, v3

    .line 246
    goto :goto_0

    .line 242
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 243
    .end local v40    # "preCompHeight":I
    .local v3, "preCompHeight":I
    nop

    .line 107
    move/from16 v40, v3

    goto :goto_0

    .line 239
    .end local v3    # "preCompHeight":I
    .restart local v40    # "preCompHeight":I
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 240
    .end local v39    # "preCompWidth":I
    .local v3, "preCompWidth":I
    nop

    .line 107
    move/from16 v39, v3

    goto :goto_0

    .line 236
    .end local v3    # "preCompWidth":I
    .restart local v39    # "preCompWidth":I
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v3, v3

    .line 237
    .end local v38    # "startFrame":F
    .local v3, "startFrame":F
    nop

    .line 107
    move/from16 v38, v3

    goto :goto_0

    .line 233
    .end local v3    # "startFrame":F
    .restart local v38    # "startFrame":F
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v3, v3

    .line 234
    .end local v37    # "timeStretch":F
    .local v3, "timeStretch":F
    nop

    .line 107
    move/from16 v37, v3

    goto :goto_0

    .line 201
    .end local v3    # "timeStretch":F
    .restart local v37    # "timeStretch":F
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 202
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v3, "effectNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 205
    :cond_0
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 206
    sget-object v4, Lcom/airbnb/lottie/parser/LayerParser;->EFFECTS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_2

    .line 216
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, "effectName":Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    goto :goto_2

    .line 208
    .end local v4    # "effectName":Ljava/lang/String;
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v4

    .line 209
    .local v4, "type":I
    const/16 v5, 0x1d

    if-ne v4, v5, :cond_1

    .line 210
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/BlurEffectParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/BlurEffect;

    move-result-object v47

    goto :goto_2

    .line 211
    :cond_1
    const/16 v5, 0x19

    if-ne v4, v5, :cond_0

    .line 212
    new-instance v5, Lcom/airbnb/lottie/parser/DropShadowEffectParser;

    invoke-direct {v5}, Lcom/airbnb/lottie/parser/DropShadowEffectParser;-><init>()V

    invoke-virtual {v5, v0, v15}, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/parser/DropShadowEffect;

    move-result-object v48

    goto :goto_2

    .line 225
    .end local v4    # "type":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    goto :goto_1

    .line 227
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 228
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 231
    goto/16 :goto_0

    .line 177
    .end local v3    # "effectNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 178
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 179
    sget-object v3, Lcom/airbnb/lottie/parser/LayerParser;->TEXT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v3

    packed-switch v3, :pswitch_data_2

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_3

    .line 184
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 186
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    move-result-object v3

    .line 188
    .end local v46    # "textProperties":Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    .local v3, "textProperties":Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    move-object/from16 v46, v3

    .end local v3    # "textProperties":Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    .restart local v46    # "textProperties":Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    :cond_4
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_4

    .line 191
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 192
    goto :goto_3

    .line 181
    :pswitch_e
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseDocumentData(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-result-object v45

    .line 182
    goto :goto_3

    .line 198
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 199
    goto/16 :goto_0

    .line 167
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 168
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 169
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/ContentModelParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    move-result-object v3

    .line 170
    .local v3, "shape":Lcom/airbnb/lottie/model/content/ContentModel;
    if-eqz v3, :cond_7

    .line 171
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    .end local v3    # "shape":Lcom/airbnb/lottie/model/content/ContentModel;
    :cond_7
    goto :goto_5

    .line 174
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 175
    goto/16 :goto_0

    .line 159
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 160
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 161
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/MaskParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Mask;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 163
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v15, v3}, Lcom/airbnb/lottie/LottieComposition;->incrementMatteOrMaskCount(I)V

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 165
    goto/16 :goto_0

    .line 142
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v3

    .line 143
    .local v3, "matteTypeIndex":I
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v4

    array-length v4, v4

    if-lt v3, v4, :cond_a

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported matte type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 145
    goto/16 :goto_0

    .line 147
    :cond_a
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v4

    aget-object v4, v4, v3

    .line 148
    .end local v44    # "matteType":Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    .local v4, "matteType":Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    sget-object v5, Lcom/airbnb/lottie/parser/LayerParser$1;->$SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType:[I

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_3

    goto :goto_7

    .line 153
    :pswitch_12
    const-string v5, "Unsupported matte type: Luma Inverted"

    invoke-virtual {v15, v5}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto :goto_7

    .line 150
    :pswitch_13
    const-string v5, "Unsupported matte type: Luma"

    invoke-virtual {v15, v5}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 151
    nop

    .line 156
    :goto_7
    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Lcom/airbnb/lottie/LottieComposition;->incrementMatteOrMaskCount(I)V

    .line 157
    nop

    .line 107
    move-object/from16 v44, v4

    goto/16 :goto_0

    .line 139
    .end local v3    # "matteTypeIndex":I
    .end local v4    # "matteType":Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    .restart local v44    # "matteType":Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    :pswitch_14
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v36

    .line 140
    goto/16 :goto_0

    .line 136
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    .line 137
    goto/16 :goto_0

    .line 133
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 134
    .end local v34    # "solidHeight":I
    .local v3, "solidHeight":I
    nop

    .line 107
    move/from16 v34, v3

    goto/16 :goto_0

    .line 130
    .end local v3    # "solidHeight":I
    .restart local v34    # "solidHeight":I
    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 131
    .end local v33    # "solidWidth":I
    .local v3, "solidWidth":I
    nop

    .line 107
    move/from16 v33, v3

    goto/16 :goto_0

    .line 127
    .end local v3    # "solidWidth":I
    .restart local v33    # "solidWidth":I
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v3

    int-to-long v3, v3

    .line 128
    .end local v31    # "parentId":J
    .local v3, "parentId":J
    nop

    .line 107
    move-wide/from16 v31, v3

    goto/16 :goto_0

    .line 119
    .end local v3    # "parentId":J
    .restart local v31    # "parentId":J
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v3

    .line 120
    .local v3, "layerTypeInt":I
    sget-object v4, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->UNKNOWN:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->ordinal()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 121
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->values()[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v4

    aget-object v43, v4, v3

    goto/16 :goto_0

    .line 123
    :cond_b
    sget-object v43, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->UNKNOWN:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 125
    goto/16 :goto_0

    .line 116
    .end local v3    # "layerTypeInt":I
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v30

    .line 117
    goto/16 :goto_0

    .line 113
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v3

    int-to-long v3, v3

    .line 114
    .end local v28    # "layerId":J
    .local v3, "layerId":J
    nop

    .line 107
    move-wide/from16 v28, v3

    goto/16 :goto_0

    .line 110
    .end local v3    # "layerId":J
    .restart local v28    # "layerId":J
    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v13

    .line 111
    goto/16 :goto_0

    .line 264
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 266
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v3

    .line 268
    .local v11, "inOutKeyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;>;"
    const/4 v8, 0x0

    cmpl-float v3, v14, v8

    if-lez v3, :cond_d

    .line 269
    new-instance v9, Lcom/airbnb/lottie/value/Keyframe;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object/from16 v49, v1

    move-object v1, v9

    .end local v1    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .local v49, "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    move-object/from16 v50, v2

    move-object v2, v15

    .end local v2    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .local v50, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 270
    .local v1, "preKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;"
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v1    # "preKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;"
    goto :goto_8

    .line 274
    .end local v49    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v50    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .local v1, "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v2    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    :cond_d
    move-object/from16 v49, v1

    move-object/from16 v50, v2

    .end local v1    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v2    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v49    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v50    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    :goto_8
    cmpl-float v1, v17, v8

    if-lez v1, :cond_e

    move/from16 v1, v17

    goto :goto_9

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v1

    :goto_9
    move v10, v1

    .line 275
    .end local v17    # "outFrame":F
    .local v10, "outFrame":F
    new-instance v9, Lcom/airbnb/lottie/value/Keyframe;

    .line 276
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v1, v9

    move-object v2, v15

    move v6, v14

    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 277
    .local v9, "visibleKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;"
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v16, Lcom/airbnb/lottie/value/Keyframe;

    .line 280
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object/from16 v1, v16

    move v6, v10

    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    move-object/from16 v8, v16

    .line 281
    .local v8, "outKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;"
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    const-string v1, ".ai"

    invoke-virtual {v13, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "ai"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 284
    :cond_f
    const-string v1, "Convert your Illustrator layers to shape layers."

    invoke-virtual {v15, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 287
    :cond_10
    new-instance v51, Lcom/airbnb/lottie/model/layer/Layer;

    move-object/from16 v1, v51

    move-object/from16 v2, v50

    move-object v3, v15

    move-object v4, v13

    move-wide/from16 v5, v28

    move-object/from16 v7, v43

    move-object/from16 v53, v8

    move-object/from16 v52, v9

    move-wide/from16 v8, v31

    .end local v8    # "outKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;"
    .end local v9    # "visibleKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;"
    .local v52, "visibleKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;"
    .local v53, "outKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;"
    move/from16 v54, v10

    move-object/from16 v10, v30

    .end local v10    # "outFrame":F
    .local v54, "outFrame":F
    move-object/from16 v55, v11

    move-object/from16 v11, v49

    .end local v11    # "inOutKeyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;>;"
    .local v55, "inOutKeyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;>;"
    move-object/from16 v56, v12

    move-object/from16 v12, v36

    .end local v12    # "cl":Ljava/lang/String;
    .local v56, "cl":Ljava/lang/String;
    move-object/from16 v57, v13

    move/from16 v13, v33

    .end local v13    # "layerName":Ljava/lang/String;
    .local v57, "layerName":Ljava/lang/String;
    move/from16 v58, v14

    move/from16 v14, v34

    .end local v14    # "inFrame":F
    .local v58, "inFrame":F
    move/from16 v15, v35

    move/from16 v16, v37

    move/from16 v17, v38

    move/from16 v18, v39

    move/from16 v19, v40

    move-object/from16 v20, v45

    move-object/from16 v21, v46

    move-object/from16 v22, v55

    move-object/from16 v23, v44

    move-object/from16 v24, v41

    move/from16 v25, v42

    move-object/from16 v26, v47

    move-object/from16 v27, v48

    invoke-direct/range {v1 .. v27}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFIILcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;ZLcom/airbnb/lottie/model/content/BlurEffect;Lcom/airbnb/lottie/parser/DropShadowEffect;)V

    return-object v51

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method
