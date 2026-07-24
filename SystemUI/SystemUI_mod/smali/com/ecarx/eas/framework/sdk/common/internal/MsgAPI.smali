.class public abstract Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getException(ILjava/lang/String;)Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
    .locals 0
    .param p0, "code"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .line 205
    nop

    .end local p0    # "code":I
    sparse-switch p0, :sswitch_data_0

    .line 223
    new-instance p0, Lcom/ecarx/eas/framework/sdk/common/exception/UnknownException;

    .end local p1    # "msg":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/exception/UnknownException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 217
    .restart local p1    # "msg":Ljava/lang/String;
    :sswitch_0
    new-instance p0, Lcom/ecarx/eas/framework/sdk/common/exception/RemoteCallException;

    invoke-direct {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/exception/RemoteCallException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 215
    :sswitch_1
    new-instance p0, Lcom/ecarx/eas/framework/sdk/common/exception/ProtoBufException;

    invoke-direct {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/exception/ProtoBufException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 219
    :sswitch_2
    new-instance p0, Lcom/ecarx/eas/framework/sdk/common/exception/SupportServerErrorException;

    invoke-direct {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/exception/SupportServerErrorException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 211
    :sswitch_3
    new-instance p0, Lcom/ecarx/eas/framework/sdk/common/exception/NotExistSupportServerException;

    invoke-direct {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/exception/NotExistSupportServerException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 209
    :sswitch_4
    new-instance p0, Lcom/ecarx/eas/framework/sdk/common/exception/NotFoundException;

    invoke-direct {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/exception/NotFoundException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 207
    :sswitch_5
    new-instance p0, Lcom/ecarx/eas/framework/sdk/common/exception/IllegalArgumentEASException;

    invoke-direct {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/exception/IllegalArgumentEASException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 213
    :sswitch_6
    new-instance p0, Lcom/ecarx/eas/framework/sdk/common/exception/NotSupportedException;

    invoke-direct {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/exception/NotSupportedException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 221
    :sswitch_7
    new-instance p0, Lcom/ecarx/eas/framework/sdk/common/exception/UnAuthorizedException;

    invoke-direct {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/exception/UnAuthorizedException;-><init>(Ljava/lang/String;)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_7
        0x192 -> :sswitch_6
        0x193 -> :sswitch_5
        0x194 -> :sswitch_4
        0x1f5 -> :sswitch_3
        0x1f6 -> :sswitch_2
        0x258 -> :sswitch_1
        0x259 -> :sswitch_0
    .end sparse-switch
.end method

.method public static sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;
    .locals 1
    .param p0, "service"    # Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;
    .param p1, "reqMsg"    # Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 41
    nop

    .end local p0    # "service":Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;
    .end local p1    # "reqMsg":Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;
    :try_start_0
    invoke-interface {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;->call(Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;

    move-result-object p0

    .line 42
    iget p1, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mCode:I

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 47
    iget-object p0, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mRetMsg:Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    return-object p0

    .line 43
    :cond_0
    iget p1, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mCode:I

    iget-object p0, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mMsg:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->getException(ILjava/lang/String;)Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    move-result-object p0

    .line 44
    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    new-instance p1, Lcom/ecarx/eas/framework/sdk/common/exception/RemoteCallException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/ecarx/eas/framework/sdk/common/exception/RemoteCallException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static sendMsgAndBinder(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Landroid/os/IBinder;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;
    .locals 0
    .param p0, "service"    # Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;
    .param p1, "reqMsg"    # Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 86
    nop

    .end local p0    # "service":Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;
    .end local p1    # "reqMsg":Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;
    .end local p2    # "binder":Landroid/os/IBinder;
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;->asyncBinderCall(Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Landroid/os/IBinder;)Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;

    move-result-object p0

    .line 87
    iget p1, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mCode:I

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_0

    .line 92
    iget-object p0, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mRetMsg:Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    return-object p0

    .line 88
    :cond_0
    iget p1, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mCode:I

    iget-object p0, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mMsg:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->getException(ILjava/lang/String;)Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    move-result-object p0

    .line 89
    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :catch_0
    move-exception p0

    .line 94
    new-instance p1, Lcom/ecarx/eas/framework/sdk/common/exception/RemoteCallException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/ecarx/eas/framework/sdk/common/exception/RemoteCallException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
