.class public abstract Lcom/ecarx/eas/sdk/user/callback/LoginCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/eas/sdk/user/callback/ILoginCallBack;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogin()V
    .locals 0

    .line 29
    return-void
.end method

.method public onLogout()V
    .locals 0

    .line 42
    return-void
.end method

.method public onTokenRefresh(Ljava/lang/String;)V
    .locals 0

    .line 71
    return-void
.end method

.method public onUserCancelLogin()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    return-void
.end method
