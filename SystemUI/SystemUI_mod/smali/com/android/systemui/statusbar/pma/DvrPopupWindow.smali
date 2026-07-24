.class public Lcom/android/systemui/statusbar/pma/DvrPopupWindow;
.super Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;
.source "DvrPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog$OnConfirmedListener;


# instance fields
.field private final connectWatcher:Lcom/ecarx/xui/adaptapi/binder/IConnectable$IConnectWatcher;

.field private dvrConnectable:Lcom/ecarx/xui/adaptapi/binder/IConnectable;

.field private funcFlag:Z

.field private funcValue:I

.field private isAgreementConfirmed:Z

.field private mBgDvr:Landroid/view/View;

.field private mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentTheme:I

.field private mDvrForbid:Z

.field private mDvrImpl:Lcom/ecarx/xui/adaptapi/dvr/forp/Dvr;

.field private mDvrIsOn:Z

.field private mDvrText:Landroid/widget/TextView;

.field private mDvrTitle:Landroid/widget/TextView;

.field private mDvrUserAgreementDialog:Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;

.field mEditor:Landroid/content/SharedPreferences$Editor;

.field private mHandler:Landroid/os/Handler;

.field private mIDvrManagerImpl:Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;

.field private mIsOpenDvr:Landroid/widget/ImageView;

.field private mOpenAlbums:Landroid/widget/Button;

.field private mPositionX:I

.field private mRecord:Z

.field private mSoundRecording:Landroid/widget/LinearLayout;

.field private mSoundRecordingImg:Landroid/widget/ImageView;

.field private mSoundRecordingText:Landroid/widget/TextView;

.field private sharedPref:Landroid/content/SharedPreferences;

