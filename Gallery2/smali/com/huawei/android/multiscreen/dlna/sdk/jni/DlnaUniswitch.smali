.class public Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;
.super Ljava/lang/Object;
.source "DlnaUniswitch.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DlnaUniswitch"

.field protected static final instance:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;


# instance fields
.field public absCount:I

.field public absTime:Ljava/lang/String;

.field public currentTrack:I

.field public relCount:I

.field public relTime:Ljava/lang/String;

.field public trackDur:Ljava/lang/String;

.field public trackMetaData:Ljava/lang/String;

.field public trackMetaData_temp:Ljava/lang/String;

.field public trackURI:Ljava/lang/String;

.field public trackURI_temp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    .line 871
    const-string v0, "ixml"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 872
    const-string v0, "threadutil"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 873
    const-string v0, "upnp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 874
    const-string v0, "vppdlna"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 875
    const-string v0, "dlnajni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->currentTrack:I

    .line 53
    const-string v0, "00:00:00"

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->trackDur:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->trackMetaData:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->trackMetaData_temp:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->trackURI:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->trackURI_temp:Ljava/lang/String;

    .line 63
    const-string v0, "00:00:00"

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->relTime:Ljava/lang/String;

    .line 65
    const-string v0, "00:00:00"

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->absTime:Ljava/lang/String;

    .line 67
    iput v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->relCount:I

    .line 69
    iput v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->absCount:I

    .line 49
    return-void
.end method

.method private getIPFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 572
    if-nez p1, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-object v2

    .line 577
    :cond_1
    const-string v3, "//"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 578
    .local v0, begin:I
    if-eq v4, v0, :cond_0

    .line 582
    add-int/lit8 v0, v0, 0x2

    .line 584
    const-string v3, ":"

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 585
    .local v1, end:I
    if-eq v4, v1, :cond_0

    .line 590
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;
    .locals 1

    .prologue
    .line 464
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    return-object v0
.end method


# virtual methods
.method public native DlnaApiDMCSendPlay(IILjava/lang/String;)I
.end method

