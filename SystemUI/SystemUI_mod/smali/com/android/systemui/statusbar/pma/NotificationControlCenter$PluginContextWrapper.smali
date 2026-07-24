.class Lcom/android/systemui/statusbar/pma/NotificationControlCenter$PluginContextWrapper;
.super Landroid/content/ContextWrapper;
.source "NotificationControlCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/NotificationControlCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PluginContextWrapper"
.end annotation


# instance fields
.field private final mClassLoader:Ljava/lang/ClassLoader;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 240
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 241
    iput-object p2, p0, Lcom/android/systemui/statusbar/pma/NotificationControlCenter$PluginContextWrapper;->mClassLoader:Ljava/lang/ClassLoader;

    .line 242
    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 3

    .line 262
    const-string v0, "NotifyControlCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBaseContext().getApplicationContext() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter$PluginContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter$PluginContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NotificationControlCenter$PluginContextWrapper;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 251
    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NotificationControlCenter$PluginContextWrapper;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter$PluginContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NotificationControlCenter$PluginContextWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NotificationControlCenter$PluginContextWrapper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter$PluginContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
