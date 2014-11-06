.class public Lcom/android/gallery3d/data/DmsDevice;
.super Lcom/android/gallery3d/data/MediaSet;
.source "DmsDevice.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AirSharing_DmsDevice"


# instance fields
.field private final mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private final mDeviceId:I

.field private final mDeviceName:Ljava/lang/String;

.field private final mDmsContext:Lcom/android/gallery3d/data/DmsContext;

.field private mDmsMediaInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemPath:Lcom/android/gallery3d/data/Path;

.field private final mName:Ljava/lang/String;

.field private final mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;ILcom/android/gallery3d/data/DmsContext;)V
    .locals 6
    .parameter "path"
    .parameter "application"
    .parameter "deviceId"
    .parameter "dmsContext"

    .prologue
    .line 40
    invoke-static {p4, p3}, Lcom/android/gallery3d/data/DmsDeviceSet;->getDeviceName(Lcom/android/gallery3d/data/DmsContext;I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/data/DmsDevice;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;ILjava/lang/String;Lcom/android/gallery3d/data/DmsContext;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;ILjava/lang/String;Lcom/android/gallery3d/data/DmsContext;)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "deviceId"
    .parameter "name"
    .parameter "dmsContext"

    .prologue
    .line 27
    invoke-static {}, Lcom/android/gallery3d/data/DmsDevice;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 28
    iput-object p2, p0, Lcom/android/gallery3d/data/DmsDevice;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 29
    iput p3, p0, Lcom/android/gallery3d/data/DmsDevice;->mDeviceId:I

    .line 30
    invoke-virtual {p5}, Lcom/android/gallery3d/data/DmsContext;->getDmsClient()Lcom/android/gallery3d/data/DmsClient;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/gallery3d/data/DmsClient;->getDevice(I)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;

    move-result-object v0

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsDevice;->mDeviceName:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/android/gallery3d/data/DmsDevice;->mDmsContext:Lcom/android/gallery3d/data/DmsContext;

    .line 32
    iput-object p4, p0, Lcom/android/gallery3d/data/DmsDevice;->mName:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/android/gallery3d/data/ChangeNotifier;

    const-string v1, "dms://"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsDevice;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/dms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/item"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsDevice;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsDevice;->mDmsMediaInfos:Ljava/util/List;

    .line 36
    return-void
.end method

