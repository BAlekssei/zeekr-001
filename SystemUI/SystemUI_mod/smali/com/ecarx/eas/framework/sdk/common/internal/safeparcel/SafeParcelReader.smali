.class public final Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader$ReadException;
    }
.end annotation


# direct methods
.method public static getFieldId(I)I
    .locals 1
    .param p0, "header"    # I

    .line 25
    nop

    .end local p0    # "header":I
    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static readBinder(Landroid/os/Parcel;I)Landroid/os/IBinder;
    .locals 2
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 102
    nop

    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 103
    if-nez p1, :cond_0

    .line 104
    const/4 p1, 0x0

    return-object p1

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 106
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 107
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 108
    return-object v1
.end method

.method public static readBool(Landroid/os/Parcel;I)Z
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 72
    nop

    .end local p1    # "header":I
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readExpectedSize(Landroid/os/Parcel;II)V

    .line 73
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static readBundle(Landroid/os/Parcel;ILjava/lang/ClassLoader;)Landroid/os/Bundle;
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "header"    # I
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 202
    nop

    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 203
    if-nez p1, :cond_0

    .line 204
    const/4 p1, 0x0

    return-object p1

    .line 205
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 206
    nop

    .end local p2    # "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p2

    .line 207
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 208
    return-object p2
.end method

.method public static readByteArray(Landroid/os/Parcel;I)[B
    .locals 2
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 182
    nop

    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 183
    if-nez p1, :cond_0

    .line 184
    const/4 p1, 0x0

    return-object p1

    .line 185
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 186
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 187
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 188
    return-object v1
.end method

.method public static readDouble(Landroid/os/Parcel;I)D
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 87
    nop

    .end local p1    # "header":I
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readExpectedSize(Landroid/os/Parcel;II)V

    .line 88
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide p0

    return-wide p0
.end method

.method private static readExpectedSize(Landroid/os/Parcel;II)V
    .locals 3
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "header"    # I
    .param p2, "expectedSize"    # I

    .line 39
    nop

    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 40
    if-ne p1, p2, :cond_0

    .line 42
    .end local p0    # "parcel":Landroid/os/Parcel;
    .end local p2    # "expectedSize":I
    return-void

    .line 41
    .restart local p0    # "parcel":Landroid/os/Parcel;
    .restart local p2    # "expectedSize":I
    :cond_0
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader$ReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .end local p2    # "expectedSize":I
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " got "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (0x"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p0    # "parcel":Landroid/os/Parcel;
    invoke-direct {v0, p1, p0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader$ReadException;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0
.end method

.method public static readFloat(Landroid/os/Parcel;I)F
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 82
    nop

    .end local p1    # "header":I
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readExpectedSize(Landroid/os/Parcel;II)V

    .line 83
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    return p0
.end method

.method public static readHeader(Landroid/os/Parcel;)I
    .locals 0
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 29
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0
.end method

.method public static readInt(Landroid/os/Parcel;I)I
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 57
    nop

    .end local p1    # "header":I
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readExpectedSize(Landroid/os/Parcel;II)V

    .line 58
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0
.end method

.method public static readIntArray(Landroid/os/Parcel;I)[I
    .locals 2
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 192
    nop

    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 193
    if-nez p1, :cond_0

    .line 194
    const/4 p1, 0x0

    return-object p1

    .line 195
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 196
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 197
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 198
    return-object v1
.end method

.method public static readList(Landroid/os/Parcel;ILjava/lang/ClassLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "header"    # I
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 122
    nop

    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 123
    if-nez p1, :cond_0

    .line 124
    const/4 p1, 0x0

    return-object p1

    .line 125
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 126
    nop

    .end local p2    # "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p2

    .line 127
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 128
    return-object p2
.end method

.method public static readLong(Landroid/os/Parcel;I)J
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 77
    nop

    .end local p1    # "header":I
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readExpectedSize(Landroid/os/Parcel;II)V

    .line 78
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide p0

    return-wide p0
.end method

.method public static readMap(Landroid/os/Parcel;ILjava/lang/ClassLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "header"    # I
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 132
    nop

    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 133
    if-nez p1, :cond_0

    .line 134
    const/4 p1, 0x0

    return-object p1

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 136
    nop

    .end local p2    # "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p2

    .line 137
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 138
    return-object p2
.end method

.method public static readObjectHeader(Landroid/os/Parcel;)I
    .locals 5
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 45
    invoke-static {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 46
    invoke-static {p0, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v1

    .line 47
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 48
    invoke-static {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v3

    const/16 v4, 0x4f45

    if-ne v3, v4, :cond_1

    .line 50
    add-int/2addr v1, v2

    .line 51
    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    if-gt v1, v0, :cond_0

    .line 53
    .end local p0    # "parcel":Landroid/os/Parcel;
    return v1

    .line 52
    .restart local p0    # "parcel":Landroid/os/Parcel;
    :cond_0
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader$ReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Size read is invalid start="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " end="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local p0    # "parcel":Landroid/os/Parcel;
    invoke-direct {v0, v1, p0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader$ReadException;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    .line 49
    .restart local p0    # "parcel":Landroid/os/Parcel;
    :cond_1
    new-instance v1, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader$ReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected object header. Got 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader$ReadException;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1
.end method

.method public static readParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "header"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 112
    .local p2, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    nop

    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 113
    if-nez p1, :cond_0

    .line 114
    const/4 p1, 0x0

    return-object p1

    .line 115
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 116
    nop

    .end local p2    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    .line 117
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 118
    return-object p2
.end method

.method public static readParcelableArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Landroid/os/Parcelable;
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "header"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 162
    .local p2, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    nop

    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 163
    if-nez p1, :cond_0

    .line 164
    const/4 p1, 0x0

    return-object p1

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 166
    nop

    .end local p2    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/os/Parcelable;

    .line 167
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 168
    return-object p2
.end method

.method public static readParcelableList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "header"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 142
    .local p2, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    nop

    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 143
    if-nez p1, :cond_0

    .line 144
    const/4 p1, 0x0

    return-object p1

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 146
    nop

    .end local p2    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 147
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 148
    return-object p2
.end method

.method private static readSize(Landroid/os/Parcel;I)I
    .locals 2
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 33
    const/high16 v0, -0x10000

    and-int v1, p1, v0

    if-eq v1, v0, :cond_0

    .line 34
    nop

    .end local p1    # "header":I
    shr-int/lit8 p1, p1, 0x10

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1

    .line 35
    :cond_0
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0
.end method

.method public static readString(Landroid/os/Parcel;I)Ljava/lang/String;
    .locals 2
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 92
    nop

    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 93
    if-nez p1, :cond_0

    .line 94
    const/4 p1, 0x0

    return-object p1

    .line 95
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 96
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 97
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 98
    return-object v1
.end method

.method public static readStringArray(Landroid/os/Parcel;I)[Ljava/lang/String;
    .locals 2
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 172
    nop

    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 173
    if-nez p1, :cond_0

    .line 174
    const/4 p1, 0x0

    return-object p1

    .line 175
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 176
    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 177
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 178
    return-object v1
.end method

.method public static readStringList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .locals 2
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "header"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 152
    nop

    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 153
    if-nez p1, :cond_0

    .line 154
    const/4 p1, 0x0

    return-object p1

    .line 155
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 156
    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 157
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 158
    return-object v1
.end method

.method public static skip(Landroid/os/Parcel;I)V
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 212
    nop

    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 213
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 214
    return-void
.end method
