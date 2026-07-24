.class public Lcom/ecarx/xui/adaptapi/AdaptAPI;
.super Ljava/lang/Object;
.source "AdaptAPI.java"


# static fields
.field public static final VERSION:Ljava/lang/String;

.field public static final VERSION_INT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-string/jumbo v0, "zk_2.1.18.12"

    sput-object v0, Lcom/ecarx/xui/adaptapi/AdaptAPI;->VERSION:Ljava/lang/String;

    .line 14
    const/16 v0, 0xda

    sput v0, Lcom/ecarx/xui/adaptapi/AdaptAPI;->VERSION_INT:I

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
