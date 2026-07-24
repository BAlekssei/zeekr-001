.class public final Lcom/haibin/calendarview/LunarUtil;
.super Ljava/lang/Object;
.source "LunarUtil.java"


# static fields
.field private static LUNAR_MONTH_DAYS:[I

.field private static SOLAR:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const/16 v0, 0xe1

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/haibin/calendarview/LunarUtil;->LUNAR_MONTH_DAYS:[I

    .line 42
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/haibin/calendarview/LunarUtil;->SOLAR:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x75f
        0x1694
        0x16aa
        0x4ad5
        0xab6
        0xc4b7
        0x4ae
        0xa56
        0xb52a
        0x1d2a
        0xd54
        0x75aa
        0x156a
        0x1096d
        0x95c
        0x14ae
        0xaa4d
        0x1a4c
        0x1b2a
        0x8d55
        0xad4
        0x135a
        0x495d
        0x95c
        0xd49b
        0x149a
        0x1a4a
        0xbaa5
        0x16a8
        0x1ad4
        0x52da
        0x12b6
        0xe937
        0x92e
        0x1496
        0xb64b
        0xd4a
        0xda8
        0x95b5
        0x56c
        0x12ae
        0x492f
        0x92e
        0xcc96
        0x1a94
        0x1d4a
        0xada9
        0xb5a
        0x56c
        0x726e
        0x125c
        0xf92d
        0x192a
        0x1a94
        0xdb4a
        0x16aa
        0xad4
        0x955b
        0x4ba
        0x125a
        0x592b
        0x152a
        0xf695
        0xd94
        0x16aa
        0xaab5
        0x9b4
        0x14b6
        0x6a57
        0xa56
        0x1152a
        0x1d2a
        0xd54
        0xd5aa
        0x156a
        0x96c
        0x94ae
        0x14ae
        0xa4c
        0x7d26
        0x1b2a
        0xeb55
        0xad4
        0x12da
        0xa95d
        0x95a
        0x149a
        0x9a4d
        0x1a4a
        0x11aa5
        0x16a8
        0x16d4
        0xd2da
        0x12b6
        0x936
        0x9497
        0x1496
        0x1564b
        0xd4a
        0xda8
        0xd5b4
        0x156c
        0x12ae
        0xa92f
        0x92e
        0xc96
        0x6d4a
        0x1d4a
        0x10d65
        0xb58
        0x156c
        0xb26d
        0x125c
        0x192c
        0x9a95
        0x1a94
        0x1b4a
        0x4b55
        0xad4
        0xf55b
        0x4ba
        0x125a
        0xb92b
        0x152a
        0x1694
        0x96aa
        0x15aa
        0x12ab5
        0x974
        0x14b6
        0xca57
        0xa56
        0x1526
        0x8e95
        0xd54
        0x15aa
        0x49b5
        0x96c
        0xd4ae
        0x149c
        0x1a4c
        0xbd26
        0x1aa6
        0xb54
        0x6d6a
        0x12da
        0x1695d
        0x95a
        0x149a
        0xda4b
        0x1a4a
        0x1aa4
        0xbb54
        0x16b4
        0xada
        0x495b
        0x936
        0xf497
        0x1496
        0x154a
        0xb6a5
        0xda4
        0x15b4
        0x6ab6
        0x126e
        0x1092f
        0x92e
        0xc96
        0xcd4a
        0x1d4a
        0xd64
        0x956c
        0x155c
        0x125c
        0x792e
        0x192c
        0xfa95
        0x1a94
        0x1b4a
        0xab55
        0xad4
        0x14da
        0x8a5d
        0xa5a
        0x1152b
        0x152a
        0x1694
        0xd6aa
        0x15aa
        0xab4
        0x94ba
        0x14b6
        0xa56
        0x7527
        0xd26
        0xee53
        0xd54
        0x15aa
        0xa9b5
        0x96c
        0x14ae
        0x8a4e
        0x1a4c
        0x11d26
        0x1aa4
        0x1b54
        0xcd6a
        0xada
        0x95c
        0x949d
        0x149a
        0x1a2a
        0x5b25
        0x1aa4
        0xfb52
        0x16b4
        0xaba
        0xa95b
        0x936
        0x1496
        0x9a4b
        0x154a
        0x136a5
        0xda4
        0x15ac
    .end array-data

    :array_1
    .array-data 4
        0x75f
        0xec04c
        0xec23f
        0xec435
        0xec649
        0xec83e
        0xeca51
        0xecc46
        0xece3a
        0xed04d
        0xed242
        0xed436
        0xed64a
        0xed83f
        0xeda53
        0xedc48
        0xede3d
        0xee050
        0xee244
        0xee439
        0xee64d
        0xee842
        0xeea36
        0xeec4a
        0xeee3e
        0xef052
        0xef246
        0xef43a
        0xef64e
        0xef843
        0xefa37
        0xefc4b
        0xefe41
        0xf0054
        0xf0248
        0xf043c
        0xf0650
        0xf0845
        0xf0a38
        0xf0c4d
        0xf0e42
        0xf1037
        0xf124a
        0xf143e
        0xf1651
        0xf1846
        0xf1a3a
        0xf1c4e
        0xf1e44
        0xf2038
        0xf224b
        0xf243f
        0xf2653
        0xf2848
        0xf2a3b
        0xf2c4f
        0xf2e45
        0xf3039
        0xf324d
        0xf3442
        0xf3636
        0xf384a
        0xf3a3d
        0xf3c51
        0xf3e46
        0xf403b
        0xf424e
        0xf4443
        0xf4638
        0xf484c
        0xf4a3f
        0xf4c52
        0xf4e48
        0xf503c
        0xf524f
        0xf5445
        0xf5639
        0xf584d
        0xf5a42
        0xf5c35
        0xf5e49
        0xf603e
        0xf6251
        0xf6446
        0xf663b
        0xf684f
        0xf6a43
        0xf6c37
        0xf6e4b
        0xf703f
        0xf7252
        0xf7447
        0xf763c
        0xf7850
        0xf7a45
        0xf7c39
        0xf7e4d
        0xf8042
        0xf8254
        0xf8449
        0xf863d
        0xf8851
        0xf8a46
        0xf8c3b
        0xf8e4f
        0xf9044
        0xf9237
        0xf944a
        0xf963f
        0xf9853
        0xf9a47
        0xf9c3c
        0xf9e50
        0xfa045
        0xfa238
        0xfa44c
        0xfa641
        0xfa836
        0xfaa49
        0xfac3d
        0xfae52
        0xfb047
        0xfb23a
        0xfb44e
        0xfb643
        0xfb837
        0xfba4a
        0xfbc3f
        0xfbe53
        0xfc048
        0xfc23c
        0xfc450
        0xfc645
        0xfc839
        0xfca4c
        0xfcc41
        0xfce36
        0xfd04a
        0xfd23d
        0xfd451
        0xfd646
        0xfd83a
        0xfda4d
        0xfdc43
        0xfde37
        0xfe04b
        0xfe23f
        0xfe453
        0xfe648
        0xfe83c
        0xfea4f
        0xfec44
        0xfee38
        0xff04c
        0xff241
        0xff436
        0xff64a
        0xff83e
        0xffa51
        0xffc46
        0xffe3a
        0x10004e
        0x100242
        0x100437
        0x10064b
        0x100841
        0x100a53
        0x100c48
        0x100e3c
        0x10104f
        0x101244
        0x101438
        0x10164c
        0x101842
        0x101a35
        0x101c49
        0x101e3d
        0x102051
        0x102245
        0x10243a
        0x10264e
        0x102843
        0x102a37
        0x102c4b
        0x102e3f
        0x103053
        0x103247
        0x10343b
        0x10364f
        0x103845
        0x103a38
        0x103c4c
        0x103e42
        0x104036
        0x104249
        0x10443d
        0x104651
        0x104846
        0x104a3a
        0x104c4e
        0x104e43
        0x105038
        0x10524a
        0x10543e
        0x105652
        0x105847
        0x105a3b
        0x105c4f
        0x105e45
        0x106039
        0x10624c
        0x106441
        0x106635
        0x106849
        0x106a3d
        0x106c51
        0x106e47
        0x10703c
        0x10724f
        0x107444
        0x107638
        0x10784c
        0x107a3f
        0x107c53
        0x107e48
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBitInt(III)I
    .locals 2
    .param p0, "data"    # I
    .param p1, "length"    # I
    .param p2, "shift"    # I

    .line 65
    const/4 v0, 0x1

    shl-int v1, v0, p1

    sub-int/2addr v1, v0

    shl-int v0, v1, p2

    and-int/2addr v0, p0

    shr-int/2addr v0, p2

    return v0
.end method

.method public static lunarToSolar(IIIZ)[I
    .locals 12
    .param p0, "lunarYear"    # I
    .param p1, "lunarMonth"    # I
    .param p2, "lunarDay"    # I
    .param p3, "isLeap"    # Z

    .line 159
    sget-object v0, Lcom/haibin/calendarview/LunarUtil;->LUNAR_MONTH_DAYS:[I

    sget-object v1, Lcom/haibin/calendarview/LunarUtil;->LUNAR_MONTH_DAYS:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int v1, p0, v1

    aget v0, v0, v1

    .line 160
    .local v0, "days":I
    const/4 v1, 0x4

    const/16 v3, 0xd

    invoke-static {v0, v1, v3}, Lcom/haibin/calendarview/LunarUtil;->getBitInt(III)I

    move-result v3

    .line 161
    .local v3, "leap":I
    const/4 v4, 0x0

    .line 162
    .local v4, "offset":I
    move v5, v3

    .line 163
    .local v5, "loop":I
    if-nez p3, :cond_2

    .line 164
    if-le p1, v3, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    move v5, p1

    goto :goto_1

    .line 165
    :cond_1
    :goto_0
    add-int/lit8 v5, p1, -0x1

    .line 170
    :cond_2
    :goto_1
    move v6, v4

    move v4, v2

    .local v4, "i":I
    .local v6, "offset":I
    :goto_2
    const/16 v7, 0xc

    if-ge v4, v5, :cond_4

    .line 171
    sub-int/2addr v7, v4

    const/4 v8, 0x1

    invoke-static {v0, v8, v7}, Lcom/haibin/calendarview/LunarUtil;->getBitInt(III)I

    move-result v7

    if-ne v7, v8, :cond_3

    const/16 v7, 0x1e

    goto :goto_3

    :cond_3
    const/16 v7, 0x1d

    :goto_3
    add-int/2addr v6, v7

    .line 170
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 173
    .end local v4    # "i":I
    :cond_4
    add-int/2addr v6, p2

    .line 175
    sget-object v4, Lcom/haibin/calendarview/LunarUtil;->SOLAR:[I

    sget-object v8, Lcom/haibin/calendarview/LunarUtil;->SOLAR:[I

    aget v8, v8, v2

    sub-int v8, p0, v8

    aget v4, v4, v8

    .line 177
    .local v4, "solar11":I
    const/16 v8, 0x9

    invoke-static {v4, v7, v8}, Lcom/haibin/calendarview/LunarUtil;->getBitInt(III)I

    move-result v7

    .line 178
    .local v7, "y":I
    const/4 v8, 0x5

    invoke-static {v4, v1, v8}, Lcom/haibin/calendarview/LunarUtil;->getBitInt(III)I

    move-result v1

    .line 179
    .local v1, "m":I
    invoke-static {v4, v8, v2}, Lcom/haibin/calendarview/LunarUtil;->getBitInt(III)I

    move-result v2

    .line 181
    .local v2, "d":I
    invoke-static {v7, v1, v2}, Lcom/haibin/calendarview/LunarUtil;->solarToInt(III)J

    move-result-wide v8

    int-to-long v10, v6

    add-long/2addr v8, v10

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/haibin/calendarview/LunarUtil;->solarFromInt(J)[I

    move-result-object v8

    return-object v8
.end method

.method private static solarFromInt(J)[I
    .locals 15
    .param p0, "g"    # J

    .line 75
    const-wide/16 v0, 0x2710

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x39bc

    add-long/2addr v0, v2

    const-wide/32 v2, 0x37bb49

    div-long/2addr v0, v2

    .line 76
    .local v0, "y":J
    const-wide/16 v2, 0x16d

    mul-long v4, v2, v0

    const-wide/16 v6, 0x4

    div-long v8, v0, v6

    add-long/2addr v4, v8

    const-wide/16 v8, 0x64

    div-long v10, v0, v8

    sub-long/2addr v4, v10

    const-wide/16 v10, 0x190

    div-long v12, v0, v10

    add-long/2addr v4, v12

    sub-long v4, p0, v4

    .line 77
    .local v4, "ddd":J
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    const-wide/16 v13, 0x1

    if-gez v12, :cond_0

    .line 78
    sub-long/2addr v0, v13

    .line 79
    mul-long/2addr v2, v0

    div-long v6, v0, v6

    add-long/2addr v2, v6

    div-long v6, v0, v8

    sub-long/2addr v2, v6

    div-long v6, v0, v10

    add-long/2addr v2, v6

    sub-long v4, p0, v2

    .line 81
    :cond_0
    mul-long/2addr v8, v4

    const-wide/16 v2, 0x34

    add-long/2addr v8, v2

    const-wide/16 v2, 0xbf4

    div-long/2addr v8, v2

    .line 82
    .local v8, "mi":J
    const-wide/16 v2, 0x2

    add-long v6, v8, v2

    const-wide/16 v10, 0xc

    rem-long/2addr v6, v10

    add-long/2addr v6, v13

    .line 83
    .local v6, "mm":J
    add-long/2addr v2, v8

    div-long/2addr v2, v10

    add-long/2addr v0, v2

    .line 84
    const-wide/16 v2, 0x132

    mul-long/2addr v2, v8

    const-wide/16 v10, 0x5

    add-long/2addr v2, v10

    const-wide/16 v10, 0xa

    div-long/2addr v2, v10

    sub-long v2, v4, v2

    add-long/2addr v2, v13

    .line 85
    .local v2, "dd":J
    const/4 v10, 0x4

    new-array v10, v10, [I

    .line 86
    .local v10, "solar":[I
    const/4 v11, 0x0

    long-to-int v12, v0

    aput v12, v10, v11

    .line 87
    const/4 v11, 0x1

    long-to-int v12, v6

    aput v12, v10, v11

    .line 88
    const/4 v11, 0x2

    long-to-int v12, v2

    aput v12, v10, v11

    .line 89
    return-object v10
.end method

.method private static solarToInt(III)J
    .locals 3
    .param p0, "y"    # I
    .param p1, "m"    # I
    .param p2, "d"    # I

    .line 69
    add-int/lit8 v0, p1, 0x9

    rem-int/lit8 v0, v0, 0xc

    .line 70
    .end local p1    # "m":I
    .local v0, "m":I
    div-int/lit8 p1, v0, 0xa

    sub-int/2addr p0, p1

    .line 71
    const/16 p1, 0x16d

    mul-int/2addr p1, p0

    div-int/lit8 v1, p0, 0x4

    add-int/2addr p1, v1

    div-int/lit8 v1, p0, 0x64

    sub-int/2addr p1, v1

    div-int/lit16 v1, p0, 0x190

    add-int/2addr p1, v1

    mul-int/lit16 v1, v0, 0x132

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    add-int/2addr p1, v1

    add-int/lit8 v1, p2, -0x1

    add-int/2addr p1, v1

    int-to-long v1, p1

    return-wide v1
.end method

.method public static solarToLunar(III)[I
    .locals 24
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .line 102
    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 103
    .local v2, "lunarInt":[I
    sget-object v3, Lcom/haibin/calendarview/LunarUtil;->SOLAR:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int v3, p0, v3

    .line 104
    .local v3, "index":I
    shl-int/lit8 v5, p0, 0x9

    shl-int/lit8 v6, p1, 0x5

    or-int/2addr v5, v6

    or-int v5, v5, p2

    .line 106
    .local v5, "data":I
    sget-object v7, Lcom/haibin/calendarview/LunarUtil;->SOLAR:[I

    aget v7, v7, v3

    if-le v7, v5, :cond_0

    .line 107
    add-int/lit8 v3, v3, -0x1

    .line 109
    :cond_0
    sget-object v7, Lcom/haibin/calendarview/LunarUtil;->SOLAR:[I

    aget v7, v7, v3

    .line 110
    .local v7, "solar11":I
    const/16 v8, 0xc

    const/16 v9, 0x9

    invoke-static {v7, v8, v9}, Lcom/haibin/calendarview/LunarUtil;->getBitInt(III)I

    move-result v9

    .line 111
    .local v9, "y":I
    const/4 v10, 0x5

    invoke-static {v7, v1, v10}, Lcom/haibin/calendarview/LunarUtil;->getBitInt(III)I

    move-result v11

    .line 112
    .local v11, "m":I
    invoke-static {v7, v10, v4}, Lcom/haibin/calendarview/LunarUtil;->getBitInt(III)I

    move-result v10

    .line 113
    .local v10, "d":I
    invoke-static/range {p0 .. p2}, Lcom/haibin/calendarview/LunarUtil;->solarToInt(III)J

    move-result-wide v12

    invoke-static {v9, v11, v10}, Lcom/haibin/calendarview/LunarUtil;->solarToInt(III)J

    move-result-wide v14

    sub-long/2addr v12, v14

    .line 115
    .local v12, "offset":J
    sget-object v14, Lcom/haibin/calendarview/LunarUtil;->LUNAR_MONTH_DAYS:[I

    aget v14, v14, v3

    .line 116
    .local v14, "days":I
    const/16 v8, 0xd

    invoke-static {v14, v1, v8}, Lcom/haibin/calendarview/LunarUtil;->getBitInt(III)I

    move-result v1

    .line 118
    .local v1, "leap":I
    sget-object v15, Lcom/haibin/calendarview/LunarUtil;->SOLAR:[I

    aget v15, v15, v4

    add-int/2addr v15, v3

    .line 119
    .local v15, "lunarY":I
    const/16 v17, 0x1

    .line 121
    .local v17, "lunarM":I
    const-wide/16 v18, 0x1

    add-long v12, v12, v18

    .line 123
    move/from16 v20, v5

    move-wide/from16 v22, v12

    move v12, v4

    move-wide/from16 v4, v22

    move/from16 v13, v17

    .end local v5    # "data":I
    .end local v17    # "lunarM":I
    .local v4, "offset":J
    .local v12, "i":I
    .local v13, "lunarM":I
    .local v20, "data":I
    :goto_0
    const/4 v0, 0x1

    if-ge v12, v8, :cond_2

    .line 124
    const/16 v16, 0xc

    rsub-int/lit8 v8, v12, 0xc

    invoke-static {v14, v0, v8}, Lcom/haibin/calendarview/LunarUtil;->getBitInt(III)I

    move-result v8

    if-ne v8, v0, :cond_1

    const/16 v8, 0x1e

    goto :goto_1

    :cond_1
    const/16 v8, 0x1d

    .line 125
    .local v8, "dm":I
    :goto_1
    move/from16 v21, v1

    int-to-long v0, v8

    .end local v1    # "leap":I
    .local v21, "leap":I
    cmp-long v0, v4, v0

    if-lez v0, :cond_3

    .line 126
    add-int/lit8 v13, v13, 0x1

    .line 127
    int-to-long v0, v8

    sub-long/2addr v4, v0

    .line 123
    .end local v8    # "dm":I
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v21

    const/16 v8, 0xd

    goto :goto_0

    .line 132
    .end local v12    # "i":I
    .end local v21    # "leap":I
    .restart local v1    # "leap":I
    :cond_2
    move/from16 v21, v1

    .end local v1    # "leap":I
    .restart local v21    # "leap":I
    :cond_3
    long-to-int v0, v4

    .line 133
    .local v0, "lunarD":I
    const/4 v1, 0x0

    aput v15, v2, v1

    .line 134
    const/4 v8, 0x1

    aput v13, v2, v8

    .line 135
    const/4 v12, 0x3

    aput v1, v2, v12

    .line 137
    if-eqz v21, :cond_4

    move/from16 v1, v21

    if-le v13, v1, :cond_5

    .line 138
    .end local v21    # "leap":I
    .restart local v1    # "leap":I
    add-int/lit8 v16, v13, -0x1

    aput v16, v2, v8

    .line 139
    add-int/lit8 v8, v1, 0x1

    if-ne v13, v8, :cond_5

    .line 140
    const/4 v8, 0x1

    aput v8, v2, v12

    goto :goto_2

    .line 143
    .end local v1    # "leap":I
    .restart local v21    # "leap":I
    :cond_4
    move/from16 v1, v21

    .end local v21    # "leap":I
    .restart local v1    # "leap":I
    :cond_5
    :goto_2
    const/4 v8, 0x2

    aput v0, v2, v8

    .line 144
    return-object v2
.end method
