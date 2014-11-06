.class public Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/MediaInfoUtil;
.super Ljava/lang/Object;
.source "MediaInfoUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, baseInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v5, mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    new-instance v4, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;

    invoke-direct {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;-><init>()V

    .line 30
    .local v4, mediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 48
    return-object v5

    .line 30
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;

    .line 31
    .local v1, baseInfo:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;
    instance-of v8, v1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;

    if-eqz v8, :cond_2

    move-object v3, v1

    .line 32
    check-cast v3, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;

    .line 33
    .local v3, imageInfo:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/MediaInfoUtil;->convertFromImageInfo(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;)Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;

    move-result-object v4

    .line 45
    .end local v3           #imageInfo:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;
    :cond_1
    :goto_1
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_2
    instance-of v8, v1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;

    if-eqz v8, :cond_3

    move-object v0, v1

    .line 35
    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;

    .line 36
    .local v0, audioInfo:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/MediaInfoUtil;->convertFromAudioInfo(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;)Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;

    move-result-object v4

    goto :goto_1

    .line 37
    .end local v0           #audioInfo:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;
    :cond_3
    instance-of v8, v1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;

    if-eqz v8, :cond_4

    move-object v6, v1

    .line 38
    check-cast v6, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;

    .line 39
    .local v6, videoInfo:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;
    invoke-static {v6}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/MediaInfoUtil;->convertFromVideoInfo(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;)Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;

    move-result-object v4

    goto :goto_1

    .line 40
    .end local v6           #videoInfo:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;
    :cond_4
    instance-of v8, v1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;

    if-eqz v8, :cond_1

    move-object v2, v1

    .line 41
    check-cast v2, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;

    .line 42
    .local v2, folderInfo:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;
    invoke-static {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/MediaInfoUtil;->convertFromFolderInfo(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;)Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;

    move-result-object v4

    goto :goto_1
.end method

.method public static convertFromAudioInfo(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;)Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .locals 3
    .parameter "audioInfo"

    .prologue
    const/4 v2, 0x0

    .line 120
    if-nez p0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 145
    :goto_0
    return-object v0

    .line 123
    :cond_0
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;-><init>()V

    .line 125
    .local v0, mediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;->getAddDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setAddDate(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setUrl(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setDeviceId(I)V

    .line 128
    invoke-virtual {v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setHeight(I)V

    .line 129
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;->getAlbumArtUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setIconUri(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setId(I)V

    .line 131
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setItemId(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;->getParentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setItemParentId(Ljava/lang/String;)V

    .line 133
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->AUDIO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setMediaInfoType(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V

    .line 134
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setMimeType(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setName(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setSize(I)V

    .line 137
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setTitle(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;->getUpnpClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setUpnpClass(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setWidth(I)V

    .line 140
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;->getDuration()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setDuration(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setArtist(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;->getCreatedDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setAddDate(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static convertFromFolderInfo(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;)Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .locals 4
    .parameter "folderInfo"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 177
    if-nez p0, :cond_0

    move-object v0, v1

    .line 199
    :goto_0
    return-object v0

    .line 180
    :cond_0
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;-><init>()V

    .line 182
    .local v0, mediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setAddDate(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setUrl(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->getDeviceId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setDeviceId(I)V

    .line 185
    invoke-virtual {v0, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setHeight(I)V

    .line 186
    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setIconUri(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setId(I)V

    .line 188
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->getFolderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setItemId(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->getParentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setItemParentId(Ljava/lang/String;)V

    .line 190
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->FOLDER:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setMediaInfoType(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V

    .line 191
    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setMimeType(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setName(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setSize(I)V

    .line 194
    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setTitle(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setUpnpClass(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setWidth(I)V

    .line 197
    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setDuration(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static convertFromImageInfo(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;)Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .locals 3
    .parameter "imageInfo"

    .prologue
    const/4 v2, 0x0

    .line 92
    if-nez p0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 116
    :goto_0
    return-object v0

    .line 94
    :cond_0
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;-><init>()V

    .line 96
    .local v0, mediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getAddDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setAddDate(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setUrl(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setDeviceId(I)V

    .line 99
    invoke-virtual {v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setHeight(I)V

    .line 100
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getAlbumArtUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setIconUri(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setId(I)V

    .line 102
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setItemId(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getParentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setItemParentId(Ljava/lang/String;)V

    .line 104
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setMediaInfoType(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V

    .line 105
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setMimeType(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setName(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setSize(I)V

    .line 108
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setTitle(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getUpnpClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setUpnpClass(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setWidth(I)V

    .line 112
    const-string v1, "0:00:00.000"

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setDuration(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getCreatedDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setAddDate(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static convertFromVideoInfo(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;)Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .locals 3
    .parameter "videoInfo"

    .prologue
    const/4 v2, 0x0

    .line 149
    if-nez p0, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 173
    :goto_0
    return-object v0

    .line 152
    :cond_0
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;-><init>()V

    .line 154
    .local v0, mediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getAddDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setAddDate(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setUrl(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setDeviceId(I)V

    .line 157
    invoke-virtual {v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setHeight(I)V

    .line 158
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getAlbumArtUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setIconUri(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setId(I)V

    .line 160
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setItemId(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getParentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setItemParentId(Ljava/lang/String;)V

    .line 162
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setMediaInfoType(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V

    .line 163
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setMimeType(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setName(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setSize(I)V

    .line 166
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setTitle(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getUpnpClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setUpnpClass(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setWidth(I)V

    .line 169
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getDuration()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setDuration(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getCreatedDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setAddDate(Ljava/lang/String;)V

    goto :goto_0
.end method
