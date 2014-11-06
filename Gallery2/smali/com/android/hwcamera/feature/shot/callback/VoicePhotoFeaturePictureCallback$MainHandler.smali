.class Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;
.super Landroid/os/Handler;
.source "VoicePhotoFeaturePictureCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;

    .line 76
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 77
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 80
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mVisualizerView:Lcom/android/hwcamera/ui/VisualizerView;
    invoke-static {v1}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->access$000(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;)Lcom/android/hwcamera/ui/VisualizerView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mVisualizerView:Lcom/android/hwcamera/ui/VisualizerView;
    invoke-static {v1}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->access$000(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;)Lcom/android/hwcamera/ui/VisualizerView;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [F

    check-cast v1, [F

    invoke-virtual {v2, v1}, Lcom/android/hwcamera/ui/VisualizerView;->updateVisualizer([F)V

    goto :goto_0

    .line 87
    :pswitch_1
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mVisualizerView:Lcom/android/hwcamera/ui/VisualizerView;
    invoke-static {v1}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->access$000(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;)Lcom/android/hwcamera/ui/VisualizerView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mVisualizerView:Lcom/android/hwcamera/ui/VisualizerView;
    invoke-static {v1}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->access$000(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;)Lcom/android/hwcamera/ui/VisualizerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/VisualizerView;->clear()V

    goto :goto_0

    .line 92
    :pswitch_2
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;

    invoke-virtual {v1}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->onStopRecording()V

    goto :goto_0

    .line 96
    :pswitch_3
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;

    invoke-virtual {v1}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 99
    .local v0, timer:I
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mVisualizerView:Lcom/android/hwcamera/ui/VisualizerView;
    invoke-static {v1}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->access$000(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;)Lcom/android/hwcamera/ui/VisualizerView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;

    #calls: Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->genCounter(I)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->access$100(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/ui/VisualizerView;->setText(Ljava/lang/String;)V

    .line 101
    if-lez v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mHandler:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;
    invoke-static {v1}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->access$200(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;)Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mHandler:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;
    invoke-static {v2}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->access$200(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;)Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;

    move-result-object v2

    const/4 v3, 0x4

    add-int/lit8 v0, v0, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 107
    .end local v0           #timer:I
    :pswitch_4
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;

    iget-object v1, v1, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    iget-object v2, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mJpegData:[B
    invoke-static {v2}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->access$300(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PhotoModule;->showPictureReview([B)V

    .line 108
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;

    const/4 v2, 0x0

    #setter for: Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mJpegData:[B
    invoke-static {v1, v2}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->access$302(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;[B)[B

    goto :goto_0

    .line 112
    :pswitch_5
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;

    iget-object v1, v1, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/hwcamera/PhotoModule;->hidePictureReview()V

    .line 113
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;

    invoke-virtual {v1}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->onStopRecording()V

    goto/16 :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
