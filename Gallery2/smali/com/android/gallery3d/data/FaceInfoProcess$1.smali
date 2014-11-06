.class final Lcom/android/gallery3d/data/FaceInfoProcess$1;
.super Landroid/os/Handler;
.source "FaceInfoProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/FaceInfoProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 332
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 335
    const/4 v1, 0x0

    .line 336
    .local v1, CurrentReq:Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;
    invoke-static {}, Lcom/android/gallery3d/data/FaceInfoProcess;->access$800()Ljava/util/PriorityQueue;

    move-result-object v4

    monitor-enter v4

    .line 337
    :try_start_0
    invoke-static {}, Lcom/android/gallery3d/data/FaceInfoProcess;->access$800()Ljava/util/PriorityQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;

    move-object v1, v0

    .line 338
    monitor-exit v4

    .line 340
    if-nez v1, :cond_0

    .line 346
    :goto_0
    return-void

    .line 338
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 342
    :cond_0
    iget-object v3, v1, Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/android/gallery3d/data/FaceManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/FaceManage;

    move-result-object v3

    iget-object v4, v1, Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;->mImage:Lcom/android/gallery3d/data/LocalImage;

    iget v4, v4, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/data/FaceManage;->getFaceInfo(IZ)[Lcom/android/gallery3d/data/FaceInfo;

    move-result-object v2

    .line 343
    .local v2, faceInfo:[Lcom/android/gallery3d/data/FaceInfo;
    iget-object v3, v1, Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;->mImage:Lcom/android/gallery3d/data/LocalImage;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/data/LocalImage;->setFaceInfos([Lcom/android/gallery3d/data/FaceInfo;)V

    .line 344
    invoke-static {v5}, Lcom/android/gallery3d/data/FaceInfoProcess;->setFaceInfoChage(Z)V

    .line 345
    iget-object v3, v1, Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;->mImage:Lcom/android/gallery3d/data/LocalImage;

    iget v3, v3, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    #calls: Lcom/android/gallery3d/data/FaceInfoProcess;->notifyContentChanged(I)V
    invoke-static {v3}, Lcom/android/gallery3d/data/FaceInfoProcess;->access$400(I)V

    goto :goto_0
.end method
