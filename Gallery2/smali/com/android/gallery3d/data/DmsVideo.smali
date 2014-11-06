.class public Lcom/android/gallery3d/data/DmsVideo;
.super Lcom/android/gallery3d/data/MediaItem;
.source "DmsVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/DmsVideo$1;,
        Lcom/android/gallery3d/data/DmsVideo$BitmapJob;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AirSharing_DmsVideo"


# instance fields
.field private final mContentType:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mHeight:I

.field private mMediaId:Ljava/lang/String;

.field private final mMediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;

.field private mMediaSize:I

.field private final mUri:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;ILcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;Lcom/android/gallery3d/data/DmsContext;)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "deviceId"
    .parameter "mediaInfo"
    .parameter "dmsContext"

    .prologue
    .line 37
    invoke-static {}, Lcom/android/gallery3d/data/DmsVideo;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 38
    iput-object p4, p0, Lcom/android/gallery3d/data/DmsVideo;->mMediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;

    .line 39
    invoke-virtual {p4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getItemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsVideo;->mMediaId:Ljava/lang/String;

    .line 40
    invoke-virtual {p4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getSize()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/DmsVideo;->mMediaSize:I

    .line 41
    invoke-virtual {p4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsVideo;->mFileName:Ljava/lang/String;

    .line 42
    invoke-virtual {p4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/DmsVideo;->mWidth:I

    .line 43
    invoke-virtual {p4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/DmsVideo;->mHeight:I

    .line 44
    invoke-virtual {p4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsVideo;->mUri:Ljava/lang/String;

    .line 45
    invoke-virtual {p4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsVideo;->mContentType:Ljava/lang/String;

    .line 46
    return-void
.end method

.method constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;ILjava/lang/String;Lcom/android/gallery3d/data/DmsContext;)V
    .locals 6
    .parameter "path"
    .parameter "app"
    .parameter "deviceId"
    .parameter "objectId"
    .parameter "dmsContext"

    .prologue
    .line 49
    invoke-static {p5, p3, p4}, Lcom/android/gallery3d/data/DmsDevice;->getObjectInfo(Lcom/android/gallery3d/data/DmsContext;ILjava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/data/DmsVideo;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;ILcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;Lcom/android/gallery3d/data/DmsContext;)V

    .line 51
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/data/DmsVideo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsVideo;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/gallery3d/data/DmsVideo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/gallery3d/data/DmsVideo;->mFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/data/DmsVideo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsVideo;->mUri:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsVideo;->mUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/android/gallery3d/data/DmsVideo;->mHeight:I

    return v0
.end method

.method public getMediaInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsVideo;->mMediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;

    return-object v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x4

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsVideo;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsVideo;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/gallery3d/data/DmsVideo;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 129
    iget v0, p0, Lcom/android/gallery3d/data/DmsVideo;->mMediaSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0x80

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/android/gallery3d/data/DmsVideo;->mWidth:I

    return v0
.end method

.method public requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/android/gallery3d/data/DmsVideo$BitmapJob;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/data/DmsVideo$BitmapJob;-><init>(Lcom/android/gallery3d/data/DmsVideo;Lcom/android/gallery3d/data/DmsVideo$1;)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot request a large image to a dms video!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMavListener(Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 145
    return-void
.end method

.method public updateContent(Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsVideo;->mMediaId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getItemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsVideo;->mMediaId:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/android/gallery3d/data/DmsVideo;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 90
    :cond_0
    return-void
.end method
