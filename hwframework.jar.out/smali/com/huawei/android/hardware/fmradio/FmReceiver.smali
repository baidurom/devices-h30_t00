.class public Lcom/huawei/android/hardware/fmradio/FmReceiver;
.super Lcom/huawei/android/hardware/fmradio/FmTransceiver;
.source "FmReceiver.java"


# static fields
.field public static final FM_RX_AUDIO_MODE_MONO:I = 0x1

.field public static final FM_RX_AUDIO_MODE_STEREO:I = 0x0

.field public static final FM_RX_DWELL_PERIOD_1S:I = 0x1

.field public static final FM_RX_DWELL_PERIOD_2S:I = 0x2

.field public static final FM_RX_DWELL_PERIOD_3S:I = 0x3

.field public static final FM_RX_DWELL_PERIOD_4S:I = 0x4

.field public static final FM_RX_DWELL_PERIOD_5S:I = 0x5

.field public static final FM_RX_DWELL_PERIOD_6S:I = 0x6

.field public static final FM_RX_DWELL_PERIOD_7S:I = 0x7

.field public static final FM_RX_LOW_POWER_MODE:I = 0x1

.field public static final FM_RX_MUTE:I = 0x1

.field public static final FM_RX_NORMAL_POWER_MODE:I = 0x0

.field public static final FM_RX_RDS_GRP_AF_EBL:I = 0x4

.field public static final FM_RX_RDS_GRP_PS_EBL:I = 0x2

.field public static final FM_RX_RDS_GRP_PS_SIMPLE_EBL:I = 0x10

.field public static final FM_RX_RDS_GRP_RT_EBL:I = 0x1

.field private static final FM_RX_RSSI_LEVEL_STRONG:I = -0x60

.field private static final FM_RX_RSSI_LEVEL_VERY_STRONG:I = -0x5a

.field private static final FM_RX_RSSI_LEVEL_VERY_WEAK:I = -0x69

.field private static final FM_RX_RSSI_LEVEL_WEAK:I = -0x64

.field public static final FM_RX_SCREEN_OFF_MODE:I = 0x0

.field public static final FM_RX_SCREEN_ON_MODE:I = 0x1

.field public static final FM_RX_SEARCHDIR_DOWN:I = 0x0

.field public static final FM_RX_SEARCHDIR_UP:I = 0x1

.field public static final FM_RX_SIGNAL_STRENGTH_STRONG:I = 0x2

.field public static final FM_RX_SIGNAL_STRENGTH_VERY_STRONG:I = 0x3

.field public static final FM_RX_SIGNAL_STRENGTH_VERY_WEAK:I = 0x0

.field public static final FM_RX_SIGNAL_STRENGTH_WEAK:I = 0x1

.field public static final FM_RX_SRCHLIST_MAX_STATIONS:I = 0xc

.field public static final FM_RX_SRCHLIST_MODE_STRONG:I = 0x2

.field public static final FM_RX_SRCHLIST_MODE_STRONGEST:I = 0x8

.field public static final FM_RX_SRCHLIST_MODE_WEAK:I = 0x3

.field public static final FM_RX_SRCHLIST_MODE_WEAKEST:I = 0x9

.field public static final FM_RX_SRCHRDS_MODE_SCAN_PTY:I = 0x5

.field public static final FM_RX_SRCHRDS_MODE_SEEK_AF:I = 0x7

.field public static final FM_RX_SRCHRDS_MODE_SEEK_PI:I = 0x6

.field public static final FM_RX_SRCHRDS_MODE_SEEK_PTY:I = 0x4

.field public static final FM_RX_SRCH_MODE_SCAN:I = 0x1

.field public static final FM_RX_SRCH_MODE_SEEK:I = 0x0

.field public static final FM_RX_UNMUTE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FMRadio"

.field private static final TAVARUA_BUF_AF_LIST:I = 0x5

.field private static final TAVARUA_BUF_EVENTS:I = 0x1

