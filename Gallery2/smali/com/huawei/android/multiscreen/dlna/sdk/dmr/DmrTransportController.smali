.class public Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrTransportController;
.super Ljava/lang/Object;
.source "DmrTransportController.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;


# static fields
.field private static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$ETransportState:[I = null

.field private static final TRANSPORT_CHANNEL:I = 0x6


# instance fields
.field private playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;


# direct methods
.method static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$ETransportState()[I
    .locals 3

    .prologue
    .line 25
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrTransportController;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$ETransportState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->values()[Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->INVALID:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->NO_MEDIA_PRESENT:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->PAUSED_PLAYBACK:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->PAUSED_RECODING:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->PLAYING:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->STOPPED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrTransportController;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$ETransportState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyTransportStateChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;)Z
    .locals 5
    .parameter "transportinfo"

    .prologue
    const/4 v2, 0x0

    .line 46
    const/4 v1, -0x1

    .line 47
    .local v1, result:I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;->getTransportState()Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 48
    const/4 v0, -0x1

    .line 49
    .local v0, actionId:I
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrTransportController;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$ETransportState()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;->getTransportState()Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 65
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiDmrSetMediaState(II)I

    move-result v1

    .line 68
    .end local v0           #actionId:I
    :cond_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 51
    .restart local v0       #actionId:I
    :pswitch_1
    const/4 v0, 0x0

    .line 52
    goto :goto_0

    .line 54
    :pswitch_2
    const/4 v0, 0x1

    .line 55
    goto :goto_0

    .line 57
    :pswitch_3
    const/4 v0, 0x2

    .line 58
    goto :goto_0

    .line 60
    :pswitch_4
    const/4 v0, 0x3

    .line 61
    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public notifyVolumeChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;)Z
    .locals 5
    .parameter "volume"

    .prologue
    const/4 v1, 0x0

    .line 72
    const/4 v0, -0x1

    .line 73
    .local v0, result:I
    if-eqz p1, :cond_0

    .line 74
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v2

    .line 75
    const/4 v3, 0x6

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;->getCurrentVolume()I

    move-result v4

    .line 74
    invoke-virtual {v2, v1, v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiDmrNotifyVolume(III)I

    move-result v0

    .line 77
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onGetPositionInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrTransportController;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrTransportController;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;->onGetPositionInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public onPause()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrTransportController;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrTransportController;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;->onPause()Z

    move-result v0

    goto :goto_0
.end method

.method public onPlay()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrTransportController;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrTransportController;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;->onPlay()Z

    move-result v0

    goto :goto_0
.end method

.method public onSeek(Ljava/lang/String;)Z
    .locals 1
    .parameter "target"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrTransportController;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrTransportController;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    invoke-interface {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;->onSeek(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSetMute(Ljava/lang/Boolean;)Z
    .locals 1
    .parameter "isMute"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrTransportController;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrTransportController;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    invoke-interface {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;->onSetMute(Ljava/lang/Boolean;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSetNextUri(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z
    .locals 1
    .parameter "media"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrTransportController;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrTransportController;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    invoke-interface {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;->onSetNextUri(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSetUri(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z
    .locals 1
    .parameter "media"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrTransportController;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrTransportController;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    invoke-interface {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;->onSetUri(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSetVolume(I)Z
    .locals 1
    .parameter "volume"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrTransportController;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrTransportController;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    invoke-interface {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;->onSetVolume(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onStop()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrTransportController;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrTransportController;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;->onStop()Z

    move-result v0

    goto :goto_0
.end method

.method public setPlayerController(Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;)V
    .locals 0
    .parameter "playerController"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrTransportController;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    .line 40
    return-void
.end method
