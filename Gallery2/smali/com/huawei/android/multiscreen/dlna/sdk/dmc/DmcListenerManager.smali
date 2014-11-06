.class public Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcListenerManager;
.super Ljava/lang/Object;
.source "DmcListenerManager.java"


# static fields
.field private static instance:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcListenerManager;


# instance fields
.field private listenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/VolumeChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcListenerManager;->listenerMap:Ljava/util/Map;

    .line 42
    return-void
.end method

.method public static getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcListenerManager;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcListenerManager;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcListenerManager;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcListenerManager;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcListenerManager;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcListenerManager;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcListenerManager;

    .line 35
    :cond_0
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcListenerManager;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcListenerManager;

    return-object v0
.end method


# virtual methods
.method public addVolumeChangedListener(ILcom/huawei/android/multiscreen/dlna/sdk/dmc/VolumeChangedListener;)V
    .locals 3
    .parameter "deviceId"
    .parameter "listener"

    .prologue
    .line 52
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcListenerManager;->listenerMap:Ljava/util/Map;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcListenerManager;->listenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    monitor-exit v1

    .line 55
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dmcSyncVolume(IIII)V
    .locals 5
    .parameter "deviceId"
    .parameter "instanceId"
    .parameter "channel"
    .parameter "currentVol"

    .prologue
    .line 78
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcListenerManager;->listenerMap:Ljava/util/Map;

    monitor-enter v3

    .line 79
    :try_start_0
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcListenerManager;->listenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;

    invoke-direct {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;-><init>()V

    .line 81
    .local v1, volume:Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;
    invoke-virtual {v1, p4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;->setCurrentVolume(I)V

    .line 82
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcListenerManager;->listenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/VolumeChangedListener;

    .line 83
    .local v0, listener:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/VolumeChangedListener;
    invoke-interface {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/VolumeChangedListener;->onVolumeChange(Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;)V

    .line 78
    .end local v0           #listener:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/VolumeChangedListener;
    .end local v1           #volume:Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;
    :cond_0
    monitor-exit v3

    .line 87
    return-void

    .line 78
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeVolumeChangedListener(I)V
    .locals 3
    .parameter "deviceId"

    .prologue
    .line 63
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcListenerManager;->listenerMap:Ljava/util/Map;

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcListenerManager;->listenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    monitor-exit v1

    .line 66
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
