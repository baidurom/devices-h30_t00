.class public Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;
.super Lcom/android/internal/telephony/ChrCommonInfo;
.source "GsmPhoneChrCommonInfo.java"


# instance fields
.field private mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/internal/telephony/ChrCommonInfo;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 36
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 37
    return-void
.end method

.method private getNetworkType()I
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 84
    .local v1, telephony:Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 88
    .local v0, networkType:I
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeGemini(I)I

    move-result v0

    .line 90
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_1
    :pswitch_0
    return v0

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 93
    :pswitch_1
    const/4 v0, 0x0

    .line 94
    goto :goto_1

    .line 100
    :pswitch_2
    const/4 v0, 0x1

    .line 101
    goto :goto_1

    .line 103
    :pswitch_3
    const/4 v0, 0x3

    .line 104
    goto :goto_1

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 177
    .local v0, ss:Landroid/telephony/ServiceState;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 180
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private initCellLoc()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 208
    :cond_0
    return-void
.end method


# virtual methods
.method public getCid()I
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->initCellLoc()V

    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEci()I
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public getLac()I
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->initCellLoc()V

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMCC()I
    .locals 5

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, operatorNumeric:Ljava/lang/String;
    const/4 v1, 0x0

    .line 151
    .local v1, mcc:I
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    .line 153
    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 159
    :cond_0
    :goto_0
    return v1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMNC()I
    .locals 5

    .prologue
    .line 163
    const/4 v1, 0x0

    .line 164
    .local v1, mnc:I
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, operatorNumeric:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    .line 167
    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 172
    :cond_0
    :goto_0
    return v1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNetworkRAT()Ljava/lang/String;
    .locals 4

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, rtString:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 116
    .local v2, telephony:Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 120
    .local v0, networkType:I
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeGemini(I)I

    move-result v0

    .line 122
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 142
    :pswitch_0
    const-string v1, "UNKNOW"

    .line 145
    :goto_1
    return-object v1

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 124
    :pswitch_1
    const-string v1, "GSM_EDGE"

    .line 125
    goto :goto_1

    .line 127
    :pswitch_2
    const-string v1, "GSM_GPRS"

    .line 128
    goto :goto_1

    .line 130
    :pswitch_3
    const-string v1, "UMTS"

    .line 131
    goto :goto_1

    .line 136
    :pswitch_4
    const-string v1, "UMTS_HSPA"

    .line 137
    goto :goto_1

    .line 139
    :pswitch_5
    const-string v1, "LTE"

    .line 140
    goto :goto_1

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getRac()I
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public getSignalQuality()I
    .locals 3

    .prologue
    .line 62
    const/4 v1, -0x1

    .line 64
    .local v1, signalQuality:I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    .line 65
    .local v0, sig:Landroid/telephony/SignalStrength;
    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->getNetworkType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 80
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 68
    :pswitch_1
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmBitErrorRate()I

    move-result v1

    .line 69
    goto :goto_0

    .line 71
    :pswitch_2
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmEcn0Qdbm()I

    move-result v1

    .line 72
    goto :goto_0

    .line 74
    :pswitch_3
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v1

    .line 75
    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getSignalStrength()I
    .locals 3

    .prologue
    .line 40
    const/16 v1, 0xff

    .line 42
    .local v1, signalStrength:I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    .line 43
    .local v0, sig:Landroid/telephony/SignalStrength;
    if-eqz v0, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->getNetworkType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 58
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    return v2

    .line 46
    :pswitch_1
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 47
    goto :goto_0

    .line 49
    :pswitch_2
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmRscpQdbm()I

    move-result v1

    .line 50
    goto :goto_0

    .line 52
    :pswitch_3
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v1

    .line 53
    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getTac()I
    .locals 1

    .prologue
    .line 202
    const/4 v0, -0x1

    return v0
.end method
