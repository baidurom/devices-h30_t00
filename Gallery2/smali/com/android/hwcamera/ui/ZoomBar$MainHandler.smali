.class Lcom/android/hwcamera/ui/ZoomBar$MainHandler;
.super Landroid/os/Handler;
.source "ZoomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/ui/ZoomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/ui/ZoomBar;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/ui/ZoomBar;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/hwcamera/ui/ZoomBar$MainHandler;->this$0:Lcom/android/hwcamera/ui/ZoomBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/ui/ZoomBar;Lcom/android/hwcamera/ui/ZoomBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/hwcamera/ui/ZoomBar$MainHandler;-><init>(Lcom/android/hwcamera/ui/ZoomBar;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar$MainHandler;->this$0:Lcom/android/hwcamera/ui/ZoomBar;

    #calls: Lcom/android/hwcamera/ui/ZoomBar;->changeZoomIndexSmoothly()V
    invoke-static {v0}, Lcom/android/hwcamera/ui/ZoomBar;->access$200(Lcom/android/hwcamera/ui/ZoomBar;)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
