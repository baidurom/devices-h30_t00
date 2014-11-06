.class Lcom/huawei/hicloud/photosharesdk/service/MyHandler;
.super Landroid/os/Handler;
.source "MainService.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 187
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 198
    :goto_0
    return-void

    .line 191
    :pswitch_0
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/CameraScanner;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/logic/CameraScanner;-><init>()V

    .line 192
    .local v0, cameraScanner:Lcom/huawei/hicloud/photosharesdk/logic/CameraScanner;
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/logic/CameraScanner;->prepareScan()V

    .line 193
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/logic/CameraScanner;->beginScan(Landroid/content/Context;)V

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
