.class public Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType:[I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected addDate:Ljava/lang/String;

.field protected artist:Ljava/lang/String;

.field protected duration:Ljava/lang/String;

.field protected height:I

.field protected iconUri:Ljava/lang/String;

.field protected mediaInfoType:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

.field protected mimeType:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected size:I

.field protected title:Ljava/lang/String;

.field protected url:Ljava/lang/String;

.field protected width:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I
    .locals 3

    .prologue
    .line 25
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType:[I

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
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType:[I

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
    .line 432
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo$1;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo$1;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
    .locals 2

    .prologue
    .line 463
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;-><init>()V

    .line 464
    .local v0, mediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->addDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->setAddDate(Ljava/lang/String;)V

    .line 465
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->setArtist(Ljava/lang/String;)V

    .line 466
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->duration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->setDuration(Ljava/lang/String;)V

    .line 467
    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->height:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->setHeight(I)V

    .line 468
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->iconUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->setIconUri(Ljava/lang/String;)V

    .line 469
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->mediaInfoType:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->setMediaInfoType(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V

    .line 470
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->setMimeType(Ljava/lang/String;)V

    .line 471
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->setName(Ljava/lang/String;)V

    .line 472
    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->size:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->setSize(I)V

    .line 473
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->setTitle(Ljava/lang/String;)V

    .line 474
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->setUrl(Ljava/lang/String;)V

    .line 475
    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->width:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->setWidth(I)V

    .line 476
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method public getAddDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->addDate:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->height:I

    return v0
.end method

.method public getIconUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->iconUri:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaInfoType()Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->mediaInfoType:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    return-object v0
.end method

.method public getMetaData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->isLocalFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    const/4 v1, 0x0

    .line 178
    :goto_0
    return-object v1

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 165
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "<DIDL-Lite xmlns=\"urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/\" xmlns:sec=\"http://www.sec.co.kr/dlna\" xmlns:dlna=\"urn:schemas-dlna-org:metadata-1-0/\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:upnp=\"urn:schemas-upnp-org:metadata-1-0/upnp/\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    const-string v1, "<item id=\"0\" parentID=\"0\" restricted=\"1\"><dc:title>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->title:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "</dc:title><upnp:class>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->getUpnpClass()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "</upnp:class><res size=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->size:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\" protocolInfo=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->getProtocolInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->url:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "</res></item>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    const-string v1, "</DIDL-Lite>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected getProtocolInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "http-get:*:"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->mimeType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "*"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->size:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method protected getUpnpClass()Ljava/lang/String;
    .locals 3

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, upnpClass:Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->mediaInfoType:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    if-nez v1, :cond_0

    .line 94
    const/4 v1, 0x0

    .line 112
    :goto_0
    return-object v1

    .line 96
    :cond_0
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->mediaInfoType:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    move-object v1, v0

    .line 112
    goto :goto_0

    .line 98
    :pswitch_0
    const-string v0, "object.item.audioItem.musicTrack"

    .line 99
    goto :goto_1

    .line 101
    :pswitch_1
    const-string v0, "object.item.videoItem"

    .line 102
    goto :goto_1

    .line 104
    :pswitch_2
    const-string v0, "object.item.imageItem.photo"

    .line 105
    goto :goto_1

    .line 107
    :pswitch_3
    const-string v0, "object.container"

    .line 108
    goto :goto_1

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->width:I

    return v0
.end method

.method public isLocalFile()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 132
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->url:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->url:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAddDate(Ljava/lang/String;)V
    .locals 0
    .parameter "addDate"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->addDate:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .parameter "artist"

    .prologue
    .line 407
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->artist:Ljava/lang/String;

    .line 408
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 388
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->duration:Ljava/lang/String;

    .line 389
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 369
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->height:I

    .line 370
    return-void
.end method

.method public setIconUri(Ljava/lang/String;)V
    .locals 0
    .parameter "iconUri"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->iconUri:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setMediaInfoType(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V
    .locals 0
    .parameter "mediaInfoType"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->mediaInfoType:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    .line 238
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .parameter "mimeType"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->mimeType:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->name:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 332
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->size:I

    .line 333
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->title:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->url:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 350
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->width:I

    .line 351
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->mediaInfoType:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->addDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->iconUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->duration:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 427
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    return-void
.end method
