.class public Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;
.super Ljava/lang/Object;
.source "LottieCompositionMoshiParser.java"


# static fields
.field static ASSETS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final FONT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final MARKER_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 26
    const-string/jumbo v0, "w"

    const-string v1, "h"

    const-string v2, "ip"

    const-string v3, "op"

    const-string v4, "fr"

    const-string/jumbo v5, "v"

    const-string v6, "layers"

    const-string v7, "assets"

    const-string v8, "fonts"

    const-string v9, "chars"

    const-string v10, "markers"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 137
    const-string v1, "id"

    const-string v2, "layers"

    const-string/jumbo v3, "w"

    const-string v4, "h"

    const-string v5, "p"

    const-string/jumbo v6, "u"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->ASSETS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 203
    const-string v0, "list"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->FONT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 236
    const-string v0, "cm"

    const-string/jumbo v1, "tm"

    const-string v2, "dr"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->MARKER_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/LottieComposition;
    .locals 29
    .param p0, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    move-object/from16 v0, p0

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v1

    .line 42
    .local v1, "scale":F
    const/4 v2, 0x0

    .line 43
    .local v2, "startFrame":F
    const/4 v3, 0x0

    .line 44
    .local v3, "endFrame":F
    const/4 v4, 0x0

    .line 45
    .local v4, "frameRate":F
    new-instance v5, Landroidx/collection/LongSparseArray;

    invoke-direct {v5}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 46
    .local v5, "layerMap":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v6

    .line 47
    .local v15, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    const/4 v6, 0x0

    .line 48
    .local v6, "width":I
    const/4 v7, 0x0

    .line 49
    .local v7, "height":I
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v14, v8

    .line 50
    .local v14, "precomps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v13, v8

    .line 51
    .local v13, "images":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/LottieImageAsset;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v12, v8

    .line 52
    .local v12, "fonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/model/Font;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v8

    .line 53
    .local v11, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    new-instance v8, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v8}, Landroidx/collection/SparseArrayCompat;-><init>()V

    move-object v10, v8

    .line 55
    .local v10, "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    new-instance v8, Lcom/airbnb/lottie/LottieComposition;

    invoke-direct {v8}, Lcom/airbnb/lottie/LottieComposition;-><init>()V

    move-object v9, v8

    .line 56
    .local v9, "composition":Lcom/airbnb/lottie/LottieComposition;
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 57
    move/from16 v18, v3

    move/from16 v19, v4

    move v3, v7

    move v4, v2

    move v2, v6

    .end local v6    # "width":I
    .end local v7    # "height":I
    .local v2, "width":I
    .local v3, "height":I
    .local v4, "startFrame":F
    .local v18, "endFrame":F
    .local v19, "frameRate":F
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 58
    sget-object v6, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 101
    move-object/from16 v27, v10

    .end local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .local v27, "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto/16 :goto_2

    .line 98
    .end local v27    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    :pswitch_0
    invoke-static {v0, v11}, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->parseMarkers(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/util/List;)V

    .line 99
    goto :goto_1

    .line 95
    :pswitch_1
    invoke-static {v0, v9, v10}, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->parseChars(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Landroidx/collection/SparseArrayCompat;)V

    .line 96
    goto :goto_1

    .line 92
    :pswitch_2
    invoke-static {v0, v12}, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->parseFonts(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/util/Map;)V

    .line 93
    goto :goto_1

    .line 89
    :pswitch_3
    invoke-static {v0, v9, v14, v13}, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->parseAssets(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/Map;Ljava/util/Map;)V

    .line 90
    goto :goto_1

    .line 86
    :pswitch_4
    invoke-static {v0, v9, v15, v5}, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->parseLayers(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/List;Landroidx/collection/LongSparseArray;)V

    .line 87
    nop

    .line 57
    .end local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v27    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    :goto_1
    move-object/from16 v27, v10

    goto/16 :goto_2

    .line 75
    .end local v27    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    .line 76
    .local v6, "version":Ljava/lang/String;
    const-string v8, "\\."

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 77
    .local v8, "versions":[Ljava/lang/String;
    aget-object v7, v8, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 78
    .local v7, "majorVersion":I
    const/16 v16, 0x1

    move-object/from16 v26, v6

    aget-object v6, v8, v16

    .end local v6    # "version":Ljava/lang/String;
    .local v26, "version":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 79
    .local v6, "minorVersion":I
    const/16 v16, 0x2

    move-object/from16 v27, v10

    aget-object v10, v8, v16

    .end local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v27    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 80
    .local v10, "patchVersion":I
    const/16 v23, 0x4

    const/16 v24, 0x4

    const/16 v25, 0x0

    move/from16 v20, v7

    move/from16 v21, v6

    move/from16 v22, v10

    invoke-static/range {v20 .. v25}, Lcom/airbnb/lottie/utils/Utils;->isAtLeastVersion(IIIIII)Z

    move-result v16

    if-nez v16, :cond_0

    .line 82
    move/from16 v28, v6

    const-string v6, "Lottie only supports bodymovin >= 4.4.0"

    .end local v6    # "minorVersion":I
    .local v28, "minorVersion":I
    invoke-virtual {v9, v6}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto :goto_2

    .line 72
    .end local v7    # "majorVersion":I
    .end local v8    # "versions":[Ljava/lang/String;
    .end local v26    # "version":Ljava/lang/String;
    .end local v27    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .end local v28    # "minorVersion":I
    .local v10, "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    :pswitch_6
    move-object/from16 v27, v10

    .end local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v27    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v6, v6

    .line 73
    .end local v19    # "frameRate":F
    .local v6, "frameRate":F
    nop

    .line 57
    move/from16 v19, v6

    goto :goto_0

    .line 69
    .end local v6    # "frameRate":F
    .end local v27    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v19    # "frameRate":F
    :pswitch_7
    move-object/from16 v27, v10

    .end local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v27    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v6, v6

    const v7, 0x3c23d70a    # 0.01f

    sub-float v18, v6, v7

    .line 70
    goto/16 :goto_0

    .line 66
    .end local v27    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    :pswitch_8
    move-object/from16 v27, v10

    .end local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v27    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v4, v6

    .line 67
    goto/16 :goto_0

    .line 63
    .end local v27    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    :pswitch_9
    move-object/from16 v27, v10

    .end local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v27    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v3

    .line 64
    goto/16 :goto_0

    .line 60
    .end local v27    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    :pswitch_a
    move-object/from16 v27, v10

    .end local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v27    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v2

    .line 61
    goto/16 :goto_0

    .line 57
    :cond_0
    :goto_2
    move-object/from16 v10, v27

    goto/16 :goto_0

    .line 105
    .end local v27    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    :cond_1
    move-object/from16 v27, v10

    .end local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v27    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    int-to-float v6, v2

    mul-float/2addr v6, v1

    float-to-int v10, v6

    .line 106
    .local v10, "scaledWidth":I
    int-to-float v6, v3

    mul-float/2addr v6, v1

    float-to-int v8, v6

    .line 107
    .local v8, "scaledHeight":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v7, v7, v10, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v6

    .line 109
    .local v7, "bounds":Landroid/graphics/Rect;
    move-object v6, v9

    move/from16 v20, v8

    move v8, v4

    .end local v8    # "scaledHeight":I
    .local v20, "scaledHeight":I
    move-object/from16 v21, v9

    move/from16 v9, v18

    .end local v9    # "composition":Lcom/airbnb/lottie/LottieComposition;
    .local v21, "composition":Lcom/airbnb/lottie/LottieComposition;
    move/from16 v23, v10

    move-object/from16 v22, v27

    move/from16 v10, v19

    .end local v10    # "scaledWidth":I
    .end local v27    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .local v22, "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .local v23, "scaledWidth":I
    move-object/from16 v24, v11

    move-object v11, v15

    .end local v11    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    .local v24, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    move-object/from16 v25, v12

    move-object v12, v5

    .end local v12    # "fonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/model/Font;>;"
    .local v25, "fonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/model/Font;>;"
    move-object/from16 v26, v13

    move-object v13, v14

    .end local v13    # "images":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/LottieImageAsset;>;"
    .local v26, "images":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/LottieImageAsset;>;"
    move-object/from16 v27, v14

    move-object/from16 v14, v26

    .end local v14    # "precomps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;>;"
    .local v27, "precomps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;>;"
    move-object/from16 v28, v15

    move-object/from16 v15, v22

    .end local v15    # "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    .local v28, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    move-object/from16 v16, v25

    move-object/from16 v17, v24

    invoke-virtual/range {v6 .. v17}, Lcom/airbnb/lottie/LottieComposition;->init(Landroid/graphics/Rect;FFFLjava/util/List;Landroidx/collection/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroidx/collection/SparseArrayCompat;Ljava/util/Map;Ljava/util/List;)V

    .line 112
    return-object v21

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
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
.end method

.method private static parseAssets(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/Map;Ljava/util/Map;)V
    .locals 15
    .param p0, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    .local p2, "precomps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;>;"
    .local p3, "images":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/LottieImageAsset;>;"
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 149
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, "id":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v1, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 155
    .local v2, "layerMap":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    const/4 v3, 0x0

    .line 156
    .local v3, "width":I
    const/4 v4, 0x0

    .line 157
    .local v4, "height":I
    const/4 v5, 0x0

    .line 158
    .local v5, "imageFileName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 159
    .local v6, "relativeFolder":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 160
    :goto_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 161
    sget-object v7, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->ASSETS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-object v13, p0

    invoke-virtual {v13, v7}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 187
    invoke-virtual {v13}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 188
    invoke-virtual {v13}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_1

    .line 184
    :pswitch_0
    invoke-virtual {v13}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    .line 185
    goto :goto_1

    .line 181
    :pswitch_1
    invoke-virtual {v13}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    .line 182
    goto :goto_1

    .line 178
    :pswitch_2
    invoke-virtual {v13}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v4

    .line 179
    goto :goto_1

    .line 175
    :pswitch_3
    invoke-virtual {v13}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v3

    .line 176
    goto :goto_1

    .line 166
    :pswitch_4
    invoke-virtual {v13}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 167
    :goto_2
    invoke-virtual {v13}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 168
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v7

    .line 169
    .local v7, "layer":Lcom/airbnb/lottie/model/layer/Layer;
    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/Layer;->getId()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9, v7}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 170
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v7    # "layer":Lcom/airbnb/lottie/model/layer/Layer;
    goto :goto_2

    .line 172
    :cond_0
    invoke-virtual {v13}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 173
    goto :goto_1

    .line 163
    :pswitch_5
    invoke-virtual {v13}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 164
    goto :goto_1

    .line 191
    :cond_1
    move-object v13, p0

    invoke-virtual {v13}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 192
    if-eqz v5, :cond_2

    .line 193
    new-instance v14, Lcom/airbnb/lottie/LottieImageAsset;

    move-object v7, v14

    move v8, v3

    move v9, v4

    move-object v10, v0

    move-object v11, v5

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/airbnb/lottie/LottieImageAsset;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .local v7, "image":Lcom/airbnb/lottie/LottieImageAsset;
    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieImageAsset;->getId()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, p3

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .end local v7    # "image":Lcom/airbnb/lottie/LottieImageAsset;
    nop

    .line 199
    move-object/from16 v7, p2

    goto :goto_3

    .line 197
    :cond_2
    move-object/from16 v9, p3

    move-object/from16 v7, p2

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    .end local v2    # "layerMap":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "imageFileName":Ljava/lang/String;
    .end local v6    # "relativeFolder":Ljava/lang/String;
    :goto_3
    goto/16 :goto_0

    .line 200
    :cond_3
    move-object v13, p0

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    invoke-virtual {v13}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 201
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseChars(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Landroidx/collection/SparseArrayCompat;)V
    .locals 2
    .param p0, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    .local p2, "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 229
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/FontCharacterParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/FontCharacter;

    move-result-object v0

    .line 231
    .local v0, "character":Lcom/airbnb/lottie/model/FontCharacter;
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/FontCharacter;->hashCode()I

    move-result v1

    invoke-virtual {p2, v1, v0}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 232
    .end local v0    # "character":Lcom/airbnb/lottie/model/FontCharacter;
    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 234
    return-void
