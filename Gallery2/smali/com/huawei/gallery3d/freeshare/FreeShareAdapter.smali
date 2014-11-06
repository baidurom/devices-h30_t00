.class public Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;
.super Ljava/lang/Object;
.source "FreeShareAdapter.java"

# interfaces
.implements Lcom/huawei/android/freeshare/client/device/DeviceChangeListener;
.implements Lcom/huawei/android/freeshare/client/transfer/ActionListener;
.implements Lcom/huawei/android/freeshare/client/transfer/FileTransferListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final FREESHARE_SUPPORTED:Z = false

.field private static final STATE_DEVICE_ENABLING:I = 0x1

.field private static final STATE_DISCOVERRING:I = 0x2

.field private static final STATE_INIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FreeShare"

.field private static mInstance:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;


# instance fields
.field private initCount:I

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field mTargetDevice:Lcom/huawei/android/freeshare/client/device/DeviceInfo;

.field mTransmission:Lcom/huawei/android/freeshare/client/Transmission;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-string v0, "ro.config.hw_freeshare"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->FREESHARE_SUPPORTED:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTargetDevice:Lcom/huawei/android/freeshare/client/device/DeviceInfo;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mListeners:Ljava/util/List;

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->initCount:I

    .line 41
    return-void
.end method

.method private CountDown()Z
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->initCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->initCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private CountUp()V
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->initCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->initCount:I

    .line 45
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;
    .locals 2
    .parameter "context"

    .prologue
    .line 64
    const-class v0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    monitor-enter v0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1
.end method

.method private init(Lcom/huawei/android/freeshare/client/Transmission;)V
    .locals 2
    .parameter "transmission"

    .prologue
    .line 68
    const-string v0, "FreeShare"

    const-string v1, "DataAdapter init"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iput-object p1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTransmission:Lcom/huawei/android/freeshare/client/Transmission;

    .line 70
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTransmission:Lcom/huawei/android/freeshare/client/Transmission;

    invoke-virtual {v0, p0}, Lcom/huawei/android/freeshare/client/Transmission;->addDeviceListener(Lcom/huawei/android/freeshare/client/device/DeviceChangeListener;)V

    .line 71
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTransmission:Lcom/huawei/android/freeshare/client/Transmission;

    invoke-virtual {v0, p0}, Lcom/huawei/android/freeshare/client/Transmission;->setActionListener(Lcom/huawei/android/freeshare/client/transfer/ActionListener;)V

    .line 72
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTransmission:Lcom/huawei/android/freeshare/client/Transmission;

    invoke-virtual {v0, p0}, Lcom/huawei/android/freeshare/client/Transmission;->addFileTransferListener(Lcom/huawei/android/freeshare/client/transfer/FileTransferListener;)V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mState:I

    .line 74
    return-void
.end method


