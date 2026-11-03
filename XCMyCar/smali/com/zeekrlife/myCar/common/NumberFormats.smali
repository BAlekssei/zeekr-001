.class public final Lcom/zeekrlife/myCar/common/NumberFormats;
.super Ljava/lang/Object;

# Internal decimal round trips must use ASCII digits and a dot, independently of UI locale.
# DecimalFormat's stock pattern and HALF_EVEN rounding remain unchanged.
.method public static create(Ljava/lang/String;)Ljava/text/DecimalFormat;
    .locals 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, p0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    return-object v2
.end method
