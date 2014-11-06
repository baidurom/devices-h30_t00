.class public Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;
.super Ljava/lang/Object;
.source "DmcManager.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;


# static fields
.field private static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType:[I = null

.field private static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$ESearchState:[I = null

.field public static final DEVICE_DOWN:I = 0x1

.field public static final DEVICE_UP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DmcManager"

.field private static final audioSearchCriteria:Ljava/lang/String; = "upnp:class derivedfrom \"object.item.audioItem\" and @refID exists false"

.field private static final imageSearchCriteria:Ljava/lang/String; = "upnp:class derivedfrom \"object.item.imageItem\" and @refID exists false"

.field private static final image_videoSearchCriteria:Ljava/lang/String; = "(upnp:class derivedfrom \"object.item.imageItem\"  or upnp:class derivedfrom \"object.item.videoItem\") and @refID exists false"

.field private static final sortCriteria:Ljava/lang/String; = ""

.field private static final videoSearchCriteria:Ljava/lang/String; = "upnp:class derivedfrom \"object.item.videoItem\" and @refID exists false"


# instance fields
.field private cacheSize:I

.field private deviceChangeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private deviceDMRMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;",
            ">;"
        }
    .end annotation
.end field

.field private deviceDMSMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;",
            ">;"
        }
    .end annotation
.end field

.field private deviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;",
            ">;"
        }
    .end annotation
.end field

.field private dmcMediaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcMediaManager;

.field private dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

