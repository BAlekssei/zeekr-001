.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$33;
.super Ljava/lang/Object;
.source "SliderWindowManager.java"

# interfaces
.implements Lecarx/xsf/widget/IReceiveWidgetInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/SliderWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 2002
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$33;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateCollectMsg(ILjava/lang/String;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 2091
    return-void
.end method

.method public updateMediaContent(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zeekr/sdk/mediacenter/bean/IContent;",
            ">;)V"
        }
    .end annotation

    .line 2082
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/zeekr/sdk/mediacenter/bean/IContent;>;"
    return-void
.end method

.method public updateMediaList(IILjava/util/List;)V
    .locals 0
    .param p1, "sourceType"    # I
    .param p2, "mediaListType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/zeekr/sdk/mediacenter/bean/IMedia;",
            ">;)V"
        }
    .end annotation

    .line 2058
    .local p3, "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/zeekr/sdk/mediacenter/bean/IMedia;>;"
    return-void
.end method

.method public updateMultiMediaListEx(Lecarx/eas/xsf/mediacenter/IMediaListsEx;)V
    .locals 0
    .param p1, "iMediaListsEx"    # Lecarx/eas/xsf/mediacenter/IMediaListsEx;

    .line 2074
    return-void
.end method

.method public updateMusicPlayInfo(Lcom/zeekr/sdk/mediacenter/IMusicPlaybackInfo;)V
    .locals 4
    .param p1, "iMusicPlaybackInfo"    # Lcom/zeekr/sdk/mediacenter/IMusicPlaybackInfo;

    .line 2010
    :try_start_0
    invoke-interface {p1}, Lcom/zeekr/sdk/mediacenter/IMusicPlaybackInfo;->getSourceType()I

    move-result v0

    .line 2011
    .local v0, "sourceType":I
    const-string v1, "SliderWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentMediaSource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$33;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$5100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sourceType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    const/4 v1, -0x1

    .line 2014
    .local v1, "mediaIndex":I
    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 2031
    const/4 v1, -0x1

    goto :goto_0

    .line 2024
    :pswitch_0
    const/4 v1, 0x3

    .line 2025
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$33;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$5202(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)I

    .line 2026
    goto :goto_0

    .line 2020
    :pswitch_1
    const/4 v1, 0x2

    .line 2021
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$33;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$5202(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)I

    .line 2022
    goto :goto_0

    .line 2016
    :pswitch_2
    const/4 v1, 0x1

    .line 2017
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$33;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$5202(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)I

    .line 2018
    goto :goto_0

    .line 2028
    :cond_0
    const/4 v1, 0x0

    .line 2029
    nop

    .line 2034
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$33;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$5100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 2035
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$33;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$5102(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2039
    .end local v0    # "sourceType":I
    .end local v1    # "mediaIndex":I
    :cond_1
    goto :goto_1

    .line 2037
    :catch_0
    move-exception v0

    .line 2038
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2040
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateProgress(J)V
    .locals 0
    .param p1, "progress"    # J

    .line 2048
    return-void
.end method

.method public updateRecommendInfo(Lcom/zeekr/sdk/mediacenter/IRecommend;)V
    .locals 0
    .param p1, "recommend"    # Lcom/zeekr/sdk/mediacenter/IRecommend;

    .line 2066
    return-void
.end method
