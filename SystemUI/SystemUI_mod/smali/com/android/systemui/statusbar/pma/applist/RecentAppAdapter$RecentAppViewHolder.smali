.class public Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RecentAppAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecentAppViewHolder"
.end annotation


# instance fields
.field private H:Landroid/os/Handler;

.field private animationDown:Landroid/animation/ValueAnimator;

.field private app:Landroid/widget/ImageView;

.field appIconBitmap:Landroid/graphics/Bitmap;

.field private appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

.field private appPStatus:Landroid/widget/ImageView;

.field private code:I

.field private downLoading:F

.field private imgPrepareDownload:Landroid/widget/ImageView;

.field private isDownloading:Z

.field private isPrepare:Z

.field private mDownLoadAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 209
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    .line 210
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 203
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->code:I

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appIconBitmap:Landroid/graphics/Bitmap;

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->isDownloading:Z

    .line 234
    new-instance v0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$2;-><init>(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->mDownLoadAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 467
    new-instance v0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$5;-><init>(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->H:Landroid/os/Handler;

    .line 211
    const v0, 0x7f0a01c8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->app:Landroid/widget/ImageView;

    .line 212
    const v0, 0x7f0a04d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appPStatus:Landroid/widget/ImageView;

    .line 213
    const v0, 0x7f0a0205

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->imgPrepareDownload:Landroid/widget/ImageView;

    .line 214
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->animationDown:Landroid/animation/ValueAnimator;

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->animationDown:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->mDownLoadAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->animationDown:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$1;-><init>(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    .line 197
    iget v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->downLoading:F

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;
    .param p1, "x1"    # F

    .line 197
    iput p1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->downLoading:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->app:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;)Lcom/android/systemui/statusbar/pma/applist/AppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    .line 197
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->isDownloading:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->H:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    .line 197
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->isPrepare:Z

    return v0
.end method


# virtual methods
.method public checkStartup()V
    .locals 4

    .line 337
    :try_start_0
    invoke-static {}, Lcom/zeekr/sdk/policy/impl/PolicyProxy;->get()Lcom/zeekr/sdk/policy/impl/PolicyAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/policy/impl/PolicyAPI;->getAppPolicy()Lcom/zeekr/sdk/policy/ability/IAppPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zeekr/sdk/policy/ability/IAppPolicy;->checkStartup(Ljava/lang/String;)Lcom/zeekr/sdk/policy/bean/AppPolicyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/policy/bean/AppPolicyInfo;->getCode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->code:I

    .line 338
    invoke-static {}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const-string v0, "RecentAppAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recent checkStartup: code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_0
    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->code:I

    .line 343
    const-string v1, "RecentAppAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkStartup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public isPrepare()V
    .locals 5

    .line 359
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getInstall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->access$700(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 361
    .local v1, "v":I
    const-string v2, "RecentAppAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPrepare: versionCode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    if-nez v1, :cond_1

    .line 363
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->isPrepare:Z

    .line 364
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->imgPrepareDownload:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    return-void

    .line 370
    .end local v1    # "v":I
    :cond_1
    goto :goto_0

    .line 368
    :catch_0
    move-exception v1

    .line 369
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 371
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->isPrepare:Z

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->imgPrepareDownload:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 246
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->isPrepare:Z

    if-eqz v0, :cond_0

    .line 247
    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->checkStartup()V

    .line 250
    iget v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->code:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->code:I

    if-nez v0, :cond_1

    goto :goto_0

    .line 254
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->code:I

    if-ne v0, v2, :cond_2

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->access$200(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->access$200(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;->showToast(I)V

    goto :goto_1

    .line 258
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->code:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->access$200(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->access$200(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getActivity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;->startActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 251
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->access$200(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->access$200(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;->showToast(I)V

    .line 263
    :cond_4
    :goto_1
    return-void
.end method

.method public pState()V
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->access$200(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->access$200(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;->isPState(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appPStatus:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 351
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appPStatus:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 355
    return-void
.end method

.method public refresh(Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Ljava/lang/String;

    .line 377
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->isDownloading:Z

    .line 378
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->isPrepare()V

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.ecarx.multimedia"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setActivity(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getActivity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->getIconFromPackageName(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 382
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 383
    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appIconBitmap:Landroid/graphics/Bitmap;

    .line 385
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->isPrepare:Z

    const v2, 0x40066666    # 2.1f

    if-eqz v1, :cond_1

    .line 386
    iput v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->downLoading:F

    .line 387
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->app:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appIconBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getColorFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 389
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->downLoading:F

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_3

    .line 390
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->animationDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 391
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->animationDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 393
    :cond_2
    iput v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->downLoading:F

    .line 394
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->app:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 396
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->startAnimationInstallComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_4
    :goto_0
    goto :goto_1

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 403
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setApp(Lcom/android/systemui/statusbar/pma/applist/AppInfo;)V
    .locals 8
    .param p1, "a"    # Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    .line 266
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 271
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->isDownloading:Z

    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->isPrepare()V

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getActivity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->getIconFromPackageName(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 275
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 276
    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appIconBitmap:Landroid/graphics/Bitmap;

    .line 278
    :cond_1
    invoke-static {}, Lcom/zeekrlife/market/update/ZKMarketManager;->getInstance()Lcom/zeekrlife/market/update/ZKMarketManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zeekrlife/market/update/ZKMarketManager;->getAppTaskInfo(Ljava/lang/String;)Lcom/zeekrlife/market/update/AppTaskInfo;

    move-result-object v1

    .line 279
    .local v1, "mAppTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/zeekrlife/market/update/AppTaskInfo;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_4

    invoke-virtual {v1}, Lcom/zeekrlife/market/update/AppTaskInfo;->getState()I

    move-result v2

    const/16 v4, 0xe

    if-ge v2, v4, :cond_4

    invoke-virtual {v1}, Lcom/zeekrlife/market/update/AppTaskInfo;->getState()I

    move-result v2

    const/16 v4, 0x9

    if-eq v2, v4, :cond_4

    .line 280
    invoke-virtual {v1}, Lcom/zeekrlife/market/update/AppTaskInfo;->getState()I

    move-result v2

    const v4, 0x3c621965    # 0.0138f

    const/4 v5, 0x4

    if-eq v2, v3, :cond_3

    invoke-virtual {v1}, Lcom/zeekrlife/market/update/AppTaskInfo;->getState()I

    move-result v2

    if-eq v2, v5, :cond_3

    iget-wide v2, v1, Lcom/zeekrlife/market/update/AppTaskInfo;->total:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    iget-wide v2, v1, Lcom/zeekrlife/market/update/AppTaskInfo;->soFar:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    goto :goto_0

    .line 283
    :cond_2
    iget-wide v2, v1, Lcom/zeekrlife/market/update/AppTaskInfo;->soFar:J

    long-to-double v2, v2

    iget-wide v6, v1, Lcom/zeekrlife/market/update/AppTaskInfo;->total:J

    long-to-double v6, v6

    div-double/2addr v2, v6

    double-to-float v2, v2

    const v3, 0x3f44ea4a    # 0.76919997f

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    iput v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->downLoading:F

    goto :goto_1

    .line 281
    :cond_3
    :goto_0
    iput v4, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->downLoading:F

    .line 285
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->app:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appIconBitmap:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->downLoading:F

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getColorFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 286
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->imgPrepareDownload:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->isDownloading:Z

    .line 288
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$3;-><init>(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 307
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_2

    .line 309
    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->isPrepare:Z

    if-eqz v2, :cond_5

    .line 310
    const v2, 0x40066666    # 2.1f

    iput v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->downLoading:F

    .line 311
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->app:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appIconBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getColorFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 313
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->app:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "mAppTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    :goto_2
    goto :goto_3

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RecentAppAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPackageName ICON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->setDayNightMode()V

    .line 322
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->pState()V

    .line 323
    return-void

    .line 268
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->app:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    return-void
.end method

.method public setDayNightMode()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->isDay:Z

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->app:Landroid/widget/ImageView;

    const-string v1, "#00000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 328
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appPStatus:Landroid/widget/ImageView;

    const v1, 0x7f0803ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->app:Landroid/widget/ImageView;

    const-string v1, "#4d000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appPStatus:Landroid/widget/ImageView;

    const v1, 0x7f0803af

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 333
    :goto_0
    return-void
.end method

.method public setDownLoading(Z)V
    .locals 2
    .param p1, "is"    # Z

    .line 406
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->isDownloading:Z

    if-eq v0, p1, :cond_0

    .line 407
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->isDownloading:Z

    .line 408
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->isDownloading:Z

    if-eqz v0, :cond_0

    .line 409
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$4;-><init>(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 428
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 431
    :cond_0
    return-void
.end method

.method public startAnimationInstallComplete()V
    .locals 4

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->imgPrepareDownload:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->animationDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->animationDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->animationDown:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 463
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->animationDown:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->downLoading:F

    aput v3, v1, v2

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 464
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->animationDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 465
    return-void
.end method

.method public updateDownLoading(F)V
    .locals 4
    .param p1, "percent"    # F

    .line 434
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->isDownloading:Z

    if-nez v0, :cond_0

    .line 435
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->imgPrepareDownload:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->imgPrepareDownload:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->animationDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->animationDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 443
    :cond_2
    const v0, 0x3f44ea4a    # 0.76919997f

    mul-float/2addr v0, p1

    const v1, 0x3c621965    # 0.0138f

    add-float/2addr v0, v1

    .line 444
    .local v0, "downLoadProcess":F
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v2, v0, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 445
    .end local v0    # "downLoadProcess":F
    .local v2, "downLoadProcess":F
    const-string v0, "RecentAppAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDownLoading percent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", downLoadProcess: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->downLoading:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    .line 447
    return-void

    .line 449
    :cond_3
    iput v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->downLoading:F

    .line 450
    iget v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->downLoading:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 451
    const v0, 0x40066666    # 2.1f

    iput v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->downLoading:F

    .line 453
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->app:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appIconBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->downLoading:F

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getColorFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 454
    return-void
.end method
