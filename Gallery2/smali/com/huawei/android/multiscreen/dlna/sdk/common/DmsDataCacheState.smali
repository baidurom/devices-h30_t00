.class public Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;
.super Ljava/lang/Object;
.source "DmsDataCacheState.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType:[I


# instance fields
.field private audioLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private audioSearchCount:I

.field private audioSearchState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

.field private deviceId:I

.field private imageLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private imageSearchCount:I

.field private imageSearchState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

.field private image_VideoLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private image_videoSearchCount:I

.field private image_videoSearchState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

.field private isAudioSearchFailed:Z

.field private isContinue:Z

.field private isImageSearchFailed:Z

.field private isImage_VideoSearchFailed:Z

.field private isVideoSearchFailed:Z

.field private systemUpdateID:I

.field private videoLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private videoSearchCount:I

.field private videoSearchState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;


# direct methods
.method static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I
    .locals 3

    .prologue
    .line 19
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType:[I

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
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType:[I

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
    const/4 v0, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->isAudioSearchFailed:Z

    .line 33
    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->isImageSearchFailed:Z

    .line 35
    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->isVideoSearchFailed:Z

    .line 37
    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->isImage_VideoSearchFailed:Z

    .line 39
    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->audioSearchCount:I

    .line 41
    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->imageSearchCount:I

    .line 43
    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->videoSearchCount:I

    .line 45
    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->image_videoSearchCount:I

    .line 49
    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->systemUpdateID:I

    .line 51
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->audioLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 53
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->imageLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 55
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->videoLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 57
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->image_VideoLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 65
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->deviceId:I

    .line 66
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->audioSearchState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    .line 67
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->image_videoSearchState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    .line 68
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->videoSearchState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    .line 69
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->imageSearchState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->isContinue:Z

    .line 71
    return-void
.end method


# virtual methods
.method public getAudioSearchCount()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->audioSearchCount:I

    return v0
.end method

.method public getAudioSearchState()Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->audioSearchState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    return-object v0
.end method

.method public getDeviceId()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->deviceId:I

    return v0
.end method

.method public getImageSearchCount()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->imageSearchCount:I

    return v0
.end method

.method public getImageSearchState()Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->imageSearchState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    return-object v0
.end method

.method public getImageVideoSearchCount()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->image_videoSearchCount:I

    return v0
.end method

.method public getImageVideoSearchState()Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->image_videoSearchState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    return-object v0
.end method

.method public getIsAudioSearchFailed()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->isAudioSearchFailed:Z

    return v0
.end method

.method public getIsContinue()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->isContinue:Z

    return v0
.end method

.method public getIsImageSearchFailed()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->isImageSearchFailed:Z

    return v0
.end method

.method public getIsImage_VideoSearchFailed()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->isImage_VideoSearchFailed:Z

    return v0
.end method

.method public getIsVideoSearchFailed()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->isVideoSearchFailed:Z

    return v0
.end method

.method public getLock(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 2
    .parameter "type"

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    .line 101
    :cond_0
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 109
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->image_VideoLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_0

    .line 103
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->audioLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_0

    .line 105
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->imageLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_0

    .line 107
    :pswitch_2
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->videoLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getSystemUpdateID()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->systemUpdateID:I

    return v0
.end method

.method public getVideoSearchCount()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->videoSearchCount:I

    return v0
.end method

.method public getVideoSearchState()Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->videoSearchState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    return-object v0
.end method

.method public setAudioSearchCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 327
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->audioSearchCount:I

    .line 328
    return-void
.end method

.method public setAudioSearchState(Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->audioSearchState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    .line 184
    return-void
.end method

.method public setDeviceId(I)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 88
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->deviceId:I

    .line 89
    return-void
.end method

.method public setImageSearchCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 336
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->imageSearchCount:I

    .line 337
    return-void
.end method

.method public setImageSearchState(Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->imageSearchState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    .line 193
    return-void
.end method

.method public setImageVideoSearchCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 354
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->image_videoSearchCount:I

    .line 355
    return-void
.end method

.method public setImageVideoSearchState(Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->image_videoSearchState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    .line 211
    return-void
.end method

.method public setIsAudioSearchFailed(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 219
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->isAudioSearchFailed:Z

    .line 220
    return-void
.end method

.method public setIsContinue(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "isContinue"

    .prologue
    .line 363
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->isContinue:Z

    .line 364
    return-void
.end method

.method public setIsImageSearchFailed(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 228
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->isImageSearchFailed:Z

    .line 229
    return-void
.end method

.method public setIsImage_VideoSearchFailed(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 246
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->isImage_VideoSearchFailed:Z

    .line 247
    return-void
.end method

.method public setIsVideoSearchFailed(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 237
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->isVideoSearchFailed:Z

    .line 238
    return-void
.end method

.method public setSystemUpdateID(I)V
    .locals 0
    .parameter "systemUpdateID"

    .prologue
    .line 372
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->systemUpdateID:I

    .line 373
    return-void
.end method

.method public setVideoSearchCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 345
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->videoSearchCount:I

    .line 346
    return-void
.end method

.method public setVideoSearchState(Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->videoSearchState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    .line 202
    return-void
.end method
