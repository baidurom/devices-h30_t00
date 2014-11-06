.class Lcom/android/hwcamera/ui/indicator/FaceView$1;
.super Landroid/os/Handler;
.source "FaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/ui/indicator/FaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/ui/indicator/FaceView;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/ui/indicator/FaceView;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/hwcamera/ui/indicator/FaceView$1;->this$0:Lcom/android/hwcamera/ui/indicator/FaceView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/ui/indicator/FaceView$1;->this$0:Lcom/android/hwcamera/ui/indicator/FaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/indicator/FaceView;->invalidate()V

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
