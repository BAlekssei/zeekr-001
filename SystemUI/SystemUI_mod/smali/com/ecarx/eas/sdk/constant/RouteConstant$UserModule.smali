.class public Lcom/ecarx/eas/sdk/constant/RouteConstant$UserModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/eas/sdk/constant/RouteConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserModule"
.end annotation


# static fields
.field public static final METHOD_GET_ACCESS_TOKEN:Ljava/lang/String; = "user/getAccessToken"

.field public static final METHOD_GET_LOGIN_USER:Ljava/lang/String; = "user/getLoginUser"

.field public static final METHOD_GET_REFRESH_TOKEN:Ljava/lang/String; = "user/getRefreshToken"

.field public static final METHOD_GET_TOKEN:Ljava/lang/String; = "user/getToken"

.field public static final METHOD_HAS_LOGIN:Ljava/lang/String; = "user/hasLogin"

.field public static final METHOD_LAUNCH_LOGIN:Ljava/lang/String; = "user/launchLogin"

.field public static final METHOD_NOTIFY_REFRESH_TOKEN_EXPIRED:Ljava/lang/String; = "user/notifyRefreshTokenExpired"

.field public static final METHOD_NOTIFY_TOKEN_EXPIRED:Ljava/lang/String; = "user/notifyTokenExpired"

.field private static final METHOD_PARENT_PATH:Ljava/lang/String; = "user/"

.field public static final METHOD_REGISTER_CALLBACK:Ljava/lang/String; = "user/registerCallback"

.field public static final METHOD_REGISTER_USER_CALLBACK:Ljava/lang/String; = "user/registerCallback"

.field public static final METHOD_SET_LOGIN_CALLBACK:Ljava/lang/String; = "user/setLoginCallback"

.field public static final METHOD_UNREGISTER_USER_CALLBACK:Ljava/lang/String; = "user/unregisterCallback"

.field public static final MODULE_NAME:Ljava/lang/String; = "user"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
