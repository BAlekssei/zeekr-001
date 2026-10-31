.class public Lru/avasoff/Main;
.super Ljava/lang/Object;

# CLI for app_process: get | on | off | lang [<tag>]

.method static call(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    const-string v0, "android.media.AudioSystem"
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v0
    const/4 v1, 0x1
    new-array v2, v1, [Ljava/lang/Class;
    const/4 v3, 0x0
    const-class v4, Ljava/lang/String;
    aput-object v4, v2, v3
    invoke-virtual {v0, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    new-array v2, v1, [Ljava/lang/Object;
    aput-object p1, v2, v3
    const/4 v4, 0x0
    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 6
    const-string v0, "get"
    array-length v1, p0
    if-eqz v1, :go
    const/4 v1, 0x0
    aget-object v0, p0, v1
    :go
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    # lang [<tag>] — показать / сменить системный язык
    const-string v2, "lang"
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :avas
    array-length v2, p0
    const/4 v3, 0x2
    if-lt v2, v3, :langget
    const/4 v3, 0x1
    aget-object v3, p0, v3
    invoke-static {v3}, Lru/avasoff/Lang;->set(Ljava/lang/String;)V
    :langget
    invoke-static {}, Lru/avasoff/Lang;->get()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    return-void

    :avas
    const-string v2, "get"
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :get
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "avas_switch="
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    const-string v3, "setParameters"
    invoke-static {v3, v2}, Lru/avasoff/Main;->call(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v3
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :get
    const-string v2, "getParameters"
    const-string v3, "avas_switch"
    invoke-static {v2, v3}, Lru/avasoff/Main;->call(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    return-void
.end method
