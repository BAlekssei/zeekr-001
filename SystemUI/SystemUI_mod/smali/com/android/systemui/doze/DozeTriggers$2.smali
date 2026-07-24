.class Lcom/android/systemui/doze/DozeTriggers$2;
.super Ljava/lang/Object;
.source "DozeTriggers.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeTriggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeTriggers;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeTriggers;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/doze/DozeTriggers;

    .line 383
    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$2;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationHeadsUp()V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$2;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeTriggers;->access$900(Lcom/android/systemui/doze/DozeTriggers;)V

    .line 387
    return-void
.end method
