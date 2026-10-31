.class public Lru/avasoff/AvasService;
.super Landroid/app/Service;
.implements Ljava/lang/Runnable;

.field private started:Z
.field private am:Landroid/media/AudioManager;

.method public constructor <init>()V
    .registers 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    const/4 v0, 0x0
    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    iget-boolean v0, p0, Lru/avasoff/AvasService;->started:Z
    if-nez v0, :ret
    const/4 v0, 0x1
    iput-boolean v0, p0, Lru/avasoff/AvasService;->started:Z
    const-string v0, "audio"
    invoke-virtual {p0, v0}, Lru/avasoff/AvasService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/media/AudioManager;
    iput-object v0, p0, Lru/avasoff/AvasService;->am:Landroid/media/AudioManager;
    const-string v0, "AvasOff"
    const-string v1, "service started"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    new-instance v0, Ljava/lang/Thread;
    const-string v1, "avas-off"
    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :ret
    const/4 v0, 0x1
    return v0
.end method

.method public run()V
    .registers 5
    :loop
    :try_start
    iget-object v0, p0, Lru/avasoff/AvasService;->am:Landroid/media/AudioManager;
    const-string v1, "avas_switch"
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :lang
    const-string v2, "avas_switch=on"
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v2
    if-eqz v2, :lang
    const-string v2, "avas_switch=off"
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    const-string v2, "AvasOff"
    const-string v3, "AVAS was on -> switched off"
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end
    .catch Ljava/lang/Throwable; {:try_start .. :try_end} :catch

    # язык системы: вернуть целевой, если машина переключила сама
    :lang
    :try_start_1
    invoke-static {p0}, Lru/avasoff/Lang;->enforce(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_lang

    :sleep
    const-wide/16 v2, 0x7d0
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    goto :loop

    :catch
    move-exception v0
    const-string v1, "AvasOff"
    const-string v2, "poll failed"
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    goto :lang

    :catch_lang
    move-exception v0
    const-string v1, "AvasOff"
    const-string v2, "locale enforce failed"
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    goto :sleep
.end method
