.class Lcom/zeekr/sdk/mediacenter/impl/ZeekrEasMediaCenterProxy$4;
.super Lcom/zeekr/sdk/base/internal/IZeekrSupportService$Stub;
.source "ZeekrEasMediaCenterProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zeekr/sdk/mediacenter/impl/ZeekrEasMediaCenterProxy;->registerExtClient(Ljava/lang/String;Lcom/zeekr/sdk/mediacenter/bean/MediaClientV2;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zeekr/sdk/mediacenter/impl/ZeekrEasMediaCenterProxy;

.field final synthetic val$client:Lcom/zeekr/sdk/mediacenter/bean/MediaClientV2;


# direct methods
.method constructor <init>(Lcom/zeekr/sdk/mediacenter/impl/ZeekrEasMediaCenterProxy;Lcom/zeekr/sdk/mediacenter/bean/MediaClientV2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zeekr/sdk/mediacenter/impl/ZeekrEasMediaCenterProxy$4;->this$0:Lcom/zeekr/sdk/mediacenter/impl/ZeekrEasMediaCenterProxy;

    iput-object p2, p0, Lcom/zeekr/sdk/mediacenter/impl/ZeekrEasMediaCenterProxy$4;->val$client:Lcom/zeekr/sdk/mediacenter/bean/MediaClientV2;

    invoke-direct {p0}, Lcom/zeekr/sdk/base/internal/IZeekrSupportService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public asyncBinderCall(Lcom/zeekr/sdk/base/msg/ZeekrPlatformMessage;Landroid/os/IBinder;)Lcom/zeekr/sdk/base/msg/ZeekrPlatformRetMessage;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public asyncCall(Lcom/zeekr/sdk/base/msg/ZeekrPlatformMessage;Lcom/zeekr/sdk/base/internal/IZeekrPlatformCallback;)Lcom/zeekr/sdk/base/msg/ZeekrPlatformRetMessage;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public call(Lcom/zeekr/sdk/base/msg/ZeekrPlatformMessage;)Lcom/zeekr/sdk/base/msg/ZeekrPlatformRetMessage;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zeekr/sdk/mediacenter/impl/ZeekrEasMediaCenterProxy$4;->val$client:Lcom/zeekr/sdk/mediacenter/bean/MediaClientV2;

    iget-object v1, p1, Lcom/zeekr/sdk/base/msg/ZeekrPlatformMessage;->mMethod:Ljava/lang/String;

    iget-object p1, p1, Lcom/zeekr/sdk/base/msg/ZeekrPlatformMessage;->mMethodParam:[B

    invoke-static {p1}, Lcom/zeekr/sdk/base/proto/extension/MsgSerializationUtil;->byteArray2str([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/zeekr/sdk/mediacenter/bean/MediaClientV2;->onFunction(Ljava/lang/String;Ljava/lang/String;)Lcom/zeekr/sdk/mediacenter/bean/FuncResult;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    const-string p1, "ZeekrEasMediaCenterProxy"

    const-string v0, "FuncResult is null"

    invoke-static {p1, v0}, Lcom/zeekr/sdk/base/utils/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/zeekr/sdk/base/msg/ZeekrPlatformRetMessage;

    const/4 v0, 0x0

    const-string v1, "FuncResult is null"

    invoke-direct {p1, v0, v1}, Lcom/zeekr/sdk/base/msg/ZeekrPlatformRetMessage;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 6
    :cond_0
    new-instance v0, Lcom/zeekr/sdk/base/msg/ZeekrPlatformRetMessage;

    invoke-virtual {p1}, Lcom/zeekr/sdk/mediacenter/bean/FuncResult;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/zeekr/sdk/mediacenter/bean/FuncResult;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/zeekr/sdk/base/msg/ZeekrPlatformRetMessage;-><init>(ILjava/lang/String;)V

    .line 7
    new-instance v1, Lcom/zeekr/sdk/base/msg/ServiceRetMessage;

    invoke-virtual {p1}, Lcom/zeekr/sdk/mediacenter/bean/FuncResult;->getCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/zeekr/sdk/mediacenter/bean/FuncResult;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/zeekr/sdk/base/msg/ServiceRetMessage;-><init>(ILjava/lang/String;)V

    iput-object v1, v0, Lcom/zeekr/sdk/base/msg/ZeekrPlatformRetMessage;->mRetMsg:Lcom/zeekr/sdk/base/msg/ServiceRetMessage;

    .line 8
    invoke-virtual {p1}, Lcom/zeekr/sdk/mediacenter/bean/FuncResult;->getmIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, v0, Lcom/zeekr/sdk/base/msg/ZeekrPlatformRetMessage;->mRetMsg:Lcom/zeekr/sdk/base/msg/ServiceRetMessage;

    const-class v2, Lcom/zeekr/sdk/mediacenter/bean/FuncResult;

    invoke-static {v2}, Lcom/zeekr/sdk/base/proto/ProtobufProxy;->create(Ljava/lang/Class;)Lcom/zeekr/sdk/base/proto/Codec;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/zeekr/sdk/base/proto/Codec;->encode(Ljava/lang/Object;)[B

    move-result-object p1

    iput-object p1, v1, Lcom/zeekr/sdk/base/msg/ServiceRetMessage;->mData:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaClientV2  call ProtocolBufferException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZeekrEasMediaCenterProxy"

    invoke-static {v0, p1}, Lcom/zeekr/sdk/base/utils/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
