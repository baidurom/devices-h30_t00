.class public Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;
.super Ljava/lang/Object;
.source "WifiListenerManager.java"


# static fields
.field private static wifiListenerManager:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;


# instance fields
.field private wifiStateListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;->wifiStateListenerList:Ljava/util/List;

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;->wifiListenerManager:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;->wifiListenerManager:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;

    .line 44
    :cond_0
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;->wifiListenerManager:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;

    return-object v0
.end method


# virtual methods
.method public addWifiStateListener(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 53
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;->wifiStateListenerList:Ljava/util/List;

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;->wifiStateListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    monitor-exit v1

    .line 56
    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyWifiStateChanged()V
    .locals 6

    .prologue
    .line 109
    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;->wifiStateListenerList:Ljava/util/List;

    monitor-enter v5

    .line 110
    :try_start_0
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;->wifiStateListenerList:Ljava/util/List;

    .line 111
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateListener;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 110
    if-nez v4, :cond_0

    .line 109
    monitor-exit v5

    .line 121
    return-void

    .line 112
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 113
    .local v1, item:Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 114
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 109
    .end local v1           #item:Ljava/lang/Object;
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateListener;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 116
    .restart local v1       #item:Ljava/lang/Object;
    .restart local v2       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateListener;>;"
    :cond_1
    :try_start_1
    move-object v0, v1

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateListener;

    move-object v3, v0

    .line 117
    .local v3, listenerItem:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateListener;
    invoke-interface {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateListener;->wifiChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public notifyWifiStateConnect()V
    .locals 6

    .prologue
    .line 73
    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;->wifiStateListenerList:Ljava/util/List;

    monitor-enter v5

    .line 74
    :try_start_0
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;->wifiStateListenerList:Ljava/util/List;

    .line 75
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateListener;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 74
    if-nez v4, :cond_0

    .line 73
    monitor-exit v5

    .line 85
    return-void

    .line 76
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 77
    .local v1, item:Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 78
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 73
    .end local v1           #item:Ljava/lang/Object;
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateListener;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 80
    .restart local v1       #item:Ljava/lang/Object;
    .restart local v2       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateListener;>;"
    :cond_1
    :try_start_1
    move-object v0, v1

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateListener;

    move-object v3, v0

    .line 81
    .local v3, listenerItem:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateListener;
    invoke-interface {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateListener;->wifiConnected()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public notifyWifiStateLost()V
    .locals 6

    .prologue
    .line 91
    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;->wifiStateListenerList:Ljava/util/List;

    monitor-enter v5

    .line 92
    :try_start_0
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;->wifiStateListenerList:Ljava/util/List;

    .line 93
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateListener;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 92
    if-nez v4, :cond_0

    .line 91
    monitor-exit v5

    .line 103
    return-void

    .line 94
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 95
    .local v1, item:Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 96
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 91
    .end local v1           #item:Ljava/lang/Object;
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateListener;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 98
    .restart local v1       #item:Ljava/lang/Object;
    .restart local v2       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateListener;>;"
    :cond_1
    :try_start_1
    move-object v0, v1

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateListener;

    move-object v3, v0

    .line 99
    .local v3, listenerItem:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateListener;
    invoke-interface {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateListener;->wifiLost()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeWifiStateListener(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 64
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;->wifiStateListenerList:Ljava/util/List;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;->wifiStateListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 64
    monitor-exit v1

    .line 67
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
