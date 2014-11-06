.class public Lcom/huawei/hicloud/photosharesdk/broadcast/receiver/AccountLogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountLogReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hicloud/photosharesdk/broadcast/receiver/AccountLogReceiver$AccountLogReceiverCallable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountLogReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 39
    .local v8, action:Ljava/lang/String;
    const-string v0, "AccountLogReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "action-->"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 42
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v4, "4"

    const-string v5, "ApplicationContext.getContext() null"

    invoke-static {v0, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string v0, "com.huawei.hicloud.intent.action.HICLOUD_LOGON_ACTION"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    const-string v0, "isPhotoStreamOn"

    .line 47
    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 49
    .local v1, isOpenPhoto:Z
    const-string v0, "isSharePhotoOn"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 51
    .local v2, isOpenShare:Z
    const-string v0, "is3GAllowOn"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 53
    .local v3, is3Gdl:Z
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/huawei/hicloud/photosharesdk/api/SwitcherSetting;->setSwitcher(Landroid/content/Context;ZZZZJ)I

    .line 56
    new-instance v7, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    invoke-direct {v7}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;-><init>()V

    .line 57
    .local v7, accInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;
    const-string v0, "siteId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->setSiteID(Ljava/lang/String;)V

    .line 58
    const-string v0, "accountName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->setAccountName(Ljava/lang/String;)V

    .line 59
    const-string v0, "nickName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->setNickName(Ljava/lang/String;)V

    .line 60
    const-string v0, "serviceToken"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->setServiceToken(Ljava/lang/String;)V

    .line 61
    const-string v0, "deviceID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->setDeviceID(Ljava/lang/String;)V

    .line 62
    const-string v0, "deviceIDType"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->setDeviceIDType(Ljava/lang/String;)V

    .line 63
    const-string v0, "deviceType"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->setDeviceType(Ljava/lang/String;)V

    .line 64
    const-string v0, "userID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->setUserID(Ljava/lang/String;)V

    .line 65
    const-string v0, "authType"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->setAuthType(Ljava/lang/String;)V

    .line 66
    const-string v0, "AccountLogReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "accInfo:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {p1, v7}, Lcom/huawei/hicloud/photosharesdk/api/AccountSettings;->logOnSetting(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;)I

    .line 70
    const/16 v0, 0xfa4

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendSwitchChange(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 72
    .end local v1           #isOpenPhoto:Z
    .end local v2           #isOpenShare:Z
    .end local v3           #is3Gdl:Z
    .end local v7           #accInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;
    :cond_2
    const-string v0, "com.huawei.hicloud.intent.action.HICLOUD_LOGOFF_ACTION"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v12, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "context"

    invoke-interface {v12, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    .line 78
    .local v10, executorService:Ljava/util/concurrent/ExecutorService;
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/broadcast/receiver/AccountLogReceiver$AccountLogReceiverCallable;

    invoke-direct {v0, v12}, Lcom/huawei/hicloud/photosharesdk/broadcast/receiver/AccountLogReceiver$AccountLogReceiverCallable;-><init>(Ljava/lang/Object;)V

    invoke-interface {v10, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v11

    .line 82
    .local v11, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    const-wide/16 v4, 0xfa0

    :try_start_0
    invoke-static {v11, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/call/FutureTool;->get(Ljava/util/concurrent/Future;J)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_1
    :try_start_1
    invoke-interface {v10}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    :goto_2
    const/16 v0, 0xfa5

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendSwitchChange(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 84
    :catch_0
    move-exception v9

    .line 87
    .local v9, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v4, "logOffSetting"

    invoke-static {v0, v4, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 94
    .end local v9           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 97
    .restart local v9       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v4, "logOffSetting"

    invoke-static {v0, v4, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method
