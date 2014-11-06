.class public Lcom/huawei/android/pushagent/model/recorder/SystemConfig;
.super Lcom/huawei/android/pushagent/model/PushVirtualReceiver;
.source "SystemConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PushLog2510"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/huawei/android/pushagent/model/PushVirtualReceiver;-><init>()V

    return-void
.end method

.method private handleActionOfConfigSwitch(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 71
    const-string v4, "config_name"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, cfgName:Ljava/lang/String;
    const-string v4, "config_value"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, cfgValue:Ljava/lang/String;
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enter handleActionOfConfigSwitch(cfgName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":cfgValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    sget-object v4, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->CFG_DEFAULT_ITEM:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 77
    :cond_0
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received config switch, but cfgName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cfgValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not recognize"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_1
    :goto_0
    return-void

    .line 81
    :cond_2
    new-instance v0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    sget-object v4, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->CFG_DEFAULT_ITEM:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    iget-object v4, v4, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v4, v2}, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 85
    .local v0, cfgItem:Lcom/huawei/android/pushagent/datatype/CFG_TYPE;
    invoke-static {p1, v0}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->setValue(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/CFG_TYPE;)V

    .line 87
    const-string v4, "cloudpush_isLogLocal"

    iget-object v5, v0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 88
    iget-object v4, v0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 95
    :cond_3
    const-string v4, "cloudpush_isReportLog"

    iget-object v5, v0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 96
    iget-object v4, v0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 101
    :cond_4
    const-string v4, "cloudpush_fixHeatBeat"

    iget-object v5, v0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 102
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.huawei.intent.action.PUSH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "EXTRA_INTENT_TYPE"

    const-string v6, "com.huawei.android.push.intent.HEARTBEAT_REQ"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "heartbeat_interval"

    iget-object v6, v0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemValue:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/pushagent/PushService;->broadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 108
    :cond_5
    const-string v4, "USE_SSL"

    iget-object v5, v0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 110
    :try_start_0
    const-string v4, "PushLog2510"

    const-string v5, "received USE_SSL change, so close socket "

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.huawei.android.push.query"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "config_name"

    const-string v6, "USE_SSL"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/huawei/android/pushagent/model/recorder/SystemConfig;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    :try_start_1
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getPushChannel()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 116
    :catch_0
    move-exception v3

    .line 117
    .local v3, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " call close cause "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 119
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 120
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call getPushChannel().close() case Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 122
    .end local v3           #e:Ljava/lang/Exception;
    :cond_6
    const-string v4, "cloudpush_trsIp"

    iget-object v5, v0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    const/4 v4, 0x2

    invoke-static {p1, v4}, Lcom/huawei/android/pushagent/utils/CommFun;->resetFileAndMemory(Landroid/content/Context;I)V

    .line 138
    :try_start_3
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trs change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemValue:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", so close socket"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.huawei.android.push.intent.SOCKET_INFO"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "socket_add_info"

    const-string v6, "trs config change"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getPushChannel()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 148
    :goto_1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.huawei.action.CONNECT_PUSHSRV"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/huawei/android/pushagent/PushService;->broadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 144
    :catch_2
    move-exception v3

    .line 145
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v4, "PushLog2510"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, action:Ljava/lang/String;
    const-string v7, "EXTRA_INTENT_TYPE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 26
    .local v4, extType:Ljava/lang/String;
    const-string v7, "com.huawei.android.push.SWITCH"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/huawei/android/pushagent/model/recorder/SystemConfig;->handleActionOfConfigSwitch(Landroid/content/Context;Landroid/content/Intent;)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    const-string v7, "com.huawei.android.push.query"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 29
    const-string v7, "config_name"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, cfgName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 31
    invoke-static {p1, v2}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    move-result-object v1

    .line 32
    .local v1, cfg:Lcom/huawei/android/pushagent/datatype/CFG_TYPE;
    if-eqz v1, :cond_0

    .line 33
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " value:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemValue:Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to rsp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.huawei.android.push.config.RSP"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "config_name"

    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "config_value"

    iget-object v9, v1, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemValue:Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 42
    .end local v1           #cfg:Lcom/huawei/android/pushagent/datatype/CFG_TYPE;
    .end local v2           #cfgName:Ljava/lang/String;
    :cond_2
    const-string v7, "com.huawei.android.push.intent.HEARTBEAT_RANGE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.huawei.android.push.intent.HEARTBEAT_VALID_ARRIVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 45
    :cond_3
    :try_start_0
    const-string v7, "PushLog2510"

    const-string v8, "when receive the heart beat range change or valid arrived,the file  HeartBeatCfg.xml need del"

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {p1}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/ChannelMgr;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getHeartBeatCfgFiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 61
    .local v6, s:Ljava/lang/String;
    invoke-static {p1, v6}, Lcom/huawei/android/pushagent/utils/CommFun;->deletePrefrence(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 63
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #s:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 64
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "PushLog2510"

    const-string v8, "when receive the heart beat range change, files delete failed!"

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
