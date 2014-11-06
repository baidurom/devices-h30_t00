.class public Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;
.super Ljava/lang/Object;
.source "DmcTransportController.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDeviceID:I

.field private mPlayerStateChangedListener:Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;

.field private mSyncFailedListener:Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;

.field private syncWorkerManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController$1;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController$1;-><init>()V

    .line 211
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "deviceID"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->mDeviceID:I

    .line 63
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->mDeviceID:I

    .line 64
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->mDeviceID:I

    invoke-direct {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->syncWorkerManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    .line 65
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcListenerManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcListenerManager;

    move-result-object v0

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->mDeviceID:I

    .line 66
    new-instance v2, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController$2;

    invoke-direct {v2, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController$2;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;)V

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcListenerManager;->addVolumeChangedListener(ILcom/huawei/android/multiscreen/dlna/sdk/dmc/VolumeChangedListener;)V

    .line 75
    return-void
.end method

.method static synthetic access$0(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;)Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->mPlayerStateChangedListener:Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;

    return-object v0
.end method

.method private checkTargetFormat(Ljava/lang/String;)Z
    .locals 3
    .parameter "target"

    .prologue
    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    const/4 v2, 0x0

    .line 138
    :goto_0
    return v2

    .line 136
    :cond_0
    const-string v2, "(([0-9]){1,}:)?([0-5])?[0-9]:[0-5][0-9](\\.([0-9]){3})?"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 137
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 138
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public getPositionInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->syncWorkerManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->getPositionInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTransportStateInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->syncWorkerManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->getTransportInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVolume()Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->syncWorkerManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->getVolume()Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method public pause()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->syncWorkerManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->pause()Z

    move-result v0

    return v0
.end method

.method public play()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->syncWorkerManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->play()Z

    move-result v0

    return v0
.end method

.method public push(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z
    .locals 1
    .parameter "media"

    .prologue
    .line 99
    const-string v0, "00:00:00"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->push(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public push(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;Ljava/lang/String;)Z
    .locals 4
    .parameter "media"
    .parameter "localPositionTime"

    .prologue
    const/4 v1, 0x0

    .line 103
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->getMediaInfoType()Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    move-result-object v2

    if-nez v2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v1

    .line 107
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->getMediaInfoType()Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    move-result-object v2

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->AUDIO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    if-eq v2, v3, :cond_2

    .line 108
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->getMediaInfoType()Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    move-result-object v2

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    if-ne v2, v3, :cond_3

    .line 109
    :cond_2
    invoke-direct {p0, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->checkTargetFormat(Ljava/lang/String;)Z

    move-result v0

    .line 110
    .local v0, checkResult:Z
    if-eqz v0, :cond_0

    .line 114
    .end local v0           #checkResult:Z
    :cond_3
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->syncWorkerManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    invoke-virtual {v1, p1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->push(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public seek(Ljava/lang/String;)Z
    .locals 1
    .parameter "target"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->checkTargetFormat(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->syncWorkerManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->seek(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setNextUri(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z
    .locals 2
    .parameter "media"

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0

    .line 167
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->getMetaData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->syncWorkerManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->setNextUri(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z

    move-result v0

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->syncWorkerManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->setLocalNextUri(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setVolume(I)Z
    .locals 1
    .parameter "volume"

    .prologue
    .line 156
    if-gez p1, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->syncWorkerManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->setVolume(I)Z

    move-result v0

    goto :goto_0
.end method

.method public startProcessSync()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->syncWorkerManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->startProcessSync()V

    .line 177
    return-void
.end method

.method public startSync(Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;)V
    .locals 2
    .parameter "playerStateChangedListener"
    .parameter "syncFailedListener"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->mPlayerStateChangedListener:Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;

    .line 82
    iput-object p2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->mSyncFailedListener:Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;

    .line 83
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->syncWorkerManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->mPlayerStateChangedListener:Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->addStateChangedListener(Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;)V

    .line 84
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->syncWorkerManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->mSyncFailedListener:Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->addFaildListener(Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;)V

    .line 85
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->syncWorkerManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->start()V

    .line 86
    return-void
.end method

.method public stop()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->syncWorkerManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->stop()Z

    move-result v0

    return v0
.end method

.method public stopProcessSync()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->syncWorkerManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->stopProcessSync()V

    .line 182
    return-void
.end method

.method public stopSync()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->syncWorkerManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    .line 91
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->mPlayerStateChangedListener:Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->removeStateChangedListener(Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;)V

    .line 92
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->syncWorkerManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->mSyncFailedListener:Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->removeFaildListener(Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;)V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->mPlayerStateChangedListener:Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;

    .line 94
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->syncWorkerManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->close()V

    .line 95
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 209
    return-void
.end method
