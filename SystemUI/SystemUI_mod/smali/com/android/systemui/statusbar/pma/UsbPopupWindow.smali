.class public Lcom/android/systemui/statusbar/pma/UsbPopupWindow;
.super Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;
.source "UsbPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private isDay:Z

.field private mContext:Landroid/content/Context;

.field private mUsbPositionX:I

.field private music:Landroid/widget/LinearLayout;

.field private usbContent:Landroid/view/View;

.field private video:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->isDay:Z

    .line 60
    iput v0, p0, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->mUsbPositionX:I

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->mContext:Landroid/content/Context;

    .line 65
    const/16 v0, 0x224

    const/16 v1, 0x102

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->updateAnimation(II)Z

    .line 66
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;-><init>(Landroid/content/Context;I)V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->isDay:Z

    .line 60
    iput v0, p0, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->mUsbPositionX:I

    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->mContext:Landroid/content/Context;

    .line 71
    const/16 v0, 0x224

    const/16 v1, 0x102

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->updateAnimation(II)Z

    .line 72
    return-void
.end method

.method private initView(Z)V
    .locals 3
    .param p1, "isFullScreen"    # Z

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->setCanceledOnTouchOutside(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 104
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 105
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    const v1, 0x7f1200c9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 107
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 108
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x700

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 111
    const v2, 0x800033

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 112
    const/16 v2, 0x224

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 113
    const/16 v2, 0x102

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 114
    iget v2, p0, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->mUsbPositionX:I

    add-int/lit8 v2, v2, -0x18

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 115
    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 117
    return-void
.end method

.method private setViewColor(Z)V
    .locals 4
    .param p1, "isDay"    # Z

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->music:Landroid/widget/LinearLayout;

    const v1, 0x7f0800f1

    const v2, 0x7f0800ee

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->video:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->usbContent:Landroid/view/View;

    if-eqz p1, :cond_2

    const v1, 0x7f080491

    goto :goto_1

    :cond_2
    const v1, 0x7f080492

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 93
    return-void
.end method


# virtual methods
.method public changeTheme(I)V
    .locals 1
    .param p1, "value"    # I

    .line 120
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 121
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->isDay:Z

    goto :goto_0

    .line 123
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->isDay:Z

    .line 125
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->isDay:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->setViewColor(Z)V

    .line 126
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/high16 v1, 0x10000000

    const v2, 0x7f0a02f8

    if-ne v0, v2, :cond_0

    .line 136
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.ecarx.multimedia"

    const-string v3, "com.ecarx.multimedia.offline.USBSplashActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v2, "musicIntent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 139
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 140
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "musicIntent":Landroid/content/Intent;
    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v0, "launcher_statusbar_usb"

    const-string/jumbo v1, "\u97f3\u4e50"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackFunction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 145
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0a0519

    if-ne v0, v2, :cond_1

    .line 147
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "ecarx.intent.action.ECARX_THIRD_APP_OPEN_GALLERY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "ecarx.gallery"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v2, "ecarx.intent.category.ECARX_THIRD_APP_OPEN_GALLERY_USB"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 151
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 152
    :catch_1
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v0, "launcher_statusbar_usb"

    const-string/jumbo v1, "\u89c6\u9891"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackFunction(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->setDialogDismiss()V

    .line 158
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 76
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f0d0141

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->setContentView(I)V

    .line 78
    const v0, 0x7f0a02f8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->music:Landroid/widget/LinearLayout;

    .line 79
    const v0, 0x7f0a0519

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->video:Landroid/widget/LinearLayout;

    .line 80
    const v0, 0x7f0a04fd

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->usbContent:Landroid/view/View;

    .line 81
    const/16 v0, 0x102

    iput v0, p0, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->paramsHeight:I

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->usbContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->setOpenAnimationView(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->music:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$fHSBxKHvwzpTsilOUhu5A2Zdes8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$fHSBxKHvwzpTsilOUhu5A2Zdes8;-><init>(Lcom/android/systemui/statusbar/pma/UsbPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->video:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$fHSBxKHvwzpTsilOUhu5A2Zdes8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$fHSBxKHvwzpTsilOUhu5A2Zdes8;-><init>(Lcom/android/systemui/statusbar/pma/UsbPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->isDay:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->setViewColor(Z)V

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->initView(Z)V

    .line 87
    return-void
.end method

.method public setDialogShow()V
    .locals 0

    .line 129
    invoke-super {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->setDialogShow()V

    .line 130
    return-void
.end method

.method public setPositionX(IZ)V
    .locals 3
    .param p1, "usbPositionX"    # I
    .param p2, "isFullScreen"    # Z

    .line 96
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "UsbPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPositionX isFullScreen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->mUsbPositionX:I

    .line 98
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->initView(Z)V

    .line 99
    return-void
.end method
