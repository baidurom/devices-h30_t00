.class public Lcom/huawei/android/pushagent/model/connectmgr/ConnectMgrProcessor;
.super Lcom/huawei/android/pushagent/model/PushVirtualReceiver;
.source "ConnectMgrProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PushLog2510"


# instance fields
.field netWorkType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/huawei/android/pushagent/model/PushVirtualReceiver;-><init>()V

    .line 28
    const/4 v1, -0x1

    iput v1, p0, Lcom/huawei/android/pushagent/model/connectmgr/ConnectMgrProcessor;->netWorkType:I

    .line 32
    :try_start_0
    invoke-static {p1}, Lcom/huawei/android/pushagent/utils/CommFun;->getAvailableNetwork(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/huawei/android/pushagent/model/connectmgr/ConnectMgrProcessor;->netWorkType:I

    .line 35
    invoke-static {p1}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->queryAllClientRequest(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.huawei.action.CONNECT_PUSHSRV_PUSHSRV"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/huawei/android/pushagent/model/connectmgr/ConnectMgrProcessor;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 47
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.huawei.action.CONNECT_PUSHSRV"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/huawei/android/pushagent/model/connectmgr/ConnectMgrProcessor;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PushLog2510"

    const-string v2, "call switchChannel cause Exception"

    invoke-static {v1, v2, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private connectSrv(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "action"

    .prologue
    const/4 v10, -0x1

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 173
    :try_start_0
    const-string v8, "cloudpush_isNoDelayConnect"

    const/4 v9, 0x0

    invoke-static {p1, v8, v9}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    .line 180
    .local v3, isNoDelayConnect:Z
    invoke-static {p1}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->isValid()Z

    move-result v8

    if-nez v8, :cond_0

    .line 182
    const-string v8, "PushLog2510"

    const-string v9, "TRS is invalid, so need to query TRS"

    invoke-static {v8, v9}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {p1}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->queryTRSInfo(Z)Z

    .line 187
    :cond_0
    const-string v8, "com.huawei.android.push.intent.TRS_QUERY_SUCCESS"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 188
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getPollingChannel()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v8

    iget-object v8, v8, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    invoke-virtual {v8}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->loadHeartBeat()Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    .line 189
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getPushChannel()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v8

    iget-object v8, v8, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    invoke-virtual {v8}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->loadHeartBeat()Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    .line 190
    invoke-static {p1}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->reload(Landroid/content/Context;)V

    .line 196
    :cond_1
    invoke-static {p1}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->queryAllClientRequest(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 199
    .local v4, needSendReq:Ljava/util/List;
    const-string v8, "com.huawei.android.pushagent"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "android"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    if-nez v3, :cond_3

    .line 202
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_3

    invoke-static {p1}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;

    move-result-object v8

    iget-object v8, v8, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->tokenMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 204
    invoke-static {p1}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/ChannelMgr;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->closeAll()V

    .line 205
    const-string v7, "PushLog2510"

    const-string v8, "no push client, apk need not connect"

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .end local v3           #isNoDelayConnect:Z
    .end local v4           #needSendReq:Ljava/util/List;
    :goto_0
    return-void

    .line 211
    .restart local v3       #isNoDelayConnect:Z
    .restart local v4       #needSendReq:Ljava/util/List;
    :cond_3
    invoke-static {p1}, Lcom/huawei/android/pushagent/utils/CommFun;->getAvailableNetwork(Landroid/content/Context;)I

    move-result v0

    .line 212
    .local v0, curNetWorkType:I
    if-eq v10, v0, :cond_4

    iget v8, p0, Lcom/huawei/android/pushagent/model/connectmgr/ConnectMgrProcessor;->netWorkType:I

    if-eq v0, v8, :cond_6

    .line 214
    :cond_4
    if-ne v10, v0, :cond_7

    .line 215
    const-string v8, "cloudpush_isSupportCollectSocketInfo"

    const/4 v9, 0x0

    invoke-static {p1, v8, v9}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getPushChannel()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->hasConnection()Z

    move-result v8

    if-nez v8, :cond_5

    .line 222
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.huawei.android.push.intent.SOCKET_INFO"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "socket_add_info"

    const-string v10, "no network."

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 228
    :cond_5
    const-string v8, "PushLog2510"

    const-string v9, "no network in ConnectMgrProcessor:connect, so close socket"

    invoke-static {v8, v9}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_1
    :try_start_1
    invoke-static {p1}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/ChannelMgr;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->closeAll()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 256
    :cond_6
    :goto_2
    :try_start_2
    iget v8, p0, Lcom/huawei/android/pushagent/model/connectmgr/ConnectMgrProcessor;->netWorkType:I

    if-eq v8, v0, :cond_9

    .line 257
    .local v2, isNetSwitch:Z
    :goto_3
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lastnetWorkType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/huawei/android/pushagent/model/connectmgr/ConnectMgrProcessor;->netWorkType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "curNetWorkType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iput v0, p0, Lcom/huawei/android/pushagent/model/connectmgr/ConnectMgrProcessor;->netWorkType:I

    .line 262
    if-eqz v3, :cond_a

    .line 263
    invoke-static {p1}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/ChannelMgr;

    move-result-object v7

    sget-object v8, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Push:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    invoke-virtual {v7, v8}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->setCurConnectType(Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;)V

    .line 264
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getPushChannel()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->connect(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 320
    .end local v0           #curNetWorkType:I
    .end local v2           #isNetSwitch:Z
    .end local v3           #isNoDelayConnect:Z
    .end local v4           #needSendReq:Ljava/util/List;
    :catch_0
    move-exception v1

    .line 321
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "call switchChannel cause Exceptino:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 231
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #curNetWorkType:I
    .restart local v3       #isNoDelayConnect:Z
    .restart local v4       #needSendReq:Ljava/util/List;
    :cond_7
    :try_start_3
    const-string v8, "cloudpush_isSupportCollectSocketInfo"

    const/4 v9, 0x0

    invoke-static {p1, v8, v9}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getPushChannel()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->hasConnection()Z

    move-result v8

    if-nez v8, :cond_8

    .line 238
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.huawei.android.push.intent.SOCKET_INFO"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "socket_add_info"

    const-string v10, "network switch."

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 244
    :cond_8
    const-string v8, "PushLog2510"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "net work switch from:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/huawei/android/pushagent/model/connectmgr/ConnectMgrProcessor;->netWorkType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 249
    :catch_1
    move-exception v1

    .line 250
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v8, "PushLog2510"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "call channel.close cause exceptino:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .end local v1           #e:Ljava/lang/Exception;
    :cond_9
    move v2, v7

    .line 256
    goto/16 :goto_3

    .line 269
    .restart local v2       #isNetSwitch:Z
    :cond_a
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "com.huawei.android.push.intent.TRS_QUERY_SUCCESS"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getPushChannel()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->hasConnection()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getCurConnectMode()Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    move-result-object v7

    sget-object v8, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Push:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    if-eq v7, v8, :cond_c

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_c

    .line 274
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "received "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", cur ConType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getCurConnectMode()Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", but have need depose size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.huawei.action.CONNECT_PUSHSRV_PUSHSRV"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v7}, Lcom/huawei/android/pushagent/model/connectmgr/ConnectMgrProcessor;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 286
    :cond_c
    const-string v7, "com.huawei.action.CONNECT_PUSHSRV_PUSHSRV"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 287
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " so get a pushSrv to connect"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_d

    .line 290
    invoke-static {p1}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/ChannelMgr;

    move-result-object v7

    sget-object v8, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Push:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    invoke-virtual {v7, v8}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->setCurConnectType(Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;)V

    .line 292
    :cond_d
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getPushChannel()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->connect(Z)V

    goto/16 :goto_0

    .line 293
    :cond_e
    const-string v7, "com.huawei.action.CONNECT_PUSHSRV_POLLINGSRV"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 295
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " so get a pollingSrv to connect"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getPollingChannel()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->connect(Z)V

    goto/16 :goto_0

    .line 298
    :cond_f
    invoke-static {p1}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/ChannelMgr;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getCurConnetEntity()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->hasConnection()Z

    move-result v7

    if-nez v7, :cond_11

    .line 300
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " so get a srv to connect"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    if-eqz v2, :cond_10

    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getCurConnectMode()Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    move-result-object v7

    sget-object v8, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Push:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    if-ne v7, v8, :cond_10

    .line 303
    invoke-static {p1}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/ChannelMgr;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getCurConnetEntity()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->connect(Z)V

    goto/16 :goto_0

    .line 306
    :cond_10
    invoke-static {p1}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/ChannelMgr;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getCurConnetEntity()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->connect(Z)V

    goto/16 :goto_0

    .line 310
    :cond_11
    invoke-static {p1}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getCurHeartBeat(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->getNextHeartBeatTime()J

    move-result-wide v5

    .line 312
    .local v5, nextSendHearBeatTime:J
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pushChannel already connect, so needn\'t handle, nextSendHearBeatTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "yyyy-MM-dd HH:mm:ss SSS"

    invoke-static {v5, v6, v9}, Lcom/huawei/android/pushagent/utils/CommFun;->getTimeString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method private needConnectSrv(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "action"
    .parameter "intentType"

    .prologue
    .line 336
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.huawei.action.CONNECT_PUSHSRV"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.huawei.action.CONNECT_PUSHSRV_PUSHSRV"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.huawei.action.CONNECT_PUSHSRV_POLLINGSRV"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.huawei.android.push.intent.TRS_QUERY_SUCCESS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.huawei.intent.action.PUSH"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.huawei.intent.action.PUSH_ON"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "com.huawei.android.push.intent.inner.START_SERVICE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needNotifyChannalMgr(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"
    .parameter "action"
    .parameter "intentType"

    .prologue
    .line 328
    const-string v0, "com.huawei.intent.action.PUSH"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.huawei.android.push.intent.HEARTBEAT_REQ"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "com.huawei.android.push.intent.REFRESH_PUSH_CHANNEL"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 53
    :try_start_0
    const-string v13, "PushLog2510"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "enter ConnectMgrProcessor:onReceive(intent:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " context:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, action:Ljava/lang/String;
    const-string v13, "EXTRA_INTENT_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, intentType:Ljava/lang/String;
    const-string v13, "com.huawei.android.push.intent.HEARTBEAT_RSP_TIMEOUT"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 60
    const-string v13, "cloudpush_isSupportCollectSocketInfo"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 65
    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.huawei.android.push.intent.SOCKET_INFO"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v14, "socket_add_info"

    const-string v15, "heart beat time out."

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/ChannelMgr;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->notifyEvent(Landroid/content/Intent;)V

    .line 167
    .end local v3           #action:Ljava/lang/String;
    .end local v7           #intentType:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 72
    .restart local v3       #action:Ljava/lang/String;
    .restart local v7       #intentType:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/huawei/android/pushagent/model/connectmgr/ConnectMgrProcessor;->needNotifyChannalMgr(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 73
    invoke-static/range {p1 .. p1}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/ChannelMgr;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->notifyEvent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    .end local v3           #action:Ljava/lang/String;
    .end local v7           #intentType:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 165
    .local v5, e:Ljava/lang/Exception;
    const-string v13, "PushLog2510"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 74
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v3       #action:Ljava/lang/String;
    .restart local v7       #intentType:Ljava/lang/String;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v7}, Lcom/huawei/android/pushagent/model/connectmgr/ConnectMgrProcessor;->needConnectSrv(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 75
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/huawei/android/pushagent/model/connectmgr/ConnectMgrProcessor;->connectSrv(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_4
    const-string v13, "com.huawei.android.push.intent.CHANNEL_CLOSED"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 77
    const-string v13, "PushLog2510"

    const-string v14, "receive the channal closed action."

    invoke-static {v13, v14}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v8, ""

    .line 81
    .local v8, nextConnectTime:Ljava/lang/String;
    const/4 v13, -0x1

    invoke-static/range {p1 .. p1}, Lcom/huawei/android/pushagent/utils/CommFun;->getAvailableNetwork(Landroid/content/Context;)I

    move-result v14

    if-eq v13, v14, :cond_7

    .line 83
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getCurConnectMode()Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    move-result-object v13

    sget-object v14, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Push:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    if-ne v13, v14, :cond_5

    .line 84
    invoke-static/range {p1 .. p1}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getConnectPushSrvInterval()J

    move-result-wide v9

    .line 86
    .local v9, nextStartTime:J
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 87
    const-string v13, "PushLog2510"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "next connect pushSrv will be "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ms later"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .end local v9           #nextStartTime:J
    :cond_5
    :goto_1
    const-string v6, ""

    .line 103
    .local v6, expInfo:Ljava/lang/String;
    const-string v13, "push_exception"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v11

    .line 105
    .local v11, si:Ljava/io/Serializable;
    if-eqz v11, :cond_6

    .line 106
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 108
    :cond_6
    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.huawei.android.push.intent.SOCKET_INFO"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v14, "socket_event_type"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v13

    const-string v14, "socket_next_connect_time"

    invoke-virtual {v13, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    const-string v14, "socket_exception"

    invoke-virtual {v13, v14, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 93
    .end local v6           #expInfo:Ljava/lang/String;
    .end local v11           #si:Ljava/io/Serializable;
    :cond_7
    new-instance v13, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    const-string v14, "cloudpush_arrayOfNetEventTime"

    const-class v15, Ljava/lang/String;

    const-string v16, ""

    invoke-direct/range {v13 .. v16}, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->setValue(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/CFG_TYPE;)V

    goto :goto_1

    .line 121
    .end local v8           #nextConnectTime:Ljava/lang/String;
    :cond_8
    const-string v13, "com.huawei.android.push.intent.CONNECTING"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 122
    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.huawei.android.push.intent.SOCKET_INFO"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v14, "socket_event_type"

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 126
    :cond_9
    const-string v13, "com.huawei.android.push.intent.CONNECTED"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 127
    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.huawei.android.push.intent.SOCKET_INFO"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v14, "socket_event_type"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 131
    :cond_a
    const-string v13, "com.huawei.intent.action.PUSH_OFF"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 132
    const-string v13, "Remote_Package_Name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 134
    .local v12, stopPkgName:Ljava/lang/String;
    if-eqz v12, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    .line 136
    :cond_b
    const-string v13, "PushLog2510"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "need stop PkgName:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is not me, need not stop!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :cond_c
    const-string v13, "cloudpush_isSupportCollectSocketInfo"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 145
    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.huawei.android.push.intent.SOCKET_INFO"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v14, "socket_add_info"

    const-string v15, "receive push off action."

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 150
    :cond_d
    invoke-static/range {p1 .. p1}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/ChannelMgr;

    move-result-object v13

    invoke-virtual {v13}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->closeAll()V

    goto/16 :goto_0

    .line 151
    .end local v12           #stopPkgName:Ljava/lang/String;
    :cond_e
    const-string v13, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 152
    const-string v13, "status"

    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 155
    .local v4, batteryStatus:I
    invoke-static/range {p1 .. p1}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getCurHeartBeat(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->setBatteryStatus(I)V

    .line 157
    const/4 v13, 0x2

    if-eq v13, v4, :cond_f

    const/4 v13, 0x5

    if-ne v13, v4, :cond_10

    .line 159
    :cond_f
    const-string v13, "PushLog2510"

    const-string v14, "current battery is charging!"

    invoke-static {v13, v14}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :cond_10
    const-string v13, "PushLog2510"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "current battery no charging :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