.method public native DlnaApiDMCSendSetTransportUri(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public native DlnaApiDMCSendStop(II)I
.end method

.method public native DlnaApiDmcCreateObject(ILjava/lang/String;Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNACreateObjectInfo;
.end method

.method public native DlnaApiDmcDestroyObject(ILjava/lang/String;)I
.end method

.method public native DlnaApiDmcExportResource(ILjava/lang/String;Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAImportExportResourceInfo;
.end method

.method public native DlnaApiDmcGetHuaweiId(II)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAHuaweiIdInfo;
.end method

.method public native DlnaApiDmcGetMute(III)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAMuteInfo;
.end method

.method public native DlnaApiDmcGetPositionInfo(II)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;
.end method

.method public native DlnaApiDmcGetProtocolInfo(II)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAProtocolInfo;
.end method

.method public native DlnaApiDmcGetTransferProgress(II)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransferProgressInfo;
.end method

.method public native DlnaApiDmcGetTransportInfo(II)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo;
.end method

.method public native DlnaApiDmcGetVolume(III)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAVolumeInfo;
.end method

.method public native DlnaApiDmcImportResource(ILjava/lang/String;Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAImportExportResourceInfo;
.end method

.method public native DlnaApiDmcMoveObject(ILjava/lang/String;Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAMoveObjectInfo;
.end method

.method public native DlnaApiDmcPause(II)I
.end method

.method public native DlnaApiDmcSearch(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;
.end method

.method public native DlnaApiDmcSearchDevice()I
.end method

.method public native DlnaApiDmcSeek(IIIILjava/lang/String;)I
.end method

.method public native DlnaApiDmcSetMute(IIIZ)I
.end method

.method public native DlnaApiDmcSetNextAVTransportURI(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public native DlnaApiDmcSetNextLocalFileTransferURI(IILjava/lang/String;)I
.end method

.method public native DlnaApiDmcSetPrivateAVTransportURI(IILjava/lang/String;)Ljava/lang/String;
.end method

.method public native DlnaApiDmcSetVolume(IIII)I
.end method

.method public native DlnaApiDmcStopTransferResource(II)I
.end method

.method public native DlnaApiDmcUploadLocalFile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAImportExportResourceInfo;
.end method

.method public native DlnaApiDmpBrowseReq(ILjava/lang/String;ILjava/lang/String;III)I
.end method

.method public native DlnaApiDmrNotifyMute(IIZ)I
.end method

.method public native DlnaApiDmrNotifyVolume(III)I
.end method

.method public native DlnaApiDmrSetHuaweiId(Ljava/lang/String;)I
.end method

.method public native DlnaApiDmrSetMediaState(II)I
.end method

.method public native DlnaApiDmsAddMediaFiles(II[Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsMediaInfo;)I
.end method

.method public native DlnaApiDmsAddSharedDir(Ljava/lang/String;I)I
.end method

.method public native DlnaApiDmsDelMediaFiles(I[I)I
.end method

.method public native DlnaApiDmsDelSharedDir(Ljava/lang/String;I)I
.end method

.method public native DlnaApiDmsEnableShare(Z)I
.end method

.method public native DlnaApiDmsUpdateSharedFiles(Ljava/lang/String;I)I
.end method

.method public native DlnaApiDmsUpdateSharedFiles([Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;I)I
.end method

.method public native DlnaApiGetVersion()Ljava/lang/String;
.end method

.method public native DlnaApiIpChange()I
.end method

.method public native DlnaApiSetAddShareDirParams(II)I
.end method

.method public native DlnaApiSetDeviceName(Ljava/lang/String;)I
.end method

.method public native DlnaApiSetLogLevel(I)I
.end method

.method public native DlnaApiSetProductType(I)I
.end method

.method public native DlnaApiStackDestroy()I
.end method

.method public native DlnaApiStackInit(ILjava/lang/String;)I
.end method

.method public DlnaDmcHuaweiId(ILjava/lang/String;)I
    .locals 3
    .parameter "deviceId"
    .parameter "huaweiId"

    .prologue
    .line 956
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v2

    .line 957
    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v0

    .line 956
    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    .line 958
    .local v0, dmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;
    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->getDeviceById(I)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    .line 959
    .local v1, dmr:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;
    if-nez v1, :cond_0

    .line 960
    const/4 v2, -0x1

    .line 962
    :goto_0
    return v2

    .line 961
    :cond_0
    invoke-virtual {v0, v1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->notifyHuaweiIdChanged(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;Ljava/lang/String;)V

    .line 962
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public DlnaDmcPeerEventInd(ILjava/lang/String;I)I
    .locals 8
    .parameter "deviceID"
    .parameter "changeRes"
    .parameter "resLen"

    .prologue
    const/4 v7, 0x0

    .line 712
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v4

    check-cast v4, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    .line 713
    invoke-virtual {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->getDeviceMap()Ljava/util/Map;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 712
    if-nez v4, :cond_0

    .line 714
    const-string v4, "DlnaUniswitch"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DlnaUniswitch.DlnaDmpMediaChanged no device="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 715
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 714
    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :goto_0
    return v7

    .line 719
    :cond_0
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v4

    .line 720
    invoke-interface {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v2

    .line 719
    check-cast v2, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    .line 721
    .local v2, dmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;
    move v1, p1

    .line 722
    .local v1, deviceid:I
    move-object v0, p2

    .line 723
    .local v0, changeString:Ljava/lang/String;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch$1;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch$1;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;ILjava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 730
    .local v3, searchNewData:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public DlnaDmcSyncMute(IIII)I
    .locals 1
    .parameter "deviceId"
    .parameter "instanceId"
    .parameter "channel"
    .parameter "currentMute"

    .prologue
    .line 803
    const/4 v0, 0x0

    return v0
.end method

.method public DlnaDmcSyncVolume(IIII)I
    .locals 2
    .parameter "deviceId"
    .parameter "instanceId"
    .parameter "channel"
    .parameter "currentVol"

    .prologue
    .line 793
    const-string v0, "DlnaUniswitch"

    const-string v1, "DlnaUniswitch.DlnaDmcSyncVolume start"

    invoke-static {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcListenerManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcListenerManager;->dmcSyncVolume(IIII)V

    .line 796
    const-string v0, "DlnaUniswitch"

    const-string v1, "DlnaUniswitch.DlnaDmcSyncVolume end"

    invoke-static {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const/4 v0, 0x0

    return v0
.end method

.method public DlnaDmcTransferIDs(ILjava/lang/String;)I
    .locals 1
    .parameter "ulDevice"
    .parameter "strTransferIDs"

    .prologue
    .line 825
    const/4 v0, 0x0

    return v0
.end method

.method public DlnaDmpBrowseResultInd(ILjava/lang/String;II)I
    .locals 9
    .parameter "deviceID"
    .parameter "browseRes"
    .parameter "NumReturn"
    .parameter "bNewBrowse"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 653
    const-string v4, "DlnaUniswitch"

    .line 654
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DlnaUniswitch.DlnaDmpBrowseResultInd start bNewBrowse="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 655
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 654
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 653
    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    if-ne p4, v8, :cond_0

    .line 660
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->getIntance()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->deleteDeviceData(I)V

    .line 663
    :cond_0
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v4

    check-cast v4, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    invoke-virtual {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->getDeviceMap()Ljava/util/Map;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 664
    const-string v4, "DlnaUniswitch"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DlnaUniswitch.DlnaDmpBrowseResultInd no device="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 664
    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_1
    :goto_0
    return v7

    .line 669
    :cond_2
    invoke-static {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/StringUtil;->getDIDLITEHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, didlHeader:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;->setDeviceDIDLLiteHeader(ILjava/lang/String;)V

    .line 674
    invoke-static {p2, p1, v7}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/XmlSAXParser;->parseXML(Ljava/lang/String;IZ)Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;

    move-result-object v3

    .line 675
    .local v3, ret:Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;
    if-eqz v3, :cond_1

    .line 680
    const-string v4, "DlnaUniswitch"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DlnaUniswitch.DlnaDmpBrowseResultInd \u8bb0\u5f55\u6761\u6570\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 681
    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;->getSqls()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 680
    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->getIntance()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->insertData(Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;)V

    .line 684
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v4

    check-cast v4, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    invoke-virtual {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->getDeviceDMSMap()Ljava/util/Map;

    move-result-object v4

    .line 685
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;

    .line 686
    .local v0, deviceClient:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    if-eqz v0, :cond_1

    .line 691
    if-ne p4, v8, :cond_3

    .line 692
    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;->setEvent(B)V

    .line 696
    :cond_3
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v4

    .line 697
    invoke-interface {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v2

    .line 696
    check-cast v2, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    .line 698
    .local v2, dmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;
    invoke-virtual {v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->notifyMediaChanged(I)V

    goto :goto_0
.end method

.method public DlnaDmpDeviceDownInd(I)I
    .locals 6
    .parameter "deviceID"

    .prologue
    .line 602
    const-string v3, "DlnaUniswitch"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DlnaUniswitch.DlnaDmpDeviceDownInd start deviceID="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 602
    invoke-static {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v3

    check-cast v3, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->getDeviceMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;

    .line 608
    .local v0, deviceClient:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;
    if-nez v0, :cond_0

    .line 609
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v3

    check-cast v3, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    invoke-virtual {v3, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->removeDevice(I)V

    .line 610
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->getIntance()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->deleteDeviceData(I)V

    .line 612
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;->removeDeviceDIDLLiteHeader(I)V

    .line 614
    const/4 v3, -0x1

    .line 637
    :goto_0
    return v3

    .line 617
    :cond_0
    instance-of v3, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 618
    check-cast v2, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    .line 619
    .local v2, remoteDmrDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;
    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;->getTransportController()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    move-result-object v3

    invoke-interface {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;->stopSync()V

    .line 622
    .end local v2           #remoteDmrDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;
    :cond_1
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v3

    check-cast v3, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    invoke-virtual {v3, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->removeDevice(I)V

    .line 623
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->getIntance()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->deleteDeviceData(I)V

    .line 624
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;->removeDeviceDIDLLiteHeader(I)V

    .line 630
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v3

    .line 631
    invoke-interface {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v1

    .line 630
    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    .line 632
    .local v1, dmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->notifyDeviceChanged(ILcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V

    .line 636
    const-string v3, "DlnaUniswitch"

    const-string v4, "DlnaUniswitch.DlnaDmpDeviceDownInd end"

    invoke-static {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public DlnaDmpDeviceUpInd(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;II)I
    .locals 12
    .parameter "type"
    .parameter "deviceId"
    .parameter "deviceName"
    .parameter "DeviceNameLen"
    .parameter "udn"
    .parameter "url"
    .parameter "deviceProduct"
    .parameter "versionMatchingFlag"

    .prologue
    .line 486
    const-string v1, "DlnaUniswitch"

    const-string v2, "DlnaUniswitch.DlnaDmpDeviceUpInd start"

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const-string v1, "DlnaUniswitch"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The UDN of the incoming device is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 488
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 487
    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v7, 0x0

    .line 492
    .local v7, deviceClient:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;
    const/4 v10, 0x0

    .line 493
    .local v10, dmsDeviceClient:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/RemoteDmsDevice;
    const/4 v9, 0x0

    .line 495
    .local v9, dmrDeviceClient:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/RemoteDmrDevice;
    packed-switch p1, :pswitch_data_0

    .line 505
    const-string v1, "DlnaUniswitch"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The UDN of the incoming device type= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/4 v1, 0x0

    .line 558
    :goto_0
    return v1

    .line 497
    :pswitch_0
    new-instance v10, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/RemoteDmsDevice;

    .end local v10           #dmsDeviceClient:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/RemoteDmsDevice;
    invoke-direct {v10}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/RemoteDmsDevice;-><init>()V

    .line 498
    .restart local v10       #dmsDeviceClient:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/RemoteDmsDevice;
    move-object v7, v10

    .line 510
    :goto_1
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->getIntance()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;

    move-result-object v1

    move v2, p2

    move-object v3, p3

    move v4, p1

    move-object/from16 v5, p5

    move/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->insertDevice(ILjava/lang/String;ILjava/lang/String;I)I

    .line 514
    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->setUDN(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v7, p3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->setName(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v7, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->setDeviceId(I)V

    .line 517
    invoke-static/range {p8 .. p8}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;->valueof(I)Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->setVersionMatching(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;)V

    .line 519
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getIPFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 520
    .local v11, ip:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 522
    invoke-virtual {v7, v11}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->setIP(Ljava/lang/String;)V

    .line 525
    :cond_0
    const/4 v1, 0x1

    move/from16 v0, p7

    if-ne v0, v1, :cond_1

    .line 526
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->HuaweiPhone:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    invoke-virtual {v7, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->setProductType(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;)V

    .line 540
    :goto_2
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    invoke-virtual {v7}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->getDeviceId()I

    move-result v2

    invoke-virtual {v1, v2, v7}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->addDevice(ILcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V

    .line 546
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v1

    .line 547
    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v8

    .line 546
    check-cast v8, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    .line 548
    .local v8, dmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;
    const/4 v1, 0x0

    invoke-virtual {v8, v1, v7}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->notifyDeviceChanged(ILcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V

    .line 552
    const-string v2, "DlnaUniswitch"

    .line 553
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "Device is added to DeviceList. The current size of DeviceList is "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 554
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->getDeviceMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 553
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-static {v2, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-class v1, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    .line 557
    const-string v2, "DlnaUniswitch.DlnaDmpDeviceUpInd end"

    .line 556
    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 501
    .end local v8           #dmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;
    .end local v11           #ip:Ljava/lang/String;
    :pswitch_1
    new-instance v9, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/RemoteDmrDevice;

    .end local v9           #dmrDeviceClient:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/RemoteDmrDevice;
    invoke-direct {v9}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/RemoteDmrDevice;-><init>()V

    .line 502
    .restart local v9       #dmrDeviceClient:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/RemoteDmrDevice;
    move-object v7, v9

    .line 503
    goto/16 :goto_1

    .line 527
    .restart local v11       #ip:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x2

    move/from16 v0, p7

    if-ne v0, v1, :cond_2

    .line 528
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->HuaweiSTB:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    invoke-virtual {v7, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->setProductType(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;)V

    goto :goto_2

    .line 529
    :cond_2
    const/4 v1, 0x3

    move/from16 v0, p7

    if-ne v0, v1, :cond_3

    .line 530
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->HuaweiPad:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    invoke-virtual {v7, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->setProductType(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;)V

    goto :goto_2

    .line 531
    :cond_3
    const/4 v1, 0x4

    move/from16 v0, p7

    if-ne v0, v1, :cond_4

    .line 532
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->HuaweiOthers:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    invoke-virtual {v7, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->setProductType(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;)V

    goto :goto_2

    .line 534
    :cond_4
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->Unknown:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    invoke-virtual {v7, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->setProductType(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;)V

    goto/16 :goto_2

    .line 495
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public DlnaDmrGetPositionInfoInd(I)I
    .locals 2
    .parameter "instanceId"

    .prologue
    .line 806
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v1

    .line 807
    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmrDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;

    move-result-object v1

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;->getDmrTransportController()Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;

    move-result-object v1

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;->onGetPositionInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;

    move-result-object v0

    .line 808
    .local v0, tempPositionInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
    if-eqz v0, :cond_0

    .line 809
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->getRelTime()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->relTime:Ljava/lang/String;

    .line 810
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->getTrackDur()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->trackDur:Ljava/lang/String;

    .line 811
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->getTrackMetaData()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->trackMetaData:Ljava/lang/String;

    .line 812
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->getTrackURI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->trackURI:Ljava/lang/String;

    .line 819
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 814
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->relTime:Ljava/lang/String;

    .line 815
    const-string v1, ""

    iput-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->trackDur:Ljava/lang/String;

    .line 816
    const-string v1, ""

    iput-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->trackMetaData:Ljava/lang/String;

    .line 817
    const-string v1, ""

    iput-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->trackURI:Ljava/lang/String;

    goto :goto_0
.end method

.method public DlnaDmrPauseInd(I)I
    .locals 3
    .parameter "instanceID"

    .prologue
    .line 762
    const-string v1, "DlnaUniswitch"

    const-string v2, "DlnaUniswitch.DlnaDmrPauseInd start"

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmrDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;

    move-result-object v1

    .line 764
    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;->getDmrTransportController()Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;

    move-result-object v1

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;->onPause()Z

    move-result v0

    .line 765
    .local v0, result:Z
    const-string v1, "DlnaUniswitch"

    const-string v2, "DlnaUniswitch.DlnaDmrPauseInd end"

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public DlnaDmrPlayInd(ILjava/lang/String;I)I
    .locals 3
    .parameter "instanceID"
    .parameter "PlaySpeed"
    .parameter "StrLen"

    .prologue
    .line 752
    const-string v1, "DlnaUniswitch"

    const-string v2, "DlnaUniswitch.DlnaDmrPlayInd start"

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmrDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;

    move-result-object v1

    .line 754
    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;->getDmrTransportController()Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;

    move-result-object v1

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;->onPlay()Z

    move-result v0

    .line 755
    .local v0, result:Z
    const-string v1, "DlnaUniswitch"

    const-string v2, "DlnaUniswitch.DlnaDmrPlayInd end"

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public DlnaDmrSeekInd(IIILjava/lang/String;)I
    .locals 3
    .parameter "instanceID"
    .parameter "seekMode"
    .parameter "seekTargetType"
    .parameter "seekTarget"

    .prologue
    .line 781
    const-string v1, "DlnaUniswitch"

    const-string v2, "DlnaUniswitch.DlnaDmrSeekInd start"

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmrDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;

    move-result-object v1

    .line 784
    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;->getDmrTransportController()Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;

    move-result-object v1

    invoke-interface {v1, p4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;->onSeek(Ljava/lang/String;)Z

    move-result v0

    .line 785
    .local v0, result:Z
    const-string v1, "DlnaUniswitch"

    const-string v2, "DlnaUniswitch.DlnaDmrSeekInd end"

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public DlnaDmrSetMediaUri(ILjava/lang/String;IILjava/lang/String;I)I
    .locals 5
    .parameter "instanceID"
    .parameter "uri"
    .parameter "UrlLen"
    .parameter "MediaId"
    .parameter "MetaData"
    .parameter "MetaDataLen"

    .prologue
    .line 738
    const-string v2, "DlnaUniswitch"

    const-string v3, "DlnaUniswitch.DlnaDmrSetMediaUri start"

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const-string v2, "DlnaUniswitch"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DlnaUniswitch.DlnaDmrSetMediaUri MetaData="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-static {p5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/Util;->parseMediaInfoFromXml(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    move-result-object v0

    .line 743
    .local v0, meida:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmrDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;

    move-result-object v2

    .line 744
    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;->getDmrTransportController()Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;->onSetUri(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z

    move-result v1

    .line 745
    .local v1, result:Z
    const-string v2, "DlnaUniswitch"

    const-string v3, "DlnaUniswitch.DlnaDmrSetMediaUri end"

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public DlnaDmrSetMuteInd(III)I
    .locals 5
    .parameter "instanceId"
    .parameter "channel"
    .parameter "desiresMute"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 847
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 848
    .local v0, isMute:Ljava/lang/Boolean;
    if-nez p3, :cond_0

    .line 849
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 851
    :cond_0
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v4

    .line 852
    invoke-interface {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmrDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;

    move-result-object v4

    invoke-interface {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;->getDmrTransportController()Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;->onSetMute(Ljava/lang/Boolean;)Z

    move-result v1

    .line 853
    .local v1, result:Z
    if-eqz v1, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public DlnaDmrSetNextMediaUriInd(ILjava/lang/String;ILjava/lang/String;)I
    .locals 5
    .parameter "instanceID"
    .parameter "uri"
    .parameter "MediaId"
    .parameter "MetaData"

    .prologue
    .line 857
    const-string v2, "DlnaUniswitch"

    const-string v3, "DlnaUniswitch.DlnaDmrSetMediaUri start"

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const-string v2, "DlnaUniswitch"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DlnaUniswitch.DlnaDmrSetMediaUri MetaData="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-static {p4}, Lcom/huawei/android/multiscreen/dlna/sdk/util/Util;->parseMediaInfoFromXml(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    move-result-object v0

    .line 862
    .local v0, meida:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmrDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;

    move-result-object v2

    .line 863
    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;->getDmrTransportController()Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;->onSetNextUri(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z

    move-result v1

    .line 864
    .local v1, result:Z
    const-string v2, "DlnaUniswitch"

    const-string v3, "DlnaUniswitch.DlnaDmrSetMediaUri end"

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public DlnaDmrSetVolumeInd(III)I
    .locals 2
    .parameter "instanceId"
    .parameter "channel"
    .parameter "desiresVol"

    .prologue
    .line 841
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v1

    .line 842
    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmrDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;

    move-result-object v1

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;->getDmrTransportController()Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;

    move-result-object v1

    invoke-interface {v1, p3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;->onSetVolume(I)Z

    move-result v0

    .line 843
    .local v0, result:Z
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public DlnaDmrStopInd(I)I
    .locals 3
    .parameter "instanceID"

    .prologue
    .line 771
    const-string v1, "DlnaUniswitch"

    const-string v2, "DlnaUniswitch.DlnaDmrStopInd start"

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmrDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;

    move-result-object v1

    .line 773
    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;->getDmrTransportController()Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;

    move-result-object v1

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;->onStop()Z

    move-result v0

    .line 774
    .local v0, result:Z
    const-string v1, "DlnaUniswitch"

    const-string v2, "DlnaUniswitch.DlnaDmrStopInd end"

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public DlnaDmsShareFilter(Ljava/lang/String;)I
    .locals 3
    .parameter "filePath"

    .prologue
    .line 833
    const/4 v1, -0x1

    .line 834
    .local v1, ret:I
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmsDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;->isValidShareFile(Ljava/lang/String;)Z

    move-result v0

    .line 835
    .local v0, isShareFileValid:Z
    if-eqz v0, :cond_0

    .line 836
    const/4 v1, 0x1

    .line 837
    :cond_0
    return v1
.end method

.method public DlnaGetIPAndMAC()Ljava/lang/String;
    .locals 8

    .prologue
    .line 436
    const-class v5, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    .line 437
    const-string v6, "DlnaUniswitch.DlnaGetIPAndMAC start"

    .line 436
    invoke-static {v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v4, 0x0

    .line 442
    .local v4, strIPAndMAC:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->getNetworkInfo()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;

    move-result-object v1

    .line 444
    .local v1, currentNetwork:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;
    if-eqz v1, :cond_0

    .line 445
    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, ipAddr:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    .line 447
    .local v3, macAddr:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    const-string v7, "."

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "255"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, broadcastAddr:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 453
    .end local v0           #broadcastAddr:Ljava/lang/String;
    .end local v2           #ipAddr:Ljava/lang/String;
    .end local v3           #macAddr:Ljava/lang/String;
    :goto_0
    const-class v5, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    .line 454
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DlnaUniswitch.DlnaGetIPAndMAC end--->  return strIPAndMAC : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 454
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 453
    invoke-static {v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-object v4

    .line 450
    :cond_0
    const-string v4, ""

    goto :goto_0
.end method

.method public native MSApiStackDestroy()I
.end method
