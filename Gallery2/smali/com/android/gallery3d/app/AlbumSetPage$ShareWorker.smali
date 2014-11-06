.class Lcom/android/gallery3d/app/AlbumSetPage$ShareWorker;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShareWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Lcom/android/gallery3d/app/AlbumSetPage$SmallShareItem;",
        ">;"
    }
.end annotation


# instance fields
.field private dataManager:Lcom/android/gallery3d/data/DataManager;

.field private mediaSet:Lcom/android/gallery3d/data/MediaSet;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/DataManager;)V
    .locals 0
    .parameter "set"
    .parameter "manager"

    .prologue
    .line 1691
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1692
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$ShareWorker;->mediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 1693
    iput-object p2, p0, Lcom/android/gallery3d/app/AlbumSetPage$ShareWorker;->dataManager:Lcom/android/gallery3d/data/DataManager;

    .line 1694
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/android/gallery3d/app/AlbumSetPage$SmallShareItem;
    .locals 19
    .parameter "jc"

    .prologue
    .line 1698
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v13, 0x0

    .line 1755
    :goto_0
    return-object v13

    .line 1700
    :cond_0
    new-instance v13, Lcom/android/gallery3d/app/AlbumSetPage$SmallShareItem;

    invoke-direct {v13}, Lcom/android/gallery3d/app/AlbumSetPage$SmallShareItem;-><init>()V

    .line 1701
    .local v13, smallShareItem:Lcom/android/gallery3d/app/AlbumSetPage$SmallShareItem;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1702
    .local v3, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage$ShareWorker;->mediaSet:Lcom/android/gallery3d/data/MediaSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v7

    .line 1703
    .local v7, len:I
    const/16 v17, 0x1f4

    move/from16 v0, v17

    if-le v7, v0, :cond_1

    .line 1704
    const-string v17, "limit-exceed"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1705
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/gallery3d/app/AlbumSetPage$SmallShareItem;->setShareImagePathList(Ljava/util/ArrayList;)V

    .line 1706
    invoke-virtual {v13, v3}, Lcom/android/gallery3d/app/AlbumSetPage$SmallShareItem;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 1710
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/app/AlbumSetPage$ShareWorker;->dataManager:Lcom/android/gallery3d/data/DataManager;

    .line 1711
    .local v8, manager:Lcom/android/gallery3d/data/DataManager;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1712
    .local v16, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage$ShareWorker;->mediaSet:Lcom/android/gallery3d/data/MediaSet;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 1713
    .local v6, itemArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v17

    if-eqz v17, :cond_2

    const/4 v13, 0x0

    goto :goto_0

    .line 1714
    :cond_2
    const/4 v15, 0x0

    .line 1715
    .local v15, type:I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1716
    .local v11, shareImageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1717
    .local v4, isContainVoiceImage:Z
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1718
    .local v10, pathStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaItem;

    .line 1719
    .local v5, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v17

    if-eqz v17, :cond_4

    const/4 v13, 0x0

    goto :goto_0

    .line 1720
    :cond_4
    invoke-static {v5}, Lcom/android/gallery3d/util/ImageVideoTranser;->isItemSupportTransVer(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v17

    if-eqz v17, :cond_6

    const/16 v17, 0x6

    :goto_2
    or-int v15, v15, v17

    .line 1722
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v14

    .line 1723
    .local v14, support:I
    and-int/lit8 v17, v14, 0x4

    if-eqz v17, :cond_3

    .line 1724
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1725
    const/16 v17, 0x2

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 1726
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1729
    :cond_5
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->isVoiceImage()Z

    move-result v17

    or-int v4, v4, v17

    .line 1730
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1720
    .end local v14           #support:I
    :cond_6
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaType(Lcom/android/gallery3d/data/Path;)I

    move-result v17

    goto :goto_2

    .line 1735
    .end local v5           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_7
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1736
    .local v12, size:I
    if-gtz v12, :cond_8

    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1738
    :cond_8
    invoke-static {v15}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v9

    .line 1739
    .local v9, mimeType:Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v12, v0, :cond_9

    .line 1740
    const-string v17, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1741
    const-string v17, "android.intent.extra.STREAM"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1747
    :goto_3
    const-string v17, "KEY_CONTAIN_VOICEIMAGE"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1748
    const-string v17, "KEY_PATH_ARRAY"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putCharSequenceArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1750
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1752
    invoke-virtual {v13, v11}, Lcom/android/gallery3d/app/AlbumSetPage$SmallShareItem;->setShareImagePathList(Ljava/util/ArrayList;)V

    .line 1753
    invoke-virtual {v13, v3}, Lcom/android/gallery3d/app/AlbumSetPage$SmallShareItem;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1743
    :cond_9
    const-string v17, "android.intent.action.SEND"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1744
    const-string v18, "android.intent.extra.STREAM"

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Parcelable;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1745
    const-string v18, "watermark_item"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1686
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage$ShareWorker;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/android/gallery3d/app/AlbumSetPage$SmallShareItem;

    move-result-object v0

    return-object v0
.end method
