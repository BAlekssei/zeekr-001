.class Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$AbilityCollectorServiceWrapper;
.super Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AbilityCollectorServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;


# direct methods
.method private constructor <init>(Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$AbilityCollectorServiceWrapper;->this$0:Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;

    invoke-direct {p0}, Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub;-><init>()V

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$AbilityCollectorServiceWrapper;
    return-void
.end method

.method synthetic constructor <init>(Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;

    .line 139
    nop

    .end local p1    # "x0":Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$AbilityCollectorServiceWrapper;-><init>(Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;)V

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$AbilityCollectorServiceWrapper;
    return-void
.end method


# virtual methods
.method public onCallService(Lcom/ecarx/sdk/smartscene/ServiceModel;)V
    .locals 1
    .param p1, "serviceModel"    # Lcom/ecarx/sdk/smartscene/ServiceModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$AbilityCollectorServiceWrapper;
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$AbilityCollectorServiceWrapper;->this$0:Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;

    .end local p1    # "serviceModel":Lcom/ecarx/sdk/smartscene/ServiceModel;
    invoke-virtual {v0, p1}, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;->onCallService(Lcom/ecarx/sdk/smartscene/ServiceModel;)V

    .line 165
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .line 143
    const-string v0, "AbilityCollector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTransact() called with: code = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], data = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], reply = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], flags = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$AbilityCollectorServiceWrapper;
    .end local p1    # "code":I
    .end local p2    # "data":Landroid/os/Parcel;
    .end local p3    # "reply":Landroid/os/Parcel;
    .end local p4    # "flags":I
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 146
    :catch_0
    move-exception p1

    .line 147
    const-string p2, "AbilityCollector"

    const-string p3, "AbilityCollectorServiceWrapper onTransact: "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    const/4 p1, 0x0

    return p1
.end method

.method public register(Lcom/ecarx/sdk/smartscene/LaunchPad;)V
    .locals 1
    .param p1, "launchPad"    # Lcom/ecarx/sdk/smartscene/LaunchPad;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$AbilityCollectorServiceWrapper;
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$AbilityCollectorServiceWrapper;->this$0:Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;

    invoke-static {v0}, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;->access$200(Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .end local p1    # "launchPad":Lcom/ecarx/sdk/smartscene/LaunchPad;
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 155
    return-void
.end method

.method public unregister(Lcom/ecarx/sdk/smartscene/LaunchPad;)V
    .locals 1
    .param p1, "launchPad"    # Lcom/ecarx/sdk/smartscene/LaunchPad;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$AbilityCollectorServiceWrapper;
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService$AbilityCollectorServiceWrapper;->this$0:Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;

    invoke-static {v0}, Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;->access$200(Lcom/ecarx/sdk/awareness/inter/BaseAbilityCollectorService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .end local p1    # "launchPad":Lcom/ecarx/sdk/smartscene/LaunchPad;
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 160
    return-void
.end method
