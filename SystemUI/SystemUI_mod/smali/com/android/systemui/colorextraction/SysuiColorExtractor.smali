.class public Lcom/android/systemui/colorextraction/SysuiColorExtractor;
.super Lcom/android/internal/colorextraction/ColorExtractor;
.source "SysuiColorExtractor.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private mHasBackdrop:Z

.field private mWallpaperVisible:Z

.field private final mWpHiddenColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/android/internal/colorextraction/types/Tonal;

    invoke-direct {v0, p1}, Lcom/android/internal/colorextraction/types/Tonal;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;-><init>(Landroid/content/Context;Lcom/android/internal/colorextraction/types/ExtractionType;Z)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/colorextraction/types/ExtractionType;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/android/internal/colorextraction/types/ExtractionType;
    .param p3, "registerVisibility"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/internal/colorextraction/ColorExtractor;-><init>(Landroid/content/Context;Lcom/android/internal/colorextraction/types/ExtractionType;)V

    .line 59
    new-instance v0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-direct {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mWpHiddenColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v0

    .line 62
    .local v0, "systemColors":Landroid/app/WallpaperColors;
    invoke-direct {p0, v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->updateDefaultGradients(Landroid/app/WallpaperColors;)V

    .line 64
    if-eqz p3, :cond_0

    .line 66
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 67
    .local v1, "windowManagerService":Landroid/view/IWindowManager;
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    .line 68
    .local v2, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/android/systemui/colorextraction/SysuiColorExtractor$1;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/colorextraction/SysuiColorExtractor$1;-><init>(Lcom/android/systemui/colorextraction/SysuiColorExtractor;Landroid/os/Handler;)V

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/view/IWindowManager;->registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z

    move-result v3

    .line 76
    .local v3, "visible":Z
    invoke-virtual {p0, v3}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->setWallpaperVisible(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v1    # "windowManagerService":Landroid/view/IWindowManager;
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "visible":Z
    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SysuiColorExtractor"

    const-string v3, "Can\'t listen to wallpaper visibility changes"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    const-class v1, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    .line 83
    .local v1, "wallpaperManager":Landroid/app/WallpaperManager;
    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {v1, p0}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    .line 86
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v1, p0, v2, v3}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;I)V

    .line 89
    :cond_1
    return-void
.end method

.method private updateDefaultGradients(Landroid/app/WallpaperColors;)V
    .locals 1
    .param p1, "colors"    # Landroid/app/WallpaperColors;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mWpHiddenColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-static {p1, v0}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 93
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 192
    const-string v0, "SysuiColorExtractor:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    const-string v0, "  Current wallpaper colors:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    system: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mSystemColors:Landroid/app/WallpaperColors;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    lock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mLockColors:Landroid/app/WallpaperColors;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 199
    .local v0, "system":[Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    iget-object v1, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 200
    .local v1, "lock":[Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    const-string v2, "  Gradients:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    system: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    lock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Default scrim: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mWpHiddenColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .locals 1
    .param p1, "which"    # I

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getColors(II)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    return-object v0
.end method

.method public getColors(II)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .locals 1
    .param p1, "which"    # I
    .param p2, "type"    # I

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getColors(IIZ)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    return-object v0
.end method

.method public getColors(IIZ)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .locals 1
    .param p1, "which"    # I
    .param p2, "type"    # I
    .param p3, "ignoreWallpaperVisibility"    # Z

    .line 160
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 161
    iget-boolean v0, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mWallpaperVisible:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mWpHiddenColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    return-object v0

    .line 162
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(II)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    return-object v0

    .line 167
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mHasBackdrop:Z

    if-eqz v0, :cond_3

    .line 168
    iget-object v0, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mWpHiddenColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    return-object v0

    .line 170
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(II)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    return-object v0
.end method

.method getFallbackColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mWpHiddenColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    return-object v0
.end method

.method public onColorsChanged(Landroid/app/WallpaperColors;II)V
    .locals 1
    .param p1, "colors"    # Landroid/app/WallpaperColors;
    .param p2, "which"    # I
    .param p3, "userId"    # I

    .line 97
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-eq p3, v0, :cond_0

    .line 99
    return-void

    .line 102
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/colorextraction/ColorExtractor;->onColorsChanged(Landroid/app/WallpaperColors;I)V

    .line 104
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 105
    invoke-direct {p0, p1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->updateDefaultGradients(Landroid/app/WallpaperColors;)V

    .line 107
    :cond_1
    return-void
.end method

.method setWallpaperVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 177
    iget-boolean v0, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mWallpaperVisible:Z

    if-eq v0, p1, :cond_0

    .line 178
    iput-boolean p1, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mWallpaperVisible:Z

    .line 179
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->triggerColorsChanged(I)V

    .line 181
    :cond_0
    return-void
.end method
