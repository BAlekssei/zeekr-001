.class public final Lcom/zeekr/weather/YandexWeatherHost;
.super Ljava/lang/Object;
.source "YandexWeatherHost.java"

# Размещает виджет Яндекс Погоды (AppWidgetHost) поверх штатной карточки погоды.
# Какой виджет: Settings.Global "ya_weather_widget" = имя класса провайдера
# (по умолчанию ru.yandex.weatherplugin.YandexBigWeatherWidget).

.field private static sHost:Landroid/appwidget/AppWidgetHost;

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    const-string v0, "YandexWeather"
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    return-void
.end method

.method private static provider(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 3
    const-string v0, "ru.yandex.weatherplugin.YandexBigWeatherWidget"
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object v1
    const-string v2, "ya_weather_widget"
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    move-result v2
    if-nez v2, :cond_0
    move-object v0, v1
    :cond_0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    :catch_0
    new-instance v1, Landroid/content/ComponentName;
    const-string v2, "ru.yandex.weatherplugin"
    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    return-object v1
.end method

.method public static attach(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 9
    :try_start_0
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;
    move-result-object v0
    invoke-static {p0}, Lcom/zeekr/weather/YandexWeatherHost;->provider(Landroid/content/Context;)Landroid/content/ComponentName;
    move-result-object v1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object v2
    sget-object v3, Lcom/zeekr/weather/YandexWeatherHost;->sHost:Landroid/appwidget/AppWidgetHost;
    if-nez v3, :cond_host
    new-instance v3, Landroid/appwidget/AppWidgetHost;
    const v4, 0x59570001
    invoke-direct {v3, v2, v4}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V
    sput-object v3, Lcom/zeekr/weather/YandexWeatherHost;->sHost:Landroid/appwidget/AppWidgetHost;
    :cond_host
    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHost;->startListening()V
    const-string v4, "ya_weather"
    const/4 v5, 0x0
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v4
    const-string v5, "id"
    const/4 v6, -0x1
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    move-result v5
    const/4 v6, -0x1
    if-eq v5, v6, :cond_new
    # сохранённый id: проверяем, что он ещё привязан к нужному провайдеру
    invoke-virtual {v0, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    move-result-object v6
    if-eqz v6, :cond_del
    iget-object v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;
    invoke-virtual {v6, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-nez v6, :cond_have
    :cond_del
    invoke-virtual {v3, v5}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :cond_new
    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I
    move-result v5
    invoke-virtual {v0, v5, v1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z
    move-result v6
    if-nez v6, :cond_bound
    invoke-virtual {v3, v5}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    const-string v6, "bindAppWidgetIdIfAllowed refused"
    invoke-static {v6}, Lcom/zeekr/weather/YandexWeatherHost;->log(Ljava/lang/String;)V
    return-void
    :cond_bound
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v6
    const-string v7, "id"
    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V
    # у виджета есть экран настройки — без него провайдер не рисует данные; открываем один раз при привязке
    invoke-virtual {v0, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    move-result-object v6
    if-eqz v6, :cond_have
    iget-object v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;
    if-eqz v6, :cond_have
    new-instance v7, Landroid/content/Intent;
    const-string v8, "android.appwidget.action.APPWIDGET_CONFIGURE"
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    invoke-virtual {v7, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    const-string v6, "appWidgetId"
    invoke-virtual {v7, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    const/high16 v6, 0x10000000
    invoke-virtual {v7, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :cond_have
    invoke-virtual {v0, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    move-result-object v6
    invoke-virtual {v3, p0, v5, v6}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    move-result-object v6
    # AppWidgetHostView сам добавляет стандартный отступ виджета (≈8dp) — убираем, чтобы заполнить карточку 1:1
    const/4 v7, 0x0
    invoke-virtual {v6, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V
    const-string v7, "ya_weather"
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    move-result-object v8
    if-eqz v8, :cond_noold
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :cond_noold
    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v8, -0x1
    invoke-direct {v7, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
    invoke-virtual {p1, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    return-void
    :catch_0
    move-exception v0
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/zeekr/weather/YandexWeatherHost;->log(Ljava/lang/String;)V
    return-void
.end method
