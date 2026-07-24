.class public Lcom/android/systemui/statusbar/pma/UtilForPMA;
.super Ljava/lang/Object;
.source "UtilForPMA.java"


# static fields
.field private static final GSONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEX_DIGITS:[C

.field private static isNetConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/UtilForPMA;->isNetConnected:Z

    .line 327
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/pma/UtilForPMA;->HEX_DIGITS:[C

    .line 376
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/pma/UtilForPMA;->GSONS:Ljava/util/Map;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static byteToBitmap([B)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bytes"    # [B

    .line 161
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0xd0

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 162
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    return-object v0
.end method

.method private static convertToHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "b"    # [B

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 369
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 370
    .local v3, "a":B
    sget-object v4, Lcom/android/systemui/statusbar/pma/UtilForPMA;->HEX_DIGITS:[C

    and-int/lit16 v5, v3, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    sget-object v4, Lcom/android/systemui/statusbar/pma/UtilForPMA;->HEX_DIGITS:[C

    and-int/lit8 v5, v3, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    .end local v3    # "a":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static createGson()Lcom/google/gson/Gson;
    .locals 1

    .line 406
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 140
    if-nez p0, :cond_0

    .line 141
    const/4 v0, 0x0

    return-object v0

    .line 143
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 144
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 145
    .local v1, "width":I
    const/16 v2, 0xd0

    if-le v0, v2, :cond_1

    .line 146
    const/16 v0, 0xd0

    .line 148
    :cond_1
    if-le v1, v2, :cond_2

    .line 149
    const/16 v1, 0xd0

    .line 151
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_3
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 152
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    const-string v3, "UtilForPMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawableToBitmap: config"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 154
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 155
    .local v4, "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v5, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 156
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 157
    invoke-static {v3, v0, v1}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5
.end method

.method public static getColorFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 22
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "precent"    # F

    move-object/from16 v0, p0

    .line 91
    if-nez v0, :cond_0

    .line 92
    const/4 v1, 0x0

    return-object v1

    .line 93
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    .line 94
    return-object v0

    .line 96
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 97
    .local v1, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 98
    .local v2, "height":I
    mul-int v3, v1, v1

    div-int/lit8 v3, v3, 0x8

    mul-int v4, v2, v2

    div-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    .line 99
    .local v3, "r":I
    div-int/lit8 v4, v1, 0x2

    .line 100
    .local v4, "widthHalf":I
    div-int/lit8 v5, v2, 0x2

    .line 101
    .local v5, "heightHalf":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 102
    .local v6, "f":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_0
    if-ge v8, v1, :cond_7

    .line 103
    const/4 v9, 0x0

    .local v9, "y":I
    :goto_1
    if-ge v9, v2, :cond_6

    .line 104
    invoke-virtual {v0, v8, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    .line 105
    .local v10, "color":I
    shr-int/lit8 v11, v10, 0x18

    and-int/lit16 v11, v11, 0xff

    .line 106
    .local v11, "alpha":I
    shr-int/lit8 v12, v10, 0x10

    and-int/lit16 v12, v12, 0xff

    .line 107
    .local v12, "red":I
    shr-int/lit8 v13, v10, 0x8

    and-int/lit16 v13, v13, 0xff

    .line 108
    .local v13, "green":I
    and-int/lit16 v14, v10, 0xff

    .line 110
    .local v14, "blue":I
    const/4 v15, 0x0

    cmpg-float v15, p1, v15

    const-wide v16, 0x3fe3333333333333L    # 0.6

    if-gtz v15, :cond_2

    .line 111
    move/from16 v18, v8

    int-to-double v7, v12

    .end local v8    # "x":I
    .local v18, "x":I
    mul-double v7, v7, v16

    double-to-int v12, v7

    .line 112
    int-to-double v7, v13

    mul-double v7, v7, v16

    double-to-int v13, v7

    .line 113
    int-to-double v7, v14

    mul-double v7, v7, v16

    double-to-int v14, v7

    .line 132
    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v19, v4

    move/from16 v7, v18

    goto :goto_2

    .line 115
    .end local v18    # "x":I
    .restart local v8    # "x":I
    :cond_2
    move/from16 v18, v8

    .end local v8    # "x":I
    .restart local v18    # "x":I
    move/from16 v7, v18

    int-to-float v8, v7

    .end local v18    # "x":I
    .local v7, "x":I
    int-to-float v0, v1

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v0, v15

    sub-float/2addr v8, v0

    int-to-float v0, v7

    move/from16 v19, v4

    int-to-float v4, v1

    .end local v4    # "widthHalf":I
    .local v19, "widthHalf":I
    mul-float/2addr v4, v15

    sub-float/2addr v0, v4

    mul-float/2addr v8, v0

    int-to-float v0, v9

    int-to-float v4, v2

    mul-float/2addr v4, v15

    sub-float/2addr v0, v4

    int-to-float v4, v9

    move/from16 v20, v1

    int-to-float v1, v2

    .end local v1    # "width":I
    .local v20, "width":I
    mul-float/2addr v1, v15

    sub-float/2addr v4, v1

    mul-float/2addr v0, v4

    add-float/2addr v8, v0

    int-to-float v0, v3

    div-float/2addr v8, v0

    .line 116
    .local v8, "p":F
    div-float v0, v8, p1

    const v1, 0x3f828f5c    # 1.02f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 117
    move/from16 v21, v2

    int-to-double v1, v12

    .end local v2    # "height":I
    .local v21, "height":I
    mul-double v1, v1, v16

    double-to-int v12, v1

    .line 118
    int-to-double v1, v13

    mul-double v1, v1, v16

    double-to-int v13, v1

    .line 119
    int-to-double v1, v14

    mul-double v1, v1, v16

    double-to-int v14, v1

    goto :goto_2

    .line 120
    .end local v21    # "height":I
    .restart local v2    # "height":I
    :cond_3
    move/from16 v21, v2

    .end local v2    # "height":I
    .restart local v21    # "height":I
    div-float v0, v8, p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    .line 121
    int-to-double v1, v12

    const-wide v15, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v1, v15

    double-to-int v12, v1

    .line 122
    int-to-double v1, v13

    mul-double/2addr v1, v15

    double-to-int v13, v1

    .line 123
    int-to-double v1, v14

    mul-double/2addr v1, v15

    double-to-int v14, v1

    goto :goto_2

    .line 124
    :cond_4
    div-float v0, v8, p1

    const v1, 0x3f7ae148    # 0.98f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    .line 125
    int-to-double v1, v12

    const-wide v15, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v1, v15

    double-to-int v12, v1

    .line 126
    int-to-double v1, v13

    mul-double/2addr v1, v15

    double-to-int v13, v1

    .line 127
    int-to-double v1, v14

    mul-double/2addr v1, v15

    double-to-int v14, v1

    .line 132
    .end local v8    # "p":F
    :cond_5
    :goto_2
    shl-int/lit8 v0, v11, 0x18

    shl-int/lit8 v1, v12, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v13, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v14

    .line 133
    .local v0, "newColor":I
    invoke-virtual {v6, v7, v9, v0}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 103
    .end local v0    # "newColor":I
    .end local v10    # "color":I
    .end local v11    # "alpha":I
    .end local v12    # "red":I
    .end local v13    # "green":I
    .end local v14    # "blue":I
    add-int/lit8 v9, v9, 0x1

    move v8, v7

    move/from16 v4, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v0, p0

    goto/16 :goto_1

    .line 102
    .end local v7    # "x":I
    .end local v9    # "y":I
    .end local v19    # "widthHalf":I
    .end local v20    # "width":I
    .end local v21    # "height":I
    .restart local v1    # "width":I
    .restart local v2    # "height":I
    .restart local v4    # "widthHalf":I
    .local v8, "x":I
    :cond_6
    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v19, v4

    move v7, v8

    .end local v1    # "width":I
    .end local v2    # "height":I
    .end local v4    # "widthHalf":I
    .end local v8    # "x":I
    .restart local v7    # "x":I
    .restart local v19    # "widthHalf":I
    .restart local v20    # "width":I
    .restart local v21    # "height":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "x":I
    .restart local v8    # "x":I
    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 136
    .end local v8    # "x":I
    .end local v19    # "widthHalf":I
    .end local v20    # "width":I
    .end local v21    # "height":I
    .restart local v1    # "width":I
    .restart local v2    # "height":I
    .restart local v4    # "widthHalf":I
    :cond_7
    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v19, v4

    .end local v1    # "width":I
    .end local v2    # "height":I
    .end local v4    # "widthHalf":I
    .restart local v19    # "widthHalf":I
    .restart local v20    # "width":I
    .restart local v21    # "height":I
    return-object v6
.end method

.method public static getFileNameNoEx(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .line 358
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 359
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 360
    .local v0, "dot":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 361
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 364
    .end local v0    # "dot":I
    :cond_0
    return-object p0
.end method

.method public static getFileToBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .line 330
    const-string v0, "UtilForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFileToBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "fileName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 335
    return-object v0

    .line 337
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/userPhoto/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 338
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    move-object v0, v3

    .line 342
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    nop

    .line 341
    nop

    .line 343
    return-object v0

    .line 339
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 340
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "UtilForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFileToBitmap: error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-object v0
.end method

.method public static getGson()Lcom/google/gson/Gson;
    .locals 4

    .line 391
    sget-object v0, Lcom/android/systemui/statusbar/pma/UtilForPMA;->GSONS:Ljava/util/Map;

    const-string v1, "delegateGson"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    .line 392
    .local v0, "gsonDelegate":Lcom/google/gson/Gson;
    if-eqz v0, :cond_0

    .line 393
    return-object v0

    .line 395
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/pma/UtilForPMA;->GSONS:Ljava/util/Map;

    const-string v2, "defaultGson"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/Gson;

    .line 396
    .local v1, "gsonDefault":Lcom/google/gson/Gson;
    if-nez v1, :cond_1

    .line 397
    invoke-static {}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->createGson()Lcom/google/gson/Gson;

    move-result-object v1

    .line 398
    sget-object v2, Lcom/android/systemui/statusbar/pma/UtilForPMA;->GSONS:Ljava/util/Map;

    const-string v3, "defaultGson"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    :cond_1
    return-object v1
.end method

.method public static getMD5String(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 349
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    .local v0, "md5":Ljava/security/MessageDigest;
    nop

    .line 351
    nop

    .line 353
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 354
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->convertToHexString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 350
    .end local v0    # "md5":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getNetConnected()Z
    .locals 1

    .line 220
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/UtilForPMA;->isNetConnected:Z

    return v0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "height"    # I
    .param p2, "width"    # I

    .line 167
    if-nez p0, :cond_0

    .line 168
    const/4 v0, 0x0

    return-object v0

    .line 170
    :cond_0
    if-nez p1, :cond_1

    .line 171
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    .line 173
    :cond_1
    if-nez p2, :cond_2

    .line 174
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 176
    :cond_2
    const/16 v0, 0xd0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x68

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 177
    .local v1, "dstWidth":I
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 178
    .local v0, "dstHeight":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 179
    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 181
    .local v3, "canvas":Landroid/graphics/Canvas;
    const v4, -0xbdbdbe

    .line 182
    .local v4, "color":I
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 183
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 184
    .local v6, "rect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v7, v7, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 185
    .local v8, "dstRect":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 187
    .local v9, "rectF":Landroid/graphics/RectF;
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 188
    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 189
    const v7, -0xbdbdbe

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    int-to-float v7, v1

    const v10, 0x3e19999a    # 0.15f

    mul-float/2addr v7, v10

    int-to-float v11, v0

    mul-float/2addr v11, v10

    invoke-virtual {v3, v9, v7, v11, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 192
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 193
    invoke-virtual {v3, p0, v6, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 195
    return-object v2
.end method

.method public static getUrlFileSuffixType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "urlFilePath"    # Ljava/lang/String;

    .line 262
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUrlToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, "imgBitmap":Landroid/graphics/Bitmap;
    const-string v1, "UtilForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUrlToBitmap url"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 249
    return-object v1

    .line 252
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 253
    .local v2, "input":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 257
    .end local v2    # "input":Ljava/io/InputStream;
    nop

    .line 258
    return-object v0

    .line 254
    :catch_0
    move-exception v2

    .line 255
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "UtilForPMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUrlToBitmap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-object v1
.end method

.method public static getUrlToDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .line 224
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/UtilForPMA;->isNetConnected:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 225
    const-string v0, "UtilForPMA"

    const-string v2, "getUrlToDrawable: no net"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-object v1

    .line 228
    :cond_0
    const/4 v0, 0x0

    .line 229
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const-string v2, "UtilForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUrlToDrawable url"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v2, 0x0

    .line 232
    .local v2, "urlCon":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 233
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    move-object v2, v4

    .line 234
    const/16 v4, 0x3e8

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 235
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 236
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 237
    .local v4, "input":Ljava/io/InputStream;
    const-string v5, "image.jpg"

    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 241
    .end local v2    # "urlCon":Ljava/net/HttpURLConnection;
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "input":Ljava/io/InputStream;
    nop

    .line 242
    return-object v0

    .line 238
    :catch_0
    move-exception v2

    .line 239
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "UtilForPMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUrlToDrawable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-object v1
.end method

.method public static setNetConnected(Z)V
    .locals 0
    .param p0, "is"    # Z

    .line 216
    sput-boolean p0, Lcom/android/systemui/statusbar/pma/UtilForPMA;->isNetConnected:Z

    .line 217
    return-void
.end method

.method public static toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "gson"    # Lcom/google/gson/Gson;
    .param p1, "object"    # Ljava/lang/Object;

    .line 383
    if-eqz p0, :cond_0

    .line 386
    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 384
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'gson\' of type Gson (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 379
    invoke-static {}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static writePhotoForUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .line 267
    :try_start_0
    const-string v0, "UtilForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writePhotoForUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/userPhoto"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "CacheDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/userPhoto/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    .local v1, "userFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    const-string v2, "UtilForPMA"

    const-string/jumbo v3, "writePhotoForUser: not exists"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 274
    :cond_0
    invoke-static {p2}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getUrlToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 275
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_5

    .line 280
    :cond_1
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 281
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    invoke-static {p2}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getUrlFileSuffixType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x0

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v6, "jpeg"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x2

    goto :goto_0

    :sswitch_1
    const-string v6, "WebP"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x4

    goto :goto_0

    :sswitch_2
    const-string v6, "png"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v5, v7

    goto :goto_0

    :sswitch_3
    const-string v6, "jpg"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x3

    goto :goto_0

    :sswitch_4
    const-string v6, "PNG"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    :cond_2
    :goto_0
    const/16 v4, 0x64

    packed-switch v5, :pswitch_data_0

    .line 294
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    .line 291
    :pswitch_0
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v5, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 292
    goto :goto_2

    .line 288
    :pswitch_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v5, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 289
    goto :goto_2

    .line 284
    :pswitch_2
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v5, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 285
    goto :goto_2

    .line 294
    :goto_1
    invoke-virtual {v2, v5, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 298
    :goto_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 299
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 301
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "userPhoto"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 302
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 303
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 304
    .local v5, "files":[Ljava/io/File;
    if-eqz v5, :cond_6

    .line 305
    array-length v6, v5

    const/4 v8, 0x6

    if-le v6, v8, :cond_6

    .line 306
    const-wide/16 v8, 0x0

    .line 307
    .local v8, "oldestTime":J
    const/4 v6, 0x0

    .line 308
    .local v6, "oldest":I
    nop

    .line 308
    .local v7, "i":I
    :goto_3
    array-length v10, v5

    if-ge v7, v10, :cond_5

    .line 309
    if-nez v7, :cond_3

    .line 310
    aget-object v10, v5, v7

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    move-wide v8, v10

    goto :goto_4

    .line 312
    :cond_3
    aget-object v10, v5, v7

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v10, v10, v8

    if-gez v10, :cond_4

    .line 313
    move v6, v7

    .line 314
    aget-object v10, v5, v7

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    move-wide v8, v10

    .line 308
    :cond_4
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 318
    .end local v7    # "i":I
    :cond_5
    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 324
    .end local v0    # "CacheDir":Ljava/lang/String;
    .end local v1    # "userFile":Ljava/io/File;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "files":[Ljava/io/File;
    .end local v6    # "oldest":I
    .end local v8    # "oldestTime":J
    :cond_6
    goto :goto_6

    .line 276
    .restart local v0    # "CacheDir":Ljava/lang/String;
    .restart local v1    # "userFile":Ljava/io/File;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_7
    :goto_5
    const-string v3, "UtilForPMA"

    const-string/jumbo v4, "writePhotoForUser: bitmap null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    return-void

    .line 322
    .end local v0    # "CacheDir":Ljava/lang/String;
    .end local v1    # "userFile":Ljava/io/File;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UtilForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writePhotoForUser: error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    return-void

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0x13609 -> :sswitch_4
        0x19be1 -> :sswitch_3
        0x1b229 -> :sswitch_2
        0x29139c -> :sswitch_1
        0x31e068 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