.field private static final TAVARUA_BUF_MAX:I = 0x6

.field private static final TAVARUA_BUF_PS_RDS:I = 0x3

.field private static final TAVARUA_BUF_RAW_RDS:I = 0x4

.field private static final TAVARUA_BUF_RT_RDS:I = 0x2

.field private static final TAVARUA_BUF_SRCH_LIST:I = 0x0

.field private static final V4L2_CID_PRIVATE_BASE:I = 0x8000000

.field private static final V4L2_CID_PRIVATE_TAVARUA_SIGNAL_TH:I = 0x8000008


# instance fields
.field private mCallback:Lcom/huawei/android/hardware/fmradio/FmRxEvCallbacksAdaptor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/huawei/android/hardware/fmradio/FmTransceiver;-><init>()V

    .line 280
    new-instance v0, Lcom/huawei/android/hardware/fmradio/FmRxControls;

    invoke-direct {v0}, Lcom/huawei/android/hardware/fmradio/FmRxControls;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mControl:Lcom/huawei/android/hardware/fmradio/FmRxControls;

    .line 281
    new-instance v0, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;

    sget v1, Lcom/huawei/android/hardware/fmradio/FmReceiver;->sFd:I

    invoke-direct {v0, v1}, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mRdsData:Lcom/huawei/android/hardware/fmradio/FmRxRdsData;

    .line 282
    new-instance v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner;

    invoke-direct {v0}, Lcom/huawei/android/hardware/fmradio/FmRxEventListner;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mRxEvents:Lcom/huawei/android/hardware/fmradio/FmRxEventListner;

    .line 283
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/huawei/android/hardware/fmradio/FmRxEvCallbacksAdaptor;)V
    .locals 1
    .parameter "devicePath"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/huawei/android/hardware/fmradio/FmTransceiver;-><init>()V

    .line 296
    new-instance v0, Lcom/huawei/android/hardware/fmradio/FmRxControls;

    invoke-direct {v0}, Lcom/huawei/android/hardware/fmradio/FmRxControls;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mControl:Lcom/huawei/android/hardware/fmradio/FmRxControls;

    .line 297
    new-instance v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner;

    invoke-direct {v0}, Lcom/huawei/android/hardware/fmradio/FmRxEventListner;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mRxEvents:Lcom/huawei/android/hardware/fmradio/FmRxEventListner;

    .line 300
    iput-object p2, p0, Lcom/huawei/android/hardware/fmradio/FmReceiver;->mCallback:Lcom/huawei/android/hardware/fmradio/FmRxEvCallbacksAdaptor;

    .line 301
    return-void
.end method


# virtual methods
.method public cancelSearch()Z
    .locals 2

    .prologue
    .line 910
    iget-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mControl:Lcom/huawei/android/hardware/fmradio/FmRxControls;

    sget v1, Lcom/huawei/android/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/hardware/fmradio/FmRxControls;->cancelSearch(I)V

    .line 911
    const/4 v0, 0x1

    return v0
.end method

