.class Lcom/android/hwcamera/ui/ZoomRenderer$MainHandler;
.super Landroid/os/Handler;
.source "ZoomRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/ui/ZoomRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/ui/ZoomRenderer;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/ui/ZoomRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/hwcamera/ui/ZoomRenderer$MainHandler;->this$0:Lcom/android/hwcamera/ui/ZoomRenderer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/ui/ZoomRenderer;Lcom/android/hwcamera/ui/ZoomRenderer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/android/hwcamera/ui/ZoomRenderer$MainHandler;-><init>(Lcom/android/hwcamera/ui/ZoomRenderer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 200
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 208
    :goto_0
    return-void

    .line 202
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomRenderer$MainHandler;->this$0:Lcom/android/hwcamera/ui/ZoomRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/ZoomRenderer;->setVisible(Z)V

    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
