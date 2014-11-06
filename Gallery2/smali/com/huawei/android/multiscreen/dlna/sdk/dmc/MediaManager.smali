.class public Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IMediaManager;


# static fields
.field private static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType:[I = null

.field private static final ROOT_FOLDERID:Ljava/lang/String; = "0"

.field private static final TAG:Ljava/lang/String; = "MeidaManager"

.field private static final audioSearchCriteria:Ljava/lang/String; = "upnp:class derivedfrom \"object.item.audioItem\" and @refID exists false"

.field private static final filter:Ljava/lang/String; = "*"

.field private static final imageSearchCriteria:Ljava/lang/String; = "upnp:class derivedfrom \"object.item.imageItem\" and @refID exists false"

.field private static final image_videoSearchCriteria:Ljava/lang/String; = "(upnp:class derivedfrom \"object.item.imageItem\"  or upnp:class derivedfrom \"object.item.videoItem\") and @refID exists false"

.field private static final parentNodeID:Ljava/lang/String; = "0"

.field private static final sortCriteria:Ljava/lang/String; = ""

.field private static final videoSearchCriteria:Ljava/lang/String; = "upnp:class derivedfrom \"object.item.videoItem\" and @refID exists false"


# instance fields
.field private cacheSize:I

.field private cacheStartIndex:I

.field private deviceId:I

.field private dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

.field private provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;


# direct methods
.method static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I
    .locals 3

    .prologue
    .line 38
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->values()[Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->AUDIO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->FOLDER:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE_VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "deviceId"

    .prologue
    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    .line 78
    const/16 v0, 0x1e

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheSize:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheStartIndex:I

    .line 82
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->getDmsDeviceDataStateManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    .line 90
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    .line 91
    return-void
.end method

.method static synthetic access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I
    .locals 1
    .parameter

    .prologue
    .line 76
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    return v0
.end method

.method static synthetic access$3(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;Ljava/lang/String;IILjava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 470
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheMedia(Ljava/lang/String;IILjava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;

    move-result-object v0

    return-object v0
.end method

.method private cacheMedia(Ljava/lang/String;IILjava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;
    .locals 13
    .parameter "searchCriteria"
    .parameter "startIndex"
    .parameter "requestCount"
    .parameter "sortCriteria"

    .prologue
    .line 471
    const-string v0, "MeidaManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cacheAllMedia searchCriteria:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 475
    .local v11, t1:J
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v0

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    const-string v2, "0"

    .line 476
    const-string v5, "*"

    move v3, p2

    move/from16 v4, p3

    move-object v6, p1

    move-object/from16 v7, p4

    .line 475
    invoke-virtual/range {v0 .. v7}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiDmcSearch(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;

    move-result-object v10

    .line 477
    .local v10, searchResultInfo:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;
    const-string v0, "MeidaManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u641c\u7d22 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u6761\u4ef6\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u7528\u65f6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v11

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->getSearchResult()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v10}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->getSearchResult()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/StringUtil;->getDIDLITEHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 488
    .local v8, didlHeader:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;

    move-result-object v0

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1, v8}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;->setDeviceDIDLLiteHeader(ILjava/lang/String;)V

    .line 489
    invoke-virtual {v10}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->getSearchResult()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/XmlSAXParser;->parseXML(Ljava/lang/String;IZ)Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;

    move-result-object v9

    .line 490
    .local v9, ret:Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;
    if-eqz v9, :cond_0

    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getIsContinue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->getIntance()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->insertData(Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;)V

    .line 494
    .end local v8           #didlHeader:Ljava/lang/String;
    .end local v9           #ret:Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;
    :cond_0
    const-string v0, "MeidaManager"

    const-string v1, "cacheAllMedia   cacheMedia end"

    invoke-static {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    return-object v10
.end method

.method private createCacheAllThread(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;IILjava/lang/String;)V
    .locals 8
    .parameter "type"
    .parameter "startIndex"
    .parameter "cacheSize"
    .parameter "searchCriteria"

    .prologue
    .line 512
    move-object v3, p1

    .line 513
    .local v3, typeTemp:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;
    move v2, p2

    .line 514
    .local v2, start:I
    move v5, p3

    .line 515
    .local v5, size:I
    move-object v4, p4

    .line 516
    .local v4, criteria:Ljava/lang/String;
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    const/4 v7, 0x1

    invoke-virtual {v0, v1, v7}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setIsContinue(IZ)V

    .line 517
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;Ljava/lang/String;I)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 604
    .local v6, cacheThread:Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 605
    return-void
.end method


# virtual methods
.method public cacheAllMedia(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 351
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v0

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-interface {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;->getDeviceById(I)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;

    move-result-object v0

    if-nez v0, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 434
    :pswitch_0
    const-string v0, "MeidaManager"

    const-string v1, "cacheAllMedia MediaType Err"

    invoke-static {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 357
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getAudioSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->IN_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-eq v0, v1, :cond_0

    .line 358
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getAudioSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->COMPLETED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-eq v0, v1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getAudioSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v0, v1, :cond_3

    .line 362
    iput v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheStartIndex:I

    .line 366
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->IN_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setAudioSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    .line 367
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheStartIndex:I

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheSize:I

    const-string v2, "upnp:class derivedfrom \"object.item.audioItem\" and @refID exists false"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->createCacheAllThread(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;IILjava/lang/String;)V

    goto :goto_0

    .line 363
    :cond_3
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getAudioSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->PART_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v0, v1, :cond_2

    .line 364
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, p1, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getTotalMediaByDeviceId(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;I)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheStartIndex:I

    goto :goto_1

    .line 370
    :pswitch_2
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->IN_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-eq v0, v1, :cond_0

    .line 371
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->COMPLETED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-eq v0, v1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v0, v1, :cond_5

    .line 375
    iput v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheStartIndex:I

    .line 379
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->IN_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setImageSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    .line 380
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheStartIndex:I

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheSize:I

    const-string v2, "upnp:class derivedfrom \"object.item.imageItem\" and @refID exists false"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->createCacheAllThread(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 376
    :cond_5
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->PART_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v0, v1, :cond_4

    .line 377
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, p1, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getTotalMediaByDeviceId(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;I)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheStartIndex:I

    goto :goto_2

    .line 383
    :pswitch_3
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getVideoSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->IN_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-eq v0, v1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getVideoSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->COMPLETED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-eq v0, v1, :cond_0

    .line 387
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getVideoSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v0, v1, :cond_7

    .line 388
    iput v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheStartIndex:I

    .line 392
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->IN_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setVideoSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    .line 393
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheStartIndex:I

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheSize:I

    const-string v2, "upnp:class derivedfrom \"object.item.videoItem\" and @refID exists false"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->createCacheAllThread(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 389
    :cond_7
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getVideoSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->PART_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v0, v1, :cond_6

    .line 390
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, p1, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getTotalMediaByDeviceId(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;I)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheStartIndex:I

    goto :goto_3

    .line 396
    :pswitch_4
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v0

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-interface {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;->getDeviceById(I)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;

    move-result-object v0

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;->getProductType()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->Unknown:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    if-ne v0, v1, :cond_d

    .line 397
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->IN_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-eq v0, v1, :cond_9

    .line 398
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->COMPLETED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-eq v0, v1, :cond_9

    .line 399
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v0, v1, :cond_b

    .line 400
    iput v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheStartIndex:I

    .line 404
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->IN_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setImageSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    .line 405
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheStartIndex:I

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheSize:I

    const-string v2, "upnp:class derivedfrom \"object.item.imageItem\" and @refID exists false"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->createCacheAllThread(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;IILjava/lang/String;)V

    .line 408
    :cond_9
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getVideoSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->IN_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-eq v0, v1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getVideoSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->COMPLETED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-eq v0, v1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getVideoSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v0, v1, :cond_c

    .line 411
    iput v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheStartIndex:I

    .line 415
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->IN_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setVideoSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    .line 416
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheStartIndex:I

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheSize:I

    const-string v2, "upnp:class derivedfrom \"object.item.videoItem\" and @refID exists false"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->createCacheAllThread(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 401
    :cond_b
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->PART_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v0, v1, :cond_8

    .line 402
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getTotalMediaByDeviceId(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;I)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheStartIndex:I

    goto :goto_4

    .line 412
    :cond_c
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getVideoSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->PART_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v0, v1, :cond_a

    .line 413
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getTotalMediaByDeviceId(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;I)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheStartIndex:I

    goto :goto_5

    .line 421
    :cond_d
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageVideoSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->IN_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-eq v0, v1, :cond_0

    .line 422
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageVideoSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->COMPLETED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-eq v0, v1, :cond_0

    .line 425
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageVideoSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v0, v1, :cond_f

    .line 426
    iput v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheStartIndex:I

    .line 430
    :cond_e
    :goto_6
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->IN_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setImageVideoSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    .line 431
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheStartIndex:I

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheSize:I

    const-string v2, "(upnp:class derivedfrom \"object.item.imageItem\"  or upnp:class derivedfrom \"object.item.videoItem\") and @refID exists false"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->createCacheAllThread(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 427
    :cond_f
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageVideoSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->PART_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v0, v1, :cond_e

    .line 428
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, p1, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getTotalMediaByDeviceId(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;I)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheStartIndex:I

    goto :goto_6

    .line 355
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getChildren(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "folderId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 616
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 619
    .local v0, baseInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v1, v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getChildrenByDeviceIdAndFolderId_together(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/MediaInfoUtil;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 618
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 621
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 624
    .end local v0           #baseInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    :goto_0
    return-object v0

    .restart local v0       #baseInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFolderInfoByFolderId(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .locals 2
    .parameter "folderId"

    .prologue
    .line 630
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getFolderInfoByFolderId(ILjava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/MediaInfoUtil;->convertFromFolderInfo(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;)Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMediaInfo(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Ljava/util/List;
    .locals 5
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 112
    if-nez p1, :cond_1

    move-object v0, v1

    .line 158
    :cond_0
    :goto_0
    return-object v0

    .line 115
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v0, mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 150
    :pswitch_0
    const-string v2, "MeidaManager"

    const-string v3, "GetMediaInfo MediaType Err"

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move-object v0, v1

    .line 158
    goto :goto_0

    .line 120
    :pswitch_1
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getMediaInfoListByDeviceId(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;I)Ljava/util/List;

    move-result-object v2

    .line 119
    invoke-static {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/MediaInfoUtil;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 121
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v2

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->PART_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getIsImageSearchFailed(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheAllMedia(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V

    goto :goto_1

    .line 128
    :pswitch_2
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->AUDIO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getMediaInfoListByDeviceId(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;I)Ljava/util/List;

    move-result-object v2

    .line 127
    invoke-static {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/MediaInfoUtil;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 129
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getAudioSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v2

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->PART_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getIsAudioSearchFailed(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheAllMedia(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V

    goto :goto_1

    .line 136
    :pswitch_3
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getMediaInfoListByDeviceId(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;I)Ljava/util/List;

    move-result-object v2

    .line 135
    invoke-static {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/MediaInfoUtil;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 137
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getVideoSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v2

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->PART_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getIsVideoSearchFailed(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheAllMedia(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V

    goto :goto_1

    .line 143
    :pswitch_4
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE_VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getMediaInfoListByDeviceId(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;I)Ljava/util/List;

    move-result-object v2

    .line 142
    invoke-static {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/MediaInfoUtil;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 144
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageVideoSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v2

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->PART_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getIsImage_VideoSearchFailed(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheAllMedia(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V

    goto/16 :goto_1

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getMediaInfoWithPagination(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;II)Ljava/util/List;
    .locals 5
    .parameter "type"
    .parameter "start"
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 175
    if-nez p1, :cond_1

    move-object v0, v1

    .line 223
    :cond_0
    :goto_0
    return-object v0

    .line 178
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v0, mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    if-ltz p2, :cond_2

    if-gtz p3, :cond_3

    :cond_2
    move-object v0, v1

    .line 181
    goto :goto_0

    .line 184
    :cond_3
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 215
    :pswitch_0
    const-string v2, "MeidaManager"

    const-string v3, "getMediaInfoWithPagination MediaType Err"

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move-object v0, v1

    .line 223
    goto :goto_0

    .line 187
    :pswitch_1
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3, v4, p2, p3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getMediaInfoListByDeviceIdWithStartAndLimit(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;III)Ljava/util/List;

    move-result-object v2

    .line 186
    invoke-static {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/MediaInfoUtil;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 188
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v2

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->PART_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getIsImageSearchFailed(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 189
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheAllMedia(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V

    goto :goto_1

    .line 194
    :pswitch_2
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->AUDIO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3, v4, p2, p3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getMediaInfoListByDeviceIdWithStartAndLimit(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;III)Ljava/util/List;

    move-result-object v2

    .line 193
    invoke-static {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/MediaInfoUtil;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 195
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getAudioSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v2

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->PART_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getIsAudioSearchFailed(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 196
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheAllMedia(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V

    goto :goto_1

    .line 201
    :pswitch_3
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3, v4, p2, p3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getMediaInfoListByDeviceIdWithStartAndLimit(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;III)Ljava/util/List;

    move-result-object v2

    .line 200
    invoke-static {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/MediaInfoUtil;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 202
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getVideoSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v2

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->PART_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getIsVideoSearchFailed(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 203
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheAllMedia(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V

    goto :goto_1

    .line 208
    :pswitch_4
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE_VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3, v4, p2, p3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getMediaInfoListByDeviceIdWithStartAndLimit(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;III)Ljava/util/List;

    move-result-object v2

    .line 207
    invoke-static {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/MediaInfoUtil;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 209
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageVideoSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v2

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->PART_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getIsImage_VideoSearchFailed(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 210
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheAllMedia(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V

    goto/16 :goto_1

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getMediaTotalCount(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;I)I
    .locals 6
    .parameter "type"
    .parameter "cacheSize"

    .prologue
    const/4 v3, 0x0

    .line 237
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v2

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-interface {v2, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;->getDeviceById(I)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    .line 346
    :goto_0
    return v2

    .line 241
    :cond_0
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->AUDIO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    if-ne p1, v2, :cond_4

    .line 243
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getAudioSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v2

    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v2, v4, :cond_1

    .line 244
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/util/GlobalVariables;->isAutoSearchWhenDmsDeviceUp()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->AUDIO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v2, v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->lock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->AUDIO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v2, v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->unLock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    .line 253
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getAudioSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v2

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->COMPLETED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v2, v3, :cond_3

    .line 254
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, p1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getTotalMediaByDeviceId(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;I)I

    move-result v2

    goto :goto_0

    .line 250
    :cond_2
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->AUDIO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v2, v4, v5, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->getPartMedia(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;Z)V

    goto :goto_1

    .line 256
    :cond_3
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getAudioSearchCount(I)I

    move-result v2

    goto :goto_0

    .line 257
    :cond_4
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE_VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    if-ne p1, v2, :cond_11

    .line 259
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v2

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-interface {v2, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;->getDeviceById(I)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;->getProductType()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    move-result-object v2

    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->Unknown:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    if-ne v2, v4, :cond_d

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, imageCount:I
    const/4 v1, 0x0

    .line 264
    .local v1, videoCount:I
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v2

    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v2, v4, :cond_8

    .line 265
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/util/GlobalVariables;->isAutoSearchWhenDmsDeviceUp()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 266
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v2, v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->lock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 267
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v2, v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->unLock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    .line 268
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageSearchCount(I)I

    move-result v0

    .line 282
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getVideoSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v2

    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v2, v4, :cond_b

    .line 283
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/util/GlobalVariables;->isAutoSearchWhenDmsDeviceUp()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 284
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v2, v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->lock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 285
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v2, v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->unLock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    .line 286
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getVideoSearchCount(I)I

    move-result v1

    .line 300
    :cond_6
    :goto_3
    add-int v2, v1, v0

    goto/16 :goto_0

    .line 272
    :cond_7
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v2, v4, v5, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->getPartMedia(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;Z)V

    .line 273
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageSearchCount(I)I

    move-result v0

    goto :goto_2

    .line 275
    :cond_8
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v2

    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->COMPLETED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v2, v4, :cond_9

    .line 277
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    iget v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getTotalMediaByDeviceId(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;I)I

    move-result v0

    goto :goto_2

    .line 279
    :cond_9
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageSearchCount(I)I

    move-result v0

    goto :goto_2

    .line 289
    :cond_a
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v2, v4, v5, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->getPartMedia(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;Z)V

    .line 290
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getVideoSearchCount(I)I

    move-result v1

    goto :goto_3

    .line 292
    :cond_b
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getVideoSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v2

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->COMPLETED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v2, v3, :cond_c

    .line 294
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getTotalMediaByDeviceId(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;I)I

    move-result v1

    goto :goto_3

    .line 296
    :cond_c
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getVideoSearchCount(I)I

    move-result v1

    goto :goto_3

    .line 302
    .end local v0           #imageCount:I
    .end local v1           #videoCount:I
    :cond_d
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageVideoSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v2

    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v2, v4, :cond_10

    .line 303
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/util/GlobalVariables;->isAutoSearchWhenDmsDeviceUp()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 304
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE_VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v2, v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->lock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 305
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE_VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v2, v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->unLock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    .line 314
    :cond_e
    :goto_4
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageVideoSearchCount(I)I

    move-result v2

    goto/16 :goto_0

    .line 308
    :cond_f
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE_VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v2, v4, v5, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->getPartMedia(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;Z)V

    goto :goto_4

    .line 310
    :cond_10
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageVideoSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v2

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->COMPLETED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v2, v3, :cond_e

    .line 312
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE_VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getTotalMediaByDeviceId(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;I)I

    move-result v2

    goto/16 :goto_0

    .line 315
    :cond_11
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    if-ne p1, v2, :cond_15

    .line 316
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v2

    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v2, v4, :cond_12

    .line 317
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/util/GlobalVariables;->isAutoSearchWhenDmsDeviceUp()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 318
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v2, v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->lock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 319
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v2, v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->unLock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    .line 325
    :cond_12
    :goto_5
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v2

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->COMPLETED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v2, v3, :cond_14

    .line 327
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, p1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getTotalMediaByDeviceId(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;I)I

    move-result v2

    goto/16 :goto_0

    .line 322
    :cond_13
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v2, v4, v5, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->getPartMedia(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;Z)V

    goto :goto_5

    .line 329
    :cond_14
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageSearchCount(I)I

    move-result v2

    goto/16 :goto_0

    .line 330
    :cond_15
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    if-ne p1, v2, :cond_19

    .line 331
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getVideoSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v2

    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v2, v4, :cond_16

    .line 332
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/util/GlobalVariables;->isAutoSearchWhenDmsDeviceUp()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 333
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v2, v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->lock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 334
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v2, v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->unLock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    .line 340
    :cond_16
    :goto_6
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getVideoSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v2

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->COMPLETED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-ne v2, v3, :cond_18

    .line 342
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, p1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getTotalMediaByDeviceId(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;I)I

    move-result v2

    goto/16 :goto_0

    .line 337
    :cond_17
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v2, v4, v5, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->getPartMedia(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;Z)V

    goto :goto_6

    .line 344
    :cond_18
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getVideoSearchCount(I)I

    move-result v2

    goto/16 :goto_0

    :cond_19
    move v2, v3

    .line 346
    goto/16 :goto_0
.end method

.method public getRootFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 610
    const-string v0, "0"

    .line 611
    .local v0, rootFolderId:Ljava/lang/String;
    return-object v0
.end method

.method public searchMediaInfo(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "type"
    .parameter "query"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 441
    if-nez p2, :cond_1

    move-object v0, v1

    .line 451
    :cond_0
    :goto_0
    return-object v0

    .line 444
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v0, mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    invoke-virtual {v2, v3, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getMediaBySearchQuery(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/MediaInfoUtil;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 448
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move-object v0, v1

    .line 451
    goto :goto_0
.end method

.method public setDeviceId(I)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 98
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I

    .line 99
    return-void
.end method
