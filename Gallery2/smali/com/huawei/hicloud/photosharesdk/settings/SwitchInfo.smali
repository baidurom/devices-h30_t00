.class public Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;
.super Ljava/lang/Object;
.source "SwitchInfo.java"


# instance fields
.field private is3GAllowOn:Z

.field private isBigPhotoAutoDownload:Z

.field private isPhotoStreamOn:Z

.field private isSharePhotoOn:Z

.field private isSwitchRecOn:Z

.field private isTimerOn:Z

.field private period:J

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get3GAllowSwitch()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->is3GAllowOn:Z

    return v0
.end method

.method public getPeriod()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->period:J

    return-wide v0
.end method

.method public getPhotoStreamSwitch()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->isPhotoStreamOn:Z

    return v0
.end method

.method public getSharePhotoSwitch()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->isSharePhotoOn:Z

    return v0
.end method

.method public getSwitchRecOn()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->isSwitchRecOn:Z

    return v0
.end method

.method public getTimerSwitch()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->isTimerOn:Z

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public isBigPhotoAutoDownload()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->isBigPhotoAutoDownload:Z

    return v0
.end method

.method public set3GAllowSwitch(Z)V
    .locals 0
    .parameter "is3GAllowOn"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->is3GAllowOn:Z

    .line 88
    return-void
.end method

.method public setBigPhotoDownload(Z)V
    .locals 0
    .parameter "isBigPhotoAutoDownload"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->isBigPhotoAutoDownload:Z

    .line 124
    return-void
.end method

.method public setPeriod(J)V
    .locals 0
    .parameter "period"

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->period:J

    .line 104
    return-void
.end method

.method public setPhotoStreamSwitch(Z)V
    .locals 0
    .parameter "isPhotoStreamOn"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->isPhotoStreamOn:Z

    .line 72
    return-void
.end method

.method public setSharePhotoSwitch(Z)V
    .locals 0
    .parameter "isSharePhotoOn"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->isSharePhotoOn:Z

    .line 80
    return-void
.end method

.method public setSwitchRecOn(Z)V
    .locals 0
    .parameter "isSwitchRecOn"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->isSwitchRecOn:Z

    .line 114
    return-void
.end method

.method public setTimerSwitch(Z)V
    .locals 0
    .parameter "isTimerOn"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->isTimerOn:Z

    .line 96
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0
    .parameter "userAgent"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->userAgent:Ljava/lang/String;

    .line 64
    return-void
.end method
