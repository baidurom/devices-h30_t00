.class public Lcom/huawei/android/multiscreen/dlna/sdk/dms/DmsDevice;
.super Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/BaseDevice;
.source "DmsDevice.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;


# instance fields
.field private mShareFileFilterDefault:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;

.field private shareFileManager:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/BaseDevice;-><init>()V

    .line 30
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/DmsDevice;->shareFileManager:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;

    .line 34
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/DmsDevice;->shareFileManager:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->getmShareFileFilterDefault()Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/DmsDevice;->mShareFileFilterDefault:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;

    .line 25
    return-void
.end method


# virtual methods
.method public addShareFilePath(Ljava/lang/String;)Z
    .locals 1
    .parameter "filePath"

    .prologue
    .line 62
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/DmsDevice;->shareFileManager:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;

    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->addPath(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public cleanShareStorage()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/DmsDevice;->shareFileManager:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->cleanShareState()Z

    move-result v0

    return v0
.end method

.method public getFileShareState(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
    .locals 1
    .parameter "filePath"

    .prologue
    .line 54
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->NO_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    .line 56
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/DmsDevice;->shareFileManager:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;

    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->getFileShareState(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    move-result-object v0

    goto :goto_0
.end method

.method public isSupportShareFile(Ljava/lang/String;)Z
    .locals 1
    .parameter "filePath"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/DmsDevice;->mShareFileFilterDefault:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;

    invoke-interface {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;->isValidSharePath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValidShareFile(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/DmsDevice;->shareFileManager:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;

    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->isSharePathValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeShareFilePath(Ljava/lang/String;)Z
    .locals 1
    .parameter "filePath"

    .prologue
    .line 70
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/DmsDevice;->shareFileManager:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;

    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->removePath(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setShareEnable(Z)Z
    .locals 2
    .parameter "enable"

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, ret:Z
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiDmsEnableShare(Z)I

    move-result v1

    if-nez v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/DmsDevice;->shareFileManager:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->updateShareFileFromXML()Z

    .line 43
    const/4 v0, 0x1

    .line 45
    :cond_0
    return v0
.end method

.method public setShareFileFilterClient(Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;)V
    .locals 1
    .parameter "shareFileFilterClient"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/DmsDevice;->shareFileManager:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;

    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->setmShareFileFilterClient(Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;)V

    .line 134
    return-void
.end method

.method public updateShareFilesPath(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareFileObject;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, shareFileList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareFileObject;>;"
    const/4 v0, 0x0

    .line 103
    .local v0, ret:Z
    if-nez p1, :cond_0

    move v1, v0

    .line 116
    .end local v0           #ret:Z
    .local v1, ret:I
    :goto_0
    return v1

    .line 105
    .end local v1           #ret:I
    .restart local v0       #ret:Z
    :cond_0
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/DmsDevice;->shareFileManager:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;

    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->startTransaction()V

    .line 106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 115
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/DmsDevice;->shareFileManager:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;

    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->endTransaction()Z

    move-result v0

    move v1, v0

    .line 116
    .restart local v1       #ret:I
    goto :goto_0

    .line 106
    .end local v1           #ret:I
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareFileObject;

    .line 107
    .local v2, shareObject:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareFileObject;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareFileObject;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 108
    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareFileObject;->getShareOperationFlag()Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    move-result-object v4

    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;->ADD_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    if-ne v4, v5, :cond_3

    .line 109
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/DmsDevice;->shareFileManager:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;

    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareFileObject;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->addPath(Ljava/lang/String;)Z

    goto :goto_1

    .line 110
    :cond_3
    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareFileObject;->getShareOperationFlag()Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    move-result-object v4

    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;->REMOVE_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    if-ne v4, v5, :cond_1

    .line 111
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/DmsDevice;->shareFileManager:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;

    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareFileObject;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->removePath(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public updateShareFilesPath(Ljava/util/List;Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;)Z
    .locals 5
    .parameter
    .parameter "operationFlag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, filePathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 81
    .local v1, ret:Z
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    .line 96
    .end local v1           #ret:Z
    .local v2, ret:I
    :goto_0
    return v2

    .line 83
    .end local v2           #ret:I
    .restart local v1       #ret:Z
    :cond_1
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/DmsDevice;->shareFileManager:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;

    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->startTransaction()V

    .line 85
    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;->ADD_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    if-ne p2, v3, :cond_4

    .line 87
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 95
    :cond_2
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/DmsDevice;->shareFileManager:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;

    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->endTransaction()Z

    move-result v1

    move v2, v1

    .line 96
    .restart local v2       #ret:I
    goto :goto_0

    .line 87
    .end local v2           #ret:I
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    .local v0, path:Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/DmsDevice;->shareFileManager:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;

    invoke-virtual {v4, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->addPath(Ljava/lang/String;)Z

    goto :goto_1

    .line 90
    .end local v0           #path:Ljava/lang/String;
    :cond_4
    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;->REMOVE_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    if-ne p2, v3, :cond_2

    .line 91
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    .restart local v0       #path:Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/DmsDevice;->shareFileManager:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;

    invoke-virtual {v4, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->removePath(Ljava/lang/String;)Z

    goto :goto_2
.end method
