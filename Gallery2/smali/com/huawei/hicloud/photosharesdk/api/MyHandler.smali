.class Lcom/huawei/hicloud/photosharesdk/api/MyHandler;
.super Landroid/os/Handler;
.source "AccountSettings.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x4

    .line 236
    iget v1, p1, Landroid/os/Message;->what:I

    .line 237
    .local v1, what:I
    packed-switch v1, :pswitch_data_0

    .line 265
    :goto_0
    return-void

    .line 240
    :pswitch_0
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_0

    .line 241
    const-string v2, ""

    const-string v3, "auth myphoto success start"

    invoke-static {v2, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoStreamController;->openPhotoStream(Landroid/content/Context;)V

    .line 244
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v2

    .line 245
    const-string v3, "/Photoshare/myphoto"

    .line 244
    invoke-virtual {v2, v5, v3, v5}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->startSync(ILjava/lang/String;I)V

    goto :goto_0

    .line 248
    :pswitch_1
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_1

    .line 249
    const-string v2, ""

    const-string v3, "auth share success start"

    invoke-static {v2, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 251
    const-string v3, "isSwitchRecOn"

    .line 250
    invoke-static {v2, v3}, Lcom/huawei/hicloud/photosharesdk/api/SwitcherSetting;->getSwitcher(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 252
    .local v0, isSwitchRecOn:Z
    if-eqz v0, :cond_2

    .line 254
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v2

    const/4 v3, 0x3

    const-string v4, "/PhotoshareShared"

    invoke-virtual {v2, v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->startSync(ILjava/lang/String;I)V

    .line 257
    :cond_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v2

    const/4 v3, 0x2

    const-string v4, "/PhotoshareReceived"

    invoke-virtual {v2, v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->startSync(ILjava/lang/String;I)V

    goto :goto_0

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x114
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