.method public static getObjectInfo(Lcom/android/gallery3d/data/DmsContext;ILjava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .locals 1
    .parameter "dmsContext"
    .parameter "deviceId"
    .parameter "objectId"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/gallery3d/data/DmsContext;->getDmsClient()Lcom/android/gallery3d/data/DmsClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/data/DmsClient;->getObjectInfo(ILjava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;

    move-result-object v0

    return-object v0
.end method

.method private loadItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    const-string v2, "AirSharing_DmsDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadItems() DeviceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/data/DmsDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v2, p0, Lcom/android/gallery3d/data/DmsDevice;->mDmsContext:Lcom/android/gallery3d/data/DmsContext;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/DmsContext;->getDmsClient()Lcom/android/gallery3d/data/DmsClient;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/data/DmsDevice;->mDeviceId:I

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DmsClient;->getStorageList(I)Ljava/util/List;

    move-result-object v1

    .line 51
    .local v1, storageList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    if-nez v1, :cond_0

    .line 52
    const-string v2, "AirSharing_DmsDevice"

    const-string v3, "loadItems() : storageList is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_0
    return-object v0

    .line 56
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    const-string v2, "AirSharing_DmsDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadItems() result.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsDevice;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 17
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v16, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    move/from16 v12, p1

    .line 70
    .local v12, begin:I
    add-int v3, p1, p2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/data/DmsDevice;->mDmsMediaInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 72
    .local v14, end:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/DmsDevice;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v13

    .line 73
    .local v13, dataManager:Lcom/android/gallery3d/data/DataManager;
    move v15, v12

    .local v15, i:I
    :goto_0
    if-ge v15, v14, :cond_3

    .line 74
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/DmsDevice;->mDmsMediaInfos:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;

    .line 75
    .local v5, child:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    invoke-virtual {v5}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getMediaInfoType()Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    move-result-object v3

    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    if-ne v3, v4, :cond_1

    .line 76
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/DmsDevice;->mItemPath:Lcom/android/gallery3d/data/Path;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/image/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getItemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 77
    .local v2, chindPath:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v13, v2}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/DmsImage;

    .line 78
    .local v1, image:Lcom/android/gallery3d/data/DmsImage;
    if-nez v1, :cond_0

    .line 79
    new-instance v1, Lcom/android/gallery3d/data/DmsImage;

    .end local v1           #image:Lcom/android/gallery3d/data/DmsImage;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/DmsDevice;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/data/DmsDevice;->mDeviceId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/data/DmsDevice;->mDmsContext:Lcom/android/gallery3d/data/DmsContext;

    invoke-direct/range {v1 .. v6}, Lcom/android/gallery3d/data/DmsImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;ILcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;Lcom/android/gallery3d/data/DmsContext;)V

    .line 84
    .restart local v1       #image:Lcom/android/gallery3d/data/DmsImage;
    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v1           #image:Lcom/android/gallery3d/data/DmsImage;
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 82
    .restart local v1       #image:Lcom/android/gallery3d/data/DmsImage;
    :cond_0
    invoke-virtual {v1, v5}, Lcom/android/gallery3d/data/DmsImage;->updateContent(Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;)V

    goto :goto_1

    .line 86
    .end local v1           #image:Lcom/android/gallery3d/data/DmsImage;
    .end local v2           #chindPath:Lcom/android/gallery3d/data/Path;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/DmsDevice;->mItemPath:Lcom/android/gallery3d/data/Path;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/video/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getItemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 87
    .restart local v2       #chindPath:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v13, v2}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/DmsVideo;

    .line 88
    .local v6, video:Lcom/android/gallery3d/data/DmsVideo;
    if-nez v6, :cond_2

    .line 89
    new-instance v6, Lcom/android/gallery3d/data/DmsVideo;

    .end local v6           #video:Lcom/android/gallery3d/data/DmsVideo;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/data/DmsDevice;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/gallery3d/data/DmsDevice;->mDeviceId:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/gallery3d/data/DmsDevice;->mDmsContext:Lcom/android/gallery3d/data/DmsContext;

    move-object v7, v2

    move-object v10, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/gallery3d/data/DmsVideo;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;ILcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;Lcom/android/gallery3d/data/DmsContext;)V

    .line 94
    .restart local v6       #video:Lcom/android/gallery3d/data/DmsVideo;
    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 92
    :cond_2
    invoke-virtual {v6, v5}, Lcom/android/gallery3d/data/DmsVideo;->updateContent(Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;)V

    goto :goto_3

    .line 97
    .end local v2           #chindPath:Lcom/android/gallery3d/data/Path;
    .end local v5           #child:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .end local v6           #video:Lcom/android/gallery3d/data/DmsVideo;
    :cond_3
    return-object v16
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsDevice;->mDmsMediaInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 129
    const/16 v0, 0x800

    return v0
.end method

.method public importOperation()Z
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsDevice;->mDmsContext:Lcom/android/gallery3d/data/DmsContext;

    iget-object v1, p0, Lcom/android/gallery3d/data/DmsDevice;->mDeviceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/gallery3d/data/DmsDevice;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/data/DmsDevice;->mDmsMediaInfos:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/data/DmsContext;->copyAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .locals 4

    .prologue
    .line 116
    const-string v1, "AirSharing_DmsDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reload object = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/data/DmsDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lcom/android/gallery3d/data/DmsDevice;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    .line 118
    .local v0, r:Z
    const-string v1, "AirSharing_DmsDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dirty condtion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-static {}, Lcom/android/gallery3d/data/DmsDevice;->nextVersionNumber()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 121
    invoke-direct {p0}, Lcom/android/gallery3d/data/DmsDevice;->loadItems()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/data/DmsDevice;->mDmsMediaInfos:Ljava/util/List;

    .line 122
    const-string v1, "AirSharing_DmsDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reload() mJpegChildren.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/data/DmsDevice;->mDmsMediaInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    iget-wide v1, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v1
.end method
