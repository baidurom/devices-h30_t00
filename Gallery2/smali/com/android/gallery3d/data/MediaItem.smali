.class public abstract Lcom/android/gallery3d/data/MediaItem;
.super Lcom/android/gallery3d/data/MediaObject;
.source "MediaItem.java"


# static fields
.field private static final BYTESBUFFER_SIZE:I = 0x32000

.field private static final BYTESBUFFE_POOL_SIZE:I = 0x4

.field public static final CACHED_IMAGE_QUALITY:I = 0x5f

.field public static final IMAGE_ERROR:I = -0x1

.field public static final IMAGE_READY:I = 0x0

.field public static final IMAGE_WAIT:I = 0x1

.field public static final INVALID_LATLNG:D = 0.0

.field public static final MICROTHUMBNAIL_TARGET_SIZE:I = 0xc8

.field public static final MIME_TYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final THUMBNAIL_TARGET_SIZE:I = 0x280

.field public static final TYPE_MICROTHUMBNAIL:I = 0x2

.field public static final TYPE_THUMBNAIL:I = 0x1

.field private static final sMicroThumbBufferPool:Lcom/android/gallery3d/data/BytesBufferPool;

.field private static sMicroThumbPool:Lcom/android/gallery3d/data/BitmapPool;

.field private static sMicrothumbnailTargetSize:I

.field private static final sThumbPool:Lcom/android/gallery3d/data/BitmapPool;

.field private static sThumbnailTargetSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 53
    const/16 v0, 0xc8

    sput v0, Lcom/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    .line 55
    new-instance v0, Lcom/android/gallery3d/data/BytesBufferPool;

    const v1, 0x32000

    invoke-direct {v0, v2, v1}, Lcom/android/gallery3d/data/BytesBufferPool;-><init>(II)V

    sput-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbBufferPool:Lcom/android/gallery3d/data/BytesBufferPool;

    .line 58
    const/16 v0, 0x280

    sput v0, Lcom/android/gallery3d/data/MediaItem;->sThumbnailTargetSize:I

    .line 59
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_FACTORY:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/gallery3d/data/BitmapPool;

    invoke-direct {v0, v2}, Lcom/android/gallery3d/data/BitmapPool;-><init>(I)V

    :goto_0
    sput-object v0, Lcom/android/gallery3d/data/MediaItem;->sThumbPool:Lcom/android/gallery3d/data/BitmapPool;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;J)V
    .locals 0
    .parameter "path"
    .parameter "version"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/data/MediaObject;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 77
    return-void
.end method

.method public static getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbBufferPool:Lcom/android/gallery3d/data/BytesBufferPool;

    return-object v0
.end method

.method public static getMicroThumbPool()Lcom/android/gallery3d/data/BitmapPool;
    .locals 1

    .prologue
    .line 160
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_FACTORY:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbPool:Lcom/android/gallery3d/data/BitmapPool;

    if-nez v0, :cond_0

    .line 161
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->initializeMicroThumbPool()V

    .line 163
    :cond_0
    sget-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbPool:Lcom/android/gallery3d/data/BitmapPool;

    return-object v0
.end method

.method public static getTargetSize(I)I
    .locals 2
    .parameter "type"

    .prologue
    .line 148
    packed-switch p0, :pswitch_data_0

    .line 154
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "should only request thumb/microthumb from cache"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :pswitch_0
    sget v0, Lcom/android/gallery3d/data/MediaItem;->sThumbnailTargetSize:I

    .line 152
    :goto_0
    return v0

    :pswitch_1
    sget v0, Lcom/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getThumbPool()Lcom/android/gallery3d/data/BitmapPool;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/android/gallery3d/data/MediaItem;->sThumbPool:Lcom/android/gallery3d/data/BitmapPool;

    return-object v0
.end method

.method private static initializeMicroThumbPool()V
    .locals 4

    .prologue
    .line 175
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_FACTORY:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/gallery3d/data/BitmapPool;

    sget v1, Lcom/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    sget v2, Lcom/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/data/BitmapPool;-><init>(III)V

    :goto_0
    sput-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbPool:Lcom/android/gallery3d/data/BitmapPool;

    .line 179
    return-void

    .line 175
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setThumbnailSizes(II)V
    .locals 1
    .parameter "size"
    .parameter "microSize"

    .prologue
    .line 182
    sput p0, Lcom/android/gallery3d/data/MediaItem;->sThumbnailTargetSize:I

    .line 183
    sget v0, Lcom/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    if-eq v0, p1, :cond_0

    .line 184
    sput p1, Lcom/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    .line 185
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->initializeMicroThumbPool()V

    .line 187
    :cond_0
    return-void
.end method


# virtual methods
.method public canForward()Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method public closeParcelFileDescriptor()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public getDateInMs()J
    .locals 2

    .prologue
    .line 84
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFaceInfos()[Lcom/android/gallery3d/data/FaceInfo;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFaceInfosAsync()[Lcom/android/gallery3d/data/FaceInfo;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFaces()[Lcom/android/gallery3d/data/Face;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string v0, ""

    return-object v0
.end method

.method public getFullImageRotation()I
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v0

    return v0
.end method

.method public abstract getHeight()I
.end method

.method public getLatLong([D)V
    .locals 3
    .parameter "latLong"

    .prologue
    const-wide/16 v1, 0x0

    .line 96
    const/4 v0, 0x0

    aput-wide v1, p1, v0

    .line 97
    const/4 v0, 0x1

    aput-wide v1, p1, v0

    .line 98
    return-void
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNormalizedDate()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 127
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSubType()I
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceOffset()J
    .locals 2

    .prologue
    .line 191
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract getWidth()I
.end method

.method public hasCountConstraint()Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public hasRight()Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public isVoiceImage()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public abstract requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public requestImage(ILcom/android/gallery3d/util/GalleryUtils$Params;)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .parameter "type"
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/gallery3d/util/GalleryUtils$Params;",
            ")",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Lcom/android/gallery3d/util/GalleryUtils$DataBundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end method

.method public requestPersonImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .parameter "personId"
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
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract setMavListener(Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)V
.end method
