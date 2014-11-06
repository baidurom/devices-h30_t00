.class Lcom/android/hwcamera/ui/VisualizerView$1;
.super Landroid/os/Handler;
.source "VisualizerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/ui/VisualizerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/ui/VisualizerView;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/ui/VisualizerView;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/hwcamera/ui/VisualizerView$1;->this$0:Lcom/android/hwcamera/ui/VisualizerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/ui/VisualizerView$1;->this$0:Lcom/android/hwcamera/ui/VisualizerView;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/VisualizerView;->invalidate()V

    .line 49
    iget-object v0, p0, Lcom/android/hwcamera/ui/VisualizerView$1;->this$0:Lcom/android/hwcamera/ui/VisualizerView;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerDataUpdated:Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/ui/VisualizerView;->access$002(Lcom/android/hwcamera/ui/VisualizerView;Z)Z

    .line 50
    iget-object v0, p0, Lcom/android/hwcamera/ui/VisualizerView$1;->this$0:Lcom/android/hwcamera/ui/VisualizerView;

    #getter for: Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerStarted:Z
    invoke-static {v0}, Lcom/android/hwcamera/ui/VisualizerView;->access$100(Lcom/android/hwcamera/ui/VisualizerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/ui/VisualizerView$1;->this$0:Lcom/android/hwcamera/ui/VisualizerView;

    #getter for: Lcom/android/hwcamera/ui/VisualizerView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/ui/VisualizerView;->access$200(Lcom/android/hwcamera/ui/VisualizerView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
