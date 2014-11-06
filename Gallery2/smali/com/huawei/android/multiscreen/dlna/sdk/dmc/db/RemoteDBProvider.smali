.class public Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;
.super Ljava/lang/Object;
.source "RemoteDBProvider.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType:[I = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RemoteDBProvider"


# direct methods
.method static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType:[I

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
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType:[I

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
    .line 435
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider$1;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider$1;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method public getAllMediaInfoList(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Ljava/util/List;
    .locals 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v0, mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;>;"
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 106
    :pswitch_0
    const-string v1, "RemoteDBProvider"

    const-string v2, "GetAllMediaInfoList error, mediaType cann\'t distinguished!"

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return-object v0

    .line 94
    :pswitch_1
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getAllAudios()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 97
    :pswitch_2
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getAllImages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 100
    :pswitch_3
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getAllVideos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 103
    :pswitch_4
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getAllImagesAndVideos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getBaseInfoById(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;II)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;
    .locals 3
    .parameter "type"
    .parameter "deviceId"
    .parameter "id"

    .prologue
    .line 402
    const/4 v0, 0x0

    .line 404
    .local v0, baseInfo:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 417
    :goto_0
    const-string v1, "RemoteDBProvider"

    const-string v2, "GetTotalMedia error, mediaType cann\'t distinguished!"

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :goto_1
    return-object v0

    .line 406
    :pswitch_0
    invoke-static {p2, p3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getAudioInfoById(II)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;

    move-result-object v0

    .line 407
    goto :goto_1

    .line 409
    :pswitch_1
    invoke-static {p2, p3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getImageInfoById(II)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;

    move-result-object v0

    .line 410
    goto :goto_1

    .line 412
    :pswitch_2
    invoke-static {p2, p3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getVideoInfoById(II)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;

    move-result-object v0

    .line 413
    goto :goto_1

    .line 415
    :pswitch_3
    invoke-static {p2, p3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getFolderInfoById(II)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;

    move-result-object v0

    goto :goto_0

    .line 404
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getChildrenByDeviceIdAndFolderId_together(ILjava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "deviceId"
    .parameter "folderId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v0, baseInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;>;"
    invoke-static {p1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getFolderChildrenByDeviceIdAndFolderId(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 232
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 235
    invoke-static {p1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getImageChildrenByDeviceIdAndFolderId(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 234
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 237
    invoke-static {p1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getAudioChildrenByDeviceIdAndFolderId(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 236
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 239
    invoke-static {p1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getVideoChildrenByDeviceIdAndFolderId(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 238
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 241
    return-object v0
.end method

.method public getFolderInfoByFolderId(ILjava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;
    .locals 1
    .parameter "deviceId"
    .parameter "folderId"

    .prologue
    .line 45
    invoke-static {p1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getFolderInfoByFolderId(ILjava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMediaBySearchQuery(ILjava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "deviceId"
    .parameter "mQuery"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v0, mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;>;"
    if-ltz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-object v0

    .line 275
    :cond_1
    invoke-static {p1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getImageBySearchQuery(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 276
    invoke-static {p1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getAudioBySearchQuery(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 277
    invoke-static {p1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getVideoBySearchQuery(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getMediaBySearchQuery(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "mQuery"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v0, mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;>;"
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-object v0

    .line 295
    :cond_1
    invoke-static {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getImageBySearchQuery(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 296
    invoke-static {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getAudioBySearchQuery(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 297
    invoke-static {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getVideoBySearchQuery(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getMediaInfoListByDeviceId(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;I)Ljava/util/List;
    .locals 3
    .parameter "type"
    .parameter "deviceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v0, mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;>;"
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 74
    :pswitch_0
    const-string v1, "RemoteDBProvider"

    const-string v2, "GetMediaInfoListById Err, MediaType can\'t distinguished!"

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return-object v0

    .line 62
    :pswitch_1
    invoke-static {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getAudioByDeviceId(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 65
    :pswitch_2
    invoke-static {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getImagesByDeviceId(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 68
    :pswitch_3
    invoke-static {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getVideoByDeviceId(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 71
    :pswitch_4
    invoke-static {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getImageAndVideoByDeviceId(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getMediaInfoListByDeviceIdWithStartAndLimit(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;III)Ljava/util/List;
    .locals 3
    .parameter "type"
    .parameter "deviceId"
    .parameter "start"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;",
            "III)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v0, mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;>;"
    if-ltz p3, :cond_0

    if-gtz p4, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-object v0

    .line 322
    :cond_1
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 340
    :pswitch_0
    const-string v1, "RemoteDBProvider"

    const-string v2, "GetTotalMedia error, mediaType cann\'t distinguished!"

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 325
    :pswitch_1
    invoke-static {p2, p3, p4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getAudioByDeviceIdWithPagination(III)Ljava/util/List;

    move-result-object v1

    .line 324
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 329
    :pswitch_2
    invoke-static {p2, p3, p4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getImagesByDeviceIdWithPagination(III)Ljava/util/List;

    move-result-object v1

    .line 328
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 333
    :pswitch_3
    invoke-static {p2, p3, p4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getVideoByDeviceIdWithPagination(III)Ljava/util/List;

    move-result-object v1

    .line 332
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 337
    :pswitch_4
    invoke-static {p2, p3, p4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getImageAndVideoByDeviceIdWithPagination(III)Ljava/util/List;

    move-result-object v1

    .line 336
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 322
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

.method public getMediaInfoWithStartAndLimit(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;II)Ljava/util/List;
    .locals 3
    .parameter "type"
    .parameter "start"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v0, mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;>;"
    if-ltz p2, :cond_0

    if-gtz p3, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-object v0

    .line 364
    :cond_1
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 382
    :pswitch_0
    const-string v1, "RemoteDBProvider"

    const-string v2, "GetTotalMedia error, mediaType cann\'t distinguished!"

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    :pswitch_1
    invoke-static {p2, p3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getAudioWithPagination(II)Ljava/util/List;

    move-result-object v1

    .line 366
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 371
    :pswitch_2
    invoke-static {p2, p3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getImagesWithPagination(II)Ljava/util/List;

    move-result-object v1

    .line 370
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 375
    :pswitch_3
    invoke-static {p2, p3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getVideoWithPagination(II)Ljava/util/List;

    move-result-object v1

    .line 374
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 379
    :pswitch_4
    invoke-static {p2, p3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getImageAndVideoWithPagination(II)Ljava/util/List;

    move-result-object v1

    .line 378
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 364
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

.method public getTotalFolderByDeviceIdAndFolderId(ILjava/lang/String;)I
    .locals 1
    .parameter "deviceId"
    .parameter "folderId"

    .prologue
    .line 255
    invoke-static {p1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getTotalFolderByDeviceIdAndFolderId(ILjava/lang/String;)I

    move-result v0

    .line 254
    return v0
.end method

.method public getTotalMedia(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)I
    .locals 3
    .parameter "type"

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 158
    .local v0, ret:I
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 172
    :pswitch_0
    const-string v1, "RemoteDBProvider"

    const-string v2, "GetTotalMedia error, mediaType cann\'t distinguished!"

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return v0

    .line 160
    :pswitch_1
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getTotalAudio()I

    move-result v0

    .line 161
    goto :goto_0

    .line 163
    :pswitch_2
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getTotalImage()I

    move-result v0

    .line 164
    goto :goto_0

    .line 166
    :pswitch_3
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getTotalVideo()I

    move-result v0

    .line 167
    goto :goto_0

    .line 169
    :pswitch_4
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getTotalImageAndVideo()I

    move-result v0

    .line 170
    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getTotalMediaByDeviceId(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;I)I
    .locals 3
    .parameter "type"
    .parameter "deviceId"

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 126
    .local v0, ret:I
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 140
    :pswitch_0
    const-string v1, "RemoteDBProvider"

    const-string v2, "GetTotalMediaByDeviceId error, mediaType cann\'t distinguished!"

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    return v0

    .line 128
    :pswitch_1
    invoke-static {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getTotalAudioByDeviceId(I)I

    move-result v0

    .line 129
    goto :goto_0

    .line 131
    :pswitch_2
    invoke-static {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getTotalImageByDeviceId(I)I

    move-result v0

    .line 132
    goto :goto_0

    .line 134
    :pswitch_3
    invoke-static {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getTotalVideoByDeviceId(I)I

    move-result v0

    .line 135
    goto :goto_0

    .line 137
    :pswitch_4
    invoke-static {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getTotalImageAndVideoByDeviceId(I)I

    move-result v0

    .line 138
    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 434
    return-void
.end method
