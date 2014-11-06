.class Lcom/android/hwcamera/ui/TargetView$1;
.super Landroid/os/Handler;
.source "TargetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/ui/TargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/ui/TargetView;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/ui/TargetView;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/hwcamera/ui/TargetView$1;->this$0:Lcom/android/hwcamera/ui/TargetView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView$1;->this$0:Lcom/android/hwcamera/ui/TargetView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/TargetView;->showSuccess(Z)V

    .line 88
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView$1;->this$0:Lcom/android/hwcamera/ui/TargetView;

    #getter for: Lcom/android/hwcamera/ui/TargetView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/ui/TargetView;->access$000(Lcom/android/hwcamera/ui/TargetView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView$1;->this$0:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/TargetView;->isTagetExit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView$1;->this$0:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/TargetView;->clear()V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
