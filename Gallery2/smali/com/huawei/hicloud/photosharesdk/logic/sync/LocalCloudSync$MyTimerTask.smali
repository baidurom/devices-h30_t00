.class Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync$MyTimerTask;
.super Ljava/util/TimerTask;
.source "LocalCloudSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyTimerTask"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 555
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 556
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->TAG:Ljava/lang/String;

    const-string v2, "TimerTask run....send msg"

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->access$0()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 559
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 560
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->access$0()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 561
    return-void
.end method
