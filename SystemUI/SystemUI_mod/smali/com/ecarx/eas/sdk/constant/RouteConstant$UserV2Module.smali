.class public Lcom/ecarx/eas/sdk/constant/RouteConstant$UserV2Module;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/eas/sdk/constant/RouteConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserV2Module"
.end annotation


# static fields
.field public static final METHOD_GET_TOKEN:Ljava/lang/String; = "userv2/getToken"

.field public static final METHOD_GET_USER_INFO:Ljava/lang/String; = "userv2/getUserInfo"

.field public static final METHOD_HAS_LOGIN:Ljava/lang/String; = "userv2/hasLogin"

.field public static final METHOD_LAUNCH_TO_LOGIN:Ljava/lang/String; = "userv2/launchToLogin"

.field private static final METHOD_PARENT_PATH:Ljava/lang/String; = "userv2/"

.field public static final METHOD_REFRESH_TOKEN:Ljava/lang/String; = "userv2/refreshToken"

.field public static final METHOD_REFRESH_USER_INFO:Ljava/lang/String; = "userv2/refreshUserInfo"

.field public static final MODULE_NAME:Ljava/lang/String; = "userv2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
