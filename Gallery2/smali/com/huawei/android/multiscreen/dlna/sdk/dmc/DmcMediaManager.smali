.class public Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcMediaManager;
.super Ljava/lang/Object;
.source "DmcMediaManager.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcMediaManager;


# static fields
.field private static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType:[I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;


# direct methods
.method static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcMediaManager;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType:[I

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
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcMediaManager;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType:[I

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
    .line 31
    const-string v0, "DmcMediaManager"

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcMediaManager;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcMediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    .line 29
    return-void
.end method


# virtual methods
.method public getMediaInfo(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Ljava/util/List;
    .locals 4
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

    .line 39
    if-nez p1, :cond_1

    move-object v0, v1

    .line 69
    :cond_0
    :goto_0
    return-object v0

    .line 42
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcMediaManager;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 62
    :pswitch_0
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcMediaManager;->TAG:Ljava/lang/String;

    const-string v3, "getMediaInfo MediaType Err"

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move-object v0, v1

    .line 69
    goto :goto_0

    .line 46
    :pswitch_1
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcMediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    .line 47
    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getAllMediaInfoList(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Ljava/util/List;

    move-result-object v2

    .line 46
    invoke-static {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/MediaInfoUtil;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 48
    goto :goto_1

    .line 50
    :pswitch_2
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcMediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    .line 51
    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->AUDIO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getAllMediaInfoList(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Ljava/util/List;

    move-result-object v2

    .line 50
    invoke-static {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/MediaInfoUtil;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 52
    goto :goto_1

    .line 54
    :pswitch_3
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcMediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    .line 55
    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getAllMediaInfoList(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Ljava/util/List;

    move-result-object v2

    .line 54
    invoke-static {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/MediaInfoUtil;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 56
    goto :goto_1

    .line 58
    :pswitch_4
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcMediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    .line 59
    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE_VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getAllMediaInfoList(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Ljava/util/List;

    move-result-object v2

    .line 58
    invoke-static {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/MediaInfoUtil;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 60
    goto :goto_1

    .line 44
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
    .locals 4
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

    .line 76
    if-nez p1, :cond_1

    move-object v0, v1

    .line 105
    :cond_0
    :goto_0
    return-object v0

    .line 79
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcMediaManager;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 99
    :pswitch_0
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcMediaManager;->TAG:Ljava/lang/String;

    const-string v3, "getMediaInfoWithPagination MediaType Err"

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move-object v0, v1

    .line 105
    goto :goto_0

    .line 83
    :pswitch_1
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcMediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    .line 84
    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v2, v3, p2, p3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getMediaInfoWithStartAndLimit(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;II)Ljava/util/List;

    move-result-object v2

    .line 83
    invoke-static {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/MediaInfoUtil;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 85
    goto :goto_1

    .line 87
    :pswitch_2
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcMediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    .line 88
    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->AUDIO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v2, v3, p2, p3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getMediaInfoWithStartAndLimit(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;II)Ljava/util/List;

    move-result-object v2

    .line 87
    invoke-static {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/MediaInfoUtil;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 89
    goto :goto_1

    .line 91
    :pswitch_3
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcMediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    .line 92
    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v2, v3, p2, p3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getMediaInfoWithStartAndLimit(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;II)Ljava/util/List;

    move-result-object v2

    .line 91
    invoke-static {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/MediaInfoUtil;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 93
    goto :goto_1

    .line 95
    :pswitch_4
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcMediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    .line 96
    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE_VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v2, v3, p2, p3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getMediaInfoWithStartAndLimit(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;II)Ljava/util/List;

    move-result-object v2

    .line 95
    invoke-static {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/MediaInfoUtil;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 97
    goto :goto_1

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getTotalMedia(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)I
    .locals 3
    .parameter "type"

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    .line 114
    :cond_0
    const/4 v0, 0x0

    .line 116
    .local v0, mediaCount:I
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcMediaManager;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 129
    :goto_1
    :pswitch_0
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcMediaManager;->TAG:Ljava/lang/String;

    const-string v2, "getTotalMedia MediaType Err"

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :pswitch_1
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcMediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getTotalMedia(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)I

    move-result v0

    .line 119
    goto :goto_0

    .line 121
    :pswitch_2
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcMediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->AUDIO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getTotalMedia(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)I

    move-result v0

    .line 122
    goto :goto_0

    .line 124
    :pswitch_3
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcMediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getTotalMedia(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)I

    move-result v0

    .line 125
    goto :goto_0

    .line 127
    :pswitch_4
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcMediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE_VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getTotalMedia(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)I

    move-result v0

    goto :goto_1

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public searchMediaInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "query"
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
    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v0, mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcMediaManager;->provider:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;

    .line 141
    invoke-virtual {v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/RemoteDBProvider;->getMediaBySearchQuery(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 140
    invoke-static {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/MediaInfoUtil;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 147
    .end local v0           #mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    :goto_0
    return-object v0

    .restart local v0       #mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
