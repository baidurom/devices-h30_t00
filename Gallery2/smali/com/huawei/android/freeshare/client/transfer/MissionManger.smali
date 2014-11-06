.class public Lcom/huawei/android/freeshare/client/transfer/MissionManger;
.super Ljava/lang/Object;
.source "MissionManger.java"

# interfaces
.implements Lcom/huawei/android/freeshare/client/transfer/FileTransfer$TransferObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "freeshare_MissionManager"


# instance fields
.field private mCouldStartNextMission:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/freeshare/client/transfer/FileTransferListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTransfer:Lcom/huawei/android/freeshare/client/transfer/FileTransfer;

.field private mWaitMissions:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/huawei/android/freeshare/client/transfer/Mission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->mListeners:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->mWaitMissions:Ljava/util/concurrent/BlockingQueue;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->mCouldStartNextMission:Z

    .line 14
    return-void
.end method

.method private nextMission()Z
    .locals 4

    .prologue
    .line 61
    const-string v2, "freeshare_MissionManager"

    const-string v3, " nextMission"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, res:Z
    monitor-enter p0

    .line 64
    :try_start_0
    iget-boolean v2, p0, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->mCouldStartNextMission:Z

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->mWaitMissions:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/freeshare/client/transfer/Mission;

    .line 66
    .local v1, toBeStartMission:Lcom/huawei/android/freeshare/client/transfer/Mission;
    if-eqz v1, :cond_1

    .line 67
    iget-object v2, p0, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->mTransfer:Lcom/huawei/android/freeshare/client/transfer/FileTransfer;

    invoke-virtual {v2, v1}, Lcom/huawei/android/freeshare/client/transfer/FileTransfer;->start(Lcom/huawei/android/freeshare/client/transfer/Mission;)Z

    move-result v0

    .line 72
    :goto_0
    if-eqz v0, :cond_2

    .line 74
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->mCouldStartNextMission:Z

    .line 63
    .end local v1           #toBeStartMission:Lcom/huawei/android/freeshare/client/transfer/Mission;
    :cond_0
    :goto_1
    monitor-exit p0

    .line 80
    return v0

    .line 69
    .restart local v1       #toBeStartMission:Lcom/huawei/android/freeshare/client/transfer/Mission;
    :cond_1
    const-string v2, "freeshare_MissionManager"

    const-string v3, "toBeStartMission ==null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v0, 0x0

    goto :goto_0

    .line 76
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->mCouldStartNextMission:Z

    goto :goto_1

    .line 63
    .end local v1           #toBeStartMission:Lcom/huawei/android/freeshare/client/transfer/Mission;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public addMissionListener(Lcom/huawei/android/freeshare/client/transfer/FileTransferListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method public cancelRestMission()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 147
    const-string v2, "freeshare_MissionManager"

    const-string v3, "cancelRestMission"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v2, p0, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->mTransfer:Lcom/huawei/android/freeshare/client/transfer/FileTransfer;

    if-nez v2, :cond_0

    .line 161
    :goto_0
    return v0

    .line 152
    :cond_0
    monitor-enter p0

    .line 153
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->mCouldStartNextMission:Z

    .line 154
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->mWaitMissions:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 152
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->mTransfer:Lcom/huawei/android/freeshare/client/transfer/FileTransfer;

    invoke-virtual {v0}, Lcom/huawei/android/freeshare/client/transfer/FileTransfer;->cancleTransferringMission()Z

    .line 158
    monitor-enter p0

    .line 159
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->mCouldStartNextMission:Z

    .line 158
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v1

    .line 161
    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 158
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->clearListener()V

    .line 34
    invoke-virtual {p0}, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->cancelRestMission()Z

    .line 35
    return-void
.end method

.method public clearListener()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 174
    return-void
.end method

