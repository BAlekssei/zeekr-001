.class public Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;
.super Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;
.source "SentryModePopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;


# static fields
.field private static sLastClickTime:J


# instance fields
.field private btnSetting:Landroid/widget/Button;

.field private btnVideo:Landroid/widget/Button;

.field private dayNightMode:I

.field private icon:Landroid/widget/ImageView;

.field private isFirst:Z

.field private mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsServiceBound:Z

.field private mPositionX:I

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchClickView:Landroid/view/View;

.field private myService:Lcom/zeekr/sentry/ISwitchSevice;

.field private sentryContent:Landroid/view/View;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private tvSentry:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;-><init>(Landroid/content/Context;I)V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->dayNightMode:I

    .line 42
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->isFirst:Z

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mPositionX:I

    .line 289
    new-instance v1, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$3;-><init>(Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mHandler:Landroid/os/Handler;

    .line 327
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mIsServiceBound:Z

    .line 329
    new-instance v0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$4;-><init>(Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->serviceConnection:Landroid/content/ServiceConnection;

    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mContext:Landroid/content/Context;

    .line 77
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 78
    const/16 v0, 0x224

    const/16 v1, 0x186

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->updateAnimation(II)Z

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;)Lcom/zeekr/sentry/ISwitchSevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->myService:Lcom/zeekr/sentry/ISwitchSevice;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;Lcom/zeekr/sentry/ISwitchSevice;)Lcom/zeekr/sentry/ISwitchSevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;
    .param p1, "x1"    # Lcom/zeekr/sentry/ISwitchSevice;

    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->myService:Lcom/zeekr/sentry/ISwitchSevice;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    .line 39
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mIsServiceBound:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;
    .param p1, "x1"    # Z

    .line 39
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mIsServiceBound:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    .line 39
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->initSentryService()V

    return-void
.end method

.method private gotoGallery()V
    .locals 5

    .line 270
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ecarx.gallery.ACTION_EXTERNAL_OPEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ecarx.gallery"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 273
    const-string v1, "galleryCategory"

    const-string v2, "ecarx.intent.category.ECARX_THIRD_APP_OPEN_GALLERY_GUARD"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 276
    const-string v1, "SentryModePopupWindow"

    const-string v2, "gotoGallery: sendBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    goto :goto_0

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SentryModePopupWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gotoGallery exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private gotoSetting()V
    .locals 2

    .line 283
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ecarx.intent.action.ECARX_SENTRY_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.geely.pma.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 286
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 287
    return-void
.end method

.method private initSentryService()V
    .locals 5

    .line 319
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 320
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.zeekr.intent.action.SwitchSevice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string/jumbo v1, "zeekr.bx.sentry"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 323
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 324
    return-void
.end method

.method private initView(Z)V
    .locals 3
    .param p1, "isFullScreen"    # Z

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->setCanceledOnTouchOutside(Z)V

    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 151
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 152
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    const v1, 0x7f1200c9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 154
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 155
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x700

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 158
    const v2, 0x800033

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 159
    const/16 v2, 0x224

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 160
    const/16 v2, 0x186

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 161
    iget v2, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mPositionX:I

    add-int/lit8 v2, v2, -0x16

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 162
    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 163
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 164
    return-void
.end method

