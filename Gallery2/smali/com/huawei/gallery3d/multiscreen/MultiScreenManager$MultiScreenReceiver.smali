.class Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MultiScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiScreenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;


# direct methods
.method private constructor <init>(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;-><init>(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 217
    const-string v8, "AirSharing_MultiScreenManager"

    const-string v9, "Receive Service Broadcast!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, action:Ljava/lang/String;
    const-string v8, "com.huawei.android.multiscreen.DEVICE_SELECTOR_CALLER"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, caller:Ljava/lang/String;
    const-string v8, "com.huawei.android.multiscreen.broadcast.DEVICE_SELECTED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 223
    const-string v8, "AirSharing_MultiScreenManager"

    const-string v9, "GET BROADCAST_DEVICE_SELECTED MSG"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v8, "com.huawei.android.multiscreen.DEVICE_ID"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 226
    .local v2, deviceID:I
    const/4 v8, -0x1

    if-ne v2, v8, :cond_1

    .line 227
    const-string v8, "AirSharing_MultiScreenManager"

    const-string v9, "Error DEVICE_ID!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .end local v2           #deviceID:I
    :cond_0
    :goto_0
    return-void

    .line 229
    .restart local v2       #deviceID:I
    :cond_1
    const/4 v8, -0x2

    if-ne v2, v8, :cond_2

    .line 231
    const-string v8, "AirSharing_MultiScreenManager"

    const-string v9, "Miracast Device ID received!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :try_start_0
    iget-object v8, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    invoke-virtual {v8}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getDeviceMediaManager()Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->setDefaultDmr()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v3

    .line 235
    .local v3, e:Ljava/lang/NullPointerException;
    const-string v8, "AirSharing_MultiScreenManager"

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 243
    .end local v3           #e:Ljava/lang/NullPointerException;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    invoke-virtual {v8}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v8

    invoke-interface {v8, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;->getDeviceById(I)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 248
    .local v6, remoteDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    instance-of v8, v6, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    if-eqz v8, :cond_a

    .line 249
    if-nez v1, :cond_3

    .line 250
    const-string v8, "AirSharing_MultiScreenManager"

    const-string v9, "Error CALLER!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 244
    .end local v6           #remoteDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    :catch_1
    move-exception v3

    .line 245
    .restart local v3       #e:Ljava/lang/NullPointerException;
    const-string v8, "AirSharing_MultiScreenManager"

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    .end local v3           #e:Ljava/lang/NullPointerException;
    .restart local v6       #remoteDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    :cond_3
    iget-object v8, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;
    invoke-static {v8}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$600(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    move-result-object v8

    check-cast v6, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    .end local v6           #remoteDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    invoke-virtual {v8, v6}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->setCurrentDmrDevice(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;)V

    .line 255
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$1000()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mIsPushView:Z
    invoke-static {v8}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$1100(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 256
    const-string v8, "AirSharing_MultiScreenManager"

    const-string v9, "Lost Control of Current DMR"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v8, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mListeners:Ljava/util/List;
    invoke-static {v8}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$700(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;

    .line 258
    .local v5, l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    invoke-interface {v5}, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;->onLostDmrControl()V

    goto :goto_1

    .line 260
    .end local v5           #l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    :cond_4
    iget-object v8, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$900(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 264
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_5
    const-string v8, "AirSharing_MultiScreenManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mCurrentMediaType:I
    invoke-static {v10}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$1200(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    invoke-virtual {v10}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->isMirrorSP()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v8, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mCurrentMediaType:I
    invoke-static {v8}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$1200(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    iget-object v8, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    invoke-virtual {v8}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->isMirrorSP()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 266
    iget-object v8, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    invoke-virtual {v8}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->startMirror()V

    goto/16 :goto_0

    .line 267
    :cond_6
    iget-object v8, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mCurrentMediaType:I
    invoke-static {v8}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$1200(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_7

    iget-object v8, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    invoke-virtual {v8}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->isMirrorSP()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$1300(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mVideoUri:Landroid/net/Uri;
    invoke-static {v9}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$1400(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->excessBitRate(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 268
    iget-object v8, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    invoke-virtual {v8}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->startMirror()V

    goto/16 :goto_0

    .line 270
    :cond_7
    iget-object v8, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mPushMedia:Ljava/lang/ref/WeakReference;
    invoke-static {v8}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$1500(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Ljava/lang/ref/WeakReference;

    move-result-object v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mPushMedia:Ljava/lang/ref/WeakReference;
    invoke-static {v8}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$1500(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Ljava/lang/ref/WeakReference;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_9

    .line 271
    :cond_8
    const-string v8, "AirSharing_MultiScreenManager"

    const-string v9, "Media not Ready!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 274
    :cond_9
    iget-object v8, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    iget-object v9, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mVideoPosition:I
    invoke-static {v9}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$1600(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->addPendingPushTask(I)V

    goto/16 :goto_0

    .line 277
    .restart local v6       #remoteDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    :cond_a
    iget-object v8, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;
    invoke-static {v8}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$600(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    move-result-object v8

    check-cast v6, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;

    .end local v6           #remoteDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    invoke-virtual {v8, v6}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->setCurrentDmsDevice(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;)V

    goto/16 :goto_0

    .line 279
    .end local v2           #deviceID:I
    :cond_b
    const-string v8, "com.huawei.android.multiscreen.broadcast.DLNA_PUSHED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 280
    const-string v8, "AirSharing_MultiScreenManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GET BROADCAST_DLNA_PUSHED MSG...PushViewStatus : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mIsPushView:Z
    invoke-static {v10}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$1100(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v8, "com.huawei.android.multiscreen.MEDIA_TYPE"

    const/4 v9, 0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 282
    .local v7, type:I
    iget-object v8, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mIsPushView:Z
    invoke-static {v8}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$1100(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x2

    if-eq v7, v8, :cond_c

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 284
    :cond_c
    iget-object v8, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mListeners:Ljava/util/List;
    invoke-static {v8}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$700(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;

    .line 285
    .restart local v5       #l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    invoke-interface {v5}, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;->onLostDmrControl()V

    goto :goto_2

    .line 288
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    .end local v7           #type:I
    :cond_d
    const-string v8, "com.huawei.android.multiscreen.broadcast.MIRROR_SCONNECTED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 289
    const-string v8, "AirSharing_MultiScreenManager"

    const-string v9, "GET BROADCAST_MIRROR_CONNECTED MSG..."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v8, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mListeners:Ljava/util/List;
    invoke-static {v8}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$700(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;

    .line 291
    .restart local v5       #l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    invoke-interface {v5}, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;->onChangeToMirror()V

    goto :goto_3

    .line 293
    .end local v5           #l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    :cond_e
    iget-object v8, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$900(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 294
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_f
    const-string v8, "com.huawei.android.multiscreen.broadcast.USER_DISCONNECT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 295
    const-string v8, "AirSharing_MultiScreenManager"

    const-string v9, "GET BROADCAST_USER_DISCONNECT MSG...reset all symbol!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v8, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    const/16 v9, 0x1f4

    #setter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mVideoPosition:I
    invoke-static {v8, v9}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$1602(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;I)I

    .line 297
    iget-object v8, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mListeners:Ljava/util/List;
    invoke-static {v8}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$700(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;

    .line 298
    .restart local v5       #l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    invoke-interface {v5}, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;->onUserDisconnect()V

    goto :goto_4

    .line 300
    .end local v5           #l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    :cond_10
    iget-object v8, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$900(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
