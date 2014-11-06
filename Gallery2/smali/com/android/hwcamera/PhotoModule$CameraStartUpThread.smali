.class Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;
.super Ljava/lang/Thread;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStartUpThread"
.end annotation


# instance fields
.field private volatile mCancelled:Z

.field final synthetic this$0:Lcom/android/hwcamera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/PhotoModule;Lcom/android/hwcamera/PhotoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 559
    invoke-direct {p0, p1}, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    return-void
.end method

.method private waitResourceReady()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x400

    .line 610
    const-string v0, "CameraStartUpThread.waitResourceReady"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/hwcamera/PhotoModule;

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 612
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 613
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->mCancelled:Z

    .line 564
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x400

    const/4 v2, 0x1

    .line 568
    const-string v3, "CameraStartUpThread.run"

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 572
    :try_start_0
    iget-boolean v3, p0, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->mCancelled:Z

    if-eqz v3, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/hwcamera/PhotoModule;

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v4}, Lcom/android/hwcamera/PhotoModule;->access$1100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mCameraId:I
    invoke-static {v5}, Lcom/android/hwcamera/PhotoModule;->access$1300(Lcom/android/hwcamera/PhotoModule;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/hwcamera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    #setter for: Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v3, v4}, Lcom/android/hwcamera/PhotoModule;->access$1202(Lcom/android/hwcamera/PhotoModule;Lcom/android/hwcamera/CameraManager$CameraProxy;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    .line 575
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraHolder;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->copy()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    #setter for: Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3, v4}, Lcom/android/hwcamera/PhotoModule;->access$1402(Lcom/android/hwcamera/PhotoModule;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 579
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->waitResourceReady()V

    .line 581
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/hwcamera/PhotoModule;

    #calls: Lcom/android/hwcamera/PhotoModule;->initializeCapabilities()V
    invoke-static {v3}, Lcom/android/hwcamera/PhotoModule;->access$1500(Lcom/android/hwcamera/PhotoModule;)V

    .line 582
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;
    invoke-static {v3}, Lcom/android/hwcamera/PhotoModule;->access$1600(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/FocusOverlayManager;

    move-result-object v3

    if-nez v3, :cond_2

    .line 583
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/hwcamera/PhotoModule;

    #calls: Lcom/android/hwcamera/PhotoModule;->initializeFocusManager()V
    invoke-static {v3}, Lcom/android/hwcamera/PhotoModule;->access$1700(Lcom/android/hwcamera/PhotoModule;)V

    .line 590
    :goto_1
    iget-boolean v3, p0, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->mCancelled:Z

    if-nez v3, :cond_0

    .line 592
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/hwcamera/PhotoModule;->access$000(Lcom/android/hwcamera/PhotoModule;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 593
    iget-boolean v3, p0, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->mCancelled:Z

    if-nez v3, :cond_0

    .line 594
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/hwcamera/PhotoModule;

    #calls: Lcom/android/hwcamera/PhotoModule;->startPreview()V
    invoke-static {v3}, Lcom/android/hwcamera/PhotoModule;->access$1900(Lcom/android/hwcamera/PhotoModule;)V

    .line 596
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/hwcamera/PhotoModule;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/PhotoModule;->setCameraState(I)V

    .line 598
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/hwcamera/PhotoModule;->access$000(Lcom/android/hwcamera/PhotoModule;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 599
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    #setter for: Lcom/android/hwcamera/PhotoModule;->mOnResumeTime:J
    invoke-static {v3, v4, v5}, Lcom/android/hwcamera/PhotoModule;->access$2002(Lcom/android/hwcamera/PhotoModule;J)J

    .line 600
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/hwcamera/PhotoModule;->access$000(Lcom/android/hwcamera/PhotoModule;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/hwcamera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 606
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 585
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mCameraId:I
    invoke-static {v4}, Lcom/android/hwcamera/PhotoModule;->access$1300(Lcom/android/hwcamera/PhotoModule;)I

    move-result v4

    aget-object v1, v3, v4

    .line 586
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v2, :cond_3

    .line 587
    .local v2, mirror:Z
    :goto_3
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;
    invoke-static {v3}, Lcom/android/hwcamera/PhotoModule;->access$1600(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/FocusOverlayManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/hwcamera/FocusOverlayManager;->setMirror(Z)V

    .line 588
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;
    invoke-static {v3}, Lcom/android/hwcamera/PhotoModule;->access$1600(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/FocusOverlayManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;
    invoke-static {v4}, Lcom/android/hwcamera/PhotoModule;->access$1800(Lcom/android/hwcamera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/FocusOverlayManager;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/hwcamera/CameraDisabledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 601
    .end local v1           #info:Landroid/hardware/Camera$CameraInfo;
    .end local v2           #mirror:Z
    :catch_0
    move-exception v0

    .line 602
    .local v0, e:Lcom/android/hwcamera/CameraHardwareException;
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/hwcamera/PhotoModule;->access$000(Lcom/android/hwcamera/PhotoModule;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 586
    .end local v0           #e:Lcom/android/hwcamera/CameraHardwareException;
    .restart local v1       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 603
    .end local v1           #info:Landroid/hardware/Camera$CameraInfo;
    :catch_1
    move-exception v0

    .line 604
    .local v0, e:Lcom/android/hwcamera/CameraDisabledException;
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/hwcamera/PhotoModule;->access$000(Lcom/android/hwcamera/PhotoModule;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method
