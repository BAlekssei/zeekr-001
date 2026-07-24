.class public Lcom/ecarx/eas/sdk/constant/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.ecarx.userProvider"

.field public static final BROADCAST_ACTION_LOGIN:Ljava/lang/String; = "receiver.csp.login.success.action"

.field public static final BROADCAST_ACTION_LOGOUT:Ljava/lang/String; = "receiver.csp.logout.action"

.field public static final KEY_ADDRESS:Ljava/lang/String; = "address"

.field public static final KEY_AVATAR_URL:Ljava/lang/String; = "avatarUrl"

.field public static final KEY_BIRTHDAY:Ljava/lang/String; = "birthday"

.field public static final KEY_CAR_MODEL:Ljava/lang/String; = "carModel"

.field public static final KEY_IS_LOGIN:Ljava/lang/String; = "isLogin"

.field public static final KEY_LEVEL:Ljava/lang/String; = "level"

.field public static final KEY_LEVEL_NAME:Ljava/lang/String; = "levelName"

.field public static final KEY_LOGINUSER:Ljava/lang/String; = "User"

.field public static final KEY_MOBILE_NUM:Ljava/lang/String; = "mobile"

.field public static final KEY_QUERY_LOGIN:Ljava/lang/String; = "isLogin"

.field public static final KEY_REFRESH_TOKEN:Ljava/lang/String; = "refreshToken"

.field public static final KEY_SEX:Ljava/lang/String; = "gender"

.field public static final KEY_TOKEN:Ljava/lang/String; = "accessToken"

.field public static final KEY_USER_ID:Ljava/lang/String; = "userId"

.field public static final KEY_USER_NAME:Ljava/lang/String; = "userName"

.field public static final LOGOUT_ERROR:Ljava/lang/String; = "has login is false"

.field public static final PATH:Ljava/lang/String; = "user"

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-string v0, "content://com.ecarx.userProvider/user"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ecarx/eas/sdk/constant/Constants;->URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
