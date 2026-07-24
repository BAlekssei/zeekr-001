.class public Lcom/ecarx/eas/sdk/constant/RouteConstant$UserServiceModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/eas/sdk/constant/RouteConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserServiceModule"
.end annotation


# static fields
.field public static final METHOD_LOGIN:Ljava/lang/String; = "userService/login"

.field public static final METHOD_LOGOUT:Ljava/lang/String; = "userService/logout"

.field private static final METHOD_PARENT_PATH:Ljava/lang/String; = "userService/"

.field public static final METHOD_REGISTER_CALLBACK:Ljava/lang/String; = "userService/registerCallback"

.field public static final METHOD_UNREGISTER_CALLBACK:Ljava/lang/String; = "userService/unregisterCallback"

.field public static final MODULE_NAME:Ljava/lang/String; = "userService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
