.class Lcom/ecarx/eas/sdk/user/EASUserAPIImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->notifyTokenExpired()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;


# direct methods
.method constructor <init>(Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;

    .line 318
    nop

    .end local p1    # "this$0":Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;
    iput-object p1, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl$3;->this$0:Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/EASUserAPIImpl$3;
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 321
    new-instance v0, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;

    invoke-direct {v0}, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;-><init>()V

    .line 322
    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl$3;->this$0:Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;

    invoke-static {v1}, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->access$100(Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;->setValue(Ljava/lang/String;)V

    .line 323
    new-instance v1, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string/jumbo v3, "user"

    const-string/jumbo v4, "user"

    const-string/jumbo v5, "user/notifyTokenExpired"

    .line 324
    invoke-static {v0}, Lcom/ecarx/eas/sdk/utils/ParcelableUtil;->marshall(Landroid/os/Parcelable;)[B

    move-result-object v6

    const/4 v0, 0x0

    new-array v7, v0, [B

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 327
    :try_start_0
    iget-object v2, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl$3;->this$0:Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;

    invoke-static {v2}, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->access$200(Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {v2, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v2

    .line 328
    iget v3, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_0

    .line 329
    const-string v3, "EASUserAPIImpl"

    const-string v4, ">> method = %s, code=%d, msg=%s <<"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mMethod:Ljava/lang/String;

    aput-object v1, v5, v0

    const/4 v0, 0x1

    iget v1, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    .line 330
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    iget-object v1, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mMsg:Ljava/lang/String;

    aput-object v1, v5, v0

    .line 329
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    return-void

    .line 336
    :cond_0
    nop

    .line 337
    iget-object v0, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    sget-object v1, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/ecarx/eas/sdk/utils/ParcelableUtil;->unMarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;

    .line 338
    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl$3;->this$0:Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->access$102(Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    return-void

    .line 333
    :catch_0
    move-exception v0

    .line 334
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 335
    return-void
.end method
