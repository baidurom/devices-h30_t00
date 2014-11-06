.class final Lcom/android/hwcamera/VideoModule$OnStopShutterButtonListner;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Lcom/android/hwcamera/OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnStopShutterButtonListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoModule;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/android/hwcamera/VideoModule$OnStopShutterButtonListner;->this$0:Lcom/android/hwcamera/VideoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/VideoModule;Lcom/android/hwcamera/VideoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1094
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoModule$OnStopShutterButtonListner;-><init>(Lcom/android/hwcamera/VideoModule;)V

    return-void
.end method


# virtual methods
.method public onShutterButtonClick()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x2bc

    const/4 v2, 0x1

    .line 1104
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$OnStopShutterButtonListner;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$1500(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/ShutterButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/ShutterButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1121
    :goto_0
    return-void

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$OnStopShutterButtonListner;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mVideoState:I
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$2800(Lcom/android/hwcamera/VideoModule;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1107
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$OnStopShutterButtonListner;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$500(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->playSound(I)V

    .line 1108
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$OnStopShutterButtonListner;->this$0:Lcom/android/hwcamera/VideoModule;

    #calls: Lcom/android/hwcamera/VideoModule;->showRecordingUI(Z)V
    invoke-static {v0, v2}, Lcom/android/hwcamera/VideoModule;->access$3300(Lcom/android/hwcamera/VideoModule;Z)V

    .line 1109
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$OnStopShutterButtonListner;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$2100(Lcom/android/hwcamera/VideoModule;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1118
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$OnStopShutterButtonListner;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$1500(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/ShutterButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 1119
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$OnStopShutterButtonListner;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$2100(Lcom/android/hwcamera/VideoModule;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1110
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$OnStopShutterButtonListner;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mVideoState:I
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$2800(Lcom/android/hwcamera/VideoModule;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1111
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$OnStopShutterButtonListner;->this$0:Lcom/android/hwcamera/VideoModule;

    #calls: Lcom/android/hwcamera/VideoModule;->pauseVideoRecording()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$3400(Lcom/android/hwcamera/VideoModule;)V

    .line 1112
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$OnStopShutterButtonListner;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$500(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->playSound(I)V

    .line 1113
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$OnStopShutterButtonListner;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$1500(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/ShutterButton;

    move-result-object v0

    const v1, 0x7f02014f

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 1115
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$OnStopShutterButtonListner;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$1500(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/ShutterButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule$OnStopShutterButtonListner;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v1}, Lcom/android/hwcamera/VideoModule;->access$500(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0d0197

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 1099
    return-void
.end method

.method public onShutterButtonLongClick(Z)Z
    .locals 1
    .parameter "pressed"

    .prologue
    .line 1126
    const/4 v0, 0x0

    return v0
.end method