.method public disable()Z
    .locals 2

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/huawei/android/hardware/fmradio/FmReceiver;->unregisterClient()Z

    move-result v0

    .line 444
    .local v0, status:Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 445
    invoke-super {p0}, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->disable()Z

    move-result v0

    .line 451
    :goto_0
    return v0

    .line 448
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enable(Lcom/huawei/android/hardware/fmradio/FmConfig;)Z
    .locals 3
    .parameter "configSettings"

    .prologue
    const/4 v1, 0x1

    .line 408
    invoke-super {p0, p1, v1}, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->enable(Lcom/huawei/android/hardware/fmradio/FmConfig;I)Z

    move-result v0

    .line 410
    .local v0, status:Z
    if-ne v0, v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/huawei/android/hardware/fmradio/FmReceiver;->mCallback:Lcom/huawei/android/hardware/fmradio/FmRxEvCallbacksAdaptor;

    invoke-virtual {p0, v1}, Lcom/huawei/android/hardware/fmradio/FmReceiver;->registerClient(Lcom/huawei/android/hardware/fmradio/FmRxEvCallbacks;)Z

    move-result v0

    .line 413
    new-instance v1, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;

    sget v2, Lcom/huawei/android/hardware/fmradio/FmReceiver;->sFd:I

    invoke-direct {v1, v2}, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;-><init>(I)V

    iput-object v1, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mRdsData:Lcom/huawei/android/hardware/fmradio/FmRxRdsData;

    .line 418
    :goto_0
    return v0

    .line 416
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableAFjump(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1539
    iget-object v3, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mRdsData:Lcom/huawei/android/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v3, v2}, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->rdsOn(Z)I

    move-result v0

    .line 1541
    .local v0, re:I
    if-eqz v0, :cond_1

    .line 1549
    :cond_0
    :goto_0
    return v1

    .line 1544
    :cond_1
    iget-object v3, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mRdsData:Lcom/huawei/android/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v3, p1}, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->enableAFjump(Z)I

    move-result v0

    .line 1546
    if-nez v0, :cond_0

    move v1, v2

    .line 1547
    goto :goto_0
.end method

