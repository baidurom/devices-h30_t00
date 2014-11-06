.class Lcom/android/gallery3d/data/PhotoShareAlbumSet$AlbumsLoader;
.super Ljava/lang/Object;
.source "PhotoShareAlbumSet.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/PhotoShareAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/gallery3d/data/MediaSet;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/PhotoShareAlbumSet;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/data/PhotoShareAlbumSet;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet$AlbumsLoader;->this$0:Lcom/android/gallery3d/data/PhotoShareAlbumSet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/data/PhotoShareAlbumSet;Lcom/android/gallery3d/data/PhotoShareAlbumSet$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/PhotoShareAlbumSet$AlbumsLoader;-><init>(Lcom/android/gallery3d/data/PhotoShareAlbumSet;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/PhotoShareAlbumSet$AlbumsLoader;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 18
    .parameter "jc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/ThreadPool$JobContext;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v7, 0x0

    .line 103
    :cond_0
    return-object v7

    .line 58
    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v15, retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/PhotoShareAlbumSet$AlbumsLoader;->this$0:Lcom/android/gallery3d/data/PhotoShareAlbumSet;

    #getter for: Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;
    invoke-static {v3}, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->access$000(Lcom/android/gallery3d/data/PhotoShareAlbumSet;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "isOpenPhoto"

    invoke-static {v3, v6}, Lcom/huawei/hicloud/photosharesdk/api/SwitcherSetting;->getSwitcher(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    .line 60
    .local v10, isSwitchPhotoOn:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/PhotoShareAlbumSet$AlbumsLoader;->this$0:Lcom/android/gallery3d/data/PhotoShareAlbumSet;

    #getter for: Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;
    invoke-static {v3}, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->access$000(Lcom/android/gallery3d/data/PhotoShareAlbumSet;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "isOpenShare"

    invoke-static {v3, v6}, Lcom/huawei/hicloud/photosharesdk/api/SwitcherSetting;->getSwitcher(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    .line 61
    .local v11, isSwitchShareOn:Z
    if-eqz v10, :cond_2

    .line 62
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/PhotoShareAlbumSet$AlbumsLoader;->this$0:Lcom/android/gallery3d/data/PhotoShareAlbumSet;

    #getter for: Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;
    invoke-static {v3}, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->access$000(Lcom/android/gallery3d/data/PhotoShareAlbumSet;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v3, v6, v0}, Lcom/huawei/hicloud/photosharesdk/api/FolderLogic;->getFolderInfoList(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 65
    :cond_2
    if-eqz v11, :cond_4

    .line 66
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/PhotoShareAlbumSet$AlbumsLoader;->this$0:Lcom/android/gallery3d/data/PhotoShareAlbumSet;

    #getter for: Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;
    invoke-static {v3}, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->access$000(Lcom/android/gallery3d/data/PhotoShareAlbumSet;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const/4 v6, 0x1

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v3, v6, v0}, Lcom/huawei/hicloud/photosharesdk/api/FolderLogic;->getFolderInfoList(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v13

    .line 68
    .local v13, mShareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/PhotoShareAlbumSet$AlbumsLoader;->this$0:Lcom/android/gallery3d/data/PhotoShareAlbumSet;

    #getter for: Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;
    invoke-static {v3}, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->access$000(Lcom/android/gallery3d/data/PhotoShareAlbumSet;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const/4 v6, 0x2

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v3, v6, v0}, Lcom/huawei/hicloud/photosharesdk/api/FolderLogic;->getFolderInfoList(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v12

    .line 70
    .local v12, mRecvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    if-eqz v13, :cond_3

    .line 71
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 73
    :cond_3
    if-eqz v12, :cond_4

    .line 74
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 77
    .end local v12           #mRecvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    .end local v13           #mShareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v7, albums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/PhotoShareAlbumSet$AlbumsLoader;->this$0:Lcom/android/gallery3d/data/PhotoShareAlbumSet;

    #getter for: Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;
    invoke-static {v3}, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->access$000(Lcom/android/gallery3d/data/PhotoShareAlbumSet;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v8

    .line 79
    .local v8, dataManager:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    .line 81
    .local v4, entry:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->formatPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 83
    .local v16, segments:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/PhotoShareAlbumSet$AlbumsLoader;->this$0:Lcom/android/gallery3d/data/PhotoShareAlbumSet;

    iget-object v3, v3, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    move-object/from16 v0, v16

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v16, v6

    invoke-virtual {v3, v6}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 84
    .local v2, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v8, v2}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/PhotoShareAlbum;

    .line 85
    .local v1, album:Lcom/android/gallery3d/data/PhotoShareAlbum;
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getFolderType()I

    move-result v14

    .line 86
    .local v14, mediaSetType:I
    if-nez v1, :cond_6

    .line 87
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, displayname:Ljava/lang/String;
    if-nez v14, :cond_5

    .line 89
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/PhotoShareAlbumSet$AlbumsLoader;->this$0:Lcom/android/gallery3d/data/PhotoShareAlbumSet;

    #getter for: Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;
    invoke-static {v3}, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->access$000(Lcom/android/gallery3d/data/PhotoShareAlbumSet;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0d03f6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 91
    :cond_5
    new-instance v1, Lcom/android/gallery3d/data/PhotoShareAlbum;

    .end local v1           #album:Lcom/android/gallery3d/data/PhotoShareAlbum;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/PhotoShareAlbumSet$AlbumsLoader;->this$0:Lcom/android/gallery3d/data/PhotoShareAlbumSet;

    #getter for: Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;
    invoke-static {v3}, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->access$000(Lcom/android/gallery3d/data/PhotoShareAlbumSet;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/data/PhotoShareAlbumSet$AlbumsLoader;->this$0:Lcom/android/gallery3d/data/PhotoShareAlbumSet;

    #getter for: Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mPhotoshareContext:Lcom/android/gallery3d/data/PhotoShareContext;
    invoke-static {v6}, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->access$100(Lcom/android/gallery3d/data/PhotoShareAlbumSet;)Lcom/android/gallery3d/data/PhotoShareContext;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/android/gallery3d/data/PhotoShareAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;Ljava/lang/String;Lcom/android/gallery3d/data/PhotoShareContext;)V

    .line 101
    .end local v5           #displayname:Ljava/lang/String;
    .restart local v1       #album:Lcom/android/gallery3d/data/PhotoShareAlbum;
    :goto_1
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_6
    invoke-virtual {v1, v4}, Lcom/android/gallery3d/data/PhotoShareAlbum;->setShareFolder(Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)V

    .line 95
    if-eqz v14, :cond_7

    .line 96
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/data/PhotoShareAlbum;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/PhotoShareAlbumSet$AlbumsLoader;->this$0:Lcom/android/gallery3d/data/PhotoShareAlbumSet;

    #getter for: Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;
    invoke-static {v3}, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->access$000(Lcom/android/gallery3d/data/PhotoShareAlbumSet;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0d03f6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/data/PhotoShareAlbum;->setName(Ljava/lang/String;)V

    goto :goto_1
.end method
