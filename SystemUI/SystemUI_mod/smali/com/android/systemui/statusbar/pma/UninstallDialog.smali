.class public Lcom/android/systemui/statusbar/pma/UninstallDialog;
.super Landroid/app/AlertDialog;
.source "UninstallDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private appListTouchListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppListTouchListener;

.field private btnNo:Landroid/widget/TextView;

.field private btnYes:Landroid/widget/TextView;

.field private dialogContent:Landroid/widget/FrameLayout;

.field private isDay:Z

.field private mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private mContext:Landroid/content/Context;

.field private message:Landroid/widget/TextView;

.field private packageName:Ljava/lang/String;

.field private title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->isDay:Z

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->mContext:Landroid/content/Context;

    .line 51
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 52
    return-void
.end method

.method private initView()V
    .locals 3

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UninstallDialog;->setCanceledOnTouchOutside(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/UninstallDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 87
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 88
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 90
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x328

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 91
    const/16 v2, 0x178

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 92
    const/16 v2, 0x31

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 93
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 94
    const/16 v2, 0x14c

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 96
    return-void
.end method

.method private isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 164
    .local v0, "dialogBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/UninstallDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 165
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private setViewColor(Z)V
    .locals 4
    .param p1, "isDay"    # Z

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->title:Landroid/widget/TextView;

    const v1, -0x4b4642

    const v2, -0xc7c5c2

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->message:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->btnNo:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->btnYes:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const/4 v1, -0x1

    goto :goto_2

    :cond_3
    const v1, -0xd7d7d2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->btnYes:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    const v1, 0x7f0800f0

    goto :goto_3

    :cond_4
    const v1, 0x7f0800f1

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->btnNo:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    const v1, 0x7f0800ee

    goto :goto_4

    :cond_5
    const v1, 0x7f0800ef

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->dialogContent:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_6

    const v1, 0x7f0800e1

    goto :goto_5

    :cond_6
    const v1, 0x7f0800e2

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 77
    return-void
.end method


# virtual methods
.method public changeTheme(I)V
    .locals 1
    .param p1, "value"    # I

    .line 99
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 100
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->isDay:Z

    goto :goto_0

    .line 102
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->isDay:Z

    .line 104
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->isDay:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/UninstallDialog;->setViewColor(Z)V

    .line 105
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00a8

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a00ab

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    const-string v0, "AccountExitDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click btn_yes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/UninstallDialog;->setDialogShow()V

    .line 122
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 123
    .local v0, "uninstall_intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.DELETE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 125
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 126
    const-string v1, "APP_LIST"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0    # "uninstall_intent":Landroid/content/Intent;
    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/UninstallDialog;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 130
    const-string v1, "AccountExitDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unInstallApp error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 115
    :cond_1
    const-string v0, "AccountExitDialog"

    const-string v1, "click btn_no"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/UninstallDialog;->setDialogShow()V

    .line 117
    nop

    .line 135
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->appListTouchListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppListTouchListener;

    if-eqz v0, :cond_3

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->appListTouchListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppListTouchListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppListTouchListener;->closeApplistDelayed()V

    .line 138
    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 56
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f0d0140

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UninstallDialog;->setContentView(I)V

    .line 58
    const v0, 0x7f0a00a8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UninstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->btnNo:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0a00ab

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UninstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->btnYes:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0a04d5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UninstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->message:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0a04e3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UninstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->title:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0a04f3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/UninstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->dialogContent:Landroid/widget/FrameLayout;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->btnNo:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$6zltbG0cEFuwrxikvuSOLLtwTkQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$6zltbG0cEFuwrxikvuSOLLtwTkQ;-><init>(Lcom/android/systemui/statusbar/pma/UninstallDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->btnYes:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$6zltbG0cEFuwrxikvuSOLLtwTkQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$6zltbG0cEFuwrxikvuSOLLtwTkQ;-><init>(Lcom/android/systemui/statusbar/pma/UninstallDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->isDay:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/UninstallDialog;->setViewColor(Z)V

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/UninstallDialog;->initView()V

    .line 67
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/pma/UninstallDialog;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->btnNo:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->playSoundEffect(I)V

    .line 159
    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAppListTouchListener(Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppListTouchListener;)V
    .locals 0
    .param p1, "appListTouchListener"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppListTouchListener;

    .line 108
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->appListTouchListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppListTouchListener;

    .line 109
    return-void
.end method

.method public setDialogShow()V
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/UninstallDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/UninstallDialog;->dismiss()V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/UninstallDialog;->show()V

    .line 146
    :goto_0
    return-void
.end method

.method public setPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "app"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->message:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u786e\u8ba4\u5378\u8f7d\u201c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u201d\u5417"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/UninstallDialog;->packageName:Ljava/lang/String;

    .line 82
    return-void
.end method
