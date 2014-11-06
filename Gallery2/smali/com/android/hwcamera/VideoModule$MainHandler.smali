.class Lcom/android/hwcamera/VideoModule$MainHandler;
.super Landroid/os/Handler;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoModule;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/VideoModule;Lcom/android/hwcamera/VideoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 501
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoModule$MainHandler;-><init>(Lcom/android/hwcamera/VideoModule;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 504
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 619
    const-string v2, "CAM_VideoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 507
    :sswitch_0
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;
    invoke-static {v2}, Lcom/android/hwcamera/VideoModule;->access$1500(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/ShutterButton;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 508
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v2}, Lcom/android/hwcamera/VideoModule;->access$500(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->getVirtualButton()Lcom/android/hwcamera/VirtualButton;

    move-result-object v1

    .line 509
    .local v1, mVirtualButton:Lcom/android/hwcamera/VirtualButton;
    if-eqz v1, :cond_0

    .line 510
    invoke-virtual {v1, v3}, Lcom/android/hwcamera/VirtualButton;->enableVirtualButton(Z)V

    goto :goto_0

    .line 515
    .end local v1           #mVirtualButton:Lcom/android/hwcamera/VirtualButton;
    :sswitch_1
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v2}, Lcom/android/hwcamera/VideoModule;->access$500(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 521
    :sswitch_2
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    #calls: Lcom/android/hwcamera/VideoModule;->updateRecordingTime()V
    invoke-static {v2}, Lcom/android/hwcamera/VideoModule;->access$1600(Lcom/android/hwcamera/VideoModule;)V

    goto :goto_0

    .line 531
    :sswitch_3
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v2}, Lcom/android/hwcamera/VideoModule;->access$500(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mDisplayRotation:I
    invoke-static {v3}, Lcom/android/hwcamera/VideoModule;->access$1700(Lcom/android/hwcamera/VideoModule;)I

    move-result v3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    invoke-virtual {v2}, Lcom/android/hwcamera/VideoModule;->isRecording()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mSwitchingCamera:Z
    invoke-static {v2}, Lcom/android/hwcamera/VideoModule;->access$1800(Lcom/android/hwcamera/VideoModule;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 533
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    #calls: Lcom/android/hwcamera/VideoModule;->startPreview()V
    invoke-static {v2}, Lcom/android/hwcamera/VideoModule;->access$1900(Lcom/android/hwcamera/VideoModule;)V

    .line 535
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mOnResumeTime:J
    invoke-static {v4}, Lcom/android/hwcamera/VideoModule;->access$2000(Lcom/android/hwcamera/VideoModule;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 536
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/hwcamera/VideoModule;->access$2100(Lcom/android/hwcamera/VideoModule;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 542
    :sswitch_4
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    #calls: Lcom/android/hwcamera/VideoModule;->showTapToSnapshotToast()V
    invoke-static {v2}, Lcom/android/hwcamera/VideoModule;->access$2200(Lcom/android/hwcamera/VideoModule;)V

    goto :goto_0

    .line 547
    :sswitch_5
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    #calls: Lcom/android/hwcamera/VideoModule;->switchCamera()V
    invoke-static {v2}, Lcom/android/hwcamera/VideoModule;->access$2300(Lcom/android/hwcamera/VideoModule;)V

    goto :goto_0

    .line 552
    :sswitch_6
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v2}, Lcom/android/hwcamera/VideoModule;->access$500(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v2, Lcom/android/hwcamera/CameraScreenNail;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraScreenNail;->animateSwitchCamera()V

    .line 555
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    #setter for: Lcom/android/hwcamera/VideoModule;->mSwitchingCamera:Z
    invoke-static {v2, v4}, Lcom/android/hwcamera/VideoModule;->access$1802(Lcom/android/hwcamera/VideoModule;Z)Z

    goto/16 :goto_0

    .line 560
    :sswitch_7
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mPreviewSurfaceView:Lcom/android/hwcamera/ui/PreviewSurfaceView;
    invoke-static {v2}, Lcom/android/hwcamera/VideoModule;->access$2400(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/ui/PreviewSurfaceView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/ui/PreviewSurfaceView;->setVisibility(I)V

    goto/16 :goto_0

    .line 564
    :sswitch_8
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;
    invoke-static {v2}, Lcom/android/hwcamera/VideoModule;->access$2500(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/tips/TipsService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 565
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;
    invoke-static {v2}, Lcom/android/hwcamera/VideoModule;->access$2500(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/tips/TipsService;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/tips/TipsService;->makeTip(II)V

    goto/16 :goto_0

    .line 567
    :cond_2
    const/4 v2, 0x0

    const/16 v3, 0x10

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 568
    .local v0, m:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/hwcamera/VideoModule;->access$2100(Lcom/android/hwcamera/VideoModule;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 574
    .end local v0           #m:Landroid/os/Message;
    :sswitch_9
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;
    invoke-static {v2}, Lcom/android/hwcamera/VideoModule;->access$2600(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/ui/TargetView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/ui/TargetView;->stopTargetTrakingUI()V

    goto/16 :goto_0

    .line 578
    :sswitch_a
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;
    invoke-static {v2}, Lcom/android/hwcamera/VideoModule;->access$2600(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/ui/TargetView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/ui/TargetView;->startTargetTrakingUI()V

    goto/16 :goto_0

    .line 583
    :sswitch_b
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mStopShutterButton:Lcom/android/hwcamera/ShutterButton;
    invoke-static {v2}, Lcom/android/hwcamera/VideoModule;->access$2700(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/ShutterButton;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 588
    :sswitch_c
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mVideoState:I
    invoke-static {v2}, Lcom/android/hwcamera/VideoModule;->access$2800(Lcom/android/hwcamera/VideoModule;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 589
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    #calls: Lcom/android/hwcamera/VideoModule;->resumeVideoRecording()V
    invoke-static {v2}, Lcom/android/hwcamera/VideoModule;->access$2900(Lcom/android/hwcamera/VideoModule;)V

    goto/16 :goto_0

    .line 595
    :sswitch_d
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;
    invoke-static {v2}, Lcom/android/hwcamera/VideoModule;->access$1500(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/ShutterButton;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 600
    :sswitch_e
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    #setter for: Lcom/android/hwcamera/VideoModule;->mRecordingStartTime:J
    invoke-static {v2, v3, v4}, Lcom/android/hwcamera/VideoModule;->access$3002(Lcom/android/hwcamera/VideoModule;J)J

    goto/16 :goto_0

    .line 605
    :sswitch_f
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v2}, Lcom/android/hwcamera/VideoModule;->access$500(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->showCanVolumSnapShotHint()V

    goto/16 :goto_0

    .line 609
    :sswitch_10
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    #calls: Lcom/android/hwcamera/VideoModule;->enableAutoFoucsMoving(Z)V
    invoke-static {v2, v3}, Lcom/android/hwcamera/VideoModule;->access$3100(Lcom/android/hwcamera/VideoModule;Z)V

    .line 611
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;
    invoke-static {v2}, Lcom/android/hwcamera/VideoModule;->access$2500(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/tips/TipsService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 612
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$MainHandler;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;
    invoke-static {v2}, Lcom/android/hwcamera/VideoModule;->access$2500(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/tips/TipsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/tips/TipsService;->resumeTips()V

    goto/16 :goto_0

    .line 504
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_0
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_c
        0xc -> :sswitch_b
        0xd -> :sswitch_d
        0x10 -> :sswitch_8
        0x11 -> :sswitch_e
        0x13 -> :sswitch_f
        0x14 -> :sswitch_10
        0x601 -> :sswitch_9
        0x602 -> :sswitch_a
    .end sparse-switch
.end method
