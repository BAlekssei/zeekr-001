.class public interface abstract Lcom/ecarx/eas/sdk/user/InternalUserAPI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/eas/sdk/user/IUserAPI;


# virtual methods
.method public abstract getAccessToken()Ljava/lang/String;
.end method

.method public abstract getLoginUser()Lcom/ecarx/eas/sdk/user/IUser;
.end method

.method public abstract getRefreshToken()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getToken()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasLogin()Z
.end method

.method public abstract launchLogin()Z
.end method

.method public abstract launchLogin(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract login(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation
.end method

.method public abstract logout()Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation
.end method

.method public abstract notifyRefreshTokenExpired()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract notifyTokenExpired()Z
.end method

.method public abstract setLoginCallback(Lcom/ecarx/eas/sdk/user/callback/LoginCallback;)Z
.end method

.method public abstract unregisterLoginCallback(Lcom/ecarx/eas/sdk/user/callback/LoginCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation
.end method
