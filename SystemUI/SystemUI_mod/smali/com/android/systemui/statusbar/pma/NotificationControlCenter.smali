.class public Lcom/android/systemui/statusbar/pma/NotificationControlCenter;
.super Ljava/lang/Object;
.source "NotificationControlCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/pma/NotificationControlCenter$ClassLoaderFilter;,
        Lcom/android/systemui/statusbar/pma/NotificationControlCenter$PluginContextWrapper;
    }
.end annotation


# static fields
.field private static instance:Lcom/android/systemui/statusbar/pma/NotificationControlCenter;


# instance fields
.field private final mClassLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private mComponentName:Landroid/content/ComponentName;

.field private mContextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationView:Landroid/view/View;

.field private mParentClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->instance:Lcom/android/systemui/statusbar/pma/NotificationControlCenter;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->mClassLoaders:Ljava/util/Map;

    .line 40
    const-string v0, "NotifyControlCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotificationControlCenter() : context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->initPluginInfo()V

    .line 43
    return-void
.end method

.method private getClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 2
    .param p1, "sourceDir"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->mClassLoaders:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->mClassLoaders:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0

    .line 220
    :cond_0
    new-instance v0, Ldalvik/system/PathClassLoader;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->getParentClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 221
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->mClassLoaders:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/pma/NotificationControlCenter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 52
    sget-object v0, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->instance:Lcom/android/systemui/statusbar/pma/NotificationControlCenter;

    if-nez v0, :cond_1

    .line 53
    const-class v0, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->instance:Lcom/android/systemui/statusbar/pma/NotificationControlCenter;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->instance:Lcom/android/systemui/statusbar/pma/NotificationControlCenter;

    .line 57
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 59
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->instance:Lcom/android/systemui/statusbar/pma/NotificationControlCenter;

    return-object v0
.end method

