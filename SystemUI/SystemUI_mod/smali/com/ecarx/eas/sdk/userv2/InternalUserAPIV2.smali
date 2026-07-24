.class public interface abstract Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/eas/sdk/userv2/IUserAPIV2;


# virtual methods
.method public abstract getToken()Ljava/lang/String;
.end method

.method public abstract getUserInfo()Lcom/ecarx/eas/sdk/userv2/IUserInfo;
.end method

.method public abstract hasLogin()Z
.end method

.method public abstract launchToLogin(Z)Z
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

.method public abstract refreshToken()Ljava/lang/String;
.end method

.method public abstract refreshUserInfo()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation
.end method

.method public abstract setLoginListener(Lcom/ecarx/eas/sdk/userv2/ILoginListener;)Z
.end method

.method public abstract unregisterLoginCallback(Lcom/ecarx/eas/sdk/userv2/ILoginListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation
.end method
