.class public Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;
.super Ljava/lang/Object;
.source "WindowHelper.java"


# static fields
.field private static sArrayListWindowViews:Z = false

.field private static final sCustomWindowPrefix:Ljava/lang/String; = "/CustomWindow"

.field private static final sDialogWindowPrefix:Ljava/lang/String; = "/DialogWindow"

.field private static sIsInitialized:Z = false

.field private static sItemViewGetDataMethod:Ljava/lang/reflect/Method; = null

.field private static sListMenuItemViewClazz:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final sMainWindowPrefix:Ljava/lang/String; = "/MainWindow"

.field private static sPhoneWindowClazz:Ljava/lang/Class; = null

.field private static sPopupWindowClazz:Ljava/lang/Class; = null

.field private static final sPopupWindowPrefix:Ljava/lang/String; = "/PopupWindow"

.field private static sViewArrayWindowViews:Z

.field private static sViewSizeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static sWindowManger:Ljava/lang/Object;

.field private static viewsField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sIsInitialized:Z

    .line 33
    sput-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sArrayListWindowViews:Z

    .line 34
    sput-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sViewArrayWindowViews:Z

    .line 160
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper$1;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper$1;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sViewSizeComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static filterNullAndDismissToastView([Landroid/view/View;)[Landroid/view/View;
    .locals 7
    .param p0, "array"    # [Landroid/view/View;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 175
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 176
    .local v1, "currentTime":J
    move-object v3, p0

    .line 177
    .local v3, "result":[Landroid/view/View;
    array-length v4, p0

    .line 179
    .local v4, "length":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 180
    aget-object v6, v3, v5

    .line 181
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 182
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 186
    .end local v5    # "i":I
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [Landroid/view/View;

    .line 187
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 188
    return-object v3
.end method

.method private static findMenuItemView(Landroid/view/View;Landroid/view/MenuItem;)Landroid/view/View;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "item"    # Landroid/view/MenuItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 210
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfActionMenuItem(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfToolbar(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "androidx.appcompat.widget.Toolbar"

    const-string v1, "android.support.v7.widget.Toolbar"

    const-string v2, "android.widget.Toolbar"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "mNavButtonView"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findField([Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 212
    .local v0, "navButtonView":Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne v0, p0, :cond_0

    .line 213
    return-object p0

    .line 216
    .end local v0    # "navButtonView":Landroid/view/View;
    :cond_0
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getMenuItemData(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 217
    return-object p0

    .line 219
    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 220
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 221
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->findMenuItemView(Landroid/view/View;Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    .line 222
    .local v1, "menuView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 223
    return-object v1

    .line 220
    .end local v1    # "menuView":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private static findTabView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tabHostTag"    # Ljava/lang/String;

    .line 293
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getTabHostTag(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 294
    const-string v0, "getCurrentTabView"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 296
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 297
    nop

    .local v1, "i":I
    :goto_0
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 298
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->findTabView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 299
    .local v1, "tabHostView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 300
    return-object v1

    .line 297
    .end local v1    # "tabHostView":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_0

    .line 304
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getClickView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 8
    .param p0, "menuItem"    # Landroid/view/MenuItem;

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "i":I
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 233
    return-object v1

    .line 235
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->init()V

    .line 236
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getWindowViews()[Landroid/view/View;

    move-result-object v2

    .line 240
    .local v2, "windows":[Landroid/view/View;
    :try_start_0
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 241
    .local v5, "window2":Landroid/view/View;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sPopupWindowClazz:Ljava/lang/Class;

    if-ne v6, v7, :cond_1

    .line 242
    invoke-static {v5, p0}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->findMenuItemView(Landroid/view/View;Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v6

    move-object v7, v6

    .local v7, "menuView":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 243
    return-object v7

    .line 240
    .end local v5    # "window2":Landroid/view/View;
    .end local v7    # "menuView":Landroid/view/View;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 247
    :cond_2
    array-length v3, v2

    .line 248
    .local v3, "length":I
    :goto_1
    if-ge v0, v3, :cond_4

    .line 249
    aget-object v4, v2, v0

    .line 250
    .local v4, "window":Landroid/view/View;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sPopupWindowClazz:Ljava/lang/Class;

    if-eq v5, v6, :cond_3

    .line 251
    invoke-static {v4, p0}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->findMenuItemView(Landroid/view/View;Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v5

    .local v6, "menuView":Landroid/view/View;
    if-eqz v5, :cond_3

    .line 252
    return-object v6

    .line 255
    .end local v6    # "menuView":Landroid/view/View;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 257
    .end local v4    # "window":Landroid/view/View;
    :cond_4
    return-object v1

    .line 262
    .end local v3    # "length":I
    :catch_0
    move-exception v3

    .line 263
    .local v3, "e":Ljava/lang/Exception;
    return-object v1

    .line 260
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 261
    .local v3, "e2":Ljava/lang/IllegalAccessException;
    return-object v1

    .line 258
    .end local v3    # "e2":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    .line 259
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    return-object v1
.end method

.method public static getClickView(Ljava/lang/String;)Landroid/view/View;
    .locals 6
    .param p0, "tabHostTag"    # Ljava/lang/String;

    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "i":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 270
    return-object v2

    .line 272
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->init()V

    .line 273
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getWindowViews()[Landroid/view/View;

    move-result-object v1

    .line 277
    .local v1, "windows":[Landroid/view/View;
    :goto_0
    :try_start_0
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 278
    aget-object v3, v1, v0

    .line 279
    .local v3, "window":Landroid/view/View;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sPopupWindowClazz:Ljava/lang/Class;

    if-eq v4, v5, :cond_1

    .line 280
    invoke-static {v3, p0}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->findTabView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v4

    .local v5, "tabHostView":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 281
    return-object v5

    .line 284
    .end local v5    # "tabHostView":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    .end local v3    # "window":Landroid/view/View;
    :cond_2
    return-object v2

    .line 287
    :catch_0
    move-exception v3

    .line 288
    .local v3, "e":Ljava/lang/Exception;
    return-object v2
.end method

.method public static getMainWindowPrefix()Ljava/lang/String;
    .locals 1

    .line 322
    const-string v0, "/MainWindow"

    return-object v0
.end method

.method private static getMenuItemData(Landroid/view/View;)Ljava/lang/Object;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 200
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sListMenuItemViewClazz:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 201
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sItemViewGetDataMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 202
    :cond_0
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfAndroidXListMenuItemView(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfSupportListMenuItemView(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfBottomNavigationItemView(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 205
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 203
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getItemData(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getSortedWindowViews()[Landroid/view/View;
    .locals 3

    .line 151
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getWindowViews()[Landroid/view/View;

    move-result-object v0

    .line 152
    .local v0, "views":[Landroid/view/View;
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 153
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Landroid/view/View;

    .line 154
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sViewSizeComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 157
    :cond_0
    return-object v0
.end method

.method private static getSubWindowPrefix(Landroid/view/View;)Ljava/lang/String;
    .locals 4
    .param p0, "root"    # Landroid/view/View;

    .line 326
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 327
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_3

    instance-of v1, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_3

    .line 328
    move-object v1, v0

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 329
    .local v1, "type":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 330
    const-string v2, "/MainWindow"

    return-object v2

    .line 332
    :cond_0
    const/16 v2, 0x63

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sPhoneWindowClazz:Ljava/lang/Class;

    if-ne v2, v3, :cond_1

    .line 333
    const-string v2, "/DialogWindow"

    return-object v2

    .line 335
    :cond_1
    const/16 v2, 0x7cf

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sPopupWindowClazz:Ljava/lang/Class;

    if-ne v2, v3, :cond_2

    .line 336
    const-string v2, "/PopupWindow"

    return-object v2

    .line 338
    :cond_2
    const/16 v2, 0xbb7

    if-ge v1, v2, :cond_3

    .line 339
    const-string v2, "/CustomWindow"

    return-object v2

    .line 342
    .end local v1    # "type":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 343
    .local v1, "rootClazz":Ljava/lang/Class;
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sPhoneWindowClazz:Ljava/lang/Class;

    if-ne v1, v2, :cond_4

    .line 344
    const-string v2, "/DialogWindow"

    return-object v2

    .line 346
    :cond_4
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sPopupWindowClazz:Ljava/lang/Class;

    if-ne v1, v2, :cond_5

    .line 347
    const-string v2, "/PopupWindow"

    return-object v2

    .line 349
    :cond_5
    const-string v2, "/CustomWindow"

    return-object v2
.end method

.method private static getTabHostTag(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 308
    instance-of v0, p0, Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    .line 309
    const-string v0, "getCurrentTabTag"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 311
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getWindowPrefix(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p0, "root"    # Landroid/view/View;

    .line 315
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getCurrentRootWindowsHashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 316
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getMainWindowPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 318
    :cond_0
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getSubWindowPrefix(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getWindowViews()[Landroid/view/View;
    .locals 6

    .line 120
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/view/View;

    .line 121
    .local v1, "result":[Landroid/view/View;
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sWindowManger:Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 122
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v2

    .line 123
    .local v2, "current":Landroid/app/Activity;
    const/4 v3, 0x0

    .line 124
    .local v3, "decorView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 126
    .local v4, "window":Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->isActive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 127
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 130
    .end local v4    # "window":Landroid/view/Window;
    :cond_0
    if-eqz v2, :cond_1

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/view/View;

    aput-object v3, v4, v0

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    return-object v4

    .line 133
    .end local v2    # "current":Landroid/app/Activity;
    .end local v3    # "decorView":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    .line 134
    .local v0, "views":[Landroid/view/View;
    :try_start_0
    sget-boolean v2, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sArrayListWindowViews:Z

    if-eqz v2, :cond_3

    .line 135
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->viewsField:Ljava/lang/reflect/Field;

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sWindowManger:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/View;

    check-cast v2, [Landroid/view/View;

    move-object v0, v2

    goto :goto_1

    .line 136
    :cond_3
    sget-boolean v2, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sViewArrayWindowViews:Z

    if-eqz v2, :cond_4

    .line 137
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->viewsField:Ljava/lang/reflect/Field;

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sWindowManger:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/View;

    check-cast v2, [Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 139
    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 140
    nop

    .line 144
    .end local v1    # "result":[Landroid/view/View;
    .local v0, "result":[Landroid/view/View;
    move-object v1, v0

    .end local v0    # "result":[Landroid/view/View;
    .restart local v1    # "result":[Landroid/view/View;
    :cond_5
    goto :goto_2

    .line 142
    :catch_0
    move-exception v0

    .line 146
    :goto_2
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->filterNullAndDismissToastView([Landroid/view/View;)[Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static init()V
    .locals 8

    .line 41
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sIsInitialized:Z

    if-nez v0, :cond_7

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 44
    const-string v0, "android.view.WindowManagerGlobal"

    .local v0, "windowManagerClassName":Ljava/lang/String;
    goto :goto_0

    .line 46
    .end local v0    # "windowManagerClassName":Ljava/lang/String;
    :cond_0
    const-string v0, "android.view.WindowManagerImpl"

    .line 49
    .restart local v0    # "windowManagerClassName":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    move-object v3, v2

    .line 52
    .local v3, "windowManager":Ljava/lang/Class;
    const/4 v4, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    .line 54
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v1, :cond_1

    .line 55
    const-string v1, "sDefaultWindowManager"

    .local v1, "windowManagerString":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 56
    .end local v1    # "windowManagerString":Ljava/lang/String;
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xd

    if-lt v1, v5, :cond_2

    .line 57
    const-string v1, "sWindowManager"

    goto :goto_1

    .line 59
    :cond_2
    const-string v1, "mWindowManager"

    .line 62
    .restart local v1    # "windowManagerString":Ljava/lang/String;
    :goto_2
    const-string v5, "mViews"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    sput-object v5, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->viewsField:Ljava/lang/reflect/Field;

    .line 63
    invoke-virtual {v3, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 64
    .local v5, "instanceField":Ljava/lang/reflect/Field;
    sget-object v6, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->viewsField:Ljava/lang/reflect/Field;

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 65
    sget-object v6, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->viewsField:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/util/ArrayList;

    if-ne v6, v7, :cond_3

    .line 66
    sput-boolean v4, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sArrayListWindowViews:Z

    goto :goto_3

    .line 67
    :cond_3
    sget-object v6, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->viewsField:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, [Landroid/view/View;

    if-ne v6, v7, :cond_4

    .line 68
    sput-boolean v4, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sViewArrayWindowViews:Z

    .line 71
    :cond_4
    :goto_3
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 72
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sWindowManger:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "windowManagerString":Ljava/lang/String;
    .end local v5    # "instanceField":Ljava/lang/reflect/Field;
    goto :goto_4

    .line 77
    :catch_0
    move-exception v1

    goto :goto_5

    .line 75
    :catch_1
    move-exception v1

    goto :goto_4

    .line 73
    :catch_2
    move-exception v1

    .line 79
    :goto_4
    nop

    .line 82
    :goto_5
    :try_start_1
    const-string v1, "com.android.internal.view.menu.ListMenuItemView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sListMenuItemViewClazz:Ljava/lang/Class;

    .line 83
    const-string v1, "com.android.internal.view.menu.MenuView$ItemView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 84
    .local v1, "itemViewInterface":Ljava/lang/Class;
    const-string v2, "getItemData"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sItemViewGetDataMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3

    .end local v1    # "itemViewInterface":Ljava/lang/Class;
    goto :goto_6

    .line 87
    :catch_3
    move-exception v1

    goto :goto_7

    .line 85
    :catch_4
    move-exception v1

    .line 89
    :goto_6
    nop

    .line 92
    :goto_7
    const/16 v1, 0x17

    :try_start_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6

    if-lt v2, v1, :cond_5

    .line 94
    :try_start_3
    const-string v2, "com.android.internal.policy.PhoneWindow$DecorView"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sPhoneWindowClazz:Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5

    .line 97
    :goto_8
    goto :goto_9

    .line 95
    :catch_5
    move-exception v2

    .line 96
    .local v2, "var5":Ljava/lang/ClassNotFoundException;
    :try_start_4
    const-string v5, "com.android.internal.policy.DecorView"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sPhoneWindowClazz:Ljava/lang/Class;

    .end local v2    # "var5":Ljava/lang/ClassNotFoundException;
    goto :goto_8

    .line 99
    :cond_5
    const-string v2, "com.android.internal.policy.impl.PhoneWindow$DecorView"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sPhoneWindowClazz:Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_6

    .line 103
    :goto_9
    goto :goto_a

    .line 101
    :catch_6
    move-exception v2

    .line 106
    :goto_a
    :try_start_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_6

    .line 107
    const-string v1, "android.widget.PopupWindow$PopupDecorView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sPopupWindowClazz:Ljava/lang/Class;

    goto :goto_b

    .line 109
    :cond_6
    const-string v1, "android.widget.PopupWindow$PopupViewContainer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sPopupWindowClazz:Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_7

    .line 113
    :goto_b
    goto :goto_c

    .line 111
    :catch_7
    move-exception v1

    .line 115
    :goto_c
    sput-boolean v4, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sIsInitialized:Z

    .line 117
    .end local v0    # "windowManagerClassName":Ljava/lang/String;
    .end local v3    # "windowManager":Ljava/lang/Class;
    :cond_7
    return-void
.end method

.method public static isCustomWindow(Landroid/view/View;)Z
    .locals 2
    .param p0, "root"    # Landroid/view/View;

    .line 366
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getSubWindowPrefix(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "prefix":Ljava/lang/String;
    const-string v1, "/CustomWindow"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static isDecorView(Ljava/lang/Class;)Z
    .locals 1
    .param p0, "rootClass"    # Ljava/lang/Class;

    .line 192
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sIsInitialized:Z

    if-nez v0, :cond_0

    .line 193
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->init()V

    .line 195
    :cond_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sPhoneWindowClazz:Ljava/lang/Class;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sPopupWindowClazz:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isDialogOrPopupWindow(Landroid/view/View;)Z
    .locals 2
    .param p0, "root"    # Landroid/view/View;

    .line 361
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getSubWindowPrefix(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "prefix":Ljava/lang/String;
    const-string v1, "/DialogWindow"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/PopupWindow"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static isMainWindow(Landroid/view/View;)Z
    .locals 4
    .param p0, "root"    # Landroid/view/View;

    .line 353
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 354
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 355
    move-object v1, v0

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v2, v3

    nop

    :cond_0
    return v2

    .line 357
    :cond_1
    return v2
.end method
