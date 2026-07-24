.class final Lcom/android/systemui/statusbar/pma/SongModePopupWindow$H;
.super Landroid/os/Handler;
.source "SongModePopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/SongModePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/SongModePopupWindow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pma/SongModePopupWindow;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow$H;->this$0:Lcom/android/systemui/statusbar/pma/SongModePopupWindow;

    .line 134
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 135
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 139
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v2, 0x64

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 153
    :pswitch_0
    const-string v0, "SongModePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIsSyncVolumeState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow$H;->this$0:Lcom/android/systemui/statusbar/pma/SongModePopupWindow;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mIsSyncVolumeState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow$H;->this$0:Lcom/android/systemui/statusbar/pma/SongModePopupWindow;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mIsSyncVolumeState:Z

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow$H;->this$0:Lcom/android/systemui/statusbar/pma/SongModePopupWindow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->access$100(Lcom/android/systemui/statusbar/pma/SongModePopupWindow;)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setProgress(I)V

    goto :goto_0

    .line 147
    :pswitch_1
    const-string v0, "SongModePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIsSyncVolumeState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow$H;->this$0:Lcom/android/systemui/statusbar/pma/SongModePopupWindow;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mIsSyncVolumeState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow$H;->this$0:Lcom/android/systemui/statusbar/pma/SongModePopupWindow;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mIsSyncVolumeState:Z

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow$H;->this$0:Lcom/android/systemui/statusbar/pma/SongModePopupWindow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->access$000(Lcom/android/systemui/statusbar/pma/SongModePopupWindow;)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setProgress(I)V

    goto :goto_0

    .line 143
    :cond_0
    const-string v0, "SongModePopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage MSG_HANDLE_SYNC_VOLUME_STATE state: mIsSyncVolumeState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow$H;->this$0:Lcom/android/systemui/statusbar/pma/SongModePopupWindow;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mIsSyncVolumeState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow$H;->this$0:Lcom/android/systemui/statusbar/pma/SongModePopupWindow;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->mIsSyncVolumeState:Z

    .line 145
    goto :goto_0

    .line 141
    :cond_1
    nop

    .line 161
    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