.method private getParentClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->mParentClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    .line 228
    const-string v0, "NotifyControlCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hostClassLoader= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v0, Lcom/android/systemui/statusbar/pma/NotificationControlCenter$ClassLoaderFilter;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "ecarx.notificationcenterui"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter$ClassLoaderFilter;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->mParentClassLoader:Ljava/lang/ClassLoader;

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->mParentClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method private getPluginView(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16
    .param p1, "hostContext"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "bundle"    # Landroid/os/Bundle;

    move-object/from16 v1, p1

    .line 184
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "cls":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 188
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    move-object/from16 v8, p0

    :try_start_1
    invoke-direct {v8, v6, v7}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->getClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v6

    .line 189
    .local v6, "classLoader":Ljava/lang/ClassLoader;
    new-instance v7, Lcom/android/systemui/statusbar/pma/NotificationControlCenter$PluginContextWrapper;

    const/4 v9, 0x3

    invoke-virtual {v1, v0, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v10

    invoke-direct {v7, v10, v6}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter$PluginContextWrapper;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    .line 192
    .local v7, "pluginContext":Landroid/content/Context;
    const/4 v10, 0x1

    invoke-static {v3, v10, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v11

    .line 194
    .local v11, "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v12, "createNotificationPanelView"

    new-array v13, v9, [Ljava/lang/Class;

    const-class v14, Landroid/content/Context;

    aput-object v14, v13, v5

    const-class v14, Landroid/content/Context;

    aput-object v14, v13, v10

    const-class v14, Landroid/os/Bundle;

    const/4 v15, 0x2

    aput-object v14, v13, v15

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 195
    .local v12, "localMethod":Ljava/lang/reflect/Method;
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v5

    aput-object v1, v9, v10

    aput-object p3, v9, v15

    invoke-virtual {v12, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 197
    .local v9, "view":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroid/view/View;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v10

    .line 206
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v3    # "cls":Ljava/lang/String;
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "classLoader":Ljava/lang/ClassLoader;
    .end local v7    # "pluginContext":Landroid/content/Context;
    .end local v9    # "view":Ljava/lang/Object;
    .end local v11    # "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "localMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 204
    :catch_1
    move-exception v0

    goto :goto_1

    .line 202
    :catch_2
    move-exception v0

    goto :goto_2

    .line 200
    :catch_3
    move-exception v0

    goto :goto_3

    .line 198
    :catch_4
    move-exception v0

    goto :goto_4

    .line 206
    :catch_5
    move-exception v0

    move-object/from16 v8, p0

    .line 207
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_6

    .line 204
    :catch_6
    move-exception v0

    move-object/from16 v8, p0

    .line 205
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_5

    .line 202
    :catch_7
    move-exception v0

    move-object/from16 v8, p0

    .line 203
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_5

    .line 200
    :catch_8
    move-exception v0

    move-object/from16 v8, p0

    .line 201
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_5

    .line 198
    :catch_9
    move-exception v0

    move-object/from16 v8, p0

    .line 199
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_4
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 208
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_5
    nop

    .line 209
    :goto_6
    return-object v2
.end method

.method private initPluginInfo()V
    .locals 8

    .line 66
    const-string v0, "NotifyControlCenter"

    const-string v1, "initPluginInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 68
    const-string v0, "NotifyControlCenter"

    const-string v1, "initPluginInfo Context==null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 72
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SYSTEMUI_ECARX_NOTIFICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, "intent":Landroid/content/Intent;
    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 74
    .local v2, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 75
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 76
    .local v5, "pkg":Ljava/lang/String;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .local v6, "componentName":Landroid/content/ComponentName;
    const-string v7, "ecarx.notificationcenterui"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 78
    iput-object v6, p0, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->mComponentName:Landroid/content/ComponentName;

    .line 79
    goto :goto_1

    .line 81
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "componentName":Landroid/content/ComponentName;
    :cond_1
    goto :goto_0

    .line 82
    :cond_2
    :goto_1
    return-void
.end method

.method private resetUIStatus(Landroid/content/Context;Landroid/content/ComponentName;ZI)V
    .locals 15
    .param p1, "hostContext"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "enabled"    # Z
    .param p4, "reason"    # I

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "cls":Ljava/lang/String;
    const-string v0, "NotifyControlCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetUIStatus packageName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v0, "NotifyControlCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetUIStatus cls "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 157
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_a

    move-object v6, p0

    :try_start_1
    invoke-direct {v6, v4, v5}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->getClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v4

    .line 158
    .local v4, "classLoader":Ljava/lang/ClassLoader;
    new-instance v5, Lcom/android/systemui/statusbar/pma/NotificationControlCenter$PluginContextWrapper;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    const/4 v7, 0x3

    move-object/from16 v8, p1

    :try_start_2
    invoke-virtual {v8, v1, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v9

    invoke-direct {v5, v9, v4}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter$PluginContextWrapper;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    .line 161
    .local v5, "pluginContext":Landroid/content/Context;
    const/4 v9, 0x1

    invoke-static {v2, v9, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v10

    .line 164
    .local v10, "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v11, "onEnabled"

    new-array v12, v7, [Ljava/lang/Class;

    const-class v13, Landroid/content/Context;

    aput-object v13, v12, v3

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v13, v12, v9

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x2

    aput-object v13, v12, v14

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 165
    .local v11, "localMethod":Ljava/lang/reflect/Method;
    const/4 v12, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v9

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v14

    invoke-virtual {v11, v12, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "classLoader":Ljava/lang/ClassLoader;
    .end local v5    # "pluginContext":Landroid/content/Context;
    .end local v10    # "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "localMethod":Ljava/lang/reflect/Method;
    goto :goto_a

    .line 174
    :catch_0
    move-exception v0

    goto :goto_1

    .line 172
    :catch_1
    move-exception v0

    goto :goto_3

    .line 170
    :catch_2
    move-exception v0

    goto :goto_5

    .line 168
    :catch_3
    move-exception v0

    goto :goto_7

    .line 166
    :catch_4
    move-exception v0

    goto :goto_9

    .line 174
    :catch_5
    move-exception v0

    goto :goto_0

    .line 172
    :catch_6
    move-exception v0

    goto :goto_2

    .line 170
    :catch_7
    move-exception v0

    goto :goto_4

    .line 168
    :catch_8
    move-exception v0

    goto :goto_6

    .line 166
    :catch_9
    move-exception v0

    goto :goto_8

    .line 174
    :catch_a
    move-exception v0

    move-object v6, p0

    :goto_0
    move-object/from16 v8, p1

    .line 175
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 175
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_b

    .line 172
    :catch_b
    move-exception v0

    move-object v6, p0

    :goto_2
    move-object/from16 v8, p1

    .line 173
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 173
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_a

    .line 170
    :catch_c
    move-exception v0

    move-object v6, p0

    :goto_4
    move-object/from16 v8, p1

    .line 171
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_5
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 171
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_a

    .line 168
    :catch_d
    move-exception v0

    move-object v6, p0

    :goto_6
    move-object/from16 v8, p1

    .line 169
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_7
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 169
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_a

    .line 166
    :catch_e
    move-exception v0

    move-object v6, p0

    :goto_8
    move-object/from16 v8, p1

    .line 167
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_9
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 176
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_a
    nop

    .line 177
    :goto_b
    return-void
.end method


# virtual methods
.method public addNotificationUI(Landroid/view/ViewGroup;)Z
    .locals 1
    .param p1, "panelHolder"    # Landroid/view/ViewGroup;

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->initPluginInfo()V

    .line 93
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->addNotificationUI(Landroid/view/ViewGroup;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public addNotificationUI(Landroid/view/ViewGroup;Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "panelHolder"    # Landroid/view/ViewGroup;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 103
    const-string v0, "NotifyControlCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addNotificationUI() called with: panelHolder = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], bundle = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v0, v2, p2}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->getPluginView(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->mNotificationView:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->mNotificationView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->mNotificationView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 111
    const/4 v0, 0x1

    return v0

    .line 113
    :cond_1
    const-string v0, "NotifyControlCenter"

    const-string v2, "addNotificationUI() called with: plugin view = NUll"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return v1

    .line 105
    :cond_2
    :goto_0
    const-string v0, "NotifyControlCenter"

    const-string v2, "Host context is NUll"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return v1
.end method

.method public resetNotificationListStatus(ZI)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "reason"    # I

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->resetUIStatus(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    .line 148
    return-void

    .line 144
    :cond_1
    :goto_0
    const-string v0, "NotifyControlCenter"

    const-string/jumbo v1, "resetNotificationListStatus Context==null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method
