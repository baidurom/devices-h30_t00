.class public Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
.super Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
.source "DmsMediaInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected deviceId:I

.field protected id:I

.field protected itemId:Ljava/lang/String;

.field protected itemParentId:Ljava/lang/String;

.field protected upnpClass:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo$1;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo$1;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .locals 2

    .prologue
    .line 233
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;-><init>()V

    .line 234
    .local v0, dmsMediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->addDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setAddDate(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setArtist(Ljava/lang/String;)V

    .line 236
    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->deviceId:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setDeviceId(I)V

    .line 237
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->duration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setDuration(Ljava/lang/String;)V

    .line 238
    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->height:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setHeight(I)V

    .line 239
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->iconUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setIconUri(Ljava/lang/String;)V

    .line 240
    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setId(I)V

    .line 241
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setItemId(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->itemParentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setItemParentId(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->mediaInfoType:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setMediaInfoType(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V

    .line 244
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setMimeType(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setName(Ljava/lang/String;)V

    .line 246
    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->size:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setSize(I)V

    .line 247
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setTitle(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->upnpClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setUpnpClass(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setUrl(Ljava/lang/String;)V

    .line 250
    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->width:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setWidth(I)V

    .line 252
    return-object v0
.end method

.method public bridge synthetic copy()Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->copy()Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->deviceId:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->id:I

    return v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getItemParentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->itemParentId:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 53
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "<DIDL-Lite xmlns=\"urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/\" xmlns:sec=\"http://www.sec.co.kr/dlna\" xmlns:dlna=\"urn:schemas-dlna-org:metadata-1-0/\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:upnp=\"urn:schemas-upnp-org:metadata-1-0/upnp/\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string v1, "<item id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->itemId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v1, " parentID=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->itemParentId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "null"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v1, " restricted=\"1\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string v1, "<dc:title>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</dc:title>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v1, "<dc:date>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->addDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</dc:date>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v1, "<upnp:class>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->upnpClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</upnp:class>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v1, "<res size=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    const-string v1, " protocolInfo=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v1, " duration=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->duration:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</res>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v1, "</item></DIDL-Lite>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->itemId:Ljava/lang/String;

    goto/16 :goto_0

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->itemParentId:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public getUpnpClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->upnpClass:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceId(I)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 111
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->deviceId:I

    .line 112
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 92
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->id:I

    .line 93
    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0
    .parameter "itemId"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->itemId:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setItemParentId(Ljava/lang/String;)V
    .locals 0
    .parameter "itemParentId"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->itemParentId:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setUpnpClass(Ljava/lang/String;)V
    .locals 0
    .parameter "upnpClass"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->upnpClass:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 179
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->deviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->itemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->upnpClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->itemParentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->mediaInfoType:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->addDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->iconUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->duration:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    return-void
.end method
