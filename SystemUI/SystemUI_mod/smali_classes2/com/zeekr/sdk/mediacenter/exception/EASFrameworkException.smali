.class public Lcom/zeekr/sdk/mediacenter/exception/EASFrameworkException;
.super Ljava/lang/Exception;
.source "EASFrameworkException.java"


# annotations
.annotation build Lcom/zeekr/sdk/base/annotation/KeepSDK;
.end annotation


# instance fields
.field private code:I

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/zeekr/sdk/mediacenter/exception/EASFrameworkException;->code:I

    .line 3
    iput-object p2, p0, Lcom/zeekr/sdk/mediacenter/exception/EASFrameworkException;->msg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    iput p1, p0, Lcom/zeekr/sdk/mediacenter/exception/EASFrameworkException;->code:I

    .line 6
    iput-object p2, p0, Lcom/zeekr/sdk/mediacenter/exception/EASFrameworkException;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/zeekr/sdk/mediacenter/exception/EASFrameworkException;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zeekr/sdk/mediacenter/exception/EASFrameworkException;->msg:Ljava/lang/String;

    return-object v0
.end method
