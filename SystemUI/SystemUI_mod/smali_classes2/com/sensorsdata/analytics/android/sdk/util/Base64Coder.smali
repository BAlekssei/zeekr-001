.class public Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;
.super Ljava/lang/Object;
.source "Base64Coder.java"


# static fields
.field public static final CHARSET_UTF8:Ljava/lang/String; = "UTF-8"

.field private static map1:[C

.field private static map2:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 49
    const/16 v0, 0x40

    new-array v1, v0, [C

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map1:[C

    .line 51
    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map2:[B

    .line 54
    const/4 v1, 0x0

    .line 55
    .local v1, "i":I
    const/16 v2, 0x41

    .local v2, "c":C
    :goto_0
    const/16 v3, 0x5a

    if-gt v2, v3, :cond_0

    .line 56
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map1:[C

    add-int/lit8 v4, v1, 0x1

    .local v4, "i":I
    aput-char v2, v3, v1

    .line 55
    .end local v1    # "i":I
    add-int/lit8 v1, v2, 0x1

    int-to-char v2, v1

    move v1, v4

    goto :goto_0

    .line 57
    .end local v2    # "c":C
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_0
    const/16 v2, 0x61

    .restart local v2    # "c":C
    :goto_1
    const/16 v3, 0x7a

    if-gt v2, v3, :cond_1

    .line 58
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map1:[C

    add-int/lit8 v4, v1, 0x1

    .restart local v4    # "i":I
    aput-char v2, v3, v1

    .line 57
    .end local v1    # "i":I
    add-int/lit8 v1, v2, 0x1

    int-to-char v2, v1

    move v1, v4

    goto :goto_1

    .line 59
    .end local v2    # "c":C
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_1
    const/16 v2, 0x30

    .restart local v2    # "c":C
    :goto_2
    const/16 v3, 0x39

    if-gt v2, v3, :cond_2

    .line 60
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map1:[C

    add-int/lit8 v4, v1, 0x1

    .restart local v4    # "i":I
    aput-char v2, v3, v1

    .line 59
    .end local v1    # "i":I
    add-int/lit8 v1, v2, 0x1

    int-to-char v2, v1

    move v1, v4

    goto :goto_2

    .line 61
    .end local v2    # "c":C
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_2
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map1:[C

    add-int/lit8 v3, v1, 0x1

    .local v3, "i":I
    const/16 v4, 0x2b

    aput-char v4, v2, v1

    .line 62
    .end local v1    # "i":I
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map1:[C

    const/16 v2, 0x2f

    aput-char v2, v1, v3

    .line 66
    .end local v3    # "i":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_3
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map2:[B

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 67
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map2:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 68
    .end local v2    # "i":I
    :cond_3
    nop

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v0, :cond_4

    .line 69
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map2:[B

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map1:[C

    aget-char v3, v3, v1

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 70
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->decode([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([C)[B
    .locals 20
    .param p0, "in"    # [C

    .line 162
    move-object/from16 v0, p0

    array-length v1, v0

    .line 163
    .local v1, "iLen":I
    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_8

    .line 166
    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    aget-char v2, v0, v2

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_0

    .line 167
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 168
    :cond_0
    mul-int/lit8 v2, v1, 0x3

    div-int/lit8 v2, v2, 0x4

    .line 169
    .local v2, "oLen":I
    new-array v3, v2, [B

    .line 170
    .local v3, "out":[B
    const/4 v4, 0x0

    .line 171
    .local v4, "ip":I
    const/4 v5, 0x0

    .line 172
    .local v5, "op":I
    :goto_1
    if-ge v4, v1, :cond_7

    .line 173
    add-int/lit8 v6, v4, 0x1

    .local v6, "ip":I
    aget-char v4, v0, v4

    .line 174
    .local v4, "i0":I
    add-int/lit8 v7, v6, 0x1

    .local v7, "ip":I
    aget-char v6, v0, v6

    .line 175
    .local v6, "i1":I
    const/16 v8, 0x41

    if-ge v7, v1, :cond_1

    add-int/lit8 v9, v7, 0x1

    .local v9, "ip":I
    aget-char v7, v0, v7

    .end local v7    # "ip":I
    goto :goto_2

    .end local v9    # "ip":I
    .restart local v7    # "ip":I
    :cond_1
    move v9, v7

    move v7, v8

    .line 176
    .local v7, "i2":I
    .restart local v9    # "ip":I
    :goto_2
    if-ge v9, v1, :cond_2

    add-int/lit8 v8, v9, 0x1

    .local v8, "ip":I
    aget-char v9, v0, v9

    .end local v9    # "ip":I
    move/from16 v19, v9

    move v9, v8

    move/from16 v8, v19

    nop

    .line 177
    .local v8, "i3":I
    .restart local v9    # "ip":I
    :cond_2
    const/16 v10, 0x7f

    if-gt v4, v10, :cond_6

    if-gt v6, v10, :cond_6

    if-gt v7, v10, :cond_6

    if-gt v8, v10, :cond_6

    .line 179
    sget-object v10, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map2:[B

    aget-byte v10, v10, v4

    .line 180
    .local v10, "b0":I
    sget-object v11, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map2:[B

    aget-byte v11, v11, v6

    .line 181
    .local v11, "b1":I
    sget-object v12, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map2:[B

    aget-byte v12, v12, v7

    .line 182
    .local v12, "b2":I
    sget-object v13, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map2:[B

    aget-byte v13, v13, v8

    .line 183
    .local v13, "b3":I
    if-ltz v10, :cond_5

    if-ltz v11, :cond_5

    if-ltz v12, :cond_5

    if-ltz v13, :cond_5

    .line 185
    shl-int/lit8 v14, v10, 0x2

    ushr-int/lit8 v15, v11, 0x4

    or-int/2addr v14, v15

    .line 186
    .local v14, "o0":I
    and-int/lit8 v15, v11, 0xf

    shl-int/lit8 v15, v15, 0x4

    ushr-int/lit8 v16, v12, 0x2

    or-int v15, v15, v16

    .line 187
    .local v15, "o1":I
    and-int/lit8 v16, v12, 0x3

    shl-int/lit8 v16, v16, 0x6

    or-int v0, v16, v13

    .line 188
    .local v0, "o2":I
    move/from16 v17, v1

    add-int/lit8 v1, v5, 0x1

    .local v1, "op":I
    .local v17, "iLen":I
    move/from16 v18, v4

    int-to-byte v4, v14

    .end local v4    # "i0":I
    .local v18, "i0":I
    aput-byte v4, v3, v5

    .line 189
    .end local v5    # "op":I
    if-ge v1, v2, :cond_3

    .line 190
    add-int/lit8 v4, v1, 0x1

    .local v4, "op":I
    int-to-byte v5, v15

    aput-byte v5, v3, v1

    .line 191
    .end local v1    # "op":I
    move v1, v4

    .end local v4    # "op":I
    .restart local v1    # "op":I
    :cond_3
    if-ge v1, v2, :cond_4

    .line 192
    add-int/lit8 v4, v1, 0x1

    .restart local v4    # "op":I
    int-to-byte v5, v0

    aput-byte v5, v3, v1

    .line 193
    .end local v0    # "o2":I
    .end local v1    # "op":I
    .end local v6    # "i1":I
    .end local v7    # "i2":I
    .end local v8    # "i3":I
    .end local v10    # "b0":I
    .end local v11    # "b1":I
    .end local v12    # "b2":I
    .end local v13    # "b3":I
    .end local v14    # "o0":I
    .end local v15    # "o1":I
    .end local v18    # "i0":I
    move v5, v4

    goto :goto_3

    .end local v4    # "op":I
    .restart local v1    # "op":I
    :cond_4
    move v5, v1

    .line 171
    .end local v1    # "op":I
    .restart local v5    # "op":I
    :goto_3
    move v4, v9

    move/from16 v1, v17

    move-object/from16 v0, p0

    goto :goto_1

    .line 184
    .end local v17    # "iLen":I
    .local v1, "iLen":I
    .local v4, "i0":I
    .restart local v6    # "i1":I
    .restart local v7    # "i2":I
    .restart local v8    # "i3":I
    .restart local v10    # "b0":I
    .restart local v11    # "b1":I
    .restart local v12    # "b2":I
    .restart local v13    # "b3":I
    :cond_5
    move/from16 v17, v1

    move/from16 v18, v4

    .end local v1    # "iLen":I
    .end local v4    # "i0":I
    .restart local v17    # "iLen":I
    .restart local v18    # "i0":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    .end local v10    # "b0":I
    .end local v11    # "b1":I
    .end local v12    # "b2":I
    .end local v13    # "b3":I
    .end local v17    # "iLen":I
    .end local v18    # "i0":I
    .restart local v1    # "iLen":I
    .restart local v4    # "i0":I
    :cond_6
    move/from16 v17, v1

    move/from16 v18, v4

    .end local v1    # "iLen":I
    .end local v4    # "i0":I
    .restart local v17    # "iLen":I
    .restart local v18    # "i0":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    .end local v6    # "i1":I
    .end local v7    # "i2":I
    .end local v8    # "i3":I
    .end local v9    # "ip":I
    .end local v17    # "iLen":I
    .end local v18    # "i0":I
    .restart local v1    # "iLen":I
    .local v4, "ip":I
    :cond_7
    move/from16 v17, v1

    .end local v1    # "iLen":I
    .restart local v17    # "iLen":I
    return-object v3

    .line 164
    .end local v2    # "oLen":I
    .end local v3    # "out":[B
    .end local v4    # "ip":I
    .end local v5    # "op":I
    .end local v17    # "iLen":I
    .restart local v1    # "iLen":I
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Length of Base64 encoded input string is not a multiple of 4."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 139
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static encode([B)[C
    .locals 1
    .param p0, "in"    # [B

    .line 96
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->encode([BI)[C

    move-result-object v0

    return-object v0
.end method

.method public static encode([BI)[C
    .locals 16
    .param p0, "in"    # [B
    .param p1, "iLen"    # I

    .line 108
    move/from16 v0, p1

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    .line 109
    .local v1, "oDataLen":I
    add-int/lit8 v2, v0, 0x2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x4

    .line 110
    .local v2, "oLen":I
    new-array v3, v2, [C

    .line 111
    .local v3, "out":[C
    const/4 v4, 0x0

    .line 112
    .local v4, "ip":I
    const/4 v5, 0x0

    move v6, v4

    move v4, v5

    .line 113
    .local v4, "op":I
    .local v6, "ip":I
    :goto_0
    if-ge v6, v0, :cond_4

    .line 114
    add-int/lit8 v7, v6, 0x1

    .local v7, "ip":I
    aget-byte v6, p0, v6

    .end local v6    # "ip":I
    and-int/lit16 v6, v6, 0xff

    .line 115
    .local v6, "i0":I
    if-ge v7, v0, :cond_0

    add-int/lit8 v8, v7, 0x1

    .local v8, "ip":I
    aget-byte v7, p0, v7

    .end local v7    # "ip":I
    and-int/lit16 v7, v7, 0xff

    goto :goto_1

    .end local v8    # "ip":I
    .restart local v7    # "ip":I
    :cond_0
    move v8, v7

    move v7, v5

    .line 116
    .local v7, "i1":I
    .restart local v8    # "ip":I
    :goto_1
    if-ge v8, v0, :cond_1

    add-int/lit8 v9, v8, 0x1

    .local v9, "ip":I
    aget-byte v8, p0, v8

    .end local v8    # "ip":I
    and-int/lit16 v8, v8, 0xff

    goto :goto_2

    .end local v9    # "ip":I
    .restart local v8    # "ip":I
    :cond_1
    move v9, v8

    move v8, v5

    .line 117
    .local v8, "i2":I
    .restart local v9    # "ip":I
    :goto_2
    ushr-int/lit8 v10, v6, 0x2

    .line 118
    .local v10, "o0":I
    and-int/lit8 v11, v6, 0x3

    shl-int/lit8 v11, v11, 0x4

    ushr-int/lit8 v12, v7, 0x4

    or-int/2addr v11, v12

    .line 119
    .local v11, "o1":I
    and-int/lit8 v12, v7, 0xf

    shl-int/lit8 v12, v12, 0x2

    ushr-int/lit8 v13, v8, 0x6

    or-int/2addr v12, v13

    .line 120
    .local v12, "o2":I
    and-int/lit8 v13, v8, 0x3f

    .line 121
    .local v13, "o3":I
    add-int/lit8 v14, v4, 0x1

    .local v14, "op":I
    sget-object v15, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map1:[C

    aget-char v15, v15, v10

    aput-char v15, v3, v4

    .line 122
    .end local v4    # "op":I
    add-int/lit8 v4, v14, 0x1

    .restart local v4    # "op":I
    sget-object v15, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map1:[C

    aget-char v15, v15, v11

    aput-char v15, v3, v14

    .line 123
    .end local v14    # "op":I
    const/16 v14, 0x3d

    if-ge v4, v1, :cond_2

    sget-object v15, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map1:[C

    aget-char v15, v15, v12

    goto :goto_3

    :cond_2
    move v15, v14

    :goto_3
    aput-char v15, v3, v4

    .line 124
    add-int/lit8 v4, v4, 0x1

    .line 125
    if-ge v4, v1, :cond_3

    sget-object v14, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map1:[C

    aget-char v14, v14, v13

    nop

    :cond_3
    aput-char v14, v3, v4

    .line 126
    add-int/lit8 v4, v4, 0x1

    .line 127
    .end local v6    # "i0":I
    .end local v7    # "i1":I
    .end local v8    # "i2":I
    .end local v10    # "o0":I
    .end local v11    # "o1":I
    .end local v12    # "o2":I
    .end local v13    # "o3":I
    nop

    .line 112
    move v6, v9

    goto :goto_0

    .line 128
    .end local v9    # "ip":I
    .local v6, "ip":I
    :cond_4
    return-object v3
.end method

.method public static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 81
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->encode([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 85
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    const-string v0, ""

    return-object v0
.end method
