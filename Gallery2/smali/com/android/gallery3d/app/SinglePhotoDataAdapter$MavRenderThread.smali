.class Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavRenderThread;
.super Ljava/lang/Thread;
.source "SinglePhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/SinglePhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MavRenderThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 515
    const/4 v0, 0x0

    #setter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavStereoMode:Z
    invoke-static {p1, v0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$902(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Z)Z

    .line 516
    return-void
.end method

.method private renderCurrentFrame()V
    .locals 4

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavStereoMode:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$900(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentMpoIndex:I
    invoke-static {v0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1000(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;
    invoke-static {v0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1100(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)[Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentMpoIndex:I
    invoke-static {v0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1000(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;
    invoke-static {v1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1100(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)[Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v1

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 523
    :cond_1
    const-string v0, "SinglePhotoDataAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[renderCurrentFrame]mCurrentMpoIndex["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentMpoIndex:I
    invoke-static {v2}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1000(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)I

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

    .line 532
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;
    invoke-static {v1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1100(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)[Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentMpoIndex:I
    invoke-static {v2}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1000(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)I

    move-result v2

    aget-object v1, v1, v2

    #setter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentScreenNail:Lcom/android/gallery3d/ui/ScreenNail;
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1202(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/ui/ScreenNail;)Lcom/android/gallery3d/ui/ScreenNail;

    .line 534
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentScreenNail:Lcom/android/gallery3d/ui/ScreenNail;
    invoke-static {v1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1200(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentScreenNail:Lcom/android/gallery3d/ui/ScreenNail;
    invoke-static {v2}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1200(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentScreenNail:Lcom/android/gallery3d/ui/ScreenNail;
    invoke-static {v3}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1200(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;II)V

    .line 535
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1300(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 542
    const/4 v1, -0x4

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 544
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsActive:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1400(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 545
    const-string v1, "SinglePhotoDataAdapter"

    const-string v2, "MavRenderThread:run: exit MavRenderThread"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :goto_1
    return-void

    .line 549
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mRenderLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1500(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 550
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    iget-boolean v1, v1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mRenderRequested:Z

    if-eqz v1, :cond_1

    .line 551
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mRenderRequested:Z

    .line 559
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    invoke-direct {p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavRenderThread;->renderCurrentFrame()V

    goto :goto_0

    .line 554
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavRenderThread;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mRenderLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1500(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    monitor-exit v2

    goto :goto_1

    .line 559
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
