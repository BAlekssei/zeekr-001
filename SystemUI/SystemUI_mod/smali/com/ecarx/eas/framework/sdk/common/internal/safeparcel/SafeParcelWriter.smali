.class public final Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static finishObjectHeader(Landroid/os/Parcel;I)V
    .locals 2
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "start"    # I

    .line 43
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 44
    sub-int v1, v0, p1

    .line 45
    nop

    .end local p1    # "start":I
    add-int/lit8 p1, p1, -0x4

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    return-void
.end method

.method public static write(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V
    .locals 0
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "fieldId"    # I
    .param p2, "val"    # Landroid/os/Bundle;
    .param p3, "mayNull"    # Z

    .line 117
    if-nez p2, :cond_0

    .line 118
    nop

    .end local p3    # "mayNull":Z
    if-eqz p3, :cond_1

    .line 119
    const/4 p3, 0x0

    invoke-static {p0, p1, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeHeader(Landroid/os/Parcel;II)V

    return-void

    .line 122
    :cond_0
    nop

    .end local p1    # "fieldId":I
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeObjectHeader(Landroid/os/Parcel;I)I

    move-result p1

    .line 123
    nop

    .end local p2    # "val":Landroid/os/Bundle;
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 124
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 126
    :cond_1
    return-void
.end method

.method public static write(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V
    .locals 0
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "fieldId"    # I
    .param p2, "val"    # Landroid/os/IBinder;
    .param p3, "mayNull"    # Z

    .line 262
    if-nez p2, :cond_0

    .line 263
    nop

    .end local p3    # "mayNull":Z
    if-eqz p3, :cond_1

    .line 264
    const/4 p3, 0x0

    invoke-static {p0, p1, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeHeader(Landroid/os/Parcel;II)V

    return-void

    .line 267
    :cond_0
    nop

    .end local p1    # "fieldId":I
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeObjectHeader(Landroid/os/Parcel;I)I

    move-result p1

    .line 268
    nop

    .end local p2    # "val":Landroid/os/IBinder;
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 269
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 271
    :cond_1
    return-void
.end method

.method public static write(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
    .locals 0
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "fieldId"    # I
    .param p2, "val"    # Landroid/os/Parcelable;
    .param p3, "flags"    # I
    .param p4, "mayNull"    # Z

    .line 105
    if-nez p2, :cond_0

    .line 106
    nop

    .end local p4    # "mayNull":Z
    if-eqz p4, :cond_1

    .line 107
    const/4 p4, 0x0

    invoke-static {p0, p1, p4}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeHeader(Landroid/os/Parcel;II)V

    return-void

    .line 110
    :cond_0
    nop

    .end local p1    # "fieldId":I
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeObjectHeader(Landroid/os/Parcel;I)I

    move-result p1

    .line 111
    nop

    .end local p2    # "val":Landroid/os/Parcelable;
    .end local p3    # "flags":I
    invoke-interface {p2, p0, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 112
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 114
    :cond_1
    return-void
.end method

.method public static write(Landroid/os/Parcel;ILjava/lang/Boolean;)V
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "fieldId"    # I
    .param p2, "val"    # Ljava/lang/Boolean;

    .line 51
    if-nez p2, :cond_0

    return-void

    .line 52
    :cond_0
    nop

    .end local p1    # "fieldId":I
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeHeader(Landroid/os/Parcel;II)V

    .line 53
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    .end local p2    # "val":Ljava/lang/Boolean;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    return-void
.end method

.method public static write(Landroid/os/Parcel;ILjava/lang/Double;)V
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "fieldId"    # I
    .param p2, "val"    # Ljava/lang/Double;

    .line 87
    if-nez p2, :cond_0

    return-void

    .line 88
    :cond_0
    nop

    .end local p1    # "fieldId":I
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeHeader(Landroid/os/Parcel;II)V

    .line 89
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    .end local p2    # "val":Ljava/lang/Double;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 90
    return-void
.end method

.method public static write(Landroid/os/Parcel;ILjava/lang/Float;)V
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "fieldId"    # I
    .param p2, "val"    # Ljava/lang/Float;

    .line 81
    if-nez p2, :cond_0

    return-void

    .line 82
    :cond_0
    nop

    .end local p1    # "fieldId":I
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeHeader(Landroid/os/Parcel;II)V

    .line 83
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    .end local p2    # "val":Ljava/lang/Float;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 84
    return-void
.end method

.method public static write(Landroid/os/Parcel;ILjava/lang/Integer;)V
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "fieldId"    # I
    .param p2, "val"    # Ljava/lang/Integer;

    .line 69
    if-nez p2, :cond_0

    return-void

    .line 70
    :cond_0
    nop

    .end local p1    # "fieldId":I
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeHeader(Landroid/os/Parcel;II)V

    .line 71
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    .end local p2    # "val":Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    return-void
.end method

.method public static write(Landroid/os/Parcel;ILjava/lang/Long;)V
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "fieldId"    # I
    .param p2, "val"    # Ljava/lang/Long;

    .line 75
    if-nez p2, :cond_0

    return-void

    .line 76
    :cond_0
    nop

    .end local p1    # "fieldId":I
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeHeader(Landroid/os/Parcel;II)V

    .line 77
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    .end local p2    # "val":Ljava/lang/Long;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    return-void
.end method

.method public static write(Landroid/os/Parcel;ILjava/lang/String;Z)V
    .locals 0
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "fieldId"    # I
    .param p2, "val"    # Ljava/lang/String;
    .param p3, "mayNull"    # Z

    .line 93
    if-nez p2, :cond_0

    .line 94
    nop

    .end local p3    # "mayNull":Z
    if-eqz p3, :cond_1

    .line 95
    const/4 p3, 0x0

    invoke-static {p0, p1, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeHeader(Landroid/os/Parcel;II)V

    return-void

    .line 98
    :cond_0
    nop

    .end local p1    # "fieldId":I
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeObjectHeader(Landroid/os/Parcel;I)I

    move-result p1

    .line 99
    nop

    .end local p2    # "val":Ljava/lang/String;
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 102
    :cond_1
    return-void
.end method

.method public static write(Landroid/os/Parcel;ILjava/util/List;IZ)V
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "fieldId"    # I
    .param p3, "flags"    # I
    .param p4, "mayNull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "TT;>;IZ)V"
        }
    .end annotation

    .line 207
    .local p2, "val":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 208
    nop

    .end local p4    # "mayNull":Z
    if-eqz p4, :cond_3

    .line 209
    invoke-static {p0, p1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeHeader(Landroid/os/Parcel;II)V

    return-void

    .line 212
    :cond_0
    nop

    .end local p1    # "fieldId":I
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeObjectHeader(Landroid/os/Parcel;I)I

    move-result p1

    .line 213
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    invoke-virtual {p0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    nop

    .end local p2    # "val":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Parcelable;

    .line 215
    if-nez p4, :cond_1

    .line 216
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 218
    :cond_1
    invoke-static {p0, p4, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeArrayPart(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 220
    goto :goto_0

    .line 221
    .end local p3    # "flags":I
    :cond_2
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 223
    .end local p0    # "parcel":Landroid/os/Parcel;
    :cond_3
    return-void
.end method

.method public static write(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 0
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "fieldId"    # I
    .param p2, "val"    # Ljava/util/List;
    .param p3, "mayNull"    # Z

    .line 238
    if-nez p2, :cond_0

    .line 239
    nop

    .end local p3    # "mayNull":Z
    if-eqz p3, :cond_1

    .line 240
    const/4 p3, 0x0

    invoke-static {p0, p1, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeHeader(Landroid/os/Parcel;II)V

    return-void

    .line 243
    :cond_0
    nop

    .end local p1    # "fieldId":I
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeObjectHeader(Landroid/os/Parcel;I)I

    move-result p1

    .line 244
    nop

    .end local p2    # "val":Ljava/util/List;
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 245
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 247
    :cond_1
    return-void
.end method

.method public static write(Landroid/os/Parcel;ILjava/util/Map;Z)V
    .locals 0
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "fieldId"    # I
    .param p2, "val"    # Ljava/util/Map;
    .param p3, "mayNull"    # Z

    .line 250
    if-nez p2, :cond_0

    .line 251
    nop

    .end local p3    # "mayNull":Z
    if-eqz p3, :cond_1

    .line 252
    const/4 p3, 0x0

    invoke-static {p0, p1, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeHeader(Landroid/os/Parcel;II)V

    return-void

    .line 255
    :cond_0
    nop

    .end local p1    # "fieldId":I
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeObjectHeader(Landroid/os/Parcel;I)I

    move-result p1

    .line 256
    nop

    .end local p2    # "val":Ljava/util/Map;
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 257
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 259
    :cond_1
    return-void
.end method

.method public static write(Landroid/os/Parcel;I[BZ)V
    .locals 0
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "fieldId"    # I
    .param p2, "val"    # [B
    .param p3, "mayNull"    # Z

    .line 129
    if-nez p2, :cond_0

    .line 130
    nop

    .end local p3    # "mayNull":Z
    if-eqz p3, :cond_1

    .line 131
    const/4 p3, 0x0

    invoke-static {p0, p1, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeHeader(Landroid/os/Parcel;II)V

    return-void

    .line 134
    :cond_0
    nop

    .end local p1    # "fieldId":I
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeObjectHeader(Landroid/os/Parcel;I)I

    move-result p1

    .line 135
    nop

    .end local p2    # "val":[B
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 136
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 138
    :cond_1
    return-void
.end method

.method public static write(Landroid/os/Parcel;I[IZ)V
    .locals 0
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "fieldId"    # I
    .param p2, "val"    # [I
    .param p3, "mayNull"    # Z

    .line 141
    if-nez p2, :cond_0

    .line 142
    nop

    .end local p3    # "mayNull":Z
    if-eqz p3, :cond_1

    .line 143
    const/4 p3, 0x0

    invoke-static {p0, p1, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeHeader(Landroid/os/Parcel;II)V

    return-void

    .line 146
    :cond_0
    nop

    .end local p1    # "fieldId":I
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeObjectHeader(Landroid/os/Parcel;I)I

    move-result p1

    .line 147
    nop

    .end local p2    # "val":[I
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 148
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 150
    :cond_1
    return-void
.end method

.method public static write(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V
    .locals 3
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "fieldId"    # I
    .param p3, "flags"    # I
    .param p4, "mayNull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I[TT;IZ)V"
        }
    .end annotation

    .line 188
    .local p2, "val":[Landroid/os/Parcelable;, "[TT;"
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 189
    nop

    .end local p4    # "mayNull":Z
    if-eqz p4, :cond_3

    .line 190
    invoke-static {p0, p1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeHeader(Landroid/os/Parcel;II)V

    return-void

    .line 193
    :cond_0
    nop

    .end local p1    # "fieldId":I
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeObjectHeader(Landroid/os/Parcel;I)I

    move-result p1

    .line 194
    array-length p4, p2

    invoke-virtual {p0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    nop

    .end local p2    # "val":[Landroid/os/Parcelable;, "[TT;"
    array-length p4, p2

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_2

    aget-object v2, p2, v1

    .line 196
    if-nez v2, :cond_1

    .line 197
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 199
    :cond_1
    invoke-static {p0, v2, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeArrayPart(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 195
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local p3    # "flags":I
    :cond_2
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 204
    .end local p0    # "parcel":Landroid/os/Parcel;
    :cond_3
    return-void
.end method

.method public static write(Landroid/os/Parcel;I[Ljava/lang/String;Z)V
    .locals 0
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "fieldId"    # I
    .param p2, "val"    # [Ljava/lang/String;
    .param p3, "mayNull"    # Z

    .line 153
    if-nez p2, :cond_0

    .line 154
    nop

    .end local p3    # "mayNull":Z
    if-eqz p3, :cond_1

    .line 155
    const/4 p3, 0x0

    invoke-static {p0, p1, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeHeader(Landroid/os/Parcel;II)V

    return-void

    .line 158
    :cond_0
    nop

    .end local p1    # "fieldId":I
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeObjectHeader(Landroid/os/Parcel;I)I

    move-result p1

    .line 159
    nop

    .end local p2    # "val":[Ljava/lang/String;
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 160
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 162
    :cond_1
    return-void
.end method

.method private static writeArrayPart(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    .locals 2
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "TT;I)V"
        }
    .end annotation

    .line 177
    .local p1, "val":Landroid/os/Parcelable;, "TT;"
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 178
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 180
    nop

    .end local p1    # "val":Landroid/os/Parcelable;, "TT;"
    .end local p2    # "flags":I
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 181
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    .line 182
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 183
    sub-int p2, p1, v1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 185
    return-void
.end method

.method private static writeHeader(Landroid/os/Parcel;II)V
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "fieldId"    # I
    .param p2, "size"    # I

    .line 24
    const v0, 0xffff

    if-lt p2, v0, :cond_0

    .line 25
    const/high16 v0, -0x10000

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 28
    :cond_0
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    .end local p2    # "size":I
    shl-int/lit8 p2, p2, 0x10

    .end local p1    # "fieldId":I
    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    return-void
.end method

.method public static writeObjectHeader(Landroid/os/Parcel;)I
    .locals 2
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 33
    const/16 v0, 0x4f45

    const v1, 0xffff

    invoke-static {p0, v0, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeHeader(Landroid/os/Parcel;II)V

    .line 34
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    return p0
.end method

.method private static writeObjectHeader(Landroid/os/Parcel;I)I
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "fieldId"    # I

    .line 38
    nop

    .end local p1    # "fieldId":I
    const v0, 0xffff

    invoke-static {p0, p1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeHeader(Landroid/os/Parcel;II)V

    .line 39
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    return p0
.end method

.method public static writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 0
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "fieldId"    # I
    .param p3, "mayNull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 165
    .local p2, "val":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 166
    nop

    .end local p3    # "mayNull":Z
    if-eqz p3, :cond_1

    .line 167
    const/4 p3, 0x0

    invoke-static {p0, p1, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeHeader(Landroid/os/Parcel;II)V

    return-void

    .line 170
    :cond_0
    nop

    .end local p1    # "fieldId":I
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeObjectHeader(Landroid/os/Parcel;I)I

    move-result p1

    .line 171
    nop

    .end local p2    # "val":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 172
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 174
    :cond_1
    return-void
.end method
