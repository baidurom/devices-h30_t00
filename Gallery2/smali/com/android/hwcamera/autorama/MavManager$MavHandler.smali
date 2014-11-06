.class Lcom/android/hwcamera/autorama/MavManager$MavHandler;
.super Landroid/os/Handler;
.source "MavManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/autorama/MavManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MavHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/autorama/MavManager;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/autorama/MavManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/hwcamera/autorama/MavManager$MavHandler;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    .line 59
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 60
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 109
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 65
    :pswitch_1
    const-string v0, "MavManager"

    const-string v1, "DO_MAV_CAPTURE_MSG"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$MavHandler;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    #getter for: Lcom/android/hwcamera/autorama/MavManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;
    invoke-static {v0}, Lcom/android/hwcamera/autorama/MavManager;->access$200(Lcom/android/hwcamera/autorama/MavManager;)Lcom/android/hwcamera/autorama/PanoramaViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/autorama/MavManager$MavHandler;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    #getter for: Lcom/android/hwcamera/autorama/MavManager;->mCurrentNum:I
    invoke-static {v1}, Lcom/android/hwcamera/autorama/MavManager;->access$100(Lcom/android/hwcamera/autorama/MavManager;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0xf

    div-int/lit8 v1, v1, 0x19

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->setProgress(I)V

    .line 68
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$MavHandler;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    #getter for: Lcom/android/hwcamera/autorama/MavManager;->mCurrentNum:I
    invoke-static {v0}, Lcom/android/hwcamera/autorama/MavManager;->access$100(Lcom/android/hwcamera/autorama/MavManager;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$MavHandler;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    #getter for: Lcom/android/hwcamera/autorama/MavManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;
    invoke-static {v0}, Lcom/android/hwcamera/autorama/MavManager;->access$200(Lcom/android/hwcamera/autorama/MavManager;)Lcom/android/hwcamera/autorama/PanoramaViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->hideDirectionSigns()V

    goto :goto_0

    .line 75
    :pswitch_2
    const-string v0, "MavManager"

    const-string v1, "DO_MAV_STOP_MSG"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$MavHandler;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/autorama/MavManager;->finishMavShooting(Z)V

    .line 77
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$MavHandler;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    #getter for: Lcom/android/hwcamera/autorama/MavManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;
    invoke-static {v0}, Lcom/android/hwcamera/autorama/MavManager;->access$200(Lcom/android/hwcamera/autorama/MavManager;)Lcom/android/hwcamera/autorama/PanoramaViewManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->showSavingHint(Z)V

    .line 78
    const-string v0, "MavManager"

    const-string v1, "DO_MAV_STOP_MSG done"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :pswitch_3
    const-string v0, "MavManager"

    const-string v1, "DO_MAV_SHOW_MSG"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$MavHandler;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    #getter for: Lcom/android/hwcamera/autorama/MavManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;
    invoke-static {v0}, Lcom/android/hwcamera/autorama/MavManager;->access$200(Lcom/android/hwcamera/autorama/MavManager;)Lcom/android/hwcamera/autorama/PanoramaViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->show()V

    goto :goto_0

    .line 89
    :pswitch_4
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$MavHandler;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    #getter for: Lcom/android/hwcamera/autorama/MavManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;
    invoke-static {v0}, Lcom/android/hwcamera/autorama/MavManager;->access$200(Lcom/android/hwcamera/autorama/MavManager;)Lcom/android/hwcamera/autorama/PanoramaViewManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->showSavingHint(Z)V

    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$MavHandler;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    #getter for: Lcom/android/hwcamera/autorama/MavManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;
    invoke-static {v0}, Lcom/android/hwcamera/autorama/MavManager;->access$300(Lcom/android/hwcamera/autorama/MavManager;)Lcom/android/hwcamera/PhotoModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->animateFlash()V

    .line 95
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$MavHandler;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    iget-object v0, v0, Lcom/android/hwcamera/autorama/MavManager;->mMavHandler:Landroid/os/Handler;

    const/16 v1, 0xd7

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 96
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$MavHandler;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    #getter for: Lcom/android/hwcamera/autorama/MavManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;
    invoke-static {v0}, Lcom/android/hwcamera/autorama/MavManager;->access$300(Lcom/android/hwcamera/autorama/MavManager;)Lcom/android/hwcamera/PhotoModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->showMAVHint()V

    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$MavHandler;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    #getter for: Lcom/android/hwcamera/autorama/MavManager;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v0}, Lcom/android/hwcamera/autorama/MavManager;->access$400(Lcom/android/hwcamera/autorama/MavManager;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/CameraActivity;->setSwipingEnabled(Z)V

    goto/16 :goto_0

    .line 102
    :pswitch_5
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$MavHandler;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    #getter for: Lcom/android/hwcamera/autorama/MavManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;
    invoke-static {v0}, Lcom/android/hwcamera/autorama/MavManager;->access$200(Lcom/android/hwcamera/autorama/MavManager;)Lcom/android/hwcamera/autorama/PanoramaViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->getShutterButton()Lcom/android/hwcamera/ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0xd2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
