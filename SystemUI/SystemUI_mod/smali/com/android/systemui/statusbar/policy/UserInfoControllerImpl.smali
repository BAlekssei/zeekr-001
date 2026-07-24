.class public Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;
.super Ljava/lang/Object;
.source "UserInfoControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/UserInfoController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mProfileReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUserAccount:Ljava/lang/String;

.field private mUserDrawable:Landroid/graphics/drawable/Drawable;

.field private mUserInfoTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;",
            ">;"
        }
    .end annotation
.end field

.field private mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 89
    new-instance v0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mProfileReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 63
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 64
    .local v1, "profileFilter":Landroid/content/IntentFilter;
    const-string v2, "android.provider.Contacts.PROFILE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v2, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mProfileReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mUserName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .line 44
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mUserAccount:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .line 44
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mUserInfoTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->notifyChanged()V

    return-void
.end method

.method private notifyChanged()V
    .locals 5

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

    .line 201
    .local v1, "listener":Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mUserName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mUserAccount:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;->onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 202
    .end local v1    # "listener":Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
    goto :goto_0

    .line 203
    :cond_0
    return-void
.end method

.method private queryForUserInformation()V
    .locals 18

    .line 121
    move-object/from16 v9, p0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 122
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v1, v9, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mContext:Landroid/content/Context;

    const-string v2, "android"

    new-instance v3, Landroid/os/UserHandle;

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v10, 0x0

    invoke-virtual {v1, v2, v10, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v1

    .line 130
    .local v11, "currentUserContext":Landroid/content/Context;
    nop

    .line 129
    nop

    .line 131
    iget v12, v0, Landroid/content/pm/UserInfo;->id:I

    .line 132
    .local v12, "userId":I
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v13

    .line 133
    .local v13, "isGuest":Z
    iget-object v14, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 134
    .local v14, "userName":Ljava/lang/String;
    iget-object v1, v9, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    move-result v1

    const v2, 0x7f12023f

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    move v8, v1

    goto :goto_0

    :cond_0
    move v8, v10

    .line 136
    .local v8, "lightIcon":Z
    :goto_0
    iget-object v1, v9, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 137
    .local v15, "res":Landroid/content/res/Resources;
    const v1, 0x7f0702e0

    .line 138
    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0702e1

    .line 139
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 137
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 141
    .local v16, "avatarSize":I
    move-object v6, v11

    .line 142
    .local v6, "context":Landroid/content/Context;
    new-instance v7, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;

    move-object v1, v7

    move-object v2, v9

    move-object v3, v14

    move v4, v12

    move/from16 v5, v16

    move-object v10, v7

    move v7, v13

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Ljava/lang/String;IILandroid/content/Context;ZZ)V

    iput-object v10, v9, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mUserInfoTask:Landroid/os/AsyncTask;

    .line 196
    iget-object v1, v9, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mUserInfoTask:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 197
    return-void

    .line 127
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v6    # "context":Landroid/content/Context;
    .end local v8    # "lightIcon":Z
    .end local v11    # "currentUserContext":Landroid/content/Context;
    .end local v12    # "userId":I
    .end local v13    # "isGuest":Z
    .end local v14    # "userName":Ljava/lang/String;
    .end local v15    # "res":Landroid/content/res/Resources;
    .end local v16    # "avatarSize":I
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UserInfoController"

    const-string v2, "Couldn\'t get user info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 124
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 125
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "UserInfoController"

    const-string v2, "Couldn\'t create user context"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mUserName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mUserAccount:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;->onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p1, Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 206
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->reloadUserInfo()V

    .line 207
    return-void
.end method

.method public reloadUserInfo()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mUserInfoTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mUserInfoTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mUserInfoTask:Landroid/os/AsyncTask;

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->queryForUserInformation()V

    .line 115
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p1, Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;)V

    return-void
.end method
