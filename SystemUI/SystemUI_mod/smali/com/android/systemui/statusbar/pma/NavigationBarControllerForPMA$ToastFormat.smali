.class public Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$ToastFormat;
.super Ljava/lang/Object;
.source "NavigationBarControllerForPMA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToastFormat"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field lastTime:J

.field textId:I

.field private toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 1197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$ToastFormat;->toast:Landroid/widget/Toast;

    .line 1195
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$ToastFormat;->textId:I

    .line 1196
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$ToastFormat;->lastTime:J

    .line 1198
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$ToastFormat;->context:Landroid/content/Context;

    .line 1199
    return-void
.end method


# virtual methods
.method public initToast(Landroid/content/Context;IZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # I
    .param p3, "isDay"    # Z

    .line 1201
    iget v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$ToastFormat;->textId:I

    if-eq v0, p2, :cond_0

    .line 1202
    iput p2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$ToastFormat;->textId:I

    goto :goto_0

    .line 1203
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$ToastFormat;->lastTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1204
    return-void

    .line 1206
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$ToastFormat;->lastTime:J

    .line 1208
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$ToastFormat;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    .line 1209
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$ToastFormat;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1211
    :cond_2
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "initToast: showToast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1213
    .local v0, "mView":Landroid/view/View;
    const v1, 0x7f0a04e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1214
    .local v1, "mText":Landroid/widget/TextView;
    if-eqz p3, :cond_3

    const v2, 0x7f080640

    goto :goto_1

    :cond_3
    const v2, 0x7f080641

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1215
    const/4 v2, 0x5

    if-ne p2, v2, :cond_4

    .line 1216
    const-string/jumbo v2, "\u4e3a\u4e86\u60a8\u7684\u884c\u8f66\u5b89\u5168\uff0c\u8bf7\u5728\u505c\u8f66\u9a7b\u8f66\u7684\u5b89\u5168\u73af\u5883\u4e2d\u8fd0\u884c\u5a31\u4e50\u5e94\u7528"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1217
    :cond_4
    const/4 v2, 0x4

    if-ne p2, v2, :cond_5

    .line 1218
    const-string/jumbo v2, "\u6b63\u5728\u5b89\u88c5\u5e94\u7528\uff0c\u8bf7\u7a0d\u540e"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    :cond_5
    :goto_2
    const/4 v2, 0x3

    if-ne p2, v2, :cond_6

    .line 1220
    const-string/jumbo v2, "\u6b63\u5728\u66f4\u65b0\u5e94\u7528\uff0c\u8bf7\u7a0d\u540e"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1221
    :cond_6
    const/4 v2, 0x7

    if-ne p2, v2, :cond_7

    .line 1222
    const-string/jumbo v2, "\u7cfb\u7edfOTA\u5347\u7ea7\u81ea\u5e26\u5e94\u7528\uff0c\u4e0d\u53ef\u6682\u505c"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    :cond_7
    const/16 v2, 0x8

    if-ne p2, v2, :cond_8

    .line 1224
    const-string/jumbo v2, "\u62b1\u6b49\uff0c\u6682\u65f6\u65e0\u6cd5\u4e0b\u8f7d"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1225
    :cond_8
    const/16 v2, 0x9

    if-ne p2, v2, :cond_9

    .line 1226
    const-string v2, "AVM\u8fd0\u884c\u4e2d\uff0c\u76f8\u673a\u4e0e\u6d41\u5a92\u4f53\u4e0d\u53ef\u7528"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1228
    :cond_9
    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$ToastFormat;->toast:Landroid/widget/Toast;

    .line 1229
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/16 v4, 0x58

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1230
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1231
    if-eqz p3, :cond_a

    const v3, -0xc7c5c3

    goto :goto_3

    :cond_a
    const v3, -0x4b4642

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1232
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$ToastFormat;->toast:Landroid/widget/Toast;

    invoke-virtual {v3, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1233
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$ToastFormat;->toast:Landroid/widget/Toast;

    const/16 v4, 0x37

    const/4 v5, 0x0

    const/16 v6, 0xa

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 1234
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$ToastFormat;->toast:Landroid/widget/Toast;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 1235
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$ToastFormat;->toast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1236
    const-string v3, "NavigationBarControllerForPMA"

    const-string v4, "initToast: show showToast"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    return-void
.end method
