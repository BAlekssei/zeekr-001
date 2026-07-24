.class abstract Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;
.super Ljava/lang/Thread;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPuk"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field private final mPuk:Ljava/lang/String;

.field private final mSubId:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukView;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .param p4, "subId"    # I

    .line 304
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 305
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mPuk:Ljava/lang/String;

    .line 306
    iput-object p3, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mPin:Ljava/lang/String;

    .line 307
    iput p4, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mSubId:I

    .line 308
    return-void
.end method


# virtual methods
.method abstract onSimLockChangedResponse(II)V
.end method

.method public run()V
    .locals 4

    .line 316
    :try_start_0
    const-string v0, "phone"

    .line 317
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 316
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mSubId:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mPuk:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mPin:Ljava/lang/String;

    .line 317
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    .line 321
    .local v0, "result":[I
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    new-instance v2, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$1;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$1;-><init>(Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;[I)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSimPukView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .end local v0    # "result":[I
    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyguardSimPukView"

    const-string v2, "RemoteException for supplyPukReportResult:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    new-instance v2, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$2;-><init>(Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSimPukView;->post(Ljava/lang/Runnable;)Z

    .line 336
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
