.class public Lcom/android/gallery3d/data/PhotoShareAlbum;
.super Lcom/android/gallery3d/data/MediaSet;
.source "PhotoShareAlbum.java"


# static fields
.field private static final INVALID_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "PhotoshareAlbum"


# instance fields
.field private final mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mCachedCount:I

.field private mFolderType:I

.field private final mLocation:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPhotoshareChangeNotifier:Lcom/android/gallery3d/data/PhotoShareChangeNotifier;

.field private final mPhotoshareContext:Lcom/android/gallery3d/data/PhotoShareContext;

.field private mShareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;Ljava/lang/String;Lcom/android/gallery3d/data/PhotoShareContext;)V
    .locals 2
    .parameter "path"
    .parameter "galleryApp"
    .parameter "shareFolder"
    .parameter "displayname"
    .parameter "photoshareContext"

    .prologue
    .line 34
    invoke-static {}, Lcom/android/gallery3d/data/PhotoShareAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mCachedCount:I

    .line 35
    iput-object p3, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mShareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    .line 36
    iput-object p2, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mShareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getFolderType()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mFolderType:I

    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mShareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mLocation:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mName:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mPhotoshareChangeNotifier:Lcom/android/gallery3d/data/PhotoShareChangeNotifier;

    .line 41
    iput-object p5, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mPhotoshareContext:Lcom/android/gallery3d/data/PhotoShareContext;

    .line 42
    return-void
.end method

