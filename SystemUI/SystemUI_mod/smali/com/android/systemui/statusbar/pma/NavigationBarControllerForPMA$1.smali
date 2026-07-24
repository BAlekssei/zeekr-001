.class Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$1;
.super Ljava/lang/Object;
.source "NavigationBarControllerForPMA.java"

# interfaces
.implements Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->initSliderClick()V
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

    .line 189
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeMediaApp()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    const-string v1, "ecarx.launcher3"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$500(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public isMediaTop(Ljava/lang/String;)Z
    .locals 2
    .param p1, "historyPackage"    # Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$100(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "top":Ljava/lang/String;
    const-string v1, "com.ecarx.multimedia"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.zeekr.media.qq"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.zeekr.media"

    .line 217
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.netease.cloudmusic.iot"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 216
    :goto_1
    return v1
.end method

.method public onChangeImgVolume(Z)V
    .locals 1
    .param p1, "isOut"    # Z

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$602(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;Z)Z

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$700(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setOutMuteState(Z)V

    .line 229
    return-void
.end method

.method public setAppListTouchListener(Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppListTouchListener;)V
    .locals 1
    .param p1, "appListTouchListener"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppListTouchListener;

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$800(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/UninstallDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/UninstallDialog;->setAppListTouchListener(Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppListTouchListener;)V

    .line 234
    return-void
.end method

.method public startMediaFromSlider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "isFromNavi"    # Ljava/lang/Boolean;

    .line 192
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "NavigationBarControllerForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openMediaApp pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$100(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 196
    const-string v0, "com.zeekr.media.qq"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    return-void

    .line 198
    :cond_1
    const-string v0, "com.ecarx.multimedia"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$200(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "activityNow":Ljava/lang/String;
    const-string v1, "Radio"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Radio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    return-void

    .line 202
    :cond_2
    const-string v1, "BlueTooth"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "BlueTooth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 203
    return-void

    .line 204
    :cond_3
    const-string v1, "USB"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "Usb"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    const-string v1, "USB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Usb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 205
    :cond_5
    return-void

    .line 209
    .end local v0    # "activityNow":Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->sendBroadcastToBTPhone()V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$400(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 211
    return-void
.end method