.method public static isFastClick(J)Z
    .locals 4
    .param p0, "clickTimeSpace"    # J

    .line 174
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 175
    .local v0, "currentTime":J
    sget-wide v2, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->sLastClickTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, p0

    if-gez v2, :cond_0

    .line 176
    const/4 v2, 0x1

    return v2

    .line 178
    :cond_0
    sput-wide v0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->sLastClickTime:J

    .line 179
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public changeTheme(I)V
    .locals 7
    .param p1, "value"    # I

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Entertainment_open"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 184
    .local v0, "oneWorld":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 185
    if-ne p1, v1, :cond_0

    .line 186
    const/4 p1, 0x2

    .line 190
    :cond_0
    const v3, 0x7f0806a5

    if-ne p1, v1, :cond_5

    .line 191
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->tvTitle:Landroid/widget/TextView;

    const v5, -0xc7c5c3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->tvSentry:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->icon:Landroid/widget/ImageView;

    const v6, 0x7f080607

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->btnVideo:Landroid/widget/Button;

    const v6, 0x7f08069f

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 195
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->btnVideo:Landroid/widget/Button;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 196
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->btnSetting:Landroid/widget/Button;

    const v6, 0x7f08069d

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 197
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->btnSetting:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 198
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->isFirst:Z

    if-eqz v4, :cond_2

    .line 199
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mSwitch:Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getCurrentSentryMode()I

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 200
    const-string v1, "SentryModePopupWindow"

    const-string/jumbo v4, "setChecked 2"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setTrackResource(I)V

    goto :goto_2

    .line 203
    :cond_2
    iget v4, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->dayNightMode:I

    if-ne v4, p1, :cond_3

    .line 204
    return-void

    .line 206
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mSwitch:Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getCurrentSentryMode()I

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 207
    const-string v1, "SentryModePopupWindow"

    const-string/jumbo v4, "setChecked 2"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setTrackResource(I)V

    .line 210
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->sentryContent:Landroid/view/View;

    const v3, 0x7f080491

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 235
    :catch_0
    move-exception v1

    goto/16 :goto_7

    .line 212
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->tvTitle:Landroid/widget/TextView;

    const v5, -0x4b4642

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->tvSentry:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->icon:Landroid/widget/ImageView;

    const v6, 0x7f080608

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->btnVideo:Landroid/widget/Button;

    const v6, 0x7f0806a0

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 216
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->btnVideo:Landroid/widget/Button;

    const v6, -0xd7d7d2

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 217
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->btnSetting:Landroid/widget/Button;

    const v6, 0x7f08069e

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 218
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->btnSetting:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 219
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->isFirst:Z

    if-eqz v4, :cond_7

    .line 220
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mSwitch:Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getCurrentSentryMode()I

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 221
    const-string v1, "SentryModePopupWindow"

    const-string/jumbo v4, "setChecked 3"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setTrackResource(I)V

    goto :goto_5

    .line 224
    :cond_7
    iget v3, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->dayNightMode:I

    if-ne v3, p1, :cond_8

    .line 225
    return-void

    .line 227
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mSwitch:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getCurrentSentryMode()I

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    move v1, v2

    :goto_4
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 228
    const-string v1, "SentryModePopupWindow"

    const-string/jumbo v3, "setChecked 3"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mSwitch:Landroid/widget/Switch;

    const v3, 0x7f0806a6

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setTrackResource(I)V

    .line 231
    :goto_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->sentryContent:Landroid/view/View;

    const v3, 0x7f080492

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 233
    :goto_6
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->dayNightMode:I

    .line 234
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->isFirst:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    goto :goto_8

    .line 235
    :goto_7
    nop

    .line 236
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 238
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_8
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0417

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a041a

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->gotoGallery()V

    .line 260
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->setDialogDismiss()V

    .line 261
    goto :goto_0

    .line 263
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->gotoSetting()V

    .line 264
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->setDialogDismiss()V

    .line 267
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 83
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f0d0139

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->setContentView(I)V

    .line 85
    const v0, 0x7f0a0415

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->sentryContent:Landroid/view/View;

    .line 86
    const v0, 0x7f0a0418

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->tvTitle:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f0a0419

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->tvSentry:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f0a041a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->btnVideo:Landroid/widget/Button;

    .line 89
    const v0, 0x7f0a0417

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->btnSetting:Landroid/widget/Button;

    .line 90
    const v0, 0x7f0a0416

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->icon:Landroid/widget/ImageView;

    .line 91
    const/16 v0, 0x186

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->paramsHeight:I

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->sentryContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->setOpenAnimationView(Landroid/view/View;)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->icon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$1;-><init>(Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->btnVideo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->btnSetting:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v0, 0x7f0a041b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mSwitch:Landroid/widget/Switch;

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getCurrentSentryMode()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 113
    const-string v0, "SentryModePopupWindow"

    const-string/jumbo v1, "setChecked 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const v0, 0x7f0a0457

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mSwitchClickView:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mSwitchClickView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$2;-><init>(Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->initView(Z)V

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->initSentryService()V

    .line 140
    return-void
.end method

.method public setDialogShow()V
    .locals 2

    .line 241
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getCurrentSentryMode()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 243
    const-string v0, "SentryModePopupWindow"

    const-string/jumbo v1, "setChecked 4"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->changeTheme(I)V

    .line 246
    invoke-super {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->setDialogShow()V

    .line 247
    return-void
.end method

.method public setPositionX(IZ)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "isFullScreen"    # Z

    .line 143
    const-string v0, "SentryModePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPositionX isFullScreen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mPositionX:I

    .line 145
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->initView(Z)V

    .line 146
    return-void
.end method

.method public setSentryMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 250
    const-string v0, "SentryModePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchClickView setSentryMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "mSwitch.isChecked() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->mSwitch:Landroid/widget/Switch;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 252
    const-string v0, "SentryModePopupWindow"

    const-string/jumbo v1, "setChecked 5"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void
.end method
