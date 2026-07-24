.class public Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private code:I

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18
    nop

    .end local p1    # "code":I
    iput p1, p0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;->code:I

    .line 19
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
    .end local p2    # "msg":Ljava/lang/String;
    iput-object p2, p0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;->msg:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 24
    nop

    .end local p2    # "msg":Ljava/lang/String;
    .end local p3    # "cause":Ljava/lang/Throwable;
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
    return-void
.end method
