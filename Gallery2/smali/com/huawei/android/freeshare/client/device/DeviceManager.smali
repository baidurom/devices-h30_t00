.class public Lcom/huawei/android/freeshare/client/device/DeviceManager;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "freeshare_DeviceManger"


# instance fields
.field private mDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/freeshare/client/device/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/freeshare/client/device/DeviceChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/android/freeshare/client/device/DeviceManager;->mDevices:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/freeshare/client/device/DeviceManager;->mListeners:Ljava/util/List;

    .line 9
    return-void
.end method


# virtual methods
.method public addDevice(Lcom/huawei/android/freeshare/client/device/DeviceInfo;)V
    .locals 6
    .parameter "device"

    .prologue
    .line 17
    const-string v3, "freeshare_DeviceManger"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "device mac = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/huawei/android/freeshare/client/device/DeviceInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const/4 v1, 0x0

    .line 19
    .local v1, has:Z
    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v3, p0, Lcom/huawei/android/freeshare/client/device/DeviceManager;->mDevices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 35
    :goto_0
    if-nez v1, :cond_1

    .line 36
    iget-object v3, p0, Lcom/huawei/android/freeshare/client/device/DeviceManager;->mDevices:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    iget-object v3, p0, Lcom/huawei/android/freeshare/client/device/DeviceManager;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 43
    :goto_2
    return-void

    .line 21
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/freeshare/client/device/DeviceInfo;

    .line 22
    .local v0, d:Lcom/huawei/android/freeshare/client/device/DeviceInfo;
    invoke-virtual {v0, p1}, Lcom/huawei/android/freeshare/client/device/DeviceInfo;->equal(Lcom/huawei/android/freeshare/client/device/DeviceInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 23
    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0}, Lcom/huawei/android/freeshare/client/device/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/huawei/android/freeshare/client/device/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 27
    monitor-exit p0

    goto :goto_2

    .line 19
    .end local v0           #d:Lcom/huawei/android/freeshare/client/device/DeviceInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 30
    .restart local v0       #d:Lcom/huawei/android/freeshare/client/device/DeviceInfo;
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Lcom/huawei/android/freeshare/client/device/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/huawei/android/freeshare/client/device/DeviceInfo;->setName(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 40
    .end local v0           #d:Lcom/huawei/android/freeshare/client/device/DeviceInfo;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/freeshare/client/device/DeviceChangeListener;

    .line 41
    .local v2, listener:Lcom/huawei/android/freeshare/client/device/DeviceChangeListener;
    invoke-interface {v2, p1}, Lcom/huawei/android/freeshare/client/device/DeviceChangeListener;->onDeviceUp(Lcom/huawei/android/freeshare/client/device/DeviceInfo;)V

    goto :goto_1
.end method

.method public addDeviceChangeListener(Lcom/huawei/android/freeshare/client/device/DeviceChangeListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/device/DeviceManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public clearAll()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/device/DeviceManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    invoke-virtual {p0}, Lcom/huawei/android/freeshare/client/device/DeviceManager;->clearDevices()V

    .line 82
    return-void
.end method

.method public declared-synchronized clearDevices()V
    .locals 1

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/device/DeviceManager;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public findDeviceByID(I)Lcom/huawei/android/freeshare/client/device/DeviceInfo;
    .locals 4
    .parameter "id"

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, aim:Lcom/huawei/android/freeshare/client/device/DeviceInfo;
    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v2, p0, Lcom/huawei/android/freeshare/client/device/DeviceManager;->mDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 64
    :goto_0
    monitor-exit p0

    .line 72
    return-object v0

    .line 65
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/freeshare/client/device/DeviceInfo;

    .line 66
    .local v1, device:Lcom/huawei/android/freeshare/client/device/DeviceInfo;
    invoke-virtual {v1}, Lcom/huawei/android/freeshare/client/device/DeviceInfo;->getID()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 67
    move-object v0, v1

    .line 68
    goto :goto_0

    .line 64
    .end local v1           #device:Lcom/huawei/android/freeshare/client/device/DeviceInfo;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final declared-synchronized getDeviceList()Ljava/util/List;
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
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/device/DeviceManager;->mDevices:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeDeviceChangeListener(Lcom/huawei/android/freeshare/client/device/DeviceChangeListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/device/DeviceManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public declared-synchronized removeDevices(Lcom/huawei/android/freeshare/client/device/DeviceInfo;)V
    .locals 1
    .parameter "device"

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    :try_start_1
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/device/DeviceManager;->mDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 47
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
