.class public final Lcom/ecarx/eas/sdk/log/LogProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "OpenAPI_V4"


# instance fields
.field private enable:Z

.field private level:I

.field private logImpl:Lcom/ecarx/eas/sdk/log/ILog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 102
    iget-boolean v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->enable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->level:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->logImpl:Lcom/ecarx/eas/sdk/log/ILog;

    if-nez v0, :cond_0

    .line 104
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 106
    :cond_0
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/log/LogProxy;
    iget-object v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->logImpl:Lcom/ecarx/eas/sdk/log/ILog;

    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "msg":Ljava/lang/String;
    invoke-interface {v0, p1, p2}, Lcom/ecarx/eas/sdk/log/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_1
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 120
    iget-boolean v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->enable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->level:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 121
    iget-object v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->logImpl:Lcom/ecarx/eas/sdk/log/ILog;

    if-nez v0, :cond_0

    .line 122
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 124
    :cond_0
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/log/LogProxy;
    iget-object v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->logImpl:Lcom/ecarx/eas/sdk/log/ILog;

    .end local p1    # "tag":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .end local p2    # "msg":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local p3    # "tr":Ljava/lang/Throwable;
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/ecarx/eas/sdk/log/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_1
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 207
    iget-boolean v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->enable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->level:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    .line 208
    iget-object v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->logImpl:Lcom/ecarx/eas/sdk/log/ILog;

    if-nez v0, :cond_0

    .line 209
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 211
    :cond_0
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/log/LogProxy;
    iget-object v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->logImpl:Lcom/ecarx/eas/sdk/log/ILog;

    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "msg":Ljava/lang/String;
    invoke-interface {v0, p1, p2}, Lcom/ecarx/eas/sdk/log/ILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_1
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 225
    iget-boolean v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->enable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->level:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    .line 226
    iget-object v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->logImpl:Lcom/ecarx/eas/sdk/log/ILog;

    if-nez v0, :cond_0

    .line 227
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 229
    :cond_0
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/log/LogProxy;
    iget-object v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->logImpl:Lcom/ecarx/eas/sdk/log/ILog;

    .end local p1    # "tag":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .end local p2    # "msg":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local p3    # "tr":Ljava/lang/Throwable;
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/ecarx/eas/sdk/log/ILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_1
    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 137
    iget-boolean v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->enable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->level:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 138
    iget-object v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->logImpl:Lcom/ecarx/eas/sdk/log/ILog;

    if-nez v0, :cond_0

    .line 139
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 141
    :cond_0
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/log/LogProxy;
    iget-object v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->logImpl:Lcom/ecarx/eas/sdk/log/ILog;

    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "msg":Ljava/lang/String;
    invoke-interface {v0, p1, p2}, Lcom/ecarx/eas/sdk/log/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_1
    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 155
    iget-boolean v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->enable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->level:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->logImpl:Lcom/ecarx/eas/sdk/log/ILog;

    if-nez v0, :cond_0

    .line 157
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 159
    :cond_0
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/log/LogProxy;
    iget-object v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->logImpl:Lcom/ecarx/eas/sdk/log/ILog;

    .end local p1    # "tag":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .end local p2    # "msg":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local p3    # "tr":Ljava/lang/Throwable;
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/ecarx/eas/sdk/log/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_1
    return-void
.end method

.method public final setLogEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 40
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/log/LogProxy;
    .end local p1    # "enable":Z
    iput-boolean p1, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->enable:Z

    .line 41
    return-void
.end method

.method public final setLogImpl(Lcom/ecarx/eas/sdk/log/ILog;)V
    .locals 0
    .param p1, "logImpl"    # Lcom/ecarx/eas/sdk/log/ILog;

    .line 56
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/log/LogProxy;
    .end local p1    # "logImpl":Lcom/ecarx/eas/sdk/log/ILog;
    iput-object p1, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->logImpl:Lcom/ecarx/eas/sdk/log/ILog;

    .line 57
    return-void
.end method

.method public final setLogLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .line 48
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/log/LogProxy;
    .end local p1    # "level":I
    iput p1, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->level:I

    .line 49
    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 67
    iget-boolean v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->enable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->level:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 68
    iget-object v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->logImpl:Lcom/ecarx/eas/sdk/log/ILog;

    if-nez v0, :cond_0

    .line 69
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 71
    :cond_0
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/log/LogProxy;
    iget-object v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->logImpl:Lcom/ecarx/eas/sdk/log/ILog;

    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "msg":Ljava/lang/String;
    invoke-interface {v0, p1, p2}, Lcom/ecarx/eas/sdk/log/ILog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_1
    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 85
    iget-boolean v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->enable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->level:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 86
    iget-object v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->logImpl:Lcom/ecarx/eas/sdk/log/ILog;

    if-nez v0, :cond_0

    .line 87
    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 89
    :cond_0
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/log/LogProxy;
    iget-object v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->logImpl:Lcom/ecarx/eas/sdk/log/ILog;

    .end local p1    # "tag":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .end local p2    # "msg":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local p3    # "tr":Ljava/lang/Throwable;
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/ecarx/eas/sdk/log/ILog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_1
    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 172
    iget-boolean v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->enable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->level:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    .line 173
    iget-object v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->logImpl:Lcom/ecarx/eas/sdk/log/ILog;

    if-nez v0, :cond_0

    .line 174
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 176
    :cond_0
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/log/LogProxy;
    iget-object v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->logImpl:Lcom/ecarx/eas/sdk/log/ILog;

    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "msg":Ljava/lang/String;
    invoke-interface {v0, p1, p2}, Lcom/ecarx/eas/sdk/log/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_1
    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 190
    iget-boolean v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->enable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->level:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    .line 191
    iget-object v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->logImpl:Lcom/ecarx/eas/sdk/log/ILog;

    if-nez v0, :cond_0

    .line 192
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 194
    :cond_0
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/log/LogProxy;
    iget-object v0, p0, Lcom/ecarx/eas/sdk/log/LogProxy;->logImpl:Lcom/ecarx/eas/sdk/log/ILog;

    .end local p1    # "tag":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .end local p2    # "msg":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local p3    # "tr":Ljava/lang/Throwable;
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/ecarx/eas/sdk/log/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_1
    return-void
.end method
