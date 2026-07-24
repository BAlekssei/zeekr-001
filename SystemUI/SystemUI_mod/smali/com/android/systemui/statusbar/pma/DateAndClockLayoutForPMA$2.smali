.class Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;
.super Landroid/content/BroadcastReceiver;
.source "DateAndClockLayoutForPMA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    .line 314
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onReceive$0(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;Ljava/lang/String;)V
    .locals 2
    .param p1, "tz"    # Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->access$602(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->access$700(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->access$700(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->access$600(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 329
    :cond_0
    return-void
.end method

.method public static synthetic lambda$onReceive$1(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;Ljava/util/Locale;)V
    .locals 2
    .param p1, "newLocale"    # Ljava/util/Locale;

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->access$400(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->access$402(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;Ljava/util/Locale;)Ljava/util/Locale;

    .line 335
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->access$502(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;Ljava/lang/String;)Ljava/lang/String;

    .line 337
    :cond_0
    return-void
.end method

.method public static synthetic lambda$onReceive$2(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;)V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 342
    .local v0, "mContext":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->access$300(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;Landroid/content/Context;)V

    .line 343
    return-void
.end method

.method public static synthetic lambda$onReceive$3(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;)V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->updateClock()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 317
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_0

    .line 319
    return-void

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->access$000(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIntentReceiver action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    const-string/jumbo v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "tz":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$DateAndClockLayoutForPMA$2$XZYcG7Gr79y_wl99aMDZ_WAobCo;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$DateAndClockLayoutForPMA$2$XZYcG7Gr79y_wl99aMDZ_WAobCo;-><init>(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 330
    .end local v1    # "tz":Ljava/lang/String;
    goto/16 :goto_1

    :cond_1
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 345
    :cond_2
    const-string v1, "ACTION_TIME_CHANGE_CUSTOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 346
    const-string v1, "EXTRA_TIME_PREF_24_HOUR_FORMAT"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 347
    .local v1, "timeFormatPreference":I
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 348
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 349
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 350
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->access$100(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 351
    invoke-static {}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->access$200()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 352
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->access$000(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: timeFormatPreference = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "timeFormatPreference":I
    .end local v2    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 331
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 332
    .local v1, "newLocale":Ljava/util/Locale;
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$DateAndClockLayoutForPMA$2$FUa6JEQmy8tHF5OjVKJ4jDz7tpk;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$DateAndClockLayoutForPMA$2$FUa6JEQmy8tHF5OjVKJ4jDz7tpk;-><init>(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;Ljava/util/Locale;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 339
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 340
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$DateAndClockLayoutForPMA$2$2VgMzMaFx6UoaF3BjxYRyKMUUtE;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$DateAndClockLayoutForPMA$2$2VgMzMaFx6UoaF3BjxYRyKMUUtE;-><init>(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    .end local v1    # "newLocale":Ljava/util/Locale;
    :cond_4
    nop

    .line 355
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$DateAndClockLayoutForPMA$2$tlPij2uxD9yy4QaPnGCJl-ss27o;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$DateAndClockLayoutForPMA$2$tlPij2uxD9yy4QaPnGCJl-ss27o;-><init>(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 356
    return-void
.end method