.method public getRestMissionNum()I
    .locals 5

    .prologue
    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v2, p0, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->mWaitMissions:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    .line 132
    .local v1, numOfWatiMission:I
    iget-object v2, p0, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->mTransfer:Lcom/huawei/android/freeshare/client/transfer/FileTransfer;

    invoke-virtual {v2}, Lcom/huawei/android/freeshare/client/transfer/FileTransfer;->isTransferring()Z

    move-result v0

    .line 133
    .local v0, isTransferring:Z
    const-string v2, "freeshare_MissionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "numOfWatiMission ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 134
    const-string v4, ",isTransferring="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-eqz v0, :cond_0

    .line 136
    add-int/lit8 v1, v1, 0x1

    monitor-exit p0

    .line 138
    .end local v1           #numOfWatiMission:I
    :goto_0
    return v1

    .restart local v1       #numOfWatiMission:I
    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 130
    .end local v0           #isTransferring:Z
    .end local v1           #numOfWatiMission:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->getRestMissionNum()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyChanged(Lcom/huawei/android/freeshare/client/transfer/TransferItem;)V
    .locals 8
    .parameter "item"

    .prologue
    .line 85
    const-string v5, "freeshare_MissionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "notify changed,item="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->mUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p1}, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->getMission()Lcom/huawei/android/freeshare/client/transfer/Mission;

    move-result-object v3

    .line 87
    .local v3, misson:Lcom/huawei/android/freeshare/client/transfer/Mission;
    invoke-virtual {v3}, Lcom/huawei/android/freeshare/client/transfer/Mission;->upDateState()V

    .line 88
    invoke-virtual {p1}, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->isTransferring()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 89
    iget-object v5, p0, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->mListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 127
    :cond_0
    :goto_1
    return-void

    .line 89
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/freeshare/client/transfer/FileTransferListener;

    .line 90
    .local v1, listener:Lcom/huawei/android/freeshare/client/transfer/FileTransferListener;
    iget-object v6, p1, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->mUri:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->getPorgress()I

    move-result v7

    invoke-interface {v1, v6, v7}, Lcom/huawei/android/freeshare/client/transfer/FileTransferListener;->onProgressUpdate(Ljava/lang/String;I)V

    goto :goto_0

    .line 92
    .end local v1           #listener:Lcom/huawei/android/freeshare/client/transfer/FileTransferListener;
    :cond_2
    invoke-virtual {p1}, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 93
    iget-boolean v4, p1, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->mSuccess:Z

    .line 95
    .local v4, success:Z
    if-nez v4, :cond_4

    .line 98
    const-string v5, "freeshare_MissionManager"

    .line 99
    const-string v6, "transfer failed , clean the rest missions which target is the same"

    .line 98
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v5, p0, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->mWaitMissions:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 101
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/freeshare/client/transfer/Mission;>;"
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 115
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/freeshare/client/transfer/Mission;>;"
    :cond_4
    iget-object v5, p0, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->mListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    .line 120
    invoke-virtual {v3}, Lcom/huawei/android/freeshare/client/transfer/Mission;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    monitor-enter p0

    .line 122
    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->mCouldStartNextMission:Z

    .line 123
    invoke-direct {p0}, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->nextMission()Z

    .line 121
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 102
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/freeshare/client/transfer/Mission;>;"
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/freeshare/client/transfer/Mission;

    .line 103
    .local v2, missionCheck:Lcom/huawei/android/freeshare/client/transfer/Mission;
    invoke-virtual {v2, v3}, Lcom/huawei/android/freeshare/client/transfer/Mission;->isTheSameTarget(Lcom/huawei/android/freeshare/client/transfer/Mission;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 115
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/freeshare/client/transfer/Mission;>;"
    .end local v2           #missionCheck:Lcom/huawei/android/freeshare/client/transfer/Mission;
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/freeshare/client/transfer/FileTransferListener;

    .line 116
    .restart local v1       #listener:Lcom/huawei/android/freeshare/client/transfer/FileTransferListener;
    iget-object v6, p1, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->mUri:Ljava/lang/String;

    invoke-interface {v1, v6, v4}, Lcom/huawei/android/freeshare/client/transfer/FileTransferListener;->onTransferFinish(Ljava/lang/String;Z)V

    goto :goto_3
.end method

.method public offer(Lcom/huawei/android/freeshare/client/transfer/Mission;)Z
    .locals 3
    .parameter "mission"

    .prologue
    const/4 v0, 0x0

    .line 38
    iget-object v1, p0, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->mTransfer:Lcom/huawei/android/freeshare/client/transfer/FileTransfer;

    if-nez v1, :cond_0

    .line 56
    :goto_0
    return v0

    .line 42
    :cond_0
    const-string v1, "freeshare_MissionManager"

    const-string v2, " start mission called "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p1}, Lcom/huawei/android/freeshare/client/transfer/Mission;->getTargetDevice()Lcom/huawei/android/freeshare/client/device/DeviceInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 44
    const-string v1, "freeshare_MissionManager"

    const-string v2, "target device is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/android/freeshare/client/transfer/Mission;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 49
    const-string v1, "freeshare_MissionManager"

    const-string v2, "mission is already started "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 53
    :cond_2
    const/4 v0, 0x0

    .line 54
    .local v0, res:Z
    iget-object v1, p0, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->mWaitMissions:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 55
    invoke-direct {p0}, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->nextMission()Z

    goto :goto_0
.end method

.method public removeMissionListener(Lcom/huawei/android/freeshare/client/transfer/FileTransferListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method

.method public setFileTransfer(Lcom/huawei/android/freeshare/client/transfer/FileTransfer;)V
    .locals 1
    .parameter "transfer"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->mTransfer:Lcom/huawei/android/freeshare/client/transfer/FileTransfer;

    .line 29
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->mTransfer:Lcom/huawei/android/freeshare/client/transfer/FileTransfer;

    invoke-virtual {v0, p0}, Lcom/huawei/android/freeshare/client/transfer/FileTransfer;->registerObserver(Lcom/huawei/android/freeshare/client/transfer/FileTransfer$TransferObserver;)V

    .line 30
    return-void
.end method
