.class Lcom/android/hwcamera/PhotoModule$MainHandler;
.super Landroid/os/Handler;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/PhotoModule;Lcom/android/hwcamera/PhotoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 620
    invoke-direct {p0, p1}, Lcom/android/hwcamera/PhotoModule$MainHandler;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x0

    const/4 v3, -0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 623
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 626
    :sswitch_0
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #calls: Lcom/android/hwcamera/PhotoModule;->hideSmallPreviewTips()V
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$2100(Lcom/android/hwcamera/PhotoModule;)V

    goto :goto_0

    .line 631
    :sswitch_1
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #calls: Lcom/android/hwcamera/PhotoModule;->setupPreview()V
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$2200(Lcom/android/hwcamera/PhotoModule;)V

    goto :goto_0

    .line 635
    :sswitch_2
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$1100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 641
    :sswitch_3
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #calls: Lcom/android/hwcamera/PhotoModule;->initializeFirstTime()V
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$2300(Lcom/android/hwcamera/PhotoModule;)V

    goto :goto_0

    .line 646
    :sswitch_4
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #calls: Lcom/android/hwcamera/PhotoModule;->setCameraParametersWhenIdle(I)V
    invoke-static {v1, v4}, Lcom/android/hwcamera/PhotoModule;->access$2400(Lcom/android/hwcamera/PhotoModule;I)V

    goto :goto_0

    .line 656
    :sswitch_5
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$1100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mDisplayRotation:I
    invoke-static {v2}, Lcom/android/hwcamera/PhotoModule;->access$2500(Lcom/android/hwcamera/PhotoModule;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 657
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #calls: Lcom/android/hwcamera/PhotoModule;->setDisplayOrientation()V
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$2600(Lcom/android/hwcamera/PhotoModule;)V

    .line 659
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mOnResumeTime:J
    invoke-static {v3}, Lcom/android/hwcamera/PhotoModule;->access$2000(Lcom/android/hwcamera/PhotoModule;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 660
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$000(Lcom/android/hwcamera/PhotoModule;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 666
    :sswitch_6
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #calls: Lcom/android/hwcamera/PhotoModule;->switchCamera()V
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$2700(Lcom/android/hwcamera/PhotoModule;)V

    goto :goto_0

    .line 671
    :sswitch_7
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$1100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v1, Lcom/android/hwcamera/CameraScreenNail;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraScreenNail;->animateSwitchCamera()V

    goto :goto_0

    .line 676
    :sswitch_8
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #calls: Lcom/android/hwcamera/PhotoModule;->initializeAfterCameraOpen()V
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$2800(Lcom/android/hwcamera/PhotoModule;)V

    goto :goto_0

    .line 681
    :sswitch_9
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    iput-object v6, v1, Lcom/android/hwcamera/PhotoModule;->mCameraStartUpThread:Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;

    .line 682
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v1, v5}, Lcom/android/hwcamera/PhotoModule;->setCameraState(I)V

    .line 683
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v1, :cond_2

    .line 685
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$1200(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v2}, Lcom/android/hwcamera/PhotoModule;->access$2900(Lcom/android/hwcamera/PhotoModule;)Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    .line 687
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/hwcamera/PhotoModule;->startFaceDetection()V

    .line 688
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #calls: Lcom/android/hwcamera/PhotoModule;->initPanorama()V
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$3000(Lcom/android/hwcamera/PhotoModule;)V

    .line 689
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$1100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;
    invoke-static {v2}, Lcom/android/hwcamera/PhotoModule;->access$3100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/PreviewFrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->changeCameraBlackgroud(Lcom/android/hwcamera/PreviewFrameLayout;)V

    .line 690
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$1100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;
    invoke-static {v2}, Lcom/android/hwcamera/PhotoModule;->access$3100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/PreviewFrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->resizeContorlbars(Lcom/android/hwcamera/PreviewFrameLayout;)V

    .line 691
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mFastCapture:Z
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$3200(Lcom/android/hwcamera/PhotoModule;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mShouldFastCapture:Z
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$3300(Lcom/android/hwcamera/PhotoModule;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 692
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$000(Lcom/android/hwcamera/PhotoModule;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mDoFastCaptureRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/hwcamera/PhotoModule;->access$3400(Lcom/android/hwcamera/PhotoModule;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 695
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #calls: Lcom/android/hwcamera/PhotoModule;->isBeautyMode()Z
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$3500(Lcom/android/hwcamera/PhotoModule;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 696
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/PhotoModule;->setBeautyProgress(I)V

    goto/16 :goto_0

    .line 703
    :sswitch_a
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    iput-object v6, v1, Lcom/android/hwcamera/PhotoModule;->mCameraStartUpThread:Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;

    .line 704
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #setter for: Lcom/android/hwcamera/PhotoModule;->mOpenCameraFail:Z
    invoke-static {v1, v5}, Lcom/android/hwcamera/PhotoModule;->access$3602(Lcom/android/hwcamera/PhotoModule;Z)Z

    .line 705
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$1100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0d0071

    invoke-static {v1, v2}, Lcom/android/hwcamera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 711
    :sswitch_b
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    iput-object v6, v1, Lcom/android/hwcamera/PhotoModule;->mCameraStartUpThread:Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;

    .line 712
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #setter for: Lcom/android/hwcamera/PhotoModule;->mCameraDisabled:Z
    invoke-static {v1, v5}, Lcom/android/hwcamera/PhotoModule;->access$3702(Lcom/android/hwcamera/PhotoModule;Z)Z

    .line 713
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$1100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0d0072

    invoke-static {v1, v2}, Lcom/android/hwcamera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 718
    :sswitch_c
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/hwcamera/PhotoModule;->processForTimer(I)V
    invoke-static {v1, v2}, Lcom/android/hwcamera/PhotoModule;->access$3800(Lcom/android/hwcamera/PhotoModule;I)V

    goto/16 :goto_0

    .line 722
    :sswitch_d
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/hwcamera/PhotoModule;->updateEyeCorrectionHint()V

    goto/16 :goto_0

    .line 728
    :sswitch_e
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$3900(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/tips/TipsService;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 729
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$3900(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/tips/TipsService;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/android/hwcamera/tips/TipsService;->makeTip(II)V

    goto/16 :goto_0

    .line 731
    :cond_4
    const/16 v1, 0x10

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v6, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 732
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$000(Lcom/android/hwcamera/PhotoModule;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 737
    .end local v0           #m:Landroid/os/Message;
    :sswitch_f
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #calls: Lcom/android/hwcamera/PhotoModule;->setFlashMode()V
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$4000(Lcom/android/hwcamera/PhotoModule;)V

    goto/16 :goto_0

    .line 741
    :sswitch_10
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$4100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/ui/TargetView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 742
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$4100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/ui/TargetView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/TargetView;->stopTargetTrakingUI()V

    goto/16 :goto_0

    .line 747
    :sswitch_11
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$4100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/ui/TargetView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 748
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$4100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/ui/TargetView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/TargetView;->startTargetTrakingUI()V

    goto/16 :goto_0

    .line 753
    :sswitch_12
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #calls: Lcom/android/hwcamera/PhotoModule;->startFaceDetectionUI()V
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$4200(Lcom/android/hwcamera/PhotoModule;)V

    goto/16 :goto_0

    .line 757
    :sswitch_13
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$1400(Lcom/android/hwcamera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$1200(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 759
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$1400(Lcom/android/hwcamera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "fb-smooth-level"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 760
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$1400(Lcom/android/hwcamera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "fb-skin-color"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 761
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$1400(Lcom/android/hwcamera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "fb-sharp"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 763
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$1200(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/android/hwcamera/PhotoModule;->access$1400(Lcom/android/hwcamera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 768
    :sswitch_14
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mPaused:Z
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$4300(Lcom/android/hwcamera/PhotoModule;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 770
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/hwcamera/PhotoModule;->processUIforShootMode(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/hwcamera/PhotoModule;->access$4400(Lcom/android/hwcamera/PhotoModule;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 774
    :sswitch_15
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$3900(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/tips/TipsService;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 775
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$3900(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/tips/TipsService;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/android/hwcamera/tips/TipsService;->makeTip(II)V

    .line 776
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 777
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 780
    :cond_5
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 781
    .restart local v0       #m:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$000(Lcom/android/hwcamera/PhotoModule;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 787
    .end local v0           #m:Landroid/os/Message;
    :sswitch_16
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/hwcamera/PhotoModule;->isCameraIdle()Z

    move-result v1

    if-nez v1, :cond_6

    .line 788
    const-string v1, "CAM_PhotoModule"

    const-string v2, "SHOW_VOLUM_SNAP_SHOT_HINT when !isCameraIdle"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/hwcamera/PhotoModule;->showVolumSnapShotHint()V

    goto/16 :goto_0

    .line 793
    :cond_6
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$1100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->showCanVolumSnapShotHint()V

    goto/16 :goto_0

    .line 798
    :sswitch_17
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$4500(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/settings/MenuController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 799
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 800
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$4500(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/settings/MenuController;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "pref_camera_flashmode_key"

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/settings/MenuController;->clearOverrideSettings([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 802
    :cond_7
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$4500(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/settings/MenuController;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "pref_camera_flashmode_key"

    aput-object v3, v2, v4

    const-string v3, "off"

    aput-object v3, v2, v5

    invoke-virtual {v1, v4, v2}, Lcom/android/hwcamera/settings/MenuController;->overrideSettings(Z[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 811
    :sswitch_18
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mSoundShutter:Lcom/android/hwcamera/SoundShutter;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$4600(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/SoundShutter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 812
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mSoundShutter:Lcom/android/hwcamera/SoundShutter;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$4600(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/SoundShutter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/SoundShutter;->resumeShutter()V

    goto/16 :goto_0

    .line 820
    :sswitch_19
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$1100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->hideAllOnsreenHint()V

    goto/16 :goto_0

    .line 825
    :sswitch_1a
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$4500(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/settings/MenuController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 826
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$4500(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/settings/MenuController;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "pref_camera_sound_snapshot_key"

    aput-object v3, v2, v4

    const-string v3, "off"

    aput-object v3, v2, v5

    invoke-virtual {v1, v4, v2}, Lcom/android/hwcamera/settings/MenuController;->overrideSettings(Z[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 832
    :sswitch_1b
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #calls: Lcom/android/hwcamera/PhotoModule;->keepScreenOnAwhile()V
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$4700(Lcom/android/hwcamera/PhotoModule;)V

    goto/16 :goto_0

    .line 837
    :sswitch_1c
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #calls: Lcom/android/hwcamera/PhotoModule;->enableAutoFoucsMoving(Z)V
    invoke-static {v1, v5}, Lcom/android/hwcamera/PhotoModule;->access$4800(Lcom/android/hwcamera/PhotoModule;Z)V

    .line 839
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$3900(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/tips/TipsService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 840
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$3900(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/tips/TipsService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/tips/TipsService;->resumeTips()V

    goto/16 :goto_0

    .line 846
    :sswitch_1d
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/hwcamera/PhotoModule;->showMeteringFocus()V

    .line 847
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$1600(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/FocusOverlayManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v2}, Lcom/android/hwcamera/PhotoModule;->access$1100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/android/hwcamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule$MainHandler;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v3}, Lcom/android/hwcamera/PhotoModule;->access$1100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/android/hwcamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/FocusOverlayManager;->onSingleTapUp(II)V

    goto/16 :goto_0

    .line 623
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xf -> :sswitch_d
        0x10 -> :sswitch_e
        0x11 -> :sswitch_f
        0x12 -> :sswitch_13
        0x13 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1c -> :sswitch_1b
        0x1d -> :sswitch_0
        0x1e -> :sswitch_1c
        0x1f -> :sswitch_1d
        0x601 -> :sswitch_10
        0x602 -> :sswitch_11
        0x603 -> :sswitch_12
    .end sparse-switch
.end method