.method private loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;Lcom/android/gallery3d/app/GalleryApp;I)Lcom/android/gallery3d/data/MediaItem;
    .locals 10
    .parameter "path"
    .parameter "sharePhoto"
    .parameter "app"
    .parameter "folderType"

    .prologue
    .line 65
    invoke-interface {p3}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v8

    .line 66
    .local v8, dataManager:Lcom/android/gallery3d/data/DataManager;
    const-string v1, "PhotoshareAlbum"

    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v4, ""

    .line 69
    .local v4, mPhotolocation:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getLrealPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isFileSizeZero(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p2}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getLrealPath()Ljava/lang/String;

    move-result-object v4

    .line 74
    :goto_0
    sget-object v9, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v9

    .line 75
    :try_start_0
    invoke-virtual {v8, p1}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/PhotoShareImage;

    .line 76
    .local v0, item:Lcom/android/gallery3d/data/PhotoShareImage;
    if-nez v0, :cond_1

    .line 77
    new-instance v0, Lcom/android/gallery3d/data/PhotoShareImage;

    .end local v0           #item:Lcom/android/gallery3d/data/PhotoShareImage;
    invoke-virtual {p2}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->isNew()Z

    move-result v6

    iget-object v7, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mPhotoshareContext:Lcom/android/gallery3d/data/PhotoShareContext;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/gallery3d/data/PhotoShareImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;Ljava/lang/String;IZLcom/android/gallery3d/data/PhotoShareContext;)V

    .line 96
    .restart local v0       #item:Lcom/android/gallery3d/data/PhotoShareImage;
    :goto_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    return-object v0

    .line 72
    .end local v0           #item:Lcom/android/gallery3d/data/PhotoShareImage;
    :cond_0
    invoke-virtual {p2}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getLabbrPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 79
    .restart local v0       #item:Lcom/android/gallery3d/data/PhotoShareImage;
    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 80
    invoke-virtual {v0}, Lcom/android/gallery3d/data/PhotoShareImage;->updateVersion()V

    .line 81
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/data/PhotoShareImage;->setLocation(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Lcom/android/gallery3d/data/PhotoShareImage;->setRotateValueFromExif()V

    .line 86
    :cond_2
    invoke-virtual {p2}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getpName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/PhotoShareImage;->setName(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Lcom/android/gallery3d/data/PhotoShareImage;->getIsNew()Z

    move-result v1

    invoke-virtual {p2}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->isNew()Z

    move-result v2

    if-eq v1, v2, :cond_3

    .line 88
    invoke-virtual {p2}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->isNew()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/PhotoShareImage;->setIsNew(Z)V

    .line 89
    invoke-virtual {v0}, Lcom/android/gallery3d/data/PhotoShareImage;->updateVersion()V

    .line 92
    :cond_3
    invoke-virtual {v0, p2}, Lcom/android/gallery3d/data/PhotoShareImage;->setSharePhoto(Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;)V

    .line 94
    invoke-virtual {v0}, Lcom/android/gallery3d/data/PhotoShareImage;->setFilesizeAndLastmodify()V

    goto :goto_1

    .line 96
    .end local v0           #item:Lcom/android/gallery3d/data/PhotoShareImage;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public delete()V
    .locals 4

    .prologue
    .line 129
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mShareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getFolderType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mShareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mShareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDbankPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mShareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getSharePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk/api/FolderLogic;->delShareFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mShareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getFolderType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mShareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/api/FolderLogic;->cancelReceiverFolder(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)I

    goto :goto_0
.end method

.method public editPhotoShare(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mShareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getFolderType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 142
    const-class v1, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 146
    :cond_0
    :goto_0
    const-string v1, "sharePath"

    iget-object v2, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mShareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getSharePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 148
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 149
    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->executeHWAnimation(Landroid/content/Context;I)V

    .line 150
    return-void

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mShareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getFolderType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 144
    const-class v1, Lcom/huawei/gallery3d/photoshare/PhotoShareEditReceiveFolderActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 10
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
    .line 46
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 48
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/gallery3d/data/PhotoShareAlbum;->getPhotoList(Z)Ljava/util/ArrayList;

    move-result-object v6

    .line 49
    .local v6, photoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_0

    add-int v8, v1, p1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 50
    add-int v8, p1, v1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;

    .line 52
    .local v4, msharephoto:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getLrealPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->formatPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 53
    .local v7, segments:[Ljava/lang/String;
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    aget-object v5, v7, v8

    .line 55
    .local v5, pathname:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v8, v5}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 56
    .local v0, childPath:Lcom/android/gallery3d/data/Path;
    iget-object v8, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v9, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mShareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getFolderType()I

    move-result v9

    invoke-direct {p0, v0, v4, v8, v9}, Lcom/android/gallery3d/data/PhotoShareAlbum;->loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;Lcom/android/gallery3d/app/GalleryApp;I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    .line 57
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v0           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v4           #msharephoto:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
    .end local v5           #pathname:Ljava/lang/String;
    .end local v7           #segments:[Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public getMediaItemCount()I
    .locals 3

    .prologue
    .line 102
    iget v1, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mCachedCount:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 103
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/data/PhotoShareAlbum;->getPhotoList(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 104
    .local v0, photoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mCachedCount:I

    .line 106
    .end local v0           #photoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mCachedCount:I

    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoList(Z)Ljava/util/ArrayList;
    .locals 9
    .parameter "update"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 165
    iget-object v5, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mLocation:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v5, v6, v7, p1}, Lcom/huawei/hicloud/photosharesdk/api/PhotoLogic;->getSharePhoto(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v3

    .line 168
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    if-nez v3, :cond_1

    .line 169
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 188
    :cond_0
    return-object v3

    .line 171
    .restart local v3       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    :cond_1
    if-nez p1, :cond_0

    .line 173
    const/4 v2, -0x1

    .line 175
    .local v2, notnewposition:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 176
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;

    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->isNew()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eq v2, v8, :cond_4

    .line 177
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;

    .line 178
    .local v4, temp:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
    move v1, v0

    .local v1, j:I
    :goto_1
    add-int/lit8 v5, v2, 0x1

    if-lt v1, v5, :cond_2

    .line 179
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 178
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 181
    :cond_2
    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 182
    add-int/lit8 v2, v2, 0x1

    .line 175
    .end local v1           #j:I
    .end local v4           #temp:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_4
    if-ne v2, v8, :cond_3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;

    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->isNew()Z

    move-result v5

    if-nez v5, :cond_3

    .line 184
    move v2, v0

    goto :goto_2
.end method

.method public getShareFolder()Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mShareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    return-object v0
.end method

.method public getShareFolderKind()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mFolderType:I

    return v0
.end method

.method public reload()J
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mPhotoshareChangeNotifier:Lcom/android/gallery3d/data/PhotoShareChangeNotifier;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Lcom/android/gallery3d/data/PhotoShareAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mCachedCount:I

    .line 115
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mName:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setShareFolder(Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)V
    .locals 0
    .parameter "sharefolder"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/gallery3d/data/PhotoShareAlbum;->mShareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    .line 158
    return-void
.end method
