.class public final Lcom/zeekr/sdk/mediacenter/f;
.super Ljava/lang/Object;
.source "LocalRadioIntentWrapper.java"

# interfaces
.implements Lcom/ecarx/eas/sdk/vr/radio/ICtrlLocalRadioIntent;


# instance fields
.field private a:Lecarx/xsf/mediacenter/vr/QRadioResult;


# direct methods
.method public constructor <init>(Lecarx/xsf/mediacenter/vr/QRadioResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/zeekr/sdk/mediacenter/f;->a:Lecarx/xsf/mediacenter/vr/QRadioResult;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 5
    :cond_0
    :try_start_0
    const-string v0, "^(\\+)?\\d+(\\.\\d+)?$"

    .line 6
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 10
    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " checkFreq ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") error : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string p1, "f"

    invoke-static {v0, v2, p1}, Lcom/zeekr/sdk/mediacenter/e;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public final getBand()Lcom/ecarx/eas/sdk/radio/Band;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zeekr/sdk/mediacenter/f;->a:Lecarx/xsf/mediacenter/vr/QRadioResult;

    iget v0, v0, Lecarx/xsf/mediacenter/vr/QRadioResult;->sourceType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/ecarx/eas/sdk/radio/Band;->values()[Lcom/ecarx/eas/sdk/radio/Band;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :catch_0
    move-exception v0

    const-string v1, " getBand error : "

    invoke-static {v1}, Lcom/zeekr/sdk/mediacenter/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    const-string v2, "f"

    invoke-static {v0, v1, v2}, Lcom/zeekr/sdk/mediacenter/e;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 51
    :try_start_1
    invoke-static {}, Lcom/ecarx/eas/sdk/radio/Band;->values()[Lcom/ecarx/eas/sdk/radio/Band;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 52
    :catch_1
    move-exception v0

    const-string v1, " getBand error : "

    invoke-static {v1}, Lcom/zeekr/sdk/mediacenter/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 53
    const-string v2, "f"

    invoke-static {v0, v1, v2}, Lcom/zeekr/sdk/mediacenter/e;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCategory()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zeekr/sdk/mediacenter/f;->a:Lecarx/xsf/mediacenter/vr/QRadioResult;

    iget-object v0, v0, Lecarx/xsf/mediacenter/vr/QRadioResult;->category:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    move-exception v0

    const-string v1, " getCategory error : "

    invoke-static {v1}, Lcom/zeekr/sdk/mediacenter/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    const-string v2, "f"

    invoke-static {v0, v1, v2}, Lcom/zeekr/sdk/mediacenter/e;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFrequency()I
    .locals 5

    .line 1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/zeekr/sdk/mediacenter/f;->a:Lecarx/xsf/mediacenter/vr/QRadioResult;

    iget v2, v1, Lecarx/xsf/mediacenter/vr/QRadioResult;->sourceType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 2
    iget-object v1, v1, Lecarx/xsf/mediacenter/vr/QRadioResult;->freq:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/zeekr/sdk/mediacenter/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/zeekr/sdk/mediacenter/f;->a:Lecarx/xsf/mediacenter/vr/QRadioResult;

    iget-object v1, v1, Lecarx/xsf/mediacenter/vr/QRadioResult;->freq:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 4
    const-string v2, "f"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFrequency():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 9
    iget-object v1, v1, Lecarx/xsf/mediacenter/vr/QRadioResult;->freq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/zeekr/sdk/mediacenter/f;->a:Lecarx/xsf/mediacenter/vr/QRadioResult;

    iget-object v1, v1, Lecarx/xsf/mediacenter/vr/QRadioResult;->freq:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 11
    const-string v2, "f"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFrequency():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_1
    return v0

    .line 12
    :catch_0
    move-exception v1

    const-string v2, " getFrequency error : "

    invoke-static {v2}, Lcom/zeekr/sdk/mediacenter/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 13
    const-string v3, "f"

    invoke-static {v1, v2, v3}, Lcom/zeekr/sdk/mediacenter/e;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public final getLocation()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zeekr/sdk/mediacenter/f;->a:Lecarx/xsf/mediacenter/vr/QRadioResult;

    iget-object v0, v0, Lecarx/xsf/mediacenter/vr/QRadioResult;->location:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    move-exception v0

    const-string v1, " getLocation error : "

    invoke-static {v1}, Lcom/zeekr/sdk/mediacenter/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    const-string v2, "f"

    invoke-static {v0, v1, v2}, Lcom/zeekr/sdk/mediacenter/e;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMediaType()I
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zeekr/sdk/mediacenter/f;->a:Lecarx/xsf/mediacenter/vr/QRadioResult;

    iget v0, v0, Lecarx/xsf/mediacenter/vr/QRadioResult;->mediaType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2
    :catch_0
    move-exception v0

    const-string v1, " getMediaType error : "

    invoke-static {v1}, Lcom/zeekr/sdk/mediacenter/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    const-string v2, "f"

    invoke-static {v0, v1, v2}, Lcom/zeekr/sdk/mediacenter/e;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zeekr/sdk/mediacenter/f;->a:Lecarx/xsf/mediacenter/vr/QRadioResult;

    iget-object v0, v0, Lecarx/xsf/mediacenter/vr/QRadioResult;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    move-exception v0

    const-string v1, " getNickName error : "

    invoke-static {v1}, Lcom/zeekr/sdk/mediacenter/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    const-string v2, "f"

    invoke-static {v0, v1, v2}, Lcom/zeekr/sdk/mediacenter/e;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRawText()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zeekr/sdk/mediacenter/f;->a:Lecarx/xsf/mediacenter/vr/QRadioResult;

    iget-object v0, v0, Lecarx/xsf/mediacenter/vr/QRadioResult;->rawText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    move-exception v0

    const-string v1, " getRawText error : "

    invoke-static {v1}, Lcom/zeekr/sdk/mediacenter/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    const-string v2, "f"

    invoke-static {v0, v1, v2}, Lcom/zeekr/sdk/mediacenter/e;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSourceType()I
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zeekr/sdk/mediacenter/f;->a:Lecarx/xsf/mediacenter/vr/QRadioResult;

    iget v0, v0, Lecarx/xsf/mediacenter/vr/QRadioResult;->sourceType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2
    :catch_0
    move-exception v0

    const-string v1, " getSourceType error : "

    invoke-static {v1}, Lcom/zeekr/sdk/mediacenter/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    const-string v2, "f"

    invoke-static {v0, v1, v2}, Lcom/zeekr/sdk/mediacenter/e;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public final getTargetPlayType()I
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zeekr/sdk/mediacenter/f;->a:Lecarx/xsf/mediacenter/vr/QRadioResult;

    iget v0, v0, Lecarx/xsf/mediacenter/vr/QRadioResult;->targetPlayType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2
    :catch_0
    move-exception v0

    const-string v1, " getTargetPlayType error : "

    invoke-static {v1}, Lcom/zeekr/sdk/mediacenter/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    const-string v2, "f"

    invoke-static {v0, v1, v2}, Lcom/zeekr/sdk/mediacenter/e;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method
