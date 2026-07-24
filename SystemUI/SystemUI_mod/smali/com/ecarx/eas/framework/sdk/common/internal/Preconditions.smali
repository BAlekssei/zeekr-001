.class final Lcom/ecarx/eas/framework/sdk/common/internal/Preconditions;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 25
    .local p0, "value":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 28
    .end local p1    # "msg":Ljava/lang/String;
    nop

    .end local p0    # "value":Ljava/lang/Object;, "TT;"
    return-object p0

    .line 26
    .restart local p0    # "value":Ljava/lang/Object;, "TT;"
    .restart local p1    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    .end local p1    # "msg":Ljava/lang/String;
    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkState(ZLjava/lang/String;)V
    .locals 0
    .param p0, "result"    # Z
    .param p1, "msg"    # Ljava/lang/String;

    .line 33
    nop

    .end local p0    # "result":Z
    if-eqz p0, :cond_0

    .line 36
    .end local p1    # "msg":Ljava/lang/String;
    return-void

    .line 34
    .restart local p1    # "msg":Ljava/lang/String;
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .end local p1    # "msg":Ljava/lang/String;
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
