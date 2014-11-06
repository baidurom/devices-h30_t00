.class Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler;
.super Landroid/os/Handler;
.source "PanoramaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/autorama/PanoramaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanoramaHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/autorama/PanoramaManager;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/autorama/PanoramaManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    .line 63
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 64
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 67
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 119
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 69
    :pswitch_1
    iget-object v3, p0, Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #getter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;
    invoke-static {v3}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$300(Lcom/android/hwcamera/autorama/PanoramaManager;)Lcom/android/hwcamera/autorama/PanoramaViewManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #getter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mCurrentNum:I
    invoke-static {v4}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$200(Lcom/android/hwcamera/autorama/PanoramaManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->setViewsForNext(I)V

    .line 70
    iget-object v3, p0, Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    new-instance v4, Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler$1;

    invoke-direct {v4, p0}, Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler$1;-><init>(Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler;)V

    #setter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mRestartCaptureView:Ljava/lang/Runnable;
    invoke-static {v3, v4}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$402(Lcom/android/hwcamera/autorama/PanoramaManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 76
    iget-object v3, p0, Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    invoke-static {v3}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$208(Lcom/android/hwcamera/autorama/PanoramaManager;)I

    .line 78
    iget-object v3, p0, Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #getter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mCurrentNum:I
    invoke-static {v3}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$200(Lcom/android/hwcamera/autorama/PanoramaManager;)I

    move-result v3

    iget-object v4, p0, Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #getter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoMaxNum:I
    invoke-static {v4}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$600(Lcom/android/hwcamera/autorama/PanoramaManager;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 79
    iget-object v3, p0, Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    invoke-virtual {v3, v1}, Lcom/android/hwcamera/autorama/PanoramaManager;->finishPanoramaShooting(Z)V

    goto :goto_0

    .line 85
    :pswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 86
    .local v2, xy:I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 87
    .local v0, direction:I
    iget-object v3, p0, Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #getter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mShowingCollimatedDrawable:Z
    invoke-static {v3}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$500(Lcom/android/hwcamera/autorama/PanoramaManager;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #getter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mCaptureState:I
    invoke-static {v3}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$700(Lcom/android/hwcamera/autorama/PanoramaManager;)I

    move-result v3

    if-ne v3, v1, :cond_1

    iget-object v3, p0, Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #getter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mCurrentNum:I
    invoke-static {v3}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$200(Lcom/android/hwcamera/autorama/PanoramaManager;)I

    move-result v3

    if-ge v3, v1, :cond_2

    .line 88
    .local v1, shown:Z
    :cond_1
    :goto_1
    const-string v3, "PanoramaManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shown is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v3, p0, Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #getter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;
    invoke-static {v3}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$300(Lcom/android/hwcamera/autorama/PanoramaManager;)Lcom/android/hwcamera/autorama/PanoramaViewManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->updateMovingUI(IIZ)V

    goto :goto_0

    .line 87
    .end local v1           #shown:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 94
    .end local v0           #direction:I
    .end local v2           #xy:I
    :pswitch_3
    iget-object v3, p0, Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #getter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;
    invoke-static {v3}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$300(Lcom/android/hwcamera/autorama/PanoramaManager;)Lcom/android/hwcamera/autorama/PanoramaViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->show()V

    goto :goto_0

    .line 101
    :pswitch_4
    iget-object v3, p0, Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    iget-object v3, v3, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaHandler:Landroid/os/Handler;

    const/16 v4, 0x73

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 112
    :pswitch_5
    iget-object v3, p0, Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #getter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;
    invoke-static {v3}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$300(Lcom/android/hwcamera/autorama/PanoramaManager;)Lcom/android/hwcamera/autorama/PanoramaViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->getShutterButton()Lcom/android/hwcamera/ShutterButton;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