.end method

.method private static parseFonts(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/util/Map;)V
    .locals 2
    .param p0, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/Font;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    .local p1, "fonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/model/Font;>;"
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 207
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    sget-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->FONT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 219
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 211
    :goto_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    invoke-static {p0}, Lcom/airbnb/lottie/parser/FontParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/model/Font;

    move-result-object v0

    .line 213
    .local v0, "font":Lcom/airbnb/lottie/model/Font;
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/Font;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .end local v0    # "font":Lcom/airbnb/lottie/model/Font;
    goto :goto_1

    .line 215
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 216
    goto :goto_0

    .line 222
    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 223
    return-void
.end method

.method private static parseLayers(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/List;Landroidx/collection/LongSparseArray;)V
    .locals 4
    .param p0, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;",
            "Landroidx/collection/LongSparseArray<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    .local p2, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    .local p3, "layerMap":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    const/4 v0, 0x0

    .line 118
    .local v0, "imageCount":I
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 119
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v1

    .line 121
    .local v1, "layer":Lcom/airbnb/lottie/model/layer/Layer;
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/Layer;->getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v2

    sget-object v3, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->IMAGE:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    if-ne v2, v3, :cond_0

    .line 122
    add-int/lit8 v0, v0, 0x1

    .line 124
    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/Layer;->getId()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 127
    const/4 v2, 0x4

    if-le v0, v2, :cond_1

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 132
    .end local v1    # "layer":Lcom/airbnb/lottie/model/layer/Layer;
    :cond_1
    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 134
    return-void
.end method

.method private static parseMarkers(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/util/List;)V
    .locals 5
    .param p0, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/Marker;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    .local p1, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 244
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "comment":Ljava/lang/String;
    const/4 v1, 0x0

    .line 247
    .local v1, "frame":F
    const/4 v2, 0x0

    .line 248
    .local v2, "durationFrames":F
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 249
    :goto_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    sget-object v3, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->MARKER_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 261
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 262
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_1

    .line 258
    :pswitch_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v2, v3

    .line 259
    goto :goto_1

    .line 255
    :pswitch_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v1, v3

    .line 256
    goto :goto_1

    .line 252
    :pswitch_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 253
    goto :goto_1

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 266
    new-instance v3, Lcom/airbnb/lottie/model/Marker;

    invoke-direct {v3, v0, v1, v2}, Lcom/airbnb/lottie/model/Marker;-><init>(Ljava/lang/String;FF)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    .end local v0    # "comment":Ljava/lang/String;
    .end local v1    # "frame":F
    .end local v2    # "durationFrames":F
    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 269
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
