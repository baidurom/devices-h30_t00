.class Lcom/android/gallery3d/app/AlbumPage$17;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->runShareTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1579
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$17;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Integer;
    .locals 11
    .parameter "jc"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1582
    if-nez p1, :cond_0

    move-object v7, v9

    .line 1600
    :goto_0
    return-object v7

    .line 1583
    :cond_0
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v9

    goto :goto_0

    .line 1585
    :cond_1
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumPage$17;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumPage;->access$4500(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v5

    .line 1586
    .local v5, set:Lcom/android/gallery3d/data/MediaSet;
    if-nez v5, :cond_2

    move-object v7, v9

    goto :goto_0

    .line 1587
    :cond_2
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v4

    .line 1588
    .local v4, len:I
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v9

    goto :goto_0

    .line 1589
    :cond_3
    invoke-virtual {v5, v8, v4}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    .line 1590
    .local v3, itemArray:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v9

    goto :goto_0

    .line 1591
    :cond_4
    const/4 v6, 0x0

    .line 1592
    .local v6, type:I
    const/4 v1, 0x0

    .line 1593
    .local v1, isContainRealVideo:Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaItem;

    .line 1594
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, v9

    goto :goto_0

    .line 1595
    :cond_6
    invoke-static {v2}, Lcom/android/gallery3d/util/ImageVideoTranser;->isItemSupportTransVer(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x6

    :goto_2
    or-int/2addr v6, v7

    .line 1596
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v7

    const/4 v10, 0x4

    if-ne v7, v10, :cond_5

    .line 1597
    const/4 v1, 0x1

    goto :goto_1

    .line 1595
    :cond_7
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v7

    goto :goto_2

    .line 1599
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_8
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumPage$17;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    if-nez v1, :cond_9

    const/4 v7, 0x1

    :goto_3
    #setter for: Lcom/android/gallery3d/app/AlbumPage;->notWantVideoOnly:Z
    invoke-static {v9, v7}, Lcom/android/gallery3d/app/AlbumPage;->access$4602(Lcom/android/gallery3d/app/AlbumPage;Z)Z

    .line 1600
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_0

    :cond_9
    move v7, v8

    .line 1599
    goto :goto_3
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1579
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/AlbumPage$17;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