.field private statusISettings:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;-><init>(Landroid/content/Context;I)V

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mPositionX:I

    .line 97
    iput v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->funcValue:I

    .line 103
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mRecord:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->isAgreementConfirmed:Z

    .line 114
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrIsOn:Z

    .line 115
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrForbid:Z

    .line 248
    new-instance v0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow$1;-><init>(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->connectWatcher:Lcom/ecarx/xui/adaptapi/binder/IConnectable$IConnectWatcher;

    .line 409
    new-instance v0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow$2;-><init>(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mHandler:Landroid/os/Handler;

    .line 137
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    .line 138
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->createDvrImpl()V

    .line 140
    const/16 v0, 0x224

    const/16 v1, 0x212

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->updateAnimation(II)Z

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;)Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mIDvrManagerImpl:Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;)Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/DvrPopupWindow;
    .param p1, "x1"    # Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;

    .line 80
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mIDvrManagerImpl:Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;)Lcom/ecarx/xui/adaptapi/dvr/forp/Dvr;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrImpl:Lcom/ecarx/xui/adaptapi/dvr/forp/Dvr;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    .line 80
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrIsOn:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/DvrPopupWindow;
    .param p1, "x1"    # Z

    .line 80
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrIsOn:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/DvrPopupWindow;
    .param p1, "x1"    # Z

    .line 80
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrForbid:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/DvrPopupWindow;
    .param p1, "x1"    # Z

    .line 80
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setImgByDvrState(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/DvrPopupWindow;
    .param p1, "x1"    # Z

    .line 80
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setDvrOnOff(Z)V

    return-void
.end method

.method private createDvrImpl()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecarx/xui/adaptapi/dvr/forp/Dvr;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/dvr/forp/Dvr;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrImpl:Lcom/ecarx/xui/adaptapi/dvr/forp/Dvr;

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrImpl:Lcom/ecarx/xui/adaptapi/dvr/forp/Dvr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrImpl:Lcom/ecarx/xui/adaptapi/dvr/forp/Dvr;

    instance-of v0, v0, Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrImpl:Lcom/ecarx/xui/adaptapi/dvr/forp/Dvr;

    check-cast v0, Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->dvrConnectable:Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->dvrConnectable:Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->connectWatcher:Lcom/ecarx/xui/adaptapi/binder/IConnectable$IConnectWatcher;

    invoke-interface {v0, v1}, Lcom/ecarx/xui/adaptapi/binder/IConnectable;->registerConnectWatcher(Lcom/ecarx/xui/adaptapi/binder/IConnectable$IConnectWatcher;)V

    .line 183
    :cond_0
    return-void
.end method

.method private initDvrDisp()V
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDvrState()I

    move-result v0

    .line 188
    .local v0, "state":I
    if-ne v0, v2, :cond_0

    .line 189
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrIsOn:Z

    goto :goto_0

    .line 191
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrIsOn:Z

    .line 193
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrIsOn:Z

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setImgByDvrState(Z)V

    .line 195
    .end local v0    # "state":I
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/FunctionProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/pma/FunctionProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/FunctionProxy;->getIDvrFunction()Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrFunction;

    move-result-object v0

    const v3, 0x100300

    invoke-interface {v0, v3}, Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrFunction;->getFunctionValue(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->funcValue:I

    .line 196
    iget v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->funcValue:I

    if-ne v2, v0, :cond_2

    .line 197
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mRecord:Z

    .line 198
    const-string v0, "DvrPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDvrDisp: mRecord "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mRecord:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "funcValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->funcValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->changeThemeByRecord()V

    goto :goto_1

    .line 200
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->funcValue:I

    if-nez v0, :cond_3

    .line 201
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mRecord:Z

    .line 202
    const-string v0, "DvrPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDvrDisp: mRecord "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mRecord:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "funcValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->funcValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->changeThemeByRecord()V

    .line 205
    :cond_3
    :goto_1
    return-void
.end method

.method private initView(Z)V
    .locals 3
    .param p1, "isFullScreen"    # Z

    .line 268
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setCanceledOnTouchOutside(Z)V

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 270
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 271
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    const v1, 0x7f1200c9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 273
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 274
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x700

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 277
    const v2, 0x800033

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 278
    const/16 v2, 0x224

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 279
    const/16 v2, 0x212

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 280
    iget v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mPositionX:I

    add-int/lit8 v2, v2, -0x18

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 281
    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 282
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 283
    return-void
.end method

.method private oppGallery(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # Ljava/lang/String;

    .line 398
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ecarx.gallery.ACTION_EXTERNAL_OPEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ecarx.gallery"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 401
    const-string v1, "galleryCategory"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 403
    const-string v1, "DvrPopupWindow"

    const-string v2, "oppGallery: sendBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 407
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private setDvrOnOff(Z)V
    .locals 3
    .param p1, "isDvrOn"    # Z

    .line 336
    const-string v0, "DvrPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDvrOnOff isDvrOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 338
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mIDvrManagerImpl:Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mIDvrManagerImpl:Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v0}, Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;->doDvrCameraOperation(II)V

    .line 341
    :cond_0
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrIsOn:Z

    .line 342
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrIsOn:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setImgByDvrState(Z)V

    goto :goto_0

    .line 344
    :cond_1
    const-string v1, "persist.dvr.agree"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 345
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mIDvrManagerImpl:Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;

    if-eqz v1, :cond_2

    .line 346
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mIDvrManagerImpl:Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;

    invoke-interface {v1, v2, v0}, Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;->doDvrCameraOperation(II)V

    .line 348
    :cond_2
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrIsOn:Z

    .line 349
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrIsOn:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setImgByDvrState(Z)V

    goto :goto_0

    .line 351
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrUserAgreementDialog:Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->setOnConfirmedListener(Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog$OnConfirmedListener;)V

    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrUserAgreementDialog:Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->show()V

    .line 353
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrIsOn:Z

    .line 356
    :goto_0
    return-void
.end method

.method private setImgByDvrState(Z)V
    .locals 4
    .param p1, "isDvrOn"    # Z

    .line 364
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 365
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mIsOpenDvr:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mCurrentTheme:I

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080544

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080545

    goto :goto_0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110578

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 368
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mIsOpenDvr:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mCurrentTheme:I

    if-ne v3, v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080542

    :goto_2
    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080543

    goto :goto_2

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110579

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    :goto_4
    return-void
.end method

.method private track()V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mIDvrManagerImpl:Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrForbid:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 323
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrIsOn:Z

    xor-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrIsOn:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    nop

    :cond_1
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackDVR(II)V

    goto :goto_1

    .line 321
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrIsOn:Z

    xor-int/2addr v0, v1

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackDVR(II)V

    .line 325
    :goto_1
    return-void
.end method

.method private trackSound()V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mIDvrManagerImpl:Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrForbid:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 331
    :cond_0
    const-string v0, "launcher_statusbar_dvr_sound_recoarding_switch"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mRecord:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackSwitchStatus(Ljava/lang/String;I)V

    goto :goto_2

    .line 329
    :cond_2
    :goto_1
    const-string v0, "launcher_statusbar_dvr_sound_recoarding_switch"

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackSwitchStatus(Ljava/lang/String;I)V

    .line 333
    :goto_2
    return-void
.end method


# virtual methods
.method public changeTheme(I)V
    .locals 5
    .param p1, "value"    # I

    .line 208
    iput p1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mCurrentTheme:I

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrUserAgreementDialog:Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrUserAgreementDialog:Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->changeTheme(I)V

    .line 212
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 213
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mBgDvr:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    const v4, 0x7f080491

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 214
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060155

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mOpenAlbums:Landroid/widget/Button;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 217
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mOpenAlbums:Landroid/widget/Button;

    const v3, 0x7f0800f0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 219
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mSoundRecording:Landroid/widget/LinearLayout;

    const v3, 0x7f0803eb

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 220
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mSoundRecordingText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mRecord:Z

    if-eqz v2, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mSoundRecording:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mSoundRecordingImg:Landroid/widget/ImageView;

    const v1, 0x7f080540

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mSoundRecording:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mSoundRecordingImg:Landroid/widget/ImageView;

    const v1, 0x7f08053e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 229
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mBgDvr:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    const v4, 0x7f080492

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 230
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060159

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mOpenAlbums:Landroid/widget/Button;

    const v3, -0xd7d7d2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 233
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mOpenAlbums:Landroid/widget/Button;

    const v3, 0x7f0800f1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 235
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mSoundRecording:Landroid/widget/LinearLayout;

    const v3, 0x7f0803ec

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 236
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mSoundRecordingText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mRecord:Z

    if-eqz v2, :cond_3

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mSoundRecording:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mSoundRecordingImg:Landroid/widget/ImageView;

    const v1, 0x7f080541

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 241
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mSoundRecording:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mSoundRecordingImg:Landroid/widget/ImageView;

    const v1, 0x7f08053f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrIsOn:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setImgByDvrState(Z)V

    .line 246
    return-void
.end method

.method public changeThemeByRecord()V
    .locals 3

    .line 482
    const-string v0, "DvrPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeThemeByRecord: mRecord == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mRecord:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mCurrentTheme:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 484
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mRecord:Z

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mSoundRecording:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mSoundRecordingImg:Landroid/widget/ImageView;

    const v1, 0x7f080540

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mSoundRecording:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 489
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mSoundRecordingImg:Landroid/widget/ImageView;

    const v1, 0x7f08053e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 492
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mRecord:Z

    if-eqz v0, :cond_2

    .line 493
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mSoundRecording:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 494
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mSoundRecordingImg:Landroid/widget/ImageView;

    const v1, 0x7f080541

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 496
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mSoundRecording:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 497
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mSoundRecordingImg:Landroid/widget/ImageView;

    const v1, 0x7f08053f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 500
    :goto_0
    return-void
.end method

.method public getIsShowing()Z
    .locals 1

    .line 393
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a01e4

    if-eq v0, v1, :cond_3

    const v1, 0x7f0a033b

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a043c

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 302
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mRecord:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mRecord:Z

    .line 303
    const-string v0, "DvrPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick soundRecording: ,changed mRecord =="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mRecord:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "mRecord"

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mRecord:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 306
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mRecord:Z

    const v2, 0x100300

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/FunctionProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/pma/FunctionProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/FunctionProxy;->getIDvrFunction()Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrFunction;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrFunction;->setFunctionValue(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->funcFlag:Z

    .line 308
    const-string v0, "DvrPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: soundRecording, setFunctionValue true "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mRecord:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->funcFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/FunctionProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/pma/FunctionProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/FunctionProxy;->getIDvrFunction()Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrFunction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrFunction;->setFunctionValue(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->funcFlag:Z

    .line 311
    const-string v0, "DvrPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: soundRecording, setFunctionValue false "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mRecord:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->funcFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->trackSound()V

    .line 314
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->changeThemeByRecord()V

    goto :goto_1

    .line 289
    :cond_2
    const-string v0, "laucher_statusbar_sentinel_mode_album"

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackOperationTime(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "ecarx.intent.category.ECARX_THIRD_APP_OPEN_GALLERY_DVR"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->oppGallery(Landroid/content/Context;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setDialogDismiss()V

    .line 292
    goto :goto_1

    .line 294
    :cond_3
    const-string v0, "DvrPopupWindow"

    const-string v1, "click img_dvr"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 296
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 297
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 299
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->track()V

    .line 300
    nop

    .line 317
    .end local v0    # "message":Landroid/os/Message;
    :goto_1
    return-void
.end method

.method public onConfirmed()V
    .locals 4

    .line 519
    const-string v0, "DvrPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfirmed: mDvrIsOn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrIsOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "(mIDvrManagerImpl != null)=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mIDvrManagerImpl:Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrIsOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mIDvrManagerImpl:Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mIDvrManagerImpl:Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;

    const/4 v1, 0x2

    invoke-interface {v0, v1, v3}, Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;->doDvrCameraOperation(II)V

    .line 522
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrIsOn:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setImgByDvrState(Z)V

    .line 524
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 145
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->onCreate(Landroid/os/Bundle;)V

    .line 146
    const v0, 0x7f0d010b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setContentView(I)V

    .line 147
    const v0, 0x7f0a033b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mOpenAlbums:Landroid/widget/Button;

    .line 148
    const v0, 0x7f0a01e4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mIsOpenDvr:Landroid/widget/ImageView;

    .line 149
    const v0, 0x7f0a020d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mSoundRecordingImg:Landroid/widget/ImageView;

    .line 150
    const v0, 0x7f0a043c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mSoundRecording:Landroid/widget/LinearLayout;

    .line 151
    const v0, 0x7f0a0084

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mBgDvr:Landroid/view/View;

    .line 152
    const v0, 0x7f0a04c0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrTitle:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f0a04bf

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrText:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f0a04e1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mSoundRecordingText:Landroid/widget/TextView;

    .line 155
    const/16 v0, 0x212

    iput v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->paramsHeight:I

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mBgDvr:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setOpenAnimationView(Landroid/view/View;)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mOpenAlbums:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$Yetklax7H0xpbnTTM-Q5LGweX6A;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$Yetklax7H0xpbnTTM-Q5LGweX6A;-><init>(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mIsOpenDvr:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$Yetklax7H0xpbnTTM-Q5LGweX6A;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$Yetklax7H0xpbnTTM-Q5LGweX6A;-><init>(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mSoundRecording:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$Yetklax7H0xpbnTTM-Q5LGweX6A;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$Yetklax7H0xpbnTTM-Q5LGweX6A;-><init>(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->initView(Z)V

    .line 162
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/FunctionProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/pma/FunctionProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/FunctionProxy;->getIDvrFunction()Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrFunction;

    move-result-object v1

    const v2, 0x100300

    invoke-interface {v1, v2}, Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrFunction;->getFunctionValue(I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v3, v1, :cond_0

    .line 163
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mRecord:Z

    goto :goto_0

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/FunctionProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/pma/FunctionProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/FunctionProxy;->getIDvrFunction()Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrFunction;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrFunction;->getFunctionValue(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 165
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mRecord:Z

    .line 167
    :cond_1
    :goto_0
    const-string v1, "DvrPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate: mRecord == IDvrFunction.COMMON_VALUE_ON? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mRecord:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "record_settings"

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->sharedPref:Landroid/content/SharedPreferences;

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->changeThemeByRecord()V

    .line 173
    new-instance v0, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrUserAgreementDialog:Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrUserAgreementDialog:Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->create()V

    .line 175
    return-void
.end method

.method public readStateFromSharedPref()V
    .locals 6

    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "record_settings"

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 468
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "mRecord"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 469
    .local v1, "value":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/FunctionProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/pma/FunctionProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/FunctionProxy;->getIDvrFunction()Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrFunction;

    move-result-object v3

    const v4, 0x100300

    invoke-interface {v3, v4}, Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrFunction;->getFunctionValue(I)I

    move-result v3

    const/4 v5, 0x1

    if-ne v5, v3, :cond_0

    .line 470
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->statusISettings:Z

    goto :goto_0

    .line 471
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/FunctionProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/pma/FunctionProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/FunctionProxy;->getIDvrFunction()Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrFunction;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrFunction;->getFunctionValue(I)I

    move-result v3

    if-nez v3, :cond_1

    .line 472
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->statusISettings:Z

    .line 474
    :cond_1
    :goto_0
    const-string v2, "DvrPopupWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readStateFromSharedPref: statusISettings == IDvrFunction.COMMON_VALUE_ON? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->statusISettings:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sharedPref.getBoolean "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mRecord:Z

    .line 476
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "mRecord"

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mRecord:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 477
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 478
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->changeThemeByRecord()V

    .line 479
    return-void
.end method

.method public requestSoundRecording(Z)V
    .locals 3
    .param p1, "record"    # Z

    .line 503
    const-string v0, "DvrPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSoundRecording: record"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mRecord:Z

    .line 505
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mRecord"

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mRecord:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 506
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 507
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mRecord:Z

    const v1, 0x100300

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/FunctionProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/pma/FunctionProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/FunctionProxy;->getIDvrFunction()Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrFunction;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrFunction;->setFunctionValue(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->funcFlag:Z

    .line 509
    const-string v0, "DvrPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSoundRecording: setFunctionValue true "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mRecord:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->funcFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/FunctionProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/pma/FunctionProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/FunctionProxy;->getIDvrFunction()Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrFunction;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrFunction;->setFunctionValue(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->funcFlag:Z

    .line 512
    const-string v0, "DvrPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSoundRecording: setFunctionValue false "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mRecord:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->funcFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->changeThemeByRecord()V

    .line 515
    return-void
.end method

.method public setDialogShow()V
    .locals 1

    .line 375
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->dvrConnectable:Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->dvrConnectable:Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/binder/IConnectable;->disconnect()V

    .line 378
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->dvrConnectable:Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/binder/IConnectable;->unregisterConnectWatcher()V

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrUserAgreementDialog:Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrUserAgreementDialog;->getIsShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 381
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->dismiss()V

    .line 382
    return-void

    .line 385
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrForbid:Z

    if-nez v0, :cond_2

    .line 386
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->initDvrDisp()V

    .line 389
    :cond_2
    invoke-super {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->setDialogShow()V

    .line 390
    return-void
.end method

.method public setDvrOnOffForVR(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .line 359
    const-string v0, "DvrPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDvrOnOffForVR flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mDvrIsOn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrIsOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    xor-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setDvrOnOff(Z)V

    .line 361
    return-void
.end method

.method public setDvrStateValue(I)V
    .locals 2
    .param p1, "dvrState"    # I

    .line 444
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 452
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrIsOn:Z

    .line 453
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrForbid:Z

    .line 454
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrIsOn:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setImgByDvrState(Z)V

    .line 455
    goto :goto_0

    .line 457
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrIsOn:Z

    .line 458
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrForbid:Z

    .line 459
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrIsOn:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setImgByDvrState(Z)V

    .line 460
    goto :goto_0

    .line 446
    :pswitch_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrIsOn:Z

    .line 447
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrForbid:Z

    .line 448
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mDvrIsOn:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setImgByDvrState(Z)V

    .line 449
    nop

    .line 464
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPositionX(IZ)V
    .locals 3
    .param p1, "positionX"    # I
    .param p2, "isFullScreen"    # Z

    .line 262
    const-string v0, "DvrPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPositionX isFullScreen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iput p1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->mPositionX:I

    .line 264
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->initView(Z)V

    .line 265
    return-void
.end method