.field private huaweiIdChangedListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/HuaweiIdChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mediaChangedListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I
    .locals 3

    .prologue
    .line 50
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType:[I

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
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType:[I

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

.method static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$ESearchState()[I
    .locals 3

    .prologue
    .line 50
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$ESearchState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->values()[Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->COMPLETED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->IN_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->PART_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$ESearchState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 135
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/16 v0, 0x1e

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->cacheSize:I

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->deviceChangeListenerList:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->mediaChangedListenerList:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->huaweiIdChangedListenerList:Ljava/util/List;

    .line 111
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcMediaManager;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcMediaManager;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmcMediaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcMediaManager;

    .line 121
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->deviceMap:Ljava/util/Map;

    .line 126
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->deviceDMSMap:Ljava/util/Map;

    .line 131
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->deviceDMRMap:Ljava/util/Map;

    .line 133
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    .line 136
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->deviceChangeListenerList:Ljava/util/List;

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method static synthetic access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 842
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->getLastChangeMedia(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;II)V

    return-void
.end method

.method private cacheMedia(ILjava/lang/String;IILjava/lang/String;Z)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;
    .locals 13
    .parameter "deviceId"
    .parameter "searchCriteria"
    .parameter "startIndex"
    .parameter "requestCount"
    .parameter "sortCriteria"
    .parameter "isNeedUpdate"

    .prologue
    .line 651
    const-string v1, "DmcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cacheMedia  deviceId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   searchCriteria:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 654
    .local v11, t1:J
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v1

    const-string v3, "0"

    .line 655
    const-string v6, "*"

    move v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v7, p2

    move-object/from16 v8, p5

    .line 654
    invoke-virtual/range {v1 .. v8}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiDmcSearch(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;

    move-result-object v10

    .line 656
    .local v10, searchResultInfo:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;
    const-string v1, "DmcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u641c\u7d22 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u6761\u4ef6\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u7528\u65f6:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v11

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->getSearchResult()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 666
    :cond_0
    const/4 v10, 0x0

    .line 676
    .end local v10           #searchResultInfo:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;
    :goto_0
    return-object v10

    .line 670
    .restart local v10       #searchResultInfo:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;
    :cond_1
    invoke-virtual {v10}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->getSearchResult()Ljava/lang/String;

    move-result-object v1

    move/from16 v0, p6

    invoke-static {v1, p1, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/XmlSAXParser;->parseXML(Ljava/lang/String;IZ)Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;

    move-result-object v9

    .line 671
    .local v9, ret:Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;
    if-nez v9, :cond_2

    .line 672
    const/4 v10, 0x0

    goto :goto_0

    .line 675
    :cond_2
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->getIntance()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->insertData(Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;)V

    goto :goto_0
.end method

.method private dealWithDeviceChanged(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V
    .locals 6
    .parameter "device"

    .prologue
    .line 458
    if-nez p1, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    instance-of v4, p1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;

    if-eqz v4, :cond_0

    .line 463
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    if-nez v4, :cond_2

    .line 464
    const-string v4, "DmcManager"

    const-string v5, "dmsDeviceDataStateManager is NULL"

    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 469
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$1;

    invoke-direct {v4, p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$1;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 476
    .local v0, searchNewAudioData:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 479
    invoke-interface {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;->getProductType()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    move-result-object v4

    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->Unknown:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    if-ne v4, v5, :cond_3

    .line 481
    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$2;

    invoke-direct {v4, p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$2;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V

    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 488
    .local v1, searchNewImageData:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 491
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$3;

    invoke-direct {v4, p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$3;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 498
    .local v3, searchNewVideoData:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 503
    .end local v1           #searchNewImageData:Ljava/lang/Thread;
    .end local v3           #searchNewVideoData:Ljava/lang/Thread;
    :cond_3
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$4;

    invoke-direct {v4, p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$4;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 510
    .local v2, searchNewImageVideoData:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private dealWithMediaChange(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IMediaManager;ILcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V
    .locals 8
    .parameter "mediaManager"
    .parameter "deviceId"
    .parameter "changeResInfo"
    .parameter "type"
    .parameter "oldSystemUpdateID"
    .parameter "state"

    .prologue
    .line 711
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$ESearchState()[I

    move-result-object v0

    invoke-virtual {p6}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 713
    :pswitch_0
    invoke-direct {p0, p2, p4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->initSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V

    .line 715
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->getIntance()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;

    move-result-object v0

    invoke-virtual {v0, p2, p4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->deleteDeviceDataPartial(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V

    .line 716
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$5;

    invoke-direct {v0, p0, p2, p4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$5;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 723
    .local v7, searchNewData:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 727
    .end local v7           #searchNewData:Ljava/lang/Thread;
    :pswitch_1
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;->getIsFromHuaWei()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    invoke-virtual {v0, p2, p4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->lock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    invoke-virtual {v0, p2, p4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->unLock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    .line 731
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->getIntance()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;

    move-result-object v0

    invoke-virtual {p3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;->getDelList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p2, p4, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->deleteDeviceDataFromLastDel(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;Ljava/util/List;)V

    .line 732
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$6;

    move-object v1, p0

    move v2, p2

    move-object v3, p4

    move v4, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$6;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;ILcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 739
    .local v6, searchLstchangeData:Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 742
    .end local v6           #searchLstchangeData:Ljava/lang/Thread;
    :cond_1
    invoke-direct {p0, p2, p4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->initSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V

    .line 744
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->getIntance()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;

    move-result-object v0

    invoke-virtual {v0, p2, p4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->deleteDeviceDataPartial(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V

    .line 745
    invoke-interface {p1, p4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IMediaManager;->cacheAllMedia(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V

    goto :goto_0

    .line 749
    :pswitch_2
    invoke-direct {p0, p2, p4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->initSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V

    .line 751
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setIsContinue(IZ)V

    .line 752
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    invoke-virtual {v0, p2, p4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->lock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->getIntance()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;

    move-result-object v0

    invoke-virtual {v0, p2, p4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->deleteDeviceDataPartial(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V

    .line 754
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    invoke-virtual {v0, p2, p4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->unLock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    invoke-interface {p1, p4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IMediaManager;->cacheAllMedia(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V

    goto :goto_0

    .line 711
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getLastChangeMedia(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;II)V
    .locals 8
    .parameter "deviceId"
    .parameter "type"
    .parameter "systemUpdateID_small"
    .parameter "systemUpdateID_big"

    .prologue
    .line 843
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->lock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    .line 844
    const-string v2, ""

    .line 846
    .local v2, searchCriteria:Ljava/lang/String;
    const/4 v3, 0x0

    .line 847
    .local v3, startIndex:I
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 864
    :cond_0
    :goto_0
    :pswitch_0
    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->cacheSize:I

    const-string v5, ""

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->cacheMedia(ILjava/lang/String;IILjava/lang/String;Z)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;

    move-result-object v7

    .line 865
    .local v7, searchResultInfo:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;
    if-eqz v7, :cond_1

    .line 867
    invoke-direct {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->notifyMedia(I)V

    .line 868
    invoke-virtual {v7}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->getResultCount()I

    move-result v0

    add-int/2addr v3, v0

    .line 870
    :cond_1
    if-eqz v7, :cond_2

    .line 871
    invoke-virtual {v7}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->getResultCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 872
    :cond_2
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->unLock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    .line 873
    return-void

    .line 849
    .end local v7           #searchResultInfo:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(upnp:class derivedfrom \"object.item.imageItem\" and @refID exists false) and upnp:objectUpdateID:["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 850
    goto :goto_0

    .line 852
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(upnp:class derivedfrom \"object.item.videoItem\" and @refID exists false) and upnp:objectUpdateID:["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 853
    goto :goto_0

    .line 855
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(upnp:class derivedfrom \"object.item.audioItem\" and @refID exists false) and upnp:objectUpdateID:["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 856
    goto/16 :goto_0

    .line 858
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "((upnp:class derivedfrom \"object.item.imageItem\"  or upnp:class derivedfrom \"object.item.videoItem\") and @refID exists false) and upnp:objectUpdateID:["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 859
    goto/16 :goto_0

    .line 847
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private initSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V
    .locals 3
    .parameter "deviceId"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 681
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 701
    :goto_0
    :pswitch_0
    return-void

    .line 683
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    invoke-virtual {v0, p1, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setImageSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    .line 684
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    invoke-virtual {v0, p1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setImageSearchCount(II)V

    goto :goto_0

    .line 687
    :pswitch_2
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    invoke-virtual {v0, p1, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setVideoSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    .line 688
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    invoke-virtual {v0, p1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setVideoSearchCount(II)V

    goto :goto_0

    .line 691
    :pswitch_3
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    invoke-virtual {v0, p1, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setAudioSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    .line 692
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    invoke-virtual {v0, p1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setAudioSearchCount(II)V

    goto :goto_0

    .line 695
    :pswitch_4
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    invoke-virtual {v0, p1, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setImageVideoSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    .line 696
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    invoke-virtual {v0, p1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setImageVideoSearchCount(II)V

    goto :goto_0

    .line 681
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private notifyMedia(I)V
    .locals 2
    .parameter "deviceId"

    .prologue
    .line 633
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    .line 634
    .local v0, dmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;
    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->notifyMediaChanged(I)V

    .line 635
    return-void
.end method

.method private parseChangeRes(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;
    .locals 11
    .parameter "changeRes"

    .prologue
    const/4 v8, 0x0

    .line 770
    if-nez p1, :cond_1

    move-object v0, v8

    .line 832
    :cond_0
    :goto_0
    return-object v0

    .line 773
    :cond_1
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;-><init>()V

    .line 775
    .local v0, changeResInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;
    new-instance v3, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;

    invoke-direct {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;-><init>()V

    .line 777
    .local v3, handler:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 779
    .local v2, factory:Ljavax/xml/parsers/SAXParserFactory;
    const/4 v4, 0x0

    .line 780
    .local v4, parser:Ljavax/xml/parsers/SAXParser;
    const/4 v7, 0x0

    .line 783
    .local v7, xmlReader:Lorg/xml/sax/XMLReader;
    :try_start_0
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 791
    :goto_1
    if-nez v4, :cond_2

    move-object v0, v8

    .line 793
    goto :goto_0

    .line 784
    :catch_0
    move-exception v1

    .line 785
    .local v1, e:Ljavax/xml/parsers/ParserConfigurationException;
    const/4 v0, 0x0

    .line 786
    const-string v9, "DmcManager"

    const-string v10, "parseChangeRes happened ParserConfigurationException"

    invoke-static {v9, v10}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 787
    .end local v1           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v1

    .line 788
    .local v1, e:Lorg/xml/sax/SAXException;
    const/4 v0, 0x0

    .line 789
    const-string v9, "DmcManager"

    const-string v10, "parseChangeRes happened SAXException"

    invoke-static {v9, v10}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 797
    .end local v1           #e:Lorg/xml/sax/SAXException;
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    .line 802
    :goto_2
    if-nez v7, :cond_3

    move-object v0, v8

    .line 804
    goto :goto_0

    .line 798
    :catch_2
    move-exception v1

    .line 799
    .restart local v1       #e:Lorg/xml/sax/SAXException;
    const/4 v0, 0x0

    .line 800
    const-string v9, "DmcManager"

    const-string v10, "parseChangeRes happened SAXException"

    invoke-static {v9, v10}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 806
    .end local v1           #e:Lorg/xml/sax/SAXException;
    :cond_3
    invoke-interface {v7, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 807
    const/4 v5, 0x0

    .line 809
    .local v5, tempChangeRes:Ljava/io/StringReader;
    :try_start_2
    const-string v8, "&lt;"

    const-string v9, "<"

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 810
    const-string v8, "&quot;"

    const-string v9, "\""

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 811
    const-string v8, "&gt;"

    const-string v9, ">"

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 812
    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_4

    .line 813
    .end local v5           #tempChangeRes:Ljava/io/StringReader;
    .local v6, tempChangeRes:Ljava/io/StringReader;
    :try_start_3
    new-instance v8, Lorg/xml/sax/InputSource;

    invoke-direct {v8, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v7, v8}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_5

    .line 821
    if-eqz v6, :cond_4

    .line 822
    invoke-virtual {v6}, Ljava/io/StringReader;->close()V

    :cond_4
    move-object v5, v6

    .line 826
    .end local v6           #tempChangeRes:Ljava/io/StringReader;
    .restart local v5       #tempChangeRes:Ljava/io/StringReader;
    :cond_5
    :goto_3
    if-eqz v0, :cond_0

    .line 827
    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->getSystemUpdateId()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;->setSystemUpdateID(I)V

    .line 828
    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->getDelList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;->setDelList(Ljava/util/List;)V

    .line 829
    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->getIsFromHuawei()Z

    move-result v8

    invoke-virtual {v0, v8}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;->setIsFromHuaWei(Z)V

    goto/16 :goto_0

    .line 814
    :catch_3
    move-exception v1

    .line 815
    .local v1, e:Ljava/io/IOException;
    :goto_4
    const/4 v0, 0x0

    .line 816
    :try_start_4
    const-string v8, "DmcManager"

    const-string v9, "parseChangeRes happened IOException"

    invoke-static {v8, v9}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 821
    if-eqz v5, :cond_5

    .line 822
    invoke-virtual {v5}, Ljava/io/StringReader;->close()V

    goto :goto_3

    .line 817
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 818
    .local v1, e:Lorg/xml/sax/SAXException;
    :goto_5
    const/4 v0, 0x0

    .line 819
    :try_start_5
    const-string v8, "DmcManager"

    const-string v9, "parseChangeRes happened SAXException"

    invoke-static {v8, v9}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 821
    if-eqz v5, :cond_5

    .line 822
    invoke-virtual {v5}, Ljava/io/StringReader;->close()V

    goto :goto_3

    .line 820
    .end local v1           #e:Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v8

    .line 821
    :goto_6
    if-eqz v5, :cond_6

    .line 822
    invoke-virtual {v5}, Ljava/io/StringReader;->close()V

    .line 824
    :cond_6
    throw v8

    .line 820
    .end local v5           #tempChangeRes:Ljava/io/StringReader;
    .restart local v6       #tempChangeRes:Ljava/io/StringReader;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6           #tempChangeRes:Ljava/io/StringReader;
    .restart local v5       #tempChangeRes:Ljava/io/StringReader;
    goto :goto_6

    .line 817
    .end local v5           #tempChangeRes:Ljava/io/StringReader;
    .restart local v6       #tempChangeRes:Ljava/io/StringReader;
    :catch_5
    move-exception v1

    move-object v5, v6

    .end local v6           #tempChangeRes:Ljava/io/StringReader;
    .restart local v5       #tempChangeRes:Ljava/io/StringReader;
    goto :goto_5

    .line 814
    .end local v5           #tempChangeRes:Ljava/io/StringReader;
    .restart local v6       #tempChangeRes:Ljava/io/StringReader;
    :catch_6
    move-exception v1

    move-object v5, v6

    .end local v6           #tempChangeRes:Ljava/io/StringReader;
    .restart local v5       #tempChangeRes:Ljava/io/StringReader;
    goto :goto_4
.end method


# virtual methods
.method public addDevice(ILcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V
    .locals 3
    .parameter "deviceId"
    .parameter "dev"

    .prologue
    .line 160
    const-string v0, "DmcManager"

    const-string v1, "DLNAService.addDevice start"

    invoke-static {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    if-nez p2, :cond_0

    .line 163
    const-string v0, "DmcManager"

    const-string v1, "DLNAService.addDevice dev==null"

    invoke-static {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local p2
    :goto_0
    return-void

    .line 166
    .restart local p2
    :cond_0
    const-string v0, "DmcManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DLNAService.addDevice New Device add: deviceId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DeviceName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->deviceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    instance-of v0, p2, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->deviceDMSMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    const-string v0, "DmcManager"

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DLNAService.addDevice New DMS Device add: deviceId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DeviceName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->deviceDMSMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_1
    instance-of v0, p2, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->deviceDMRMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    const-string v0, "DmcManager"

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DLNAService.addDevice New DMR Device add: deviceId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DeviceName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 183
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-static {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->deviceDMRMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast p2, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    .end local p2
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_2
    const-string v0, "DmcManager"

    const-string v1, "DLNAService.addDevice end"

    invoke-static {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public addDeviceListener(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 248
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->deviceChangeListenerList:Ljava/util/List;

    monitor-enter v1

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->deviceChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    monitor-exit v1

    .line 251
    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addHuaweiIdListener(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/HuaweiIdChangedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 884
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->huaweiIdChangedListenerList:Ljava/util/List;

    monitor-enter v1

    .line 885
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->huaweiIdChangedListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 884
    monitor-exit v1

    .line 887
    return-void

    .line 884
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addMediaChangedListener(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaChangedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 314
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->mediaChangedListenerList:Ljava/util/List;

    monitor-enter v1

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->mediaChangedListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    monitor-exit v1

    .line 317
    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearAllDevice()V
    .locals 6

    .prologue
    .line 223
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->deviceMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 224
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 225
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 236
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    invoke-virtual {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->removeAllDeviceSearchState()V

    .line 237
    return-void

    .line 226
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 227
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 228
    .local v1, deviceId:I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;

    .line 230
    .local v0, dev:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->removeDevice(I)V

    .line 231
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->getIntance()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->deleteDeviceData(I)V

    .line 232
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v4

    check-cast v4, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    .line 233
    const/4 v5, 0x1

    invoke-virtual {v4, v5, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->notifyDeviceChanged(ILcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V

    goto :goto_0
.end method

.method public getDeviceById(I)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    .locals 2
    .parameter "deviceId"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->deviceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;

    return-object v0
.end method

.method public getDeviceDMRMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->deviceDMRMap:Ljava/util/Map;

    return-object v0
.end method

.method public getDeviceDMSMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->deviceDMSMap:Ljava/util/Map;

    return-object v0
.end method

.method public getDeviceMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->deviceMap:Ljava/util/Map;

    return-object v0
.end method

.method public getDmcMediaManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcMediaManager;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmcMediaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcMediaManager;

    return-object v0
.end method

.method public getDmsDeviceDataStateManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    return-object v0
.end method

.method public getPartMedia(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;Z)V
    .locals 17
    .parameter "deviceId"
    .parameter "type"
    .parameter "isNotifyChanged"

    .prologue
    .line 523
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 629
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 526
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->AUDIO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    move/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->lock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    const/4 v8, 0x0

    .line 531
    .local v8, audioMediaCount:I
    const/4 v9, 0x0

    .line 532
    .local v9, audioSearchResultInfo:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;
    const-string v3, "upnp:class derivedfrom \"object.item.audioItem\" and @refID exists false"

    const/4 v4, 0x0

    .line 533
    move-object/from16 v0, p0

    iget v5, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->cacheSize:I

    const-string v6, ""

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 532
    invoke-direct/range {v1 .. v7}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->cacheMedia(ILjava/lang/String;IILjava/lang/String;Z)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;

    move-result-object v9

    .line 534
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->PART_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setAudioSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    .line 535
    if-eqz v9, :cond_1

    .line 536
    invoke-virtual {v9}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->getMediaTotalCount()I

    move-result v8

    .line 537
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move/from16 v0, p1

    invoke-virtual {v1, v0, v8}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setAudioSearchCount(II)V

    .line 538
    invoke-virtual {v9}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->getSystemUpdateId()I

    move-result v14

    .line 539
    .local v14, tempSystemUpdateID:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getSystemUpdateID(I)I

    move-result v1

    if-le v14, v1, :cond_1

    if-nez p3, :cond_1

    .line 540
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move/from16 v0, p1

    invoke-virtual {v1, v0, v14}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setSystemUpdateID(II)V

    .line 543
    .end local v14           #tempSystemUpdateID:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->AUDIO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    move/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->unLock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    .line 544
    const-string v1, "DmcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dealWithDeviceChanged  deviceId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    searchAudioResultInfo unLock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    if-eqz p3, :cond_0

    .line 547
    invoke-direct/range {p0 .. p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->notifyMedia(I)V

    goto/16 :goto_0

    .line 551
    .end local v8           #audioMediaCount:I
    .end local v9           #audioSearchResultInfo:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    move/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->lock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    const/4 v10, 0x0

    .line 555
    .local v10, imageMediaCount:I
    const/4 v11, 0x0

    .line 557
    .local v11, imageSearchResultInfo:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;
    const-string v3, "upnp:class derivedfrom \"object.item.imageItem\" and @refID exists false"

    const/4 v4, 0x0

    .line 558
    move-object/from16 v0, p0

    iget v5, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->cacheSize:I

    const-string v6, ""

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 557
    invoke-direct/range {v1 .. v7}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->cacheMedia(ILjava/lang/String;IILjava/lang/String;Z)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;

    move-result-object v11

    .line 559
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    .line 560
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->PART_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    .line 559
    move/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setImageSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    .line 561
    if-eqz v11, :cond_2

    .line 562
    invoke-virtual {v11}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->getMediaTotalCount()I

    move-result v10

    .line 563
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move/from16 v0, p1

    invoke-virtual {v1, v0, v10}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setImageSearchCount(II)V

    .line 564
    invoke-virtual {v11}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->getSystemUpdateId()I

    move-result v14

    .line 565
    .restart local v14       #tempSystemUpdateID:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getSystemUpdateID(I)I

    move-result v1

    if-le v14, v1, :cond_2

    .line 566
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move/from16 v0, p1

    invoke-virtual {v1, v0, v14}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setSystemUpdateID(II)V

    .line 569
    .end local v14           #tempSystemUpdateID:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    move/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->unLock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    .line 570
    const-string v1, "DmcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dealWithDeviceChanged  deviceId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    searchImageResultInfo unLock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    if-eqz p3, :cond_0

    .line 573
    invoke-direct/range {p0 .. p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->notifyMedia(I)V

    goto/16 :goto_0

    .line 577
    .end local v10           #imageMediaCount:I
    .end local v11           #imageSearchResultInfo:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    move/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->lock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    const/4 v15, 0x0

    .line 581
    .local v15, videoMediaCount:I
    const/16 v16, 0x0

    .line 583
    .local v16, videoSearchResultInfo:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;
    const-string v3, "upnp:class derivedfrom \"object.item.videoItem\" and @refID exists false"

    const/4 v4, 0x0

    .line 584
    move-object/from16 v0, p0

    iget v5, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->cacheSize:I

    const-string v6, ""

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 583
    invoke-direct/range {v1 .. v7}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->cacheMedia(ILjava/lang/String;IILjava/lang/String;Z)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;

    move-result-object v16

    .line 585
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->PART_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setVideoSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    .line 586
    if-eqz v16, :cond_3

    .line 587
    invoke-virtual/range {v16 .. v16}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->getMediaTotalCount()I

    move-result v15

    .line 588
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move/from16 v0, p1

    invoke-virtual {v1, v0, v15}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setVideoSearchCount(II)V

    .line 589
    invoke-virtual/range {v16 .. v16}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->getSystemUpdateId()I

    move-result v14

    .line 590
    .restart local v14       #tempSystemUpdateID:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getSystemUpdateID(I)I

    move-result v1

    if-le v14, v1, :cond_3

    .line 591
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move/from16 v0, p1

    invoke-virtual {v1, v0, v14}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setSystemUpdateID(II)V

    .line 594
    .end local v14           #tempSystemUpdateID:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    move/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->unLock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    .line 595
    const-string v1, "DmcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dealWithDeviceChanged  deviceId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    searchVideoResultInfo unLock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    if-eqz p3, :cond_0

    .line 599
    invoke-direct/range {p0 .. p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->notifyMedia(I)V

    goto/16 :goto_0

    .line 603
    .end local v15           #videoMediaCount:I
    .end local v16           #videoSearchResultInfo:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE_VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    move/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->lock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    const/4 v12, 0x0

    .line 607
    .local v12, mediaCount:I
    const/4 v13, 0x0

    .line 608
    .local v13, searchResultInfo:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;
    const-string v3, "(upnp:class derivedfrom \"object.item.imageItem\"  or upnp:class derivedfrom \"object.item.videoItem\") and @refID exists false"

    const/4 v4, 0x0

    .line 609
    move-object/from16 v0, p0

    iget v5, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->cacheSize:I

    const-string v6, ""

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 608
    invoke-direct/range {v1 .. v7}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->cacheMedia(ILjava/lang/String;IILjava/lang/String;Z)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;

    move-result-object v13

    .line 610
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->PART_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setImageVideoSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    .line 611
    if-eqz v13, :cond_4

    .line 612
    invoke-virtual {v13}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->getMediaTotalCount()I

    move-result v12

    .line 613
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move/from16 v0, p1

    invoke-virtual {v1, v0, v12}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setImageVideoSearchCount(II)V

    .line 614
    invoke-virtual {v13}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->getSystemUpdateId()I

    move-result v14

    .line 615
    .restart local v14       #tempSystemUpdateID:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getSystemUpdateID(I)I

    move-result v1

    if-le v14, v1, :cond_4

    .line 616
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move/from16 v0, p1

    invoke-virtual {v1, v0, v14}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setSystemUpdateID(II)V

    .line 619
    .end local v14           #tempSystemUpdateID:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE_VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    move/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->unLock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    .line 620
    const-string v1, "DmcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dealWithDeviceChanged  deviceId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    searchImageVideoResultInfo unLock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    if-eqz p3, :cond_0

    .line 623
    invoke-direct/range {p0 .. p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->notifyMedia(I)V

    goto/16 :goto_0

    .line 523
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getRemoteDmrDeviceList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, dmrDeviceClients:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;>;"
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->deviceDMRMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    return-object v0
.end method

.method public getRemoteDmsDeviceList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v0, dmsDeviceClients:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;>;"
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->deviceDMSMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 150
    return-object v0
.end method

.method public notifyDeviceChanged(ILcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V
    .locals 8
    .parameter "type"
    .parameter "dev"

    .prologue
    .line 278
    if-nez p2, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->deviceChangeListenerList:Ljava/util/List;

    monitor-enter v6

    .line 283
    :try_start_0
    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->deviceChangeListenerList:Ljava/util/List;

    .line 284
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    .line 283
    if-nez v5, :cond_2

    .line 281
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    if-nez p1, :cond_0

    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/util/GlobalVariables;->isAutoSearchWhenDmsDeviceUp()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 307
    const-string v5, "DmcManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "notifyDeviceChanged  id:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;->getDeviceId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  dev:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-direct {p0, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dealWithDeviceChanged(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V

    goto :goto_0

    .line 285
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 286
    .local v2, item:Ljava/lang/Object;
    if-nez v2, :cond_3

    .line 287
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 281
    .end local v2           #item:Ljava/lang/Object;
    .end local v3           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 289
    .restart local v2       #item:Ljava/lang/Object;
    .restart local v3       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;>;"
    :cond_3
    :try_start_2
    move-object v0, v2

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;

    move-object v4, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 291
    .local v4, listener:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;
    if-nez p1, :cond_4

    .line 292
    :try_start_3
    invoke-interface {v4, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;->onDeviceUp(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, ex:Ljava/lang/Throwable;
    :try_start_4
    const-string v5, "DmcManager"

    const-string v7, "notifyDeviceChanged happened Exception"

    invoke-static {v5, v7}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 294
    .end local v1           #ex:Ljava/lang/Throwable;
    :cond_4
    :try_start_5
    invoke-interface {v4, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;->onDeviceDown(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method public notifyHuaweiIdChanged(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;Ljava/lang/String;)V
    .locals 8
    .parameter "remoteDmrDevice"
    .parameter "newHuaweiId"

    .prologue
    .line 913
    if-nez p1, :cond_0

    .line 935
    :goto_0
    return-void

    .line 916
    :cond_0
    iget-object v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->huaweiIdChangedListenerList:Ljava/util/List;

    monitor-enter v6

    .line 918
    :try_start_0
    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->huaweiIdChangedListenerList:Ljava/util/List;

    .line 919
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/HuaweiIdChangedListener;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    .line 918
    if-nez v5, :cond_1

    .line 916
    monitor-exit v6

    goto :goto_0

    .end local v3           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/HuaweiIdChangedListener;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 920
    .restart local v3       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/HuaweiIdChangedListener;>;"
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 921
    .local v2, item:Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 922
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 926
    :cond_2
    :try_start_2
    move-object v0, v2

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/HuaweiIdChangedListener;

    move-object v4, v0

    .line 927
    .local v4, listener:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/HuaweiIdChangedListener;
    invoke-interface {v4, p1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/HuaweiIdChangedListener;->onHuaweiIdChanged(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 928
    .end local v4           #listener:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/HuaweiIdChangedListener;
    :catch_0
    move-exception v1

    .line 929
    .local v1, ex:Ljava/lang/Throwable;
    :try_start_3
    const-string v5, "DmcManager"

    const-string v7, "notifyHuaweiIdChanged() happened Throwable"

    invoke-static {v5, v7}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public notifyMediaChanged(I)V
    .locals 8
    .parameter "deviceId"

    .prologue
    .line 374
    iget-object v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->mediaChangedListenerList:Ljava/util/List;

    monitor-enter v6

    .line 375
    :try_start_0
    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->mediaChangedListenerList:Ljava/util/List;

    .line 376
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaChangedListener;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    .line 375
    if-nez v5, :cond_0

    .line 374
    monitor-exit v6

    .line 391
    return-void

    .line 377
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 378
    .local v2, item:Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 379
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 374
    .end local v2           #item:Ljava/lang/Object;
    .end local v3           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaChangedListener;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 382
    .restart local v2       #item:Ljava/lang/Object;
    .restart local v3       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaChangedListener;>;"
    :cond_1
    :try_start_1
    move-object v0, v2

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaChangedListener;

    move-object v4, v0

    .line 383
    .local v4, listener:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaChangedListener;
    invoke-interface {v4, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaChangedListener;->onMediaChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 384
    .end local v4           #listener:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaChangedListener;
    :catch_0
    move-exception v1

    .line 385
    .local v1, e:Ljava/lang/Throwable;
    :try_start_2
    const-string v5, "DmcManager"

    const-string v7, "notifyMediaChanged "

    invoke-static {v5, v7, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public notifyMediaChangedFromUniswitch(ILjava/lang/String;)V
    .locals 9
    .parameter "deviceId"
    .parameter "changeRes"

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->getDeviceById(I)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;

    move-result-object v7

    .line 335
    .local v7, remoteDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    if-nez v7, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v8, v7

    .line 338
    check-cast v8, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;

    .line 339
    .local v8, remoteDmsDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;
    invoke-interface {v8}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;->getMediaManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IMediaManager;

    move-result-object v1

    .line 340
    .local v1, mediaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IMediaManager;
    if-eqz v1, :cond_0

    .line 343
    invoke-direct {p0, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->parseChangeRes(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;

    move-result-object v3

    .line 344
    .local v3, changeResInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getSystemUpdateID(I)I

    move-result v5

    .line 345
    .local v5, systemUpdateID:I
    if-eqz v3, :cond_2

    .line 346
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;->getSystemUpdateID()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setSystemUpdateID(II)V

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getAudioSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-eq v0, v2, :cond_3

    .line 349
    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->AUDIO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getAudioSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v6

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dealWithMediaChange(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IMediaManager;ILcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    .line 352
    :cond_3
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->getDeviceById(I)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;->getProductType()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    move-result-object v0

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->Unknown:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    if-ne v0, v2, :cond_5

    .line 353
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-eq v0, v2, :cond_4

    .line 354
    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v6

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dealWithMediaChange(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IMediaManager;ILcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    .line 357
    :cond_4
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getVideoSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-eq v0, v2, :cond_0

    .line 358
    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getVideoSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v6

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dealWithMediaChange(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IMediaManager;ILcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    goto :goto_0

    .line 363
    :cond_5
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageVideoSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v0

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    if-eq v0, v2, :cond_0

    .line 364
    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE_VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getImageVideoSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v6

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dealWithMediaChange(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IMediaManager;ILcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    goto/16 :goto_0
.end method

.method public removeDevice(I)V
    .locals 4
    .parameter "deviceId"

    .prologue
    .line 197
    const-string v1, "DmcManager"

    const-string v2, "DLNAService.removeDevice start"

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->deviceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->deviceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;

    .line 201
    .local v0, dev:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    instance-of v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;

    if-eqz v1, :cond_2

    .line 202
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->deviceDMSMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v1, "DmcManager"

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DLNAService.removeDevice DMS Device removed: deviceId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DeviceName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 204
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->deviceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    invoke-virtual {v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->removeDeviceSearchState(I)V

    .line 215
    .end local v0           #dev:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    :cond_1
    const-string v1, "DmcManager"

    const-string v2, "DLNAService.removeDevice end"

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void

    .line 206
    .restart local v0       #dev:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    :cond_2
    instance-of v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->deviceDMRMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v1, "DmcManager"

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DLNAService.removeDevice DMR Device removed: deviceId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DeviceName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 209
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeDeviceListener(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 262
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->deviceChangeListenerList:Ljava/util/List;

    monitor-enter v1

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->deviceChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 262
    monitor-exit v1

    .line 265
    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeHuaweiIdListener(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/HuaweiIdChangedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 898
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->huaweiIdChangedListenerList:Ljava/util/List;

    monitor-enter v1

    .line 899
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->huaweiIdChangedListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 898
    monitor-exit v1

    .line 902
    return-void

    .line 898
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeMediaChangedListener(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaChangedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 321
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->mediaChangedListenerList:Ljava/util/List;

    monitor-enter v1

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->mediaChangedListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 321
    monitor-exit v1

    .line 324
    return-void

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public searchDevice()V
    .locals 1

    .prologue
    .line 448
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiDmcSearchDevice()I

    .line 449
    return-void
.end method
