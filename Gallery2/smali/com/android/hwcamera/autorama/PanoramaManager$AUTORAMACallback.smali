.class final Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;
.super Ljava/lang/Object;
.source "PanoramaManager.java"

# interfaces
.implements Landroid/hardware/Camera$AUTORAMACallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/autorama/PanoramaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AUTORAMACallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/autorama/PanoramaManager;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/autorama/PanoramaManager;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/autorama/PanoramaManager;Lcom/android/hwcamera/autorama/PanoramaManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;-><init>(Lcom/android/hwcamera/autorama/PanoramaManager;)V

    return-void
.end method


# virtual methods
.method public onCapture()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 148
    const-string v0, "PanoramaManager"

    const-string v1, "AUTORAMACallback onCapture: "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #getter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mCaptureState:I
    invoke-static {v0}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$700(Lcom/android/hwcamera/autorama/PanoramaManager;)I

    move-result v0

    if-nez v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #getter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mCurrentNum:I
    invoke-static {v0}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$200(Lcom/android/hwcamera/autorama/PanoramaManager;)I

    move-result v0

    if-nez v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    iget-object v0, v0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaHandler:Landroid/os/Handler;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #getter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mCurrentNum:I
    invoke-static {v0}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$200(Lcom/android/hwcamera/autorama/PanoramaManager;)I

    move-result v0

    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #getter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoMaxNum:I
    invoke-static {v1}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$600(Lcom/android/hwcamera/autorama/PanoramaManager;)I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #getter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mCaptureState:I
    invoke-static {v0}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$700(Lcom/android/hwcamera/autorama/PanoramaManager;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mCaptureState:I
    invoke-static {v0, v1}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$702(Lcom/android/hwcamera/autorama/PanoramaManager;I)I

    .line 161
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #calls: Lcom/android/hwcamera/autorama/PanoramaManager;->onHardwareStopped(Z)V
    invoke-static {v0, v2}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$800(Lcom/android/hwcamera/autorama/PanoramaManager;Z)V

    goto :goto_0

    .line 162
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #getter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mCurrentNum:I
    invoke-static {v0}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$200(Lcom/android/hwcamera/autorama/PanoramaManager;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #getter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mCurrentNum:I
    invoke-static {v0}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$200(Lcom/android/hwcamera/autorama/PanoramaManager;)I

    move-result v0

    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #getter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoMaxNum:I
    invoke-static {v1}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$600(Lcom/android/hwcamera/autorama/PanoramaManager;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    iget-object v0, v0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #getter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mCurrentNum:I
    invoke-static {v0}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$200(Lcom/android/hwcamera/autorama/PanoramaManager;)I

    move-result v0

    if-lez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #getter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mShowingCollimatedDrawable:Z
    invoke-static {v0}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$500(Lcom/android/hwcamera/autorama/PanoramaManager;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 166
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    iget-object v0, v0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #getter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mRestartCaptureView:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$400(Lcom/android/hwcamera/autorama/PanoramaManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    iget-object v0, v0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #getter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mOnHardwareStop:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$900(Lcom/android/hwcamera/autorama/PanoramaManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 169
    :cond_5
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #setter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mShowingCollimatedDrawable:Z
    invoke-static {v0, v2}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$502(Lcom/android/hwcamera/autorama/PanoramaManager;Z)Z

    .line 170
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    iget-object v0, v0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #getter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mRestartCaptureView:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$400(Lcom/android/hwcamera/autorama/PanoramaManager;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
