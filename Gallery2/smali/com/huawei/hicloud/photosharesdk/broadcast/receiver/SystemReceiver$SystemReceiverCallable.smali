.class Lcom/huawei/hicloud/photosharesdk/broadcast/receiver/SystemReceiver$SystemReceiverCallable;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;
.source "SystemReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk/broadcast/receiver/SystemReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemReceiverCallable"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "callParam"

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;-><init>(Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method private handleBatteryInfo(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 300
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->pause(I)V

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->scanFile(ZLjava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->resume(I)V

    goto :goto_0
.end method

.method private handleNetInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "action"

    .prologue
    const/4 v4, 0x4

    .line 324
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->canExecute(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v1

    const-string v2, "/Photoshare/myphoto"

    invoke-virtual {v1, v4, v2, v4}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->startSync(ILjava/lang/String;I)V

    .line 328
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoStreamController;->startPhotoStream(Landroid/content/Context;)V

    .line 331
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->canExecute(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 333
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 334
    const-string v2, "isSwitchRecOn"

    .line 333
    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/api/SwitcherSetting;->getSwitcher(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 335
    .local v0, isSwitchRecOn:Z
    if-eqz v0, :cond_1

    .line 337
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "/PhotoshareShared"

    invoke-virtual {v1, v2, v3, v4}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->startSync(ILjava/lang/String;I)V

    .line 340
    :cond_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "/PhotoshareReceived"

    invoke-virtual {v1, v2, v3, v4}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->startSync(ILjava/lang/String;I)V

    .line 344
    .end local v0           #isSwitchRecOn:Z
    :cond_2
    return-void
.end method

.method private handleTelephonyChange(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 260
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 263
    .local v0, tm:Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 289
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    const-string v3, "handleTelephonyChange default"

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :pswitch_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    const-string v3, "handleTelephonyChange CALL_STATE_RINGING"

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->pause(I)V

    goto :goto_0

    .line 280
    :pswitch_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    const-string v3, "handleTelephonyChange CALL_STATE_OFFHOOK"

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->pause(I)V

    goto :goto_0

    .line 285
    :pswitch_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    const-string v3, "handleTelephonyChange CALL_STATE_IDLE"

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->resume(I)V

    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 206
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/broadcast/receiver/SystemReceiver$SystemReceiverCallable;->getCallParam()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 207
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "context"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 208
    .local v1, context:Landroid/content/Context;
    const-string v5, "intent"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 210
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, action:Ljava/lang/String;
    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$AccountInfoUtil;->readIsLogOnFromFile(Landroid/content/Context;)Z

    move-result v3

    .line 214
    .local v3, isLogOn:Z
    if-nez v3, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-object v7

    .line 220
    :cond_1
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 222
    invoke-direct {p0, v1, v0}, Lcom/huawei/hicloud/photosharesdk/broadcast/receiver/SystemReceiver$SystemReceiverCallable;->handleNetInfo(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_2
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 225
    const-string v5, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 226
    const-string v5, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 228
    :cond_3
    invoke-direct {p0, v1, v2}, Lcom/huawei/hicloud/photosharesdk/broadcast/receiver/SystemReceiver$SystemReceiverCallable;->handleBatteryInfo(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 231
    :cond_4
    const-string v5, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 232
    const-string v5, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 239
    const-string v5, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 243
    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 248
    const-string v5, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 250
    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk/broadcast/receiver/SystemReceiver$SystemReceiverCallable;->handleTelephonyChange(Landroid/content/Context;)V

    goto :goto_0
.end method
