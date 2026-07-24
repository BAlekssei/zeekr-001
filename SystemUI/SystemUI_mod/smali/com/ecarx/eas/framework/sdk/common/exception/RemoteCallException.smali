.class public Lcom/ecarx/eas/framework/sdk/common/exception/RemoteCallException;
.super Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 12
    const/16 v0, 0x259

    .end local p1    # "msg":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    .line 13
    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/exception/RemoteCallException;
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 16
    const/16 v0, 0x259

    .end local p1    # "msg":Ljava/lang/String;
    .end local p2    # "cause":Ljava/lang/Throwable;
    invoke-direct {p0, v0, p1, p2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/exception/RemoteCallException;
    return-void
.end method
