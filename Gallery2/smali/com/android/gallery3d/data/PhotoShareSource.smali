.class Lcom/android/gallery3d/data/PhotoShareSource;
.super Lcom/android/gallery3d/data/MediaSource;
.source "PhotoShareSource.java"


# static fields
.field private static final PHOTOSHARE_ALBUM:I = 0x1

.field private static final PHOTOSHARE_ALBUMSET:I = 0x0

.field private static final PHOTOSHARE_IMAGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PhotoShareSource"


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mMatcher:Lcom/android/gallery3d/data/PathMatcher;

.field mPhotoshareContext:Lcom/android/gallery3d/data/PhotoShareContext;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 21
    const-string v0, "photoshare"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/android/gallery3d/data/PhotoShareSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 23
    new-instance v0, Lcom/android/gallery3d/data/PhotoShareContext;

    iget-object v1, p0, Lcom/android/gallery3d/data/PhotoShareSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/PhotoShareContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/PhotoShareSource;->mPhotoshareContext:Lcom/android/gallery3d/data/PhotoShareContext;

    .line 24
    new-instance v0, Lcom/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/PhotoShareSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    .line 25
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/photoshare/all"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 27
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/photoshare/all/*"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 28
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/photoshare/all/*/*"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 18
    .parameter "path"

    .prologue
    .line 36
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/data/PhotoShareSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/data/PathMatcher;->match(Lcom/android/gallery3d/data/Path;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 79
    :cond_0
    const-string v1, "PhotoShareSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :pswitch_0
    new-instance v1, Lcom/android/gallery3d/data/PhotoShareAlbumSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/data/PhotoShareSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/PhotoShareSource;->mPhotoshareContext:Lcom/android/gallery3d/data/PhotoShareContext;

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2, v3}, Lcom/android/gallery3d/data/PhotoShareAlbumSet;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/PhotoShareContext;)V

    .line 74
    :goto_0
    return-object v1

    .line 40
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/data/PhotoShareSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->getShareFolderFromPath(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    move-result-object v4

    .line 41
    .local v4, folder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    if-nez v4, :cond_1

    .line 42
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_1
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 45
    .local v5, displayname:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getFolderType()I

    move-result v1

    if-nez v1, :cond_2

    .line 46
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/data/PhotoShareSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d03f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 48
    :cond_2
    new-instance v1, Lcom/android/gallery3d/data/PhotoShareAlbum;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/PhotoShareSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/data/PhotoShareSource;->mPhotoshareContext:Lcom/android/gallery3d/data/PhotoShareContext;

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/gallery3d/data/PhotoShareAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;Ljava/lang/String;Lcom/android/gallery3d/data/PhotoShareContext;)V

    goto :goto_0

    .line 50
    .end local v4           #folder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    .end local v5           #displayname:Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/data/PhotoShareSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/data/Path;->getParent()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->getShareFolderFromPath(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    move-result-object v4

    .line 52
    .restart local v4       #folder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    if-nez v4, :cond_3

    .line 53
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/data/PhotoShareSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-static {v1, v2, v3, v6}, Lcom/huawei/hicloud/photosharesdk/api/PhotoLogic;->getSharePhoto(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v16

    .line 59
    .local v16, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    if-nez v16, :cond_4

    .line 60
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;

    .line 64
    .local v9, photo:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getLrealPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->formatPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 65
    .local v17, segments:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v15, v17, v1

    .line 66
    .local v15, pathname:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 68
    const-string v10, ""

    .line 69
    .local v10, photoLocation:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getLrealPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isFileSizeZero(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 70
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getLrealPath()Ljava/lang/String;

    move-result-object v10

    .line 74
    :goto_1
    new-instance v6, Lcom/android/gallery3d/data/PhotoShareImage;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/data/PhotoShareSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getFolderType()I

    move-result v11

    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->isNew()Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/data/PhotoShareSource;->mPhotoshareContext:Lcom/android/gallery3d/data/PhotoShareContext;

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v13}, Lcom/android/gallery3d/data/PhotoShareImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;Ljava/lang/String;IZLcom/android/gallery3d/data/PhotoShareContext;)V

    move-object v1, v6

    goto/16 :goto_0

    .line 72
    :cond_6
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getLabbrPath()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 36
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
