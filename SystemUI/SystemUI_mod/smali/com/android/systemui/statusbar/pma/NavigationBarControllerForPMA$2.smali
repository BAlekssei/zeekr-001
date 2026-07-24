.class Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;
.super Ljava/lang/Object;
.source "NavigationBarControllerForPMA.java"

# interfaces
.implements Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->initSliderAppClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    .line 248
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsNewApp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$1300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 335
    .local v0, "size":I
    if-lez v0, :cond_1

    .line 336
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$1300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 337
    .local v2, "newAppName":Ljava/lang/String;
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 338
    const/4 v1, 0x1

    return v1

    .line 340
    .end local v2    # "newAppName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 342
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public hideAppList()V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$700(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeAllSlider(Z)V

    .line 301
    return-void
.end method

.method public isPState(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isAdd"    # Z

    .line 347
    if-eqz p2, :cond_1

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$1400(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$1400(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$1400(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->removeAppList(Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public removeTask(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->removeTask(Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public showToast(I)V
    .locals 4
    .param p1, "state"    # I

    .line 323
    const-string v0, "NavigationBarControllerForPMA"

    const-string/jumbo v1, "showToast: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->t:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$ToastFormat;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$1200(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$1100(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$ToastFormat;->initToast(Landroid/content/Context;IZ)V

    .line 325
    return-void
.end method

.method public startActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;

    .line 251
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const-string v0, "NavigationBarControllerForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivity from applist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->closeDropDownBoxView()V

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->closeAllSlider(Z)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$900(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v0, "com.ecarx.multimedia"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$200(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "activityNow":Ljava/lang/String;
    const-string v2, "com.zeekr.media.qq"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    return-void

    .line 261
    :cond_1
    const-string v2, "Radio"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Radio"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 262
    return-void

    .line 263
    :cond_2
    const-string v2, "BlueTooth"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "BlueTooth"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 264
    return-void

    .line 265
    :cond_3
    const-string v2, "USB"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "Usb"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-string v2, "USB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "Usb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 268
    .end local v0    # "activityNow":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 266
    .restart local v0    # "activityNow":Ljava/lang/String;
    :cond_6
    :goto_0
    return-void

    .line 268
    .end local v0    # "activityNow":Ljava/lang/String;
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$700(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->getTopPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 269
    return-void

    .line 271
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->addRecent(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 274
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    const-string v2, "com.ecarx.multimedia"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 275
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$1000(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    move-object v0, v2

    .line 276
    if-eqz v0, :cond_9

    .line 277
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->startActivity(Landroid/content/Intent;)V

    .line 278
    return-void

    .line 281
    :cond_9
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 282
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->startActivityOnStack(Landroid/content/Intent;I)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/util/AndroidRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 291
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 293
    const-string v2, "NavigationBarControllerForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivity Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 287
    :catch_1
    move-exception v1

    .line 288
    .local v1, "e":Landroid/util/AndroidRuntimeException;
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 289
    const-string v2, "NavigationBarControllerForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivity AndroidRuntimeException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Landroid/util/AndroidRuntimeException;
    goto :goto_2

    .line 283
    :catch_2
    move-exception v1

    .line 284
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 285
    const-string v2, "NavigationBarControllerForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivity ActivityNotFoundException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_a
    :goto_2
    nop

    .line 296
    :cond_b
    :goto_3
    return-void
.end method

.method public unInstallApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    .line 305
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    const-string v0, "NavigationBarControllerForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unInstallApp packageName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$800(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/UninstallDialog;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/pma/UninstallDialog;->setPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$800(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/UninstallDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UninstallDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$800(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/UninstallDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$1100(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/UninstallDialog;->changeTheme(I)V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$800(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/UninstallDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UninstallDialog;->setDialogShow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_1
    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 316
    const-string v1, "NavigationBarControllerForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unInstallApp error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void
.end method
