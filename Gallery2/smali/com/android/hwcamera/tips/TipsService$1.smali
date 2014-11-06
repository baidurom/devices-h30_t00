.class Lcom/android/hwcamera/tips/TipsService$1;
.super Landroid/os/Handler;
.source "TipsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/tips/TipsService;-><init>(Lcom/android/hwcamera/CameraActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/tips/TipsService;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/tips/TipsService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/hwcamera/tips/TipsService$1;->this$0:Lcom/android/hwcamera/tips/TipsService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 76
    :goto_0
    return-void

    .line 70
    :pswitch_0
    iget-object v1, p0, Lcom/android/hwcamera/tips/TipsService$1;->this$0:Lcom/android/hwcamera/tips/TipsService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/hwcamera/tips/TipsService$Tip;

    #calls: Lcom/android/hwcamera/tips/TipsService;->showTip(Lcom/android/hwcamera/tips/TipsService$Tip;)V
    invoke-static {v1, v0}, Lcom/android/hwcamera/tips/TipsService;->access$000(Lcom/android/hwcamera/tips/TipsService;Lcom/android/hwcamera/tips/TipsService$Tip;)V

    .line 71
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService$1;->this$0:Lcom/android/hwcamera/tips/TipsService;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/tips/TipsService;->mIsShowTipDelay:Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/tips/TipsService;->access$102(Lcom/android/hwcamera/tips/TipsService;Z)Z

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
