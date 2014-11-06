.class Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;
.super Ljava/lang/Thread;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MavRenderThread"
.end annotation


# instance fields
.field private mMavEntry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

.field private mPath:Lcom/android/gallery3d/data/Path;

.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter
    .parameter "path"

    .prologue
    .line 1666
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1667
    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;->mPath:Lcom/android/gallery3d/data/Path;

    .line 1668
    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$3500(Lcom/android/gallery3d/app/PhotoDataAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;->mMavEntry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 1669
    const/4 v0, 0x0

    #setter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavStereoMode:Z
    invoke-static {p1, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$3602(Lcom/android/gallery3d/app/PhotoDataAdapter;Z)Z

    .line 1670
    return-void
.end method

.method private renderCurrentFrame()V
    .locals 3

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavStereoMode:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$3600(Lcom/android/gallery3d/app/PhotoDataAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1699
    :goto_0
    return-void

    .line 1676
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentMpoIndex:I
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$3700(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;->mMavEntry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentMpoIndex:I
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$3700(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;->mMavEntry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    iget-object v1, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 1678
    :cond_1
    const-string v0, "PhotoDataAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[renderCurrentFrame]mCurrentMpoIndex["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentMpoIndex:I
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$3700(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] out of bounds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1686
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;->mMavEntry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    iget-object v1, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentMpoIndex:I
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$3700(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v2

    aget-object v1, v1, v2

    #setter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentScreenNail:Lcom/android/gallery3d/ui/ScreenNail;
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$3802(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/ui/ScreenNail;)Lcom/android/gallery3d/ui/ScreenNail;

    .line 1689
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;->mMavEntry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    iget-boolean v0, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->isMpoFrameRecyled:Z

    if-eqz v0, :cond_3

    .line 1690
    const-string v0, "PhotoDataAdapter"

    const-string v1, "[renderCurrentFrame] mpo frame has been recyled, return"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1693
    :cond_3
    const-string v0, "PhotoDataAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "luzhankui get current mpo frame, mCurrentMpoIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentMpoIndex:I
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$3700(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;->mMavEntry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentScreenNail:Lcom/android/gallery3d/ui/ScreenNail;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$3800(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1696
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;->mMavEntry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$3900(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 1697
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$4000(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1703
    const/4 v5, -0x4

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1705
    :goto_0
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$4100(Lcom/android/gallery3d/app/PhotoDataAdapter;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1706
    const-string v4, "PhotoDataAdapter"

    const-string v5, "MavRenderThread:run: exit MavRenderThread"

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    :goto_1
    return-void

    .line 1710
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v3

    .line 1711
    .local v3, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 1712
    .local v0, currentPath:Lcom/android/gallery3d/data/Path;
    :goto_2
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;->mPath:Lcom/android/gallery3d/data/Path;

    if-eq v5, v0, :cond_2

    const/4 v2, 0x1

    .line 1715
    .local v2, imageChanged:Z
    :goto_3
    if-eqz v2, :cond_3

    .line 1716
    const-string v4, "PhotoDataAdapter"

    const-string v5, "MavRenderThread:run: image has changed, exit MavRenderThread"

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1711
    .end local v0           #currentPath:Lcom/android/gallery3d/data/Path;
    .end local v2           #imageChanged:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .restart local v0       #currentPath:Lcom/android/gallery3d/data/Path;
    :cond_2
    move v2, v4

    .line 1712
    goto :goto_3

    .line 1720
    .restart local v2       #imageChanged:Z
    :cond_3
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mRenderLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$4200(Lcom/android/gallery3d/app/PhotoDataAdapter;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1721
    :try_start_0
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget-boolean v6, v6, Lcom/android/gallery3d/app/PhotoDataAdapter;->mRenderRequested:Z

    if-eqz v6, :cond_4

    .line 1722
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/gallery3d/app/PhotoDataAdapter;->mRenderRequested:Z

    .line 1730
    :goto_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1731
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;->renderCurrentFrame()V

    goto :goto_0

    .line 1725
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mRenderLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$4200(Lcom/android/gallery3d/app/PhotoDataAdapter;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1726
    :catch_0
    move-exception v1

    .line 1727
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_2
    monitor-exit v5

    goto :goto_1

    .line 1730
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method
