.class Lcom/android/hwcamera/FocusOverlayManager$MainHandler;
.super Landroid/os/Handler;
.source "FocusOverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/FocusOverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/FocusOverlayManager;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/FocusOverlayManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/hwcamera/FocusOverlayManager$MainHandler;->this$0:Lcom/android/hwcamera/FocusOverlayManager;

    .line 139
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 140
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 146
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager$MainHandler;->this$0:Lcom/android/hwcamera/FocusOverlayManager;

    #calls: Lcom/android/hwcamera/FocusOverlayManager;->cancelAutoFocus()V
    invoke-static {v0}, Lcom/android/hwcamera/FocusOverlayManager;->access$000(Lcom/android/hwcamera/FocusOverlayManager;)V

    .line 147
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager$MainHandler;->this$0:Lcom/android/hwcamera/FocusOverlayManager;

    iget-object v0, v0, Lcom/android/hwcamera/FocusOverlayManager;->mListener:Lcom/android/hwcamera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/FocusOverlayManager$Listener;->startFaceDetection()V

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
