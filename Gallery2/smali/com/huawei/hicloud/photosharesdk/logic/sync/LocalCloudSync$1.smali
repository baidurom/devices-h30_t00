.class Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync$1;
.super Landroid/os/Handler;
.source "LocalCloudSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter "$anonymous0"

    .prologue
    .line 481
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x4

    .line 486
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 526
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 503
    :pswitch_1
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_1

    .line 504
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->TAG:Ljava/lang/String;

    const-string v2, "Timer task compare handler!"

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :cond_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->canExecute(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 507
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v1

    const-string v2, "/Photoshare/myphoto"

    invoke-virtual {v1, v4, v2, v4}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->startSync(ILjava/lang/String;I)V

    .line 509
    :cond_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->canExecute(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 512
    const-string v2, "isSwitchRecOn"

    .line 511
    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/api/SwitcherSetting;->getSwitcher(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 513
    .local v0, isSwitchRecOn:Z
    if-eqz v0, :cond_3

    .line 515
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "/PhotoshareShared"

    invoke-virtual {v1, v2, v3, v4}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->startSync(ILjava/lang/String;I)V

    .line 517
    :cond_3
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "/PhotoshareReceived"

    invoke-virtual {v1, v2, v3, v4}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->startSync(ILjava/lang/String;I)V

    goto :goto_0

    .line 486
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
