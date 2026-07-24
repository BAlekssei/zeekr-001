.class public Lcom/ecarx/eas/framework/sdk/common/exception/SupportServerErrorException;
.super Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 14
    const/16 v0, 0x1f6

    .end local p1    # "msg":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    .line 15
    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/exception/SupportServerErrorException;
    return-void
.end method
