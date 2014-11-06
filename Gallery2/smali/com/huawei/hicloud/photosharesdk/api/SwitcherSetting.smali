.class public Lcom/huawei/hicloud/photosharesdk/api/SwitcherSetting;
.super Ljava/lang/Object;
.source "SwitcherSetting.java"


# static fields
.field public static final BIG_PHOTO_AUTO_DOWNLOAD_SWITCHER:Ljava/lang/String; = "isBigPhotoAutoDownload"

.field public static final PHOTOSWITCHER:Ljava/lang/String; = "isOpenPhoto"

.field public static final RECSWITCHER:Ljava/lang/String; = "isSwitchRecOn"

.field public static final S3GDLSWITCHER:Ljava/lang/String; = "is3Gdl"

.field public static final SHARESWITCHER:Ljava/lang/String; = "isOpenShare"

.field private static final SUCCESS_CODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SwitcherSetting"

.field public static final TIMERSWITCHER:Ljava/lang/String; = "isTimer"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 192
    return-void
.end method

.method public static getSwitcher(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "switcherType"

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, ret:Z
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->getSwitchInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    move-result-object v1

    .line 139
    .local v1, si:Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;
    const-string v2, "isOpenPhoto"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->getPhotoStreamSwitch()Z

    move-result v0

    .line 152
    :cond_0
    :goto_0
    return v0

    .line 141
    :cond_1
    const-string v2, "isOpenShare"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->getSharePhotoSwitch()Z

    move-result v0

    goto :goto_0

    .line 143
    :cond_2
    const-string v2, "is3Gdl"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 144
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->get3GAllowSwitch()Z

    move-result v0

    goto :goto_0

    .line 145
    :cond_3
    const-string v2, "isTimer"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 146
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->getTimerSwitch()Z

    move-result v0

    goto :goto_0

    .line 147
    :cond_4
    const-string v2, "isSwitchRecOn"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 148
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->getSwitchRecOn()Z

    move-result v0

    goto :goto_0

    .line 149
    :cond_5
    const-string v2, "isBigPhotoAutoDownload"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->isBigPhotoAutoDownload()Z

    move-result v0

    goto :goto_0
.end method

.method public static getSwitcherForUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, ret:Ljava/lang/String;
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->getSwitchInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    move-result-object v1

    .line 166
    .local v1, si:Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 167
    return-object v0
.end method

.method public static getTimerPeriod(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 179
    const-wide/16 v0, 0x0

    .line 180
    .local v0, ret:J
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->getSwitchInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    move-result-object v2

    .line 181
    .local v2, si:Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->getTimerSwitch()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->getPeriod()J

    move-result-wide v0

    .line 184
    :cond_0
    return-wide v0
.end method

.method public static setSwitcher(Landroid/content/Context;ZZZZJ)I
    .locals 5
    .parameter "context"
    .parameter "isOpenPhoto"
    .parameter "isOpenShare"
    .parameter "is3Gdl"
    .parameter "isTimer"
    .parameter "period"

    .prologue
    .line 72
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 74
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "isOpenPhoto="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isOpenShare="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 75
    const-string v3, ", is3Gdl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isTimer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", period="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 76
    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    const-string v2, "SwitcherSetting"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.huawei.hicloud.intent.action.PHOTOSTREAM_SWITCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "isPhotoStreamOn"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    const-string v2, "isSharePhotoOn"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    const-string v2, "is3GAllowOn"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->getInstance()Lcom/huawei/hicloud/photosharesdk3/bi/Report;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->addSwitchData(Landroid/content/Context;Landroid/content/Intent;)V

    .line 85
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    const-string v4, "Report setSwitcher addSwitchData."

    invoke-static {v2, v3, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static/range {p0 .. p6}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->updateSwitchInfo(Landroid/content/Context;ZZZZJ)V

    .line 96
    const/4 v2, 0x0

    return v2
.end method

.method public static setSwitcherRec(Landroid/content/Context;ZLjava/lang/String;Z)I
    .locals 3
    .parameter "context"
    .parameter "isOpenRec"
    .parameter "httpUserAgent"
    .parameter "isBigPhotoAutoDownload"

    .prologue
    .line 114
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 117
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "isOpenRec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",httpUserAgent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 118
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isBigPhotoAutoDownload="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, "SwitcherSetting"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->updateSwitchInfoRec(Landroid/content/Context;ZLjava/lang/String;Z)V

    .line 123
    const/4 v1, 0x0

    return v1
.end method
