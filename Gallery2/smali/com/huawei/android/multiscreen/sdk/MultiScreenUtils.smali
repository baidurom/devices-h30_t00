.class public Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;
.super Ljava/lang/Object;
.source "MultiScreenUtils.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType:[I = null

.field public static final INT_MAX_RETRYCOUNT:I = 0x3

.field public static final INT_RETRYTIME:I = 0x1f4

.field public static final STRING_DLNA_SERVICE:Ljava/lang/String; = "DlnaService"

.field public static final STRING_MIRROR_SERVICE:Ljava/lang/String; = "MirrorService"

.field private static final TAG:Ljava/lang/String; = "MultiScreenUtils"

.field private static instance:Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;


# instance fields
.field private currDmrDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

.field dlnaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

.field private gServerList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mirrorManager:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;

.field private scanThread:Ljava/lang/Thread;

.field sinkDevice:Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;


# direct methods
.method static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType:[I

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
    sput-object v0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType:[I

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

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->instance:Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->currDmrDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    .line 44
    iput-object v1, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->dlnaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    .line 50
    iput-object v1, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->mirrorManager:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;

    .line 55
    iput-object v1, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->sinkDevice:Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;

    .line 60
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->gServerList:Ljava/util/Vector;

    .line 85
    iput-object v1, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->scanThread:Ljava/lang/Thread;

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->instance:Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;

    return-object v0
.end method

.method private isDmcStart()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 388
    iget-object v2, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->dlnaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 389
    iget-object v2, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->dlnaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getStackInitMode()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    move-result-object v0

    .line 390
    .local v0, initMode:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMC:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    invoke-virtual {v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 391
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMR_DMC:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    invoke-virtual {v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 392
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMS_DMC:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    invoke-virtual {v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 393
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMS_DMR_DMC:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    invoke-virtual {v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 394
    :cond_0
    const-string v1, "MultiScreenUtils"

    const-string v2, "Dlna\u542f\u52a8 \u4e14\u672aDmc\u6a21\u5f0f"

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v1, 0x1

    .line 402
    .end local v0           #initMode:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;
    :goto_0
    return v1

    .line 397
    .restart local v0       #initMode:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;
    :cond_1
    const-string v2, "MultiScreenUtils"

    const-string v3, "Dlna\u542f\u52a8 \u4f46\u4e0d\u662fDmc\u6a21\u5f0f"

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 401
    .end local v0           #initMode:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;
    :cond_2
    const-string v2, "MultiScreenUtils"

    const-string v3, "Dlna\u672a\u542f\u52a8\uff0c\u8bf7\u5148\u542f\u52a8Dlna"

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private pushMediaToDmr(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z
    .locals 4
    .parameter "dmrDev"
    .parameter "media"

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 307
    .local v0, ret:Z
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->getMediaInfoType()Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    move-result-object v2

    if-nez v2, :cond_0

    .line 308
    const-string v2, "MultiScreenUtils"

    const-string v3, "\u5a92\u4f53\u7c7b\u578b\u672a\u77e5"

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 330
    .end local v0           #ret:Z
    .local v1, ret:I
    :goto_0
    return v1

    .line 311
    .end local v1           #ret:I
    .restart local v0       #ret:Z
    :cond_0
    invoke-static {}, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I

    move-result-object v2

    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->getMediaInfoType()Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 326
    :pswitch_0
    const-string v2, "MultiScreenUtils"

    const-string v3, "\u5a92\u4f53\u7c7b\u578b\u672a\u77e5"

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    :pswitch_1
    move v1, v0

    .line 330
    .restart local v1       #ret:I
    goto :goto_0

    .line 313
    .end local v1           #ret:I
    :pswitch_2
    invoke-interface {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;->getTransportController()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;->push(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z

    move-result v0

    .line 314
    goto :goto_1

    .line 317
    :pswitch_3
    invoke-interface {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;->getTransportController()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;->push(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z

    move-result v0

    .line 318
    if-eqz v0, :cond_1

    .line 320
    invoke-interface {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;->getTransportController()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;->play()Z

    move-result v0

    .line 322
    goto :goto_1

    .line 311
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private searchDmrByUDN(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;
    .locals 9
    .parameter "sinkUdn"

    .prologue
    .line 352
    const/4 v2, 0x0

    .line 353
    .local v2, dmrDev:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;
    const/4 v4, 0x0

    .line 355
    .local v4, dmrUdn:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 356
    const-string v5, "MultiScreenUtils"

    const-string v6, "searchDmrByUdn failed, sinkUdn == null"

    invoke-static {v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 377
    .end local v2           #dmrDev:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;
    .local v3, dmrDev:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;
    :goto_0
    return-object v3

    .line 360
    .end local v3           #dmrDev:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;
    .restart local v2       #dmrDev:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;
    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->sinkUdnConvertToDmrUdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 362
    const-string v5, "MultiScreenUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "dmrUdn = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v5, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->dlnaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    invoke-interface {v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v5

    .line 365
    invoke-interface {v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;->getRemoteDmrDeviceList()Ljava/util/List;

    move-result-object v1

    .line 367
    .local v1, devList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    :goto_1
    move-object v3, v2

    .line 377
    .end local v2           #dmrDev:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;
    .restart local v3       #dmrDev:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;
    goto :goto_0

    .line 367
    .end local v3           #dmrDev:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;
    .restart local v2       #dmrDev:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    .line 368
    .local v0, dev:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;
    const-string v6, "MultiScreenUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "dev.udn= "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;->getUDN()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;->getUDN()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 370
    move-object v2, v0

    .line 372
    const-string v5, "MultiScreenUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u627e\u5230Sink\u5bf9\u5e94\u7684 Dmr\u8bbe\u5907 name"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sinkUdnConvertToDmrUdn(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "sinkUdn"

    .prologue
    .line 338
    const/4 v0, 0x0

    .line 342
    .local v0, dmrUdn:Ljava/lang/String;
    const-string v1, "3333"

    const-string v2, "1111"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 343
    return-object v0
.end method


# virtual methods
.method public dlnaToMirror()Z
    .locals 4

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 235
    .local v0, ret:Z
    iget-object v2, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->currDmrDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->mirrorManager:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;

    if-eqz v2, :cond_4

    .line 236
    iget-object v2, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->mirrorManager:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;

    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->getMRSource()Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;

    move-result-object v1

    .line 237
    .local v1, source:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;
    if-eqz v1, :cond_3

    .line 238
    sget-object v2, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;->CONNECTED:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;->getMirrorStatus()Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 240
    iget-object v2, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->sinkDevice:Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->currDmrDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;->getTransportController()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;->stop()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 245
    iget-object v2, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->currDmrDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;->getTransportController()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;->stopSync()V

    .line 246
    iget-object v2, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->mirrorManager:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;

    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->getMRSource()Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->sinkDevice:Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;->connect(Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;)I

    move-result v2

    if-nez v2, :cond_1

    .line 248
    const-string v2, "MultiScreenUtils"

    const-string v3, "Mirror connect success"

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v0, 0x1

    .line 250
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->sinkDevice:Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;

    .line 293
    .end local v1           #source:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;
    :cond_0
    :goto_0
    return v0

    .line 254
    .restart local v1       #source:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;
    :cond_1
    const-string v2, "MultiScreenUtils"

    const-string v3, "Mirror connect failed"

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 259
    :cond_2
    const-string v2, "MultiScreenUtils"

    const-string v3, "Dlna stop push err!"

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    :cond_3
    const-string v2, "MultiScreenUtils"

    const-string v3, "Mirror \u5bf9\u8c61\u83b7\u53d6\u5931\u8d25"

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 290
    .end local v1           #source:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;
    :cond_4
    const-string v2, "MultiScreenUtils"

    const-string v3, "currDmrDevice==null \u5f53\u524d\u65e0Dlna\u63a8\u9001"

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public findDlnaDeviceByMirrorDevice(Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;
    .locals 2
    .parameter "mirrorDevice"

    .prologue
    .line 439
    if-nez p1, :cond_0

    .line 440
    const/4 v1, 0x0

    .line 448
    :goto_0
    return-object v1

    .line 443
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;->getUdn()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, sinkUdn:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->searchDmrByUDN(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->currDmrDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    .line 448
    iget-object v1, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->currDmrDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    goto :goto_0
.end method

.method public isTheSameDevice(Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;)Z
    .locals 5
    .parameter "mirrorDevice"
    .parameter "dmrDevice"

    .prologue
    const/4 v2, 0x0

    .line 415
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 426
    :cond_0
    :goto_0
    return v2

    .line 420
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;->getUdn()Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, sinkUdn:Ljava/lang/String;
    const-string v3, "3333"

    const-string v4, "1111"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, dmrUdn:Ljava/lang/String;
    invoke-interface {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;->getUDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 424
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public mirrorToDlna(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z
    .locals 10
    .parameter "media"

    .prologue
    .line 160
    const/4 v1, 0x0

    .line 161
    .local v1, ret:Z
    const/4 v3, 0x0

    .line 163
    .local v3, sinkUdn:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v6

    iput-object v6, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->dlnaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    .line 164
    invoke-static {}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->getInstance()Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;

    move-result-object v6

    iput-object v6, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->mirrorManager:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;

    .line 165
    const-string v6, "MultiScreenUtils"

    const-string v7, "in mirrorToDlna"

    invoke-static {v6, v7}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v6, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->dlnaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->mirrorManager:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;

    if-nez v6, :cond_1

    .line 167
    :cond_0
    const-string v6, "MultiScreenUtils"

    .line 168
    const-string v7, "mirrorToDlna failed dlnaService or mirrorService isn\'t start"

    .line 167
    invoke-static {v6, v7}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 221
    .end local v1           #ret:Z
    .local v2, ret:I
    :goto_0
    return v2

    .line 172
    .end local v2           #ret:I
    .restart local v1       #ret:Z
    :cond_1
    iget-object v6, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->mirrorManager:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;

    invoke-virtual {v6}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->getMRSource()Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;

    move-result-object v4

    .line 174
    .local v4, source:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;
    if-nez v4, :cond_2

    .line 176
    const-string v6, "MultiScreenUtils"

    const-string v7, "can not get source"

    invoke-static {v6, v7}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 177
    .restart local v2       #ret:I
    goto :goto_0

    .line 179
    .end local v2           #ret:I
    :cond_2
    invoke-virtual {v4}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;->getConnectedDevice()Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;

    move-result-object v0

    .line 180
    .local v0, device:Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;
    invoke-virtual {v4}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;->getMirrorStatus()Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    move-result-object v5

    .line 181
    .local v5, status:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;
    const-string v6, "MultiScreenUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "source.getDev.udn= "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;->getUdn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 182
    const-string v8, "mirrorStatus = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;->getMirrorStatus()Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    move-result-object v8

    sget-object v9, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;->CONNECTED:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    invoke-virtual {v8, v9}, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 181
    invoke-static {v6, v7}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->isDmcStart()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 185
    invoke-virtual {v4}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;->getMirrorStatus()Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    move-result-object v6

    sget-object v7, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;->CONNECTED:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    invoke-virtual {v6, v7}, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 187
    invoke-virtual {v4}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;->getConnectedDevice()Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;

    move-result-object v6

    iput-object v6, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->sinkDevice:Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;

    .line 189
    iget-object v6, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->sinkDevice:Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;

    if-eqz v6, :cond_3

    .line 191
    iget-object v6, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->sinkDevice:Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;

    invoke-virtual {v6}, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;->getUdn()Ljava/lang/String;

    move-result-object v3

    .line 195
    :cond_3
    invoke-direct {p0, v3}, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->searchDmrByUDN(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    move-result-object v6

    iput-object v6, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->currDmrDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    .line 197
    iget-object v6, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->currDmrDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    if-eqz v6, :cond_6

    .line 199
    invoke-virtual {v4}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;->disconnect()I

    move-result v6

    if-eqz v6, :cond_4

    .line 201
    const-string v6, "MultiScreenUtils"

    const-string v7, "Mirror disconnect failed"

    invoke-static {v6, v7}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 202
    .restart local v2       #ret:I
    goto :goto_0

    .line 205
    .end local v2           #ret:I
    :cond_4
    iget-object v6, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->currDmrDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    invoke-direct {p0, v6, p1}, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->pushMediaToDmr(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 207
    const/4 v1, 0x1

    :goto_1
    move v2, v1

    .line 221
    .restart local v2       #ret:I
    goto/16 :goto_0

    .line 211
    .end local v2           #ret:I
    :cond_5
    const-string v6, "MultiScreenUtils"

    const-string v7, "\u5a92\u4f53\u63a8\u9001\u5931\u8d25  \u91cd\u65b0\u8fde\u63a5Mirror"

    invoke-static {v6, v7}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v6, p0, Lcom/huawei/android/multiscreen/sdk/MultiScreenUtils;->sinkDevice:Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;

    invoke-virtual {v4, v6}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;->connect(Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;)I

    goto :goto_1

    .line 215
    :cond_6
    const-string v6, "MultiScreenUtils"

    const-string v7, "\u627e\u4e0d\u5230Sink \u5bf9\u5e94\u7684Dmr\u8bbe\u5907"

    invoke-static {v6, v7}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 219
    :cond_7
    const-string v6, "MultiScreenUtils"

    const-string v7, "mirror \u8fde\u63a5\u72b6\u6001\u9519\u8bef"

    invoke-static {v6, v7}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
