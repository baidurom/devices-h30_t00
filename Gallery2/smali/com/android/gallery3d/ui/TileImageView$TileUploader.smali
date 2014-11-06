.class Lcom/android/gallery3d/ui/TileImageView$TileUploader;
.super Ljava/lang/Object;
.source "TileImageView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileUploader"
.end annotation


# instance fields
.field mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/android/gallery3d/ui/TileImageView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/TileImageView;)V
    .locals 2
    .parameter

    .prologue
    .line 628
    iput-object p1, p0, Lcom/android/gallery3d/ui/TileImageView$TileUploader;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 629
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/TileImageView;Lcom/android/gallery3d/ui/TileImageView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/TileImageView$TileUploader;-><init>(Lcom/android/gallery3d/ui/TileImageView;)V

    return-void
.end method


# virtual methods
.method public onGLIdle(Lcom/android/gallery3d/ui/GLCanvas;Z)Z
    .locals 6
    .parameter "canvas"
    .parameter "renderRequested"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 635
    if-eqz p2, :cond_1

    .line 657
    :cond_0
    :goto_0
    return v2

    .line 636
    :cond_1
    const/4 v0, 0x1

    .line 637
    .local v0, quota:I
    const/4 v1, 0x0

    .line 638
    .local v1, tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    :cond_2
    :goto_1
    if-lez v0, :cond_3

    .line 639
    iget-object v4, p0, Lcom/android/gallery3d/ui/TileImageView$TileUploader;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    monitor-enter v4

    .line 640
    :try_start_0
    iget-object v5, p0, Lcom/android/gallery3d/ui/TileImageView$TileUploader;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    #getter for: Lcom/android/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;
    invoke-static {v5}, Lcom/android/gallery3d/ui/TileImageView;->access$300(Lcom/android/gallery3d/ui/TileImageView;)Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->pop()Lcom/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v1

    .line 641
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    if-nez v1, :cond_5

    .line 656
    :cond_3
    if-nez v1, :cond_4

    iget-object v4, p0, Lcom/android/gallery3d/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 657
    :cond_4
    if-nez v1, :cond_0

    move v2, v3

    goto :goto_0

    .line 641
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 645
    :cond_5
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/TileImageView$Tile;->isContentValid()Z

    move-result v4

    if-nez v4, :cond_2

    .line 646
    add-int/lit8 v0, v0, -0x1

    .line 648
    iget v4, v1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 651
    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/TileImageView$Tile;->updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto :goto_1
.end method

.method public stopFrame()Z
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x0

    return v0
.end method
