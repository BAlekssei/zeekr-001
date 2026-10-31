.class public Lru/avasoff/Lang;
.super Ljava/lang/Object;

# Системный язык — тот же вызов, что делает zSupport (com.zsupport):
#   cfg = ActivityManagerNative.getDefault().getConfiguration()
#   cfg.setLocale(locale); cfg.userSetLocale = true
#   ActivityManagerNative.getDefault().updateConfiguration(cfg)
# system_server сам пишет persist.sys.locale, так что язык сохраняется после перезагрузки.
# Нужен CHANGE_CONFIGURATION: есть у root (app_process) и у приложения с platform-подписью.

.method static am()Ljava/lang/Object;
    .registers 4
    const-string v0, "android.app.ActivityManagerNative"
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v0
    const-string v1, "getDefault"
    const/4 v2, 0x0
    new-array v3, v2, [Ljava/lang/Class;
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    new-array v3, v2, [Ljava/lang/Object;
    const/4 v1, 0x0
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    return-object v0
.end method

# метод IActivityManager по имени (через публичный интерфейс, а не скрытый Proxy-класс)
.method static amMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 3
    const-string v0, "android.app.IActivityManager"
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v0
    invoke-virtual {v0, p0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    return-object v0
.end method

.method static config(Ljava/lang/Object;)Landroid/content/res/Configuration;
    .registers 4
    const-string v0, "getConfiguration"
    const/4 v1, 0x0
    new-array v2, v1, [Ljava/lang/Class;
    invoke-static {v0, v2}, Lru/avasoff/Lang;->amMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    new-array v2, v1, [Ljava/lang/Object;
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/res/Configuration;
    return-object v0
.end method

# текущие локали системы, например "ru-RU" или "zh-CN"
.method public static get()Ljava/lang/String;
    .registers 1
    invoke-static {}, Lru/avasoff/Lang;->am()Ljava/lang/Object;
    move-result-object v0
    invoke-static {v0}, Lru/avasoff/Lang;->config(Ljava/lang/Object;)Landroid/content/res/Configuration;
    move-result-object v0
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;
    move-result-object v0
    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

# tag: "ru-RU" (принимается и "ru_RU"), "en-US", "zh-CN"
.method public static set(Ljava/lang/String;)V
    .registers 9
    const/16 v0, 0x5f
    const/16 v1, 0x2d
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    move-result-object p0
    invoke-static {p0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;
    move-result-object v0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    move-result v1
    if-eqz v1, :ok
    new-instance v1, Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "bad locale: "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v1

    :ok
    invoke-static {}, Lru/avasoff/Lang;->am()Ljava/lang/Object;
    move-result-object v1
    invoke-static {v1}, Lru/avasoff/Lang;->config(Ljava/lang/Object;)Landroid/content/res/Configuration;
    move-result-object v2
    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    # cfg.userSetLocale = true  (иначе AMS не сохранит persist.sys.locale)
    const-class v3, Landroid/content/res/Configuration;
    const-string v4, "userSetLocale"
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v3
    const/4 v4, 0x1
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    # am.updateConfiguration(cfg)
    const/4 v5, 0x1
    const/4 v6, 0x0
    new-array v7, v5, [Ljava/lang/Class;
    const-class v3, Landroid/content/res/Configuration;
    aput-object v3, v7, v6
    const-string v4, "updateConfiguration"
    invoke-static {v4, v7}, Lru/avasoff/Lang;->amMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v3
    new-array v7, v5, [Ljava/lang/Object;
    aput-object v2, v7, v6
    invoke-virtual {v3, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    return-void
.end method

# ---- целевой язык (SharedPreferences "lang"/"target", по умолчанию ru-RU; "off" = не следить)

# "ru_RU" / "ru-ru" -> "ru-RU"
.method public static norm(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    const/16 v0, 0x5f
    const/16 v1, 0x2d
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;
    move-result-object v0
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

# основной (первый) язык системы
.method public static current()Ljava/lang/String;
    .registers 2
    invoke-static {}, Lru/avasoff/Lang;->am()Ljava/lang/Object;
    move-result-object v0
    invoke-static {v0}, Lru/avasoff/Lang;->config(Ljava/lang/Object;)Landroid/content/res/Configuration;
    move-result-object v0
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;
    move-result-object v0
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;
    move-result-object v0
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3
    const-string v0, "lang"
    const/4 v1, 0x0
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v0
    return-object v0
.end method

.method public static wanted(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    invoke-static {p0}, Lru/avasoff/Lang;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v0
    const-string v1, "target"
    const-string v2, "ru-RU"
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public static setWanted(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    invoke-static {p0}, Lru/avasoff/Lang;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v1, "target"
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    return-void
.end method

# вызывается из AvasService раз в 2 с: если язык не тот — вернуть
.method public static enforce(Landroid/content/Context;)V
    .registers 5
    invoke-static {p0}, Lru/avasoff/Lang;->wanted(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v0
    const-string v1, "off"
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :ret
    invoke-static {}, Lru/avasoff/Lang;->current()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v2
    if-nez v2, :ret
    invoke-static {v0}, Lru/avasoff/Lang;->set(Ljava/lang/String;)V
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "locale was "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, " -> switched to "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    const-string v3, "AvasOff"
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :ret
    return-void
.end method
