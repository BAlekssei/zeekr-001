.class public Lcom/airbnb/lottie/model/DocumentData;
.super Ljava/lang/Object;
.source "DocumentData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/DocumentData$Justification;
    }
.end annotation


# instance fields
.field public baselineShift:F

.field public color:I

.field public fontName:Ljava/lang/String;

.field public justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

.field public lineHeight:F

.field public size:F

.field public strokeColor:I

.field public strokeOverFill:Z

.field public strokeWidth:F

.field public text:Ljava/lang/String;

.field public tracking:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FLcom/airbnb/lottie/model/DocumentData$Justification;IFFIIFZ)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fontName"    # Ljava/lang/String;
    .param p3, "size"    # F
    .param p4, "justification"    # Lcom/airbnb/lottie/model/DocumentData$Justification;
    .param p5, "tracking"    # I
    .param p6, "lineHeight"    # F
    .param p7, "baselineShift"    # F
    .param p8, "color"    # I
    .param p9, "strokeColor"    # I
    .param p10, "strokeWidth"    # F
    .param p11, "strokeOverFill"    # Z

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual/range {p0 .. p11}, Lcom/airbnb/lottie/model/DocumentData;->set(Ljava/lang/String;Ljava/lang/String;FLcom/airbnb/lottie/model/DocumentData$Justification;IFFIIFZ)V

    .line 34
    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 7

    .line 58
    iget-object v0, p0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 59
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-object v3, p0, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 60
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    int-to-float v0, v0

    iget v3, p0, Lcom/airbnb/lottie/model/DocumentData;->size:F

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 61
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget-object v3, p0, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/DocumentData$Justification;->ordinal()I

    move-result v3

    add-int/2addr v2, v3

    .line 62
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget v3, p0, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    add-int/2addr v0, v3

    .line 63
    .end local v2    # "result":I
    .restart local v0    # "result":I
    iget v2, p0, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    .line 64
    .local v2, "temp":J
    mul-int v4, v1, v0

    const/16 v5, 0x20

    ushr-long v5, v2, v5

    xor-long/2addr v5, v2

    long-to-int v5, v5

    add-int/2addr v4, v5

    .line 65
    .end local v0    # "result":I
    .local v4, "result":I
    mul-int/2addr v1, v4

    iget v0, p0, Lcom/airbnb/lottie/model/DocumentData;->color:I

    add-int/2addr v1, v0

    .line 66
    .end local v4    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;FLcom/airbnb/lottie/model/DocumentData$Justification;IFFIIFZ)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fontName"    # Ljava/lang/String;
    .param p3, "size"    # F
    .param p4, "justification"    # Lcom/airbnb/lottie/model/DocumentData$Justification;
    .param p5, "tracking"    # I
    .param p6, "lineHeight"    # F
    .param p7, "baselineShift"    # F
    .param p8, "color"    # I
    .param p9, "strokeColor"    # I
    .param p10, "strokeWidth"    # F
    .param p11, "strokeOverFill"    # Z

    .line 42
    iput-object p1, p0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    .line 44
    iput p3, p0, Lcom/airbnb/lottie/model/DocumentData;->size:F

    .line 45
    iput-object p4, p0, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 46
    iput p5, p0, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    .line 47
    iput p6, p0, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    .line 48
    iput p7, p0, Lcom/airbnb/lottie/model/DocumentData;->baselineShift:F

    .line 49
    iput p8, p0, Lcom/airbnb/lottie/model/DocumentData;->color:I

    .line 50
    iput p9, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    .line 51
    iput p10, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:F

    .line 52
    iput-boolean p11, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    .line 53
    return-void
.end method
