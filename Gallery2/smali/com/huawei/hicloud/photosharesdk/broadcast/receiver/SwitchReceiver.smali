.class public Lcom/huawei/hicloud/photosharesdk/broadcast/receiver/SwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SwitchReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SwitchReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, action:Ljava/lang/String;
    const-string v3, "SwitchReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "action-->"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1

    .line 49
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "4"

    const-string v5, "ApplicationContext.getContext() null"

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->getInstance()Lcom/huawei/hicloud/photosharesdk3/bi/Report;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->addSwitchData(Landroid/content/Context;Landroid/content/Intent;)V

    .line 55
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    const-string v5, "Report addSwitchData."

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v3, "com.huawei.hicloud.intent.action.PHOTOSHARE_SWITCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 58
    const-string v3, "isSharePhotoOn"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 60
    .local v1, isSwitchOn:Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->updatePhotoShareSwitch(Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 62
    if-eqz v1, :cond_3

    .line 63
    const/16 v3, 0xfa9

    invoke-static {p1, v3}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendSwitchChange(Landroid/content/Context;I)V

    .line 65
    const-string v3, "SwitchReceiver"

    const-string v4, "share open."

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 67
    const-string v4, "isSwitchRecOn"

    .line 66
    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/api/SwitcherSetting;->getSwitcher(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 68
    .local v2, isSwitchRecOn:Z
    if-eqz v2, :cond_2

    .line 70
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v3

    const-string v4, "/PhotoshareShared"

    invoke-virtual {v3, v8, v4, v6}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->startSync(ILjava/lang/String;I)V

    .line 73
    :cond_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v3

    .line 74
    const-string v4, "/PhotoshareReceived"

    .line 73
    invoke-virtual {v3, v9, v4, v6}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->startSync(ILjava/lang/String;I)V

    goto :goto_0

    .line 76
    .end local v2           #isSwitchRecOn:Z
    :cond_3
    const-string v3, "SwitchReceiver"

    const-string v4, "share close."

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/16 v3, 0xfaa

    invoke-static {p1, v3}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendSwitchChange(Landroid/content/Context;I)V

    .line 78
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->pauseSync(I)V

    goto :goto_0

    .line 80
    .end local v1           #isSwitchOn:Z
    :cond_4
    const-string v3, "com.huawei.hicloud.intent.action.PHOTOSTREAM_SWITCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 81
    const-string v3, "isPhotoStreamOn"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 83
    .restart local v1       #isSwitchOn:Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->updatePhotoStreamSwitch(Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 84
    if-eqz v1, :cond_5

    .line 85
    const-string v3, "SwitchReceiver"

    const-string v4, "myphoto open."

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoStreamController;->openPhotoStream(Landroid/content/Context;)V

    .line 87
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v3

    .line 88
    const-string v4, "/Photoshare/myphoto"

    .line 87
    invoke-virtual {v3, v6, v4, v6}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->startSync(ILjava/lang/String;I)V

    .line 90
    const/16 v3, 0xfa6

    invoke-static {p1, v3}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendSwitchChange(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 92
    :cond_5
    const-string v3, "SwitchReceiver"

    const-string v4, "myphoto close."

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoStreamController;->closePhotoStream(Landroid/content/Context;)V

    .line 94
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->pauseSync(I)V

    .line 96
    const/16 v3, 0xfa7

    invoke-static {p1, v3}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendSwitchChange(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 98
    .end local v1           #isSwitchOn:Z
    :cond_6
    const-string v3, "com.huawei.hicloud.intent.action.3GALLOW_SWITCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    const-string v3, "is3GAllowOn"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 101
    .restart local v1       #isSwitchOn:Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->update3GAllowSwitch(Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 103
    if-eqz v1, :cond_7

    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->getSwitchInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->getPhotoStreamSwitch()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 105
    const-string v3, "SwitchReceiver"

    const-string v4, "3g open and myphoto open."

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoStreamController;->openPhotoStream(Landroid/content/Context;)V

    .line 107
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v3

    .line 108
    const-string v4, "/Photoshare/myphoto"

    .line 107
    invoke-virtual {v3, v6, v4, v6}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->startSync(ILjava/lang/String;I)V

    .line 114
    :cond_7
    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->getSwitchInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->getSharePhotoSwitch()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    const-string v3, "SwitchReceiver"

    const-string v4, "3g open and share open."

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v3

    .line 120
    const-string v4, "/PhotoshareShared"

    .line 119
    invoke-virtual {v3, v8, v4, v6}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->startSync(ILjava/lang/String;I)V

    .line 121
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v3

    .line 122
    const-string v4, "/PhotoshareReceived"

    .line 121
    invoke-virtual {v3, v9, v4, v6}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->startSync(ILjava/lang/String;I)V

    goto/16 :goto_0
.end method