.method public getAFInfo()[I
    .locals 8

    .prologue
    const/16 v4, 0x28

    const/4 v7, 0x4

    .line 1186
    new-array v1, v4, [B

    .line 1187
    .local v1, buff:[B
    new-array v0, v4, [I

    .line 1190
    .local v0, AfList:[I
    sget v4, Lcom/huawei/android/hardware/fmradio/FmReceiver;->sFd:I

    const/4 v5, 0x5

    invoke-static {v4, v1, v5}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->getBufferNative(I[BI)I

    .line 1192
    aget-byte v4, v1, v7

    if-lez v4, :cond_0

    aget-byte v4, v1, v7

    const/16 v5, 0x19

    if-le v4, v5, :cond_2

    .line 1193
    :cond_0
    const/4 v0, 0x0

    .line 1209
    .end local v0           #AfList:[I
    :cond_1
    return-object v0

    .line 1195
    .restart local v0       #AfList:[I
    :cond_2
    sget v4, Lcom/huawei/android/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v4}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->getLowerBandNative(I)I

    move-result v3

    .line 1196
    .local v3, lowerBand:I
    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Low band "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AF_buff 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AF_buff 1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AF_buff 2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AF_buff 3: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AF_buff 4: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v1, v7

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    aget-byte v4, v1, v7

    if-ge v2, v4, :cond_1

    .line 1205
    add-int/lit8 v4, v2, 0x4

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    mul-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v3

    aput v4, v0, v2

    .line 1206
    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AF : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getAudioQuilty(I)I
    .locals 2
    .parameter "value"

    .prologue
    .line 1676
    sget v1, Lcom/huawei/android/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v1, p1}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->getAudioQuiltyNative(II)I

    move-result v0

    .line 1677
    .local v0, ret:I
    return v0
.end method

.method public getIntDet()I
    .locals 3

    .prologue
    .line 1611
    iget-object v1, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mControl:Lcom/huawei/android/hardware/fmradio/FmRxControls;

    sget v2, Lcom/huawei/android/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2}, Lcom/huawei/android/hardware/fmradio/FmRxControls;->IntDet(I)I

    move-result v0

    .line 1612
    .local v0, re:I
    return v0
.end method

.method public getIoverc()I
    .locals 3

    .prologue
    .line 1589
    iget-object v1, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mControl:Lcom/huawei/android/hardware/fmradio/FmRxControls;

    sget v2, Lcom/huawei/android/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2}, Lcom/huawei/android/hardware/fmradio/FmRxControls;->IovercControl(I)I

    move-result v0

    .line 1590
    .local v0, re:I
    return v0
.end method

.method public getPSInfo()Lcom/huawei/android/hardware/fmradio/FmRxRdsData;
    .locals 11

    .prologue
    const/4 v9, 0x3

    .line 1075
    const/16 v8, 0x40

    new-array v0, v8, [B

    .line 1076
    .local v0, buff:[B
    const/4 v5, 0x0

    .line 1077
    .local v5, piLower:I
    const/4 v4, 0x0

    .line 1079
    .local v4, piHigher:I
    sget v8, Lcom/huawei/android/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v8, v0, v9}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->getBufferNative(I[BI)I

    .line 1083
    aget-byte v8, v0, v9

    and-int/lit16 v5, v8, 0xff

    .line 1084
    const/4 v8, 0x2

    aget-byte v8, v0, v8

    and-int/lit16 v4, v8, 0xff

    .line 1085
    shl-int/lit8 v8, v4, 0x8

    or-int v3, v8, v5

    .line 1086
    .local v3, pi:I
    iget-object v8, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mRdsData:Lcom/huawei/android/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v8, v3}, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->setPrgmId(I)V

    .line 1087
    iget-object v8, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mRdsData:Lcom/huawei/android/hardware/fmradio/FmRxRdsData;

    const/4 v9, 0x1

    aget-byte v9, v0, v9

    and-int/lit8 v9, v9, 0x1f

    invoke-virtual {v8, v9}, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->setPrgmType(I)V

    .line 1088
    const/4 v8, 0x0

    aget-byte v8, v0, v8

    and-int/lit8 v2, v8, 0xf

    .line 1093
    .local v2, numOfPs:I
    :try_start_0
    new-instance v6, Ljava/lang/String;

    const/4 v8, 0x5

    mul-int/lit8 v9, v2, 0x8

    const-string v10, "UTF-8"

    invoke-direct {v6, v0, v8, v9, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1094
    .local v6, rdsStr:Ljava/lang/String;
    iget-object v8, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mRdsData:Lcom/huawei/android/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v8, v6}, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->setPrgmServices(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1101
    .end local v6           #rdsStr:Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mRdsData:Lcom/huawei/android/hardware/fmradio/FmRxRdsData;

    return-object v8

    .line 1095
    :catch_0
    move-exception v1

    .line 1096
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v8, "FMRadio"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UnsupportedEncodingException "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1097
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v7

    .line 1098
    .local v7, x:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v8, "FMRadio"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Number of PS names "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPowerMode()I
    .locals 2

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mControl:Lcom/huawei/android/hardware/fmradio/FmRxControls;

    sget v1, Lcom/huawei/android/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/hardware/fmradio/FmRxControls;->getPwrMode(I)I

    move-result v0

    return v0
.end method

.method public getRTInfo()Lcom/huawei/android/hardware/fmradio/FmRxRdsData;
    .locals 12

    .prologue
    const/4 v11, 0x2

    .line 1127
    const/16 v8, 0x78

    new-array v0, v8, [B

    .line 1128
    .local v0, buff:[B
    const/4 v4, 0x0

    .line 1129
    .local v4, piLower:I
    const/4 v3, 0x0

    .line 1131
    .local v3, piHigher:I
    sget v8, Lcom/huawei/android/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v8, v0, v11}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->getBufferNative(I[BI)I

    .line 1135
    const/4 v5, 0x0

    .line 1137
    .local v5, rdsStr:Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v6, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #rdsStr:Ljava/lang/String;
    .local v6, rdsStr:Ljava/lang/String;
    move-object v5, v6

    .line 1145
    .end local v6           #rdsStr:Ljava/lang/String;
    .restart local v5       #rdsStr:Ljava/lang/String;
    :goto_0
    const/4 v8, 0x3

    aget-byte v8, v0, v8

    and-int/lit16 v4, v8, 0xff

    .line 1146
    aget-byte v8, v0, v11

    and-int/lit16 v3, v8, 0xff

    .line 1147
    shl-int/lit8 v8, v3, 0x8

    or-int v2, v8, v4

    .line 1148
    .local v2, pi:I
    iget-object v8, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mRdsData:Lcom/huawei/android/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v8, v2}, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->setPrgmId(I)V

    .line 1149
    iget-object v8, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mRdsData:Lcom/huawei/android/hardware/fmradio/FmRxRdsData;

    const/4 v9, 0x1

    aget-byte v9, v0, v9

    and-int/lit8 v9, v9, 0x1f

    invoke-virtual {v8, v9}, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->setPrgmType(I)V

    .line 1152
    const/4 v8, 0x5

    const/4 v9, 0x0

    :try_start_1
    aget-byte v9, v0, v9

    add-int/lit8 v9, v9, 0x5

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1153
    iget-object v8, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mRdsData:Lcom/huawei/android/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v8, v5}, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->setRadioText(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1159
    :goto_1
    iget-object v8, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mRdsData:Lcom/huawei/android/hardware/fmradio/FmRxRdsData;

    return-object v8

    .line 1138
    .end local v2           #pi:I
    :catch_0
    move-exception v1

    .line 1139
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v8, "FMRadio"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UnsupportedEncodingException "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1155
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v2       #pi:I
    :catch_1
    move-exception v7

    .line 1157
    .local v7, x:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v8, "FMRadio"

    const-string v9, "StringIndexOutOfBoundsException ..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getRawRDS(I)[B
    .locals 6
    .parameter "numBlocks"

    .prologue
    const/4 v5, 0x0

    .line 1642
    mul-int/lit8 v3, p1, 0x3

    new-array v1, v3, [B

    .line 1645
    .local v1, rawRds:[B
    sget v3, Lcom/huawei/android/hardware/fmradio/FmReceiver;->sFd:I

    mul-int/lit8 v4, p1, 0x3

    invoke-static {v3, v1, v4}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->getRawRdsNative(I[BI)I

    move-result v2

    .line 1647
    .local v2, re:I
    mul-int/lit8 v3, p1, 0x3

    if-ne v2, v3, :cond_0

    .line 1657
    .end local v1           #rawRds:[B
    :goto_0
    return-object v1

    .line 1650
    .restart local v1       #rawRds:[B
    :cond_0
    if-gtz v2, :cond_1

    .line 1651
    const/4 v1, 0x0

    goto :goto_0

    .line 1653
    :cond_1
    new-array v0, v2, [B

    .line 1655
    .local v0, buff:[B
    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 1657
    goto :goto_0
.end method

.method public getRssi()I
    .locals 2

    .prologue
    .line 1567
    sget v1, Lcom/huawei/android/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v1}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->getRSSINative(I)I

    move-result v0

    .line 1569
    .local v0, rssi:I
    return v0
.end method

.method public getRssiLimit()[I
    .locals 2

    .prologue
    .line 1301
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 1303
    .local v0, rssiLimits:[I
    return-object v0

    .line 1301
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getSignalThreshold()I
    .locals 8

    .prologue
    const/16 v7, -0x60

    const/16 v6, -0x64

    .line 1336
    const/4 v2, 0x0

    .line 1337
    .local v2, threshold:I
    sget v3, Lcom/huawei/android/hardware/fmradio/FmReceiver;->sFd:I

    const v4, 0x8000008

    invoke-static {v3, v4}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .line 1338
    .local v0, rmssiThreshold:I
    const-string v3, "FMRadio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signal Threshhold: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    const/16 v3, -0x69

    if-ge v3, v0, :cond_0

    if-gt v0, v6, :cond_0

    .line 1342
    const/16 v1, -0x64

    .line 1357
    .local v1, signalStrength:I
    :goto_0
    sparse-switch v1, :sswitch_data_0

    .line 1376
    :goto_1
    return v2

    .line 1344
    .end local v1           #signalStrength:I
    :cond_0
    if-ge v6, v0, :cond_1

    if-gt v0, v7, :cond_1

    .line 1346
    const/16 v1, -0x60

    .restart local v1       #signalStrength:I
    goto :goto_0

    .line 1348
    .end local v1           #signalStrength:I
    :cond_1
    if-ge v7, v0, :cond_2

    .line 1350
    const/16 v1, -0x5a

    .restart local v1       #signalStrength:I
    goto :goto_0

    .line 1354
    .end local v1           #signalStrength:I
    :cond_2
    const/16 v1, -0x69

    .restart local v1       #signalStrength:I
    goto :goto_0

    .line 1360
    :sswitch_0
    const/4 v2, 0x0

    .line 1361
    goto :goto_1

    .line 1363
    :sswitch_1
    const/4 v2, 0x1

    .line 1364
    goto :goto_1

    .line 1366
    :sswitch_2
    const/4 v2, 0x2

    .line 1367
    goto :goto_1

    .line 1369
    :sswitch_3
    const/4 v2, 0x3

    .line 1370
    goto :goto_1

    .line 1357
    nop

    :sswitch_data_0
    .sparse-switch
        -0x69 -> :sswitch_0
        -0x64 -> :sswitch_1
        -0x60 -> :sswitch_2
        -0x5a -> :sswitch_3
    .end sparse-switch
.end method

.method public getTunedFrequency()I
    .locals 4

    .prologue
    .line 1041
    sget v1, Lcom/huawei/android/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v1}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->getFreqNative(I)I

    move-result v0

    .line 1043
    .local v0, frequency:I
    const-string v1, "FMRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFrequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    return v0
.end method

.method public registerClient(Lcom/huawei/android/hardware/fmradio/FmRxEvCallbacks;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 337
    invoke-super {p0, p1}, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->registerClient(Lcom/huawei/android/hardware/fmradio/FmRxEvCallbacks;)Z

    move-result v0

    .line 340
    .local v0, status:Z
    return v0
.end method

.method public registerRdsGroupProcessing(I)Z
    .locals 4
    .parameter "fmGrpsToProc"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1505
    iget-object v3, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mRdsData:Lcom/huawei/android/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v3, v2}, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->rdsOn(Z)I

    move-result v0

    .line 1507
    .local v0, re:I
    if-eqz v0, :cond_1

    .line 1515
    :cond_0
    :goto_0
    return v1

    .line 1510
    :cond_1
    iget-object v3, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mRdsData:Lcom/huawei/android/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v3, p1}, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->rdsOptions(I)I

    move-result v0

    .line 1512
    if-nez v0, :cond_0

    move v1, v2

    .line 1513
    goto :goto_0
.end method

.method public searchStationList(IIII)Z
    .locals 8
    .parameter "mode"
    .parameter "direction"
    .parameter "maximumStations"
    .parameter "pty"

    .prologue
    .line 840
    const/4 v6, 0x1

    .line 841
    .local v6, bStatus:Z
    const/4 v7, 0x0

    .line 843
    .local v7, re:I
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchStations: mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchStations: direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchStations: maximumStations "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchStations: pty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    .line 855
    const/4 v6, 0x0

    .line 857
    :cond_0
    if-ltz p3, :cond_1

    const/16 v0, 0xc

    if-le p3, v0, :cond_2

    .line 860
    :cond_1
    const/4 v6, 0x0

    .line 862
    :cond_2
    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    .line 865
    const/4 v6, 0x0

    .line 868
    :cond_3
    if-eqz v6, :cond_5

    .line 870
    const/16 v0, 0x8

    if-eq p1, v0, :cond_4

    const/16 v0, 0x9

    if-ne p1, v0, :cond_7

    .line 871
    :cond_4
    const/16 v0, 0x8

    if-ne p1, v0, :cond_6

    const/4 p1, 0x2

    .line 872
    :goto_0
    iget-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mControl:Lcom/huawei/android/hardware/fmradio/FmRxControls;

    sget v1, Lcom/huawei/android/hardware/fmradio/FmReceiver;->sFd:I

    const/4 v3, 0x0

    move v2, p1

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/android/hardware/fmradio/FmRxControls;->searchStationList(IIIII)I

    move-result v7

    .line 878
    :cond_5
    :goto_1
    if-nez v7, :cond_8

    .line 879
    const/4 v0, 0x1

    .line 881
    :goto_2
    return v0

    .line 871
    :cond_6
    const/4 p1, 0x3

    goto :goto_0

    .line 875
    :cond_7
    iget-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mControl:Lcom/huawei/android/hardware/fmradio/FmRxControls;

    sget v1, Lcom/huawei/android/hardware/fmradio/FmReceiver;->sFd:I

    move v2, p1

    move v3, p3

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/android/hardware/fmradio/FmRxControls;->searchStationList(IIIII)I

    move-result v7

    goto :goto_1

    .line 881
    :cond_8
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public searchStations(III)Z
    .locals 9
    .parameter "mode"
    .parameter "dwellPeriod"
    .parameter "direction"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 558
    const/4 v7, 0x1

    .line 560
    .local v7, bStatus:Z
    const-string v0, "FMRadio"

    const-string v1, "Basic search..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    if-eqz p1, :cond_0

    if-eq p1, v8, :cond_0

    .line 566
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid search mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v7, 0x0

    .line 569
    :cond_0
    if-lt p2, v8, :cond_1

    const/4 v0, 0x7

    if-le p2, v0, :cond_2

    .line 572
    :cond_1
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dwelling time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const/4 v7, 0x0

    .line 575
    :cond_2
    if-eqz p3, :cond_3

    if-eq p3, v8, :cond_3

    .line 578
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid search direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v7, 0x0

    .line 582
    :cond_3
    if-eqz v7, :cond_4

    .line 584
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchStations: mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "direction:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mControl:Lcom/huawei/android/hardware/fmradio/FmRxControls;

    sget v1, Lcom/huawei/android/hardware/fmradio/FmReceiver;->sFd:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/huawei/android/hardware/fmradio/FmRxControls;->searchStations(IIIIII)V

    .line 587
    :cond_4
    return v8
.end method

.method public searchStations(IIIII)Z
    .locals 9
    .parameter "mode"
    .parameter "dwellPeriod"
    .parameter "direction"
    .parameter "pty"
    .parameter "pi"

    .prologue
    const/4 v3, 0x7

    const/4 v8, 0x1

    .line 717
    const/4 v7, 0x1

    .line 719
    .local v7, bStatus:Z
    const-string v0, "FMRadio"

    const-string v1, "RDS search..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    if-eq p1, v3, :cond_0

    .line 728
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid search mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/4 v7, 0x0

    .line 731
    :cond_0
    if-lt p2, v8, :cond_1

    if-le p2, v3, :cond_2

    .line 734
    :cond_1
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dwelling time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const/4 v7, 0x0

    .line 737
    :cond_2
    if-eqz p3, :cond_3

    if-eq p3, v8, :cond_3

    .line 740
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid search direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/4 v7, 0x0

    .line 744
    :cond_3
    if-eqz v7, :cond_4

    .line 746
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchStations: mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchStations: dwellPeriod "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchStations: direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchStations: pty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchStations: pi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mControl:Lcom/huawei/android/hardware/fmradio/FmRxControls;

    sget v1, Lcom/huawei/android/hardware/fmradio/FmReceiver;->sFd:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/huawei/android/hardware/fmradio/FmRxControls;->searchStations(IIIIII)V

    .line 753
    :cond_4
    return v8
.end method

.method public setPowerMode(I)Z
    .locals 5
    .parameter "powerMode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1242
    if-ne p1, v1, :cond_0

    .line 1243
    iget-object v3, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mControl:Lcom/huawei/android/hardware/fmradio/FmRxControls;

    sget v4, Lcom/huawei/android/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v3, v4, v1}, Lcom/huawei/android/hardware/fmradio/FmRxControls;->setLowPwrMode(IZ)I

    move-result v0

    .line 1249
    .local v0, re:I
    :goto_0
    if-nez v0, :cond_1

    .line 1251
    :goto_1
    return v1

    .line 1246
    .end local v0           #re:I
    :cond_0
    iget-object v3, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mControl:Lcom/huawei/android/hardware/fmradio/FmRxControls;

    sget v4, Lcom/huawei/android/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v3, v4, v2}, Lcom/huawei/android/hardware/fmradio/FmRxControls;->setLowPwrMode(IZ)I

    move-result v0

    .restart local v0       #re:I
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1251
    goto :goto_1
.end method

.method public setRdsGroupOptions(IIZ)Z
    .locals 4
    .parameter "enRdsGrpsMask"
    .parameter "rdsBuffSize"
    .parameter "enRdsChangeFilter"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1435
    iget-object v3, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mRdsData:Lcom/huawei/android/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v3, v2}, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->rdsOn(Z)I

    move-result v0

    .line 1437
    .local v0, re:I
    if-eqz v0, :cond_1

    .line 1445
    :cond_0
    :goto_0
    return v1

    .line 1440
    :cond_1
    iget-object v3, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mRdsData:Lcom/huawei/android/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v3, p1, p2, p3}, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->rdsGrpOptions(IIZ)I

    move-result v0

    .line 1442
    if-nez v0, :cond_0

    move v1, v2

    .line 1443
    goto :goto_0
.end method

.method public setSignalThreshold(I)Z
    .locals 7
    .parameter "threshold"

    .prologue
    .line 966
    const/4 v0, 0x1

    .line 968
    .local v0, bStatus:Z
    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Signal Threshhold input: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    const/4 v3, 0x0

    .line 971
    .local v3, rssiLev:I
    packed-switch p1, :pswitch_data_0

    .line 987
    const/4 v0, 0x0

    .line 988
    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid threshold: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 999
    .end local v0           #bStatus:Z
    .local v1, bStatus:I
    :goto_0
    return v1

    .line 974
    .end local v1           #bStatus:I
    .restart local v0       #bStatus:Z
    :pswitch_0
    const/16 v3, -0x69

    .line 992
    :goto_1
    if-eqz v0, :cond_0

    .line 993
    sget v4, Lcom/huawei/android/hardware/fmradio/FmReceiver;->sFd:I

    const v5, 0x8000008

    invoke-static {v4, v5, v3}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v2

    .line 995
    .local v2, re:I
    if-eqz v2, :cond_0

    .line 996
    const/4 v0, 0x0

    .end local v2           #re:I
    :cond_0
    move v1, v0

    .line 999
    .restart local v1       #bStatus:I
    goto :goto_0

    .line 977
    .end local v1           #bStatus:I
    :pswitch_1
    const/16 v3, -0x64

    .line 978
    goto :goto_1

    .line 980
    :pswitch_2
    const/16 v3, -0x60

    .line 981
    goto :goto_1

    .line 983
    :pswitch_3
    const/16 v3, -0x5a

    .line 984
    goto :goto_1

    .line 971
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setStereoMode(Z)Z
    .locals 3
    .parameter "stereoEnable"

    .prologue
    .line 932
    iget-object v1, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mControl:Lcom/huawei/android/hardware/fmradio/FmRxControls;

    sget v2, Lcom/huawei/android/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2, p1}, Lcom/huawei/android/hardware/fmradio/FmRxControls;->stereoControl(IZ)I

    move-result v0

    .line 934
    .local v0, re:I
    if-nez v0, :cond_0

    .line 935
    const/4 v1, 0x1

    .line 936
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterClient()Z
    .locals 1

    .prologue
    .line 362
    invoke-super {p0}, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->unregisterClient()Z

    move-result v0

    .line 365
    .local v0, status:Z
    return v0
.end method