# virtual methods
.method public addListener(Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 95
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public cancelDiscover()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 204
    const/4 v0, 0x1

    iget v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mState:I

    if-ne v0, v1, :cond_1

    .line 205
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTransmission:Lcom/huawei/android/freeshare/client/Transmission;

    invoke-virtual {v0, v2}, Lcom/huawei/android/freeshare/client/Transmission;->setEnabled(Z)Z

    .line 209
    :cond_0
    :goto_0
    iput v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mState:I

    .line 210
    return-void

    .line 206
    :cond_1
    const/4 v0, 0x2

    iget v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mState:I

    if-ne v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTransmission:Lcom/huawei/android/freeshare/client/Transmission;

    invoke-virtual {v0}, Lcom/huawei/android/freeshare/client/Transmission;->cancelDiscover()Z

    goto :goto_0
.end method

.method public cancelShare()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTransmission:Lcom/huawei/android/freeshare/client/Transmission;

    invoke-virtual {v0}, Lcom/huawei/android/freeshare/client/Transmission;->cancelRestMission()Z

    .line 245
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->CountDown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string v0, "FreeShare"

    const-string v1, "DataAdapter destroy"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTransmission:Lcom/huawei/android/freeshare/client/Transmission;

    invoke-virtual {v0, p0}, Lcom/huawei/android/freeshare/client/Transmission;->removeDeviceListener(Lcom/huawei/android/freeshare/client/device/DeviceChangeListener;)V

    .line 80
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTransmission:Lcom/huawei/android/freeshare/client/Transmission;

    invoke-virtual {v0, v2}, Lcom/huawei/android/freeshare/client/Transmission;->setActionListener(Lcom/huawei/android/freeshare/client/transfer/ActionListener;)V

    .line 81
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTransmission:Lcom/huawei/android/freeshare/client/Transmission;

    invoke-virtual {v0}, Lcom/huawei/android/freeshare/client/Transmission;->destroy()Z

    .line 82
    iput-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTransmission:Lcom/huawei/android/freeshare/client/Transmission;

    .line 83
    iput-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTargetDevice:Lcom/huawei/android/freeshare/client/device/DeviceInfo;

    .line 84
    sget-object v1, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mInstance:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    monitor-enter v1

    .line 85
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mInstance:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    .line 86
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mState:I

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public discover()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 180
    iget v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mState:I

    if-eq v3, v2, :cond_0

    iget v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mState:I

    if-ne v1, v2, :cond_2

    :cond_0
    move v0, v1

    .line 200
    :cond_1
    :goto_0
    return v0

    .line 185
    :cond_2
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTransmission:Lcom/huawei/android/freeshare/client/Transmission;

    invoke-virtual {v2}, Lcom/huawei/android/freeshare/client/Transmission;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 186
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTransmission:Lcom/huawei/android/freeshare/client/Transmission;

    invoke-virtual {v1}, Lcom/huawei/android/freeshare/client/Transmission;->discover()Z

    move-result v0

    .line 187
    .local v0, result:Z
    if-eqz v0, :cond_3

    .line 188
    iput v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mState:I

    .line 197
    :cond_3
    :goto_1
    if-nez v0, :cond_1

    .line 198
    const/4 v1, 0x0

    iput v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mState:I

    goto :goto_0

    .line 191
    .end local v0           #result:Z
    :cond_4
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTransmission:Lcom/huawei/android/freeshare/client/Transmission;

    invoke-virtual {v2, v1}, Lcom/huawei/android/freeshare/client/Transmission;->setEnabled(Z)Z

    move-result v0

    .line 192
    .restart local v0       #result:Z
    if-eqz v0, :cond_3

    .line 193
    iput v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mState:I

    goto :goto_1
.end method

.method public final getDeviceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/freeshare/client/device/DeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTransmission:Lcom/huawei/android/freeshare/client/Transmission;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTransmission:Lcom/huawei/android/freeshare/client/Transmission;

    invoke-virtual {v0}, Lcom/huawei/android/freeshare/client/Transmission;->getDeviceList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getFileNum()I
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTransmission:Lcom/huawei/android/freeshare/client/Transmission;

    invoke-virtual {v0}, Lcom/huawei/android/freeshare/client/Transmission;->getRestMissionNum()I

    move-result v0

    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTransmission:Lcom/huawei/android/freeshare/client/Transmission;

    invoke-virtual {v0}, Lcom/huawei/android/freeshare/client/Transmission;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTargetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTargetDevice:Lcom/huawei/android/freeshare/client/device/DeviceInfo;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTargetDevice:Lcom/huawei/android/freeshare/client/device/DeviceInfo;

    invoke-virtual {v0}, Lcom/huawei/android/freeshare/client/device/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTargetDevice()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTargetDevice:Lcom/huawei/android/freeshare/client/device/DeviceInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDeviceDown(Lcom/huawei/android/freeshare/client/device/DeviceInfo;)V
    .locals 4
    .parameter "device"

    .prologue
    .line 116
    const/4 v2, 0x2

    iget v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mState:I

    if-ne v2, v3, :cond_0

    .line 117
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;

    .line 118
    .local v1, l:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;
    invoke-interface {v1}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;->onDeviceChange()V

    goto :goto_0

    .line 121
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;
    :cond_0
    return-void
.end method

.method public onDeviceUp(Lcom/huawei/android/freeshare/client/device/DeviceInfo;)V
    .locals 4
    .parameter "device"

    .prologue
    .line 107
    const/4 v2, 0x2

    iget v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mState:I

    if-ne v2, v3, :cond_0

    .line 108
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;

    .line 109
    .local v1, l:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;
    invoke-interface {v1}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;->onDeviceChange()V

    goto :goto_0

    .line 112
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;
    :cond_0
    return-void
.end method

.method public onDisabled()V
    .locals 4

    .prologue
    .line 141
    const-string v2, "FreeShare"

    const-string v3, "onDisabled"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mState:I

    if-eqz v2, :cond_0

    .line 143
    const/4 v2, 0x0

    iput v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mState:I

    .line 144
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;

    .line 145
    .local v1, l:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;
    invoke-interface {v1}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;->onDiscoverFinished()V

    goto :goto_0

    .line 148
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTargetDevice:Lcom/huawei/android/freeshare/client/device/DeviceInfo;

    .line 149
    return-void
.end method

.method public onDiscoverFinished()V
    .locals 4

    .prologue
    .line 156
    const-string v2, "FreeShare"

    const-string v3, "onDiscoverFinished"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v2, 0x2

    iget v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mState:I

    if-ne v2, v3, :cond_1

    .line 158
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;

    .line 159
    .local v1, l:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;
    invoke-interface {v1}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;->onDiscoverFinished()V

    goto :goto_0

    .line 161
    .end local v1           #l:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mState:I

    .line 163
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public onDiscoverStarted()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public onEnabled()V
    .locals 6

    .prologue
    .line 125
    const/4 v3, 0x1

    iget v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mState:I

    if-ne v3, v4, :cond_0

    .line 126
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTransmission:Lcom/huawei/android/freeshare/client/Transmission;

    invoke-virtual {v3}, Lcom/huawei/android/freeshare/client/Transmission;->discover()Z

    move-result v2

    .line 127
    .local v2, result:Z
    const-string v3, "FreeShare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEnabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    if-eqz v2, :cond_1

    .line 129
    const/4 v3, 0x2

    iput v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mState:I

    .line 137
    .end local v2           #result:Z
    :cond_0
    return-void

    .line 131
    .restart local v2       #result:Z
    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mState:I

    .line 132
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;

    .line 133
    .local v1, l:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;
    invoke-interface {v1}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;->onDiscoverFinished()V

    goto :goto_0
.end method

.method public onProgressUpdate(Ljava/lang/String;I)V
    .locals 0
    .parameter "uri"
    .parameter "progress"

    .prologue
    .line 177
    return-void
.end method

.method public onTransferFinish(Ljava/lang/String;Z)V
    .locals 3
    .parameter "uri"
    .parameter "success"

    .prologue
    .line 167
    if-nez p2, :cond_0

    .line 168
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTargetDevice:Lcom/huawei/android/freeshare/client/device/DeviceInfo;

    .line 169
    const/4 v2, 0x0

    iput v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mState:I

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;

    .line 172
    .local v1, l:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;
    invoke-interface {v1}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;->onFinish()V

    goto :goto_0

    .line 174
    .end local v1           #l:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;
    :cond_1
    return-void
.end method

.method public removeListener(Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    return-void
.end method

.method public selectDevice(Lcom/huawei/android/freeshare/client/device/DeviceInfo;)V
    .locals 0
    .parameter "device"

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->cancelDiscover()V

    .line 222
    iput-object p1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTargetDevice:Lcom/huawei/android/freeshare/client/device/DeviceInfo;

    .line 223
    return-void
.end method

.method public sendMedia(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    const/4 v2, 0x0

    .line 226
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTargetDevice:Lcom/huawei/android/freeshare/client/device/DeviceInfo;

    .line 227
    .local v0, device:Lcom/huawei/android/freeshare/client/device/DeviceInfo;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v2

    .line 229
    :cond_1
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTransmission:Lcom/huawei/android/freeshare/client/Transmission;

    invoke-virtual {v3, v0, p1, p2}, Lcom/huawei/android/freeshare/client/Transmission;->createSendMission(Lcom/huawei/android/freeshare/client/device/DeviceInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/android/freeshare/client/transfer/Mission;

    move-result-object v1

    .line 230
    .local v1, mission:Lcom/huawei/android/freeshare/client/transfer/Mission;
    if-eqz v1, :cond_0

    .line 232
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->mTransmission:Lcom/huawei/android/freeshare/client/Transmission;

    invoke-virtual {v2, v1}, Lcom/huawei/android/freeshare/client/Transmission;->startMission(Lcom/huawei/android/freeshare/client/transfer/Mission;)Z

    move-result v2

    goto :goto_0
.end method
