.class public Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;
.super Ljava/lang/Object;
.source "OperationList.java"


# instance fields
.field private shareFileBuilder:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;

.field private final updateOpsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->updateOpsList:Ljava/util/List;

    .line 33
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->shareFileBuilder:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;

    .line 34
    return-void
.end method

.method private declared-synchronized removeOps(Ljava/util/List;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)V
    .locals 6
    .parameter
    .parameter "newDir"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;",
            ">;",
            "Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;",
            ")V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, listDir:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;>;"
    monitor-enter p0

    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-lt v2, v4, :cond_0

    .line 198
    monitor-exit p0

    return-void

    .line 181
    :cond_0
    :try_start_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    .line 189
    .local v0, dir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, dirPath:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, newDirPath:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 193
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getOperateFlag()I

    move-result v4

    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getOperateFlag()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 194
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    add-int/lit8 v2, v2, -0x1

    .line 180
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #dir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    .end local v1           #dirPath:Ljava/lang/String;
    .end local v3           #newDirPath:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method


# virtual methods
.method public declared-synchronized addDirInUpdateList(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;)V
    .locals 1
    .parameter "dir"
    .parameter "operation"

    .prologue
    .line 159
    monitor-enter p0

    if-nez p1, :cond_0

    .line 166
    :goto_0
    monitor-exit p0

    return-void

    .line 162
    :cond_0
    :try_start_0
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->ALL_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->setAllOrPartFlag(I)V

    .line 163
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->setOperateFlag(I)V

    .line 164
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->updateOpsList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->removeOps(Ljava/util/List;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)V

    .line 165
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->updateOpsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addFileInUpdateList(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;)V
    .locals 7
    .parameter "file"
    .parameter "operation"

    .prologue
    .line 109
    monitor-enter p0

    if-nez p1, :cond_1

    .line 147
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 112
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->getParentPath()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, parentPath:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 116
    const/4 v1, 0x0

    .line 119
    .local v1, findFile:Z
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->updateOpsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 140
    if-nez v1, :cond_0

    .line 141
    new-instance v2, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    invoke-direct {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;-><init>(Ljava/lang/String;)V

    .line 142
    .local v2, newDir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->PART_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    invoke-virtual {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->getValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->setAllOrPartFlag(I)V

    .line 143
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;->getValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->setOperateFlag(I)V

    .line 144
    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->updateOpsList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 109
    .end local v1           #findFile:Z
    .end local v2           #newDir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    .end local v3           #parentPath:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 119
    .restart local v1       #findFile:Z
    .restart local v3       #parentPath:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    .line 120
    .local v0, dir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 122
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 123
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getOperateFlag()I

    move-result v5

    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;->getValue()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 124
    const/4 v1, 0x1

    .line 126
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 129
    :cond_4
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 130
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getOperateFlag()I

    move-result v5

    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;->getValue()I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 131
    const/4 v1, 0x1

    .line 133
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public declared-synchronized addPathInUpdateList(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;)V
    .locals 2
    .parameter "filePath"
    .parameter "operation"

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->shareFileBuilder:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;

    invoke-virtual {v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;->buildShareFile(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    move-result-object v0

    .line 93
    .local v0, file:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    .end local v0           #file:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    invoke-virtual {p0, v0, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->addDirInUpdateList(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :goto_0
    monitor-exit p0

    return-void

    .line 96
    .restart local v0       #file:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->addFileInUpdateList(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    .end local v0           #file:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->getUpdateOpsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized copyAndClear()Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;
    .locals 3

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;-><init>()V

    .line 50
    .local v0, tempList:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->getUpdateOpsList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->getUpdateOpsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->getUpdateOpsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-object v0

    .line 49
    .end local v0           #tempList:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getUpdateOpsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->updateOpsList:Ljava/util/List;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->updateOpsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized toArray()[Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    .locals 3

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->getUpdateOpsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->getUpdateOpsList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->updateOpsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 79
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    .line 80
    .local v0, dir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->buildShareFiles()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    .end local v0           #dir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
