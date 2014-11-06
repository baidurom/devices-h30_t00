.class public Lcom/android/internal/telephony/ChrCommonInfo;
.super Ljava/lang/Object;
.source "ChrCommonInfo.java"


# static fields
.field protected static final NETWORK_TYPE_CDMA:I = 0x2

.field protected static final NETWORK_TYPE_EVDO:I = 0x4

.field protected static final NETWORK_TYPE_GSM:I = 0x0

.field protected static final NETWORK_TYPE_LTE:I = 0x3

.field protected static final NETWORK_TYPE_UMTS:I = 0x1

.field protected static final NETWORK_TYPE_UNKWON:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getChipsetType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, stringtmp:Ljava/lang/String;
    const-string v1, "ro.board.platform"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string v1, "k3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const-string v1, "HISILICON"

    .line 69
    :goto_0
    return-object v1

    .line 58
    :cond_0
    const-string v1, "mtk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    const-string v1, "MTK"

    goto :goto_0

    .line 63
    :cond_1
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    const-string v1, "ro.mediatek.platform"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 66
    const-string v1, "MTK"

    goto :goto_0

    .line 69
    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method private getProductName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    const-string v0, "ro.build.product"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSoftwareVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    const-string v0, "ro.build.realversion.id"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTime()Landroid/text/format/Time;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 74
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 75
    return-object v0
.end method


# virtual methods
.method public getBaseID()I
    .locals 1

    .prologue
    .line 191
    const/4 v0, -0x1

    return v0
.end method

.method public getBaseLat()I
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public getBaseLong()I
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public getChannel()I
    .locals 1

    .prologue
    .line 206
    const/4 v0, -0x1

    return v0
.end method

.method public getChrComHead()Lcom/huawei/device/chrlog/CSegCOMHEAD;
    .locals 3

    .prologue
    .line 103
    new-instance v0, Lcom/huawei/device/chrlog/CSegCOMHEAD;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/CSegCOMHEAD;-><init>()V

    .line 105
    .local v0, ComHeadModel:Lcom/huawei/device/chrlog/CSegCOMHEAD;
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegCOMHEAD;->enDeviceIDType1:Lcom/huawei/device/chrlog/ENCDeviceIDType1;

    const-string v2, "IMEI"

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/ENCDeviceIDType1;->setValue(Ljava/lang/String;)V

    .line 106
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegCOMHEAD;->enDeviceIDType2:Lcom/huawei/device/chrlog/ENCDeviceIDType2;

    const-string v2, "IMEI"

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/ENCDeviceIDType2;->setValue(Ljava/lang/String;)V

    .line 107
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegCOMHEAD;->strIMEIorMEID1:Lcom/huawei/device/chrlog/LogString;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/LogString;->setValue(Ljava/lang/String;)V

    .line 108
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegCOMHEAD;->strIMEIorMEID2:Lcom/huawei/device/chrlog/LogString;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/LogString;->setValue(Ljava/lang/String;)V

    .line 157
    return-object v0
.end method

.method public getChrFileHead()Lcom/huawei/device/chrlog/CSegFILEHEAD;
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lcom/huawei/device/chrlog/CSegFILEHEAD;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/CSegFILEHEAD;-><init>()V

    .line 83
    .local v0, fileHeadModel:Lcom/huawei/device/chrlog/CSegFILEHEAD;
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->strProductName:Lcom/huawei/device/chrlog/LogString;

    invoke-direct {p0}, Lcom/android/internal/telephony/ChrCommonInfo;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/LogString;->setValue(Ljava/lang/String;)V

    .line 85
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->strSoftwareVersion:Lcom/huawei/device/chrlog/LogString;

    invoke-direct {p0}, Lcom/android/internal/telephony/ChrCommonInfo;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/LogString;->setValue(Ljava/lang/String;)V

    .line 86
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->enChipsetType:Lcom/huawei/device/chrlog/ENCChipsetType;

    invoke-direct {p0}, Lcom/android/internal/telephony/ChrCommonInfo;->getChipsetType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/ENCChipsetType;->setValue(Ljava/lang/String;)V

    .line 87
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->usYear:Lcom/huawei/device/chrlog/LogShort;

    invoke-direct {p0}, Lcom/android/internal/telephony/ChrCommonInfo;->getTime()Landroid/text/format/Time;

    move-result-object v2

    iget v2, v2, Landroid/text/format/Time;->year:I

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/LogShort;->setValue(I)V

    .line 88
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->ucMonth:Lcom/huawei/device/chrlog/LogByte;

    invoke-direct {p0}, Lcom/android/internal/telephony/ChrCommonInfo;->getTime()Landroid/text/format/Time;

    move-result-object v2

    iget v2, v2, Landroid/text/format/Time;->month:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/LogByte;->setValue(I)V

    .line 89
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->ucDay:Lcom/huawei/device/chrlog/LogByte;

    invoke-direct {p0}, Lcom/android/internal/telephony/ChrCommonInfo;->getTime()Landroid/text/format/Time;

    move-result-object v2

    iget v2, v2, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/LogByte;->setValue(I)V

    .line 90
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->ucHour:Lcom/huawei/device/chrlog/LogByte;

    invoke-direct {p0}, Lcom/android/internal/telephony/ChrCommonInfo;->getTime()Landroid/text/format/Time;

    move-result-object v2

    iget v2, v2, Landroid/text/format/Time;->hour:I

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/LogByte;->setValue(I)V

    .line 91
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->ucMinute:Lcom/huawei/device/chrlog/LogByte;

    invoke-direct {p0}, Lcom/android/internal/telephony/ChrCommonInfo;->getTime()Landroid/text/format/Time;

    move-result-object v2

    iget v2, v2, Landroid/text/format/Time;->minute:I

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/LogByte;->setValue(I)V

    .line 92
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->ucSecond:Lcom/huawei/device/chrlog/LogByte;

    invoke-direct {p0}, Lcom/android/internal/telephony/ChrCommonInfo;->getTime()Landroid/text/format/Time;

    move-result-object v2

    iget v2, v2, Landroid/text/format/Time;->second:I

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/LogByte;->setValue(I)V

    .line 93
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->usTimeZone:Lcom/huawei/device/chrlog/LogShort;

    const/16 v2, 0x1e0

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/LogShort;->setValue(I)V

    .line 95
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->strnoExplain:Lcom/huawei/device/chrlog/LogString;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/LogString;->setValue(Ljava/lang/String;)V

    .line 98
    return-object v0
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public getEci()I
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public getLac()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public getMCC()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public getMNC()I
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkId()I
    .locals 1

    .prologue
    .line 197
    const/4 v0, -0x1

    return v0
.end method

.method public getNetworkRAT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const-string v0, ""

    return-object v0
.end method

.method public getRac()I
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public getSignalQuality()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, -0x1

    return v0
.end method

.method public getSignalStrength()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, -0x1

    return v0
.end method

.method public getSystemID()I
    .locals 1

    .prologue
    .line 194
    const/4 v0, -0x1

    return v0
.end method

.method public getTac()I
    .locals 1

    .prologue
    .line 188
    const/4 v0, -0x1

    return v0
.end method
