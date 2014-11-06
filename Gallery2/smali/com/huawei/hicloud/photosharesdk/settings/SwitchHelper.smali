.class public Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;
.super Ljava/lang/Object;
.source "SwitchHelper.java"


# static fields
.field private static volatile switchInfo:Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearSwitchInfo(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 101
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$DirHelpUtil$SwitchHelperUtil;->clearSwitchInfoInFile(Landroid/content/Context;)V

    .line 102
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->destory()V

    .line 103
    return-void
.end method

.method public static destory()V
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->switchInfo:Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->switchInfo:Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    .line 93
    :cond_0
    return-void
.end method

.method public static getSwitchInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;
    .locals 2
    .parameter "context"

    .prologue
    .line 32
    const-class v1, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->switchInfo:Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    if-nez v0, :cond_0

    .line 34
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$DirHelpUtil$SwitchHelperUtil;->readSwitchInfoFromFile(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    move-result-object v0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->switchInfo:Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->switchInfo:Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static update3GAllowSwitch(Ljava/lang/Boolean;Landroid/content/Context;)V
    .locals 3
    .parameter "b"
    .parameter "context"

    .prologue
    .line 77
    const-string v0, "SwitchHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Report 3GAllow.b="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {p0, p1}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$DirHelpUtil$SwitchHelperUtil;->write3GAllowSwitchToFile(Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 79
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->switchInfo:Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->switchInfo:Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->set3GAllowSwitch(Z)V

    .line 82
    :cond_0
    return-void
.end method

.method public static updatePhotoShareSwitch(Ljava/lang/Boolean;Landroid/content/Context;)V
    .locals 3
    .parameter "b"
    .parameter "context"

    .prologue
    .line 69
    const-string v0, "SwitchHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Report PhotoShare.b="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {p0, p1}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$DirHelpUtil$SwitchHelperUtil;->writePhotoShareSwitchToFile(Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 71
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->switchInfo:Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->switchInfo:Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->setSharePhotoSwitch(Z)V

    .line 74
    :cond_0
    return-void
.end method

.method public static updatePhotoStreamSwitch(Ljava/lang/Boolean;Landroid/content/Context;)V
    .locals 3
    .parameter "b"
    .parameter "context"

    .prologue
    .line 61
    const-string v0, "SwitchHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Report PhotoStream.b="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {p0, p1}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$DirHelpUtil$SwitchHelperUtil;->writePhotoStreamSwitchToFile(Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 63
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->switchInfo:Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->switchInfo:Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->setPhotoStreamSwitch(Z)V

    .line 66
    :cond_0
    return-void
.end method

.method public static updateSwitchInfo(Landroid/content/Context;ZZZZJ)V
    .locals 4
    .parameter "context"
    .parameter "isPhotoStreamOn"
    .parameter "isSharePhotoOn"
    .parameter "is3GAllowOn"
    .parameter "isTimerOn"
    .parameter "period"

    .prologue
    .line 48
    const-string v1, "SwitchHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Report SwitchInfo. isPhotoStreamOn="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",isSharePhotoOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 49
    const-string v3, ",is3GAllowOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;-><init>()V

    .line 51
    .local v0, switchInfo_temp:Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;
    invoke-virtual {v0, p1}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->setPhotoStreamSwitch(Z)V

    .line 52
    invoke-virtual {v0, p2}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->setSharePhotoSwitch(Z)V

    .line 53
    invoke-virtual {v0, p3}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->set3GAllowSwitch(Z)V

    .line 54
    invoke-virtual {v0, p4}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->setTimerSwitch(Z)V

    .line 55
    invoke-virtual {v0, p5, p6}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->setPeriod(J)V

    .line 56
    invoke-static {v0, p0}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->updateSwitchInfo(Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public static updateSwitchInfo(Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;Landroid/content/Context;)V
    .locals 0
    .parameter "switchInfo"
    .parameter "context"

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$DirHelpUtil$SwitchHelperUtil;->writeSwitchInfoToFile(Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;Landroid/content/Context;)V

    .line 43
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->destory()V

    .line 44
    return-void
.end method

.method public static updateSwitchInfoRec(Landroid/content/Context;ZLjava/lang/String;Z)V
    .locals 3
    .parameter "context"
    .parameter "isSwitchRecOn"
    .parameter "userAgent"
    .parameter "isBigPhotoAutoDownload"

    .prologue
    .line 120
    const-string v0, "SwitchHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateSwitchInfoRec,isSwitchRecOn: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 121
    const-string v2, ",isBigPhotoAutoDownload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {p1, p2, p0, p3}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$DirHelpUtil$SwitchHelperUtil;->writeSwitchInfoRecToFile(ZLjava/lang/String;Landroid/content/Context;Z)V

    .line 123
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->switchInfo:Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->switchInfo:Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    invoke-virtual {v0, p1}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->setSwitchRecOn(Z)V

    .line 125
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->switchInfo:Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    invoke-virtual {v0, p2}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->setUserAgent(Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->switchInfo:Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    invoke-virtual {v0, p3}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->setBigPhotoDownload(Z)V

    .line 128
    :cond_0
    return-void
.end method
