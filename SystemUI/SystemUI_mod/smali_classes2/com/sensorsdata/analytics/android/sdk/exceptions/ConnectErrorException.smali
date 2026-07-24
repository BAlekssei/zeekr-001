.class public Lcom/sensorsdata/analytics/android/sdk/exceptions/ConnectErrorException;
.super Ljava/lang/Exception;
.source "ConnectErrorException.java"


# instance fields
.field private mRetryAfter:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 29
    const/16 v0, 0x7530

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/exceptions/ConnectErrorException;->mRetryAfter:I

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "strRetryAfter"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/exceptions/ConnectErrorException;->mRetryAfter:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    iput v1, p0, Lcom/sensorsdata/analytics/android/sdk/exceptions/ConnectErrorException;->mRetryAfter:I

    .line 39
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getRetryAfter()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/exceptions/ConnectErrorException;->mRetryAfter:I

    return v0
.end method
