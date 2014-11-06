.class public Lcom/android/gallery3d/data/LocalImage;
.super Lcom/android/gallery3d/data/LocalMediaItem;
.source "LocalImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;,
        Lcom/android/gallery3d/data/LocalImage$LocalLargeImageRequest;,
        Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;,
        Lcom/android/gallery3d/data/LocalImage$FaceImageRequest;
    }
.end annotation


# static fields
.field private static final IMAGE_COLUMN_IS_HDR:Ljava/lang/String; = "is_hdr"

.field private static final INDEX_BUCKET_ID:I = 0xa

.field private static final INDEX_CAPTION:I = 0x1

.field private static final INDEX_DATA:I = 0x8

.field private static final INDEX_DATE_ADDED:I = 0x6

.field private static final INDEX_DATE_MODIFIED:I = 0x7

.field private static final INDEX_DATE_TAKEN:I = 0x5

.field private static final INDEX_HDR:I = 0xe

.field private static final INDEX_HEIGHT:I = 0xd

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_LATITUDE:I = 0x3

.field private static final INDEX_LONGITUDE:I = 0x4

.field private static final INDEX_MIME_TYPE:I = 0x2

.field private static final INDEX_MPO_SUB_TYPE:I = 0x11

.field private static final INDEX_NORMALIZED_DATE:I = 0xf

.field private static final INDEX_ORIENTATION:I = 0x9

.field private static final INDEX_SIZE:I = 0xb

.field private static final INDEX_VOICE_OFFSET:I = 0x10

.field private static final INDEX_WIDTH:I = 0xc

.field static final ITEM_PATH:Lcom/android/gallery3d/data/Path; = null

.field public static final MPO_MIME_TYPE:Ljava/lang/String; = "image/mpo"

.field static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "LocalImage"

.field private static final mIsMpoSupported:Z


# instance fields
.field private bNeedScanFace:Z

.field private bStartGetFaceInfosAsyc:Z

.field private final mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mFace:[Lcom/android/gallery3d/data/FaceInfo;

.field public mMpoSubType:I

.field private mPanoramaMetadata:Lcom/android/gallery3d/app/PanoramaMetadataSupport;

.field private mVoiceOffset:J

.field public rotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 69
    const-string v0, "/local/image/item"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    .line 71
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->isMAVSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/LocalImage;->mIsMpoSupported:Z

    .line 99
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "title"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "0"

    #aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "strftime(\'%%Y%%m\', %s / 1000, \'unixepoch\') AS normalized_date"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "datetaken"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    #aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "0"

    #aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "mpo_type"

    #aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    .line 124
    invoke-static {}, Lcom/android/gallery3d/data/LocalImage;->updateWidthAndHeightProjection()V

    .line 125
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;I)V
    .locals 6
    .parameter "path"
    .parameter "application"
    .parameter "id"

    .prologue
    .line 163
    invoke-static {}, Lcom/android/gallery3d/data/LocalImage;->nextVersionNumber()J

    move-result-wide v3

    invoke-direct {p0, p1, v3, v4}, Lcom/android/gallery3d/data/LocalMediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 73
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/gallery3d/data/LocalImage;->mMpoSubType:I

    .line 145
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/gallery3d/data/LocalImage;->bNeedScanFace:Z

    .line 146
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/gallery3d/data/LocalImage;->bStartGetFaceInfosAsyc:Z

    .line 154
    new-instance v3, Lcom/android/gallery3d/app/PanoramaMetadataSupport;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/PanoramaMetadataSupport;-><init>(Lcom/android/gallery3d/data/MediaObject;)V

    iput-object v3, p0, Lcom/android/gallery3d/data/LocalImage;->mPanoramaMetadata:Lcom/android/gallery3d/app/PanoramaMetadataSupport;

    .line 164
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 165
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 166
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 167
    .local v2, uri:Landroid/net/Uri;
    sget-object v3, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    invoke-static {v1, v2, v3, p3}, Lcom/android/gallery3d/data/LocalAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 168
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 169
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot get cursor for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 172
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 183
    return-void

    .line 176
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->clearObject()V

    .line 178
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot find data for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "cursor"

    .prologue
    .line 157
    invoke-static {}, Lcom/android/gallery3d/data/LocalImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/LocalMediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/data/LocalImage;->mMpoSubType:I

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/data/LocalImage;->bNeedScanFace:Z

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/LocalImage;->bStartGetFaceInfosAsyc:Z

    .line 154
    new-instance v0, Lcom/android/gallery3d/app/PanoramaMetadataSupport;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PanoramaMetadataSupport;-><init>(Lcom/android/gallery3d/data/MediaObject;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalImage;->mPanoramaMetadata:Lcom/android/gallery3d/app/PanoramaMetadataSupport;

    .line 158
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 159
    invoke-direct {p0, p3}, Lcom/android/gallery3d/data/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V

    .line 160
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/app/GalleryApp;Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 63
    invoke-static/range {p0 .. p5}, Lcom/android/gallery3d/data/LocalImage;->decodeOriginEx(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/app/GalleryApp;Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static decodeOriginEx(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/app/GalleryApp;Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "jc"
    .parameter "application"
    .parameter "filePath"
    .parameter "type"
    .parameter "options"
    .parameter "targetSize"

    .prologue
    .line 690
    new-instance v2, Lcom/android/gallery3d/util/GalleryUtils$Params;

    invoke-direct {v2}, Lcom/android/gallery3d/util/GalleryUtils$Params;-><init>()V

    .line 691
    .local v2, params:Lcom/android/gallery3d/util/GalleryUtils$Params;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inOriginalFrame:Z

    .line 692
    iput p3, v2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inType:I

    .line 693
    iput p5, v2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inOriginalTargetSize:I

    .line 694
    iget-boolean v3, p4, Landroid/graphics/BitmapFactory$Options;->inPostProc:Z

    iput-boolean v3, v2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inPQEnhance:Z

    .line 695
    check-cast p1, Landroid/content/Context;

    .end local p1
    const/4 v3, 0x0

    invoke-static {p0, v2, p1, p2, v3}, Lcom/android/gallery3d/mediatek/RequestHelper;->requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;

    move-result-object v1

    .line 697
    .local v1, dataBundle:Lcom/android/gallery3d/util/GalleryUtils$DataBundle;
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    .line 698
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 697
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getExifOrientation(I)Ljava/lang/String;
    .locals 3
    .parameter "orientation"

    .prologue
    .line 441
    sparse-switch p0, :sswitch_data_0

    .line 451
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 443
    :sswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 449
    :goto_0
    return-object v0

    .line 445
    :sswitch_1
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 447
    :sswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 449
    :sswitch_3
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 441
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private loadFromCursor(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 186
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    .line 187
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    .line 188
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    .line 189
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    .line 190
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    .line 191
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    .line 192
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateAddedInSec:J

    .line 193
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateModifiedInSec:J

    .line 194
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 195
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/data/LocalImage;->rotation:I

    .line 196
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->bucketId:I

    .line 197
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    .line 198
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    .line 199
    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    .line 201
    const/4 v2, 0x0

    goto :goto_baidu_0

    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    :goto_baidu_0
    if-lez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->is_hdr:Z

    .line 203
    #const/16 v0, 0x10

    #invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    #move-result-wide v0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalImage;->mVoiceOffset:J

    .line 204
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/gallery3d/util/DrmUtils;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->isDrm:Z

    .line 205
    #const/16 v0, 0xf

    #invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    #move-result v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->normalizedDate:I

    .line 207
    #const/16 v0, 0x11

    #invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    #move-result v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/data/LocalImage;->mMpoSubType:I

    .line 209
    return-void

    :cond_0
    move v0, v1

    .line 201
    goto :goto_0
.end method

.method private updataWidthAndHeight()V
    .locals 4

    .prologue
    .line 550
    iget v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    if-eqz v2, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 555
    .local v1, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 556
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 557
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v2, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v2, :cond_0

    .line 558
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    .line 559
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 561
    .end local v1           #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 562
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocalImage"

    const-string v3, "updataWidthAndHeight "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static updateWidthAndHeightProjection()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 129
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "width"

    aput-object v2, v0, v1

    .line 131
    sget-object v0, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "height"

    aput-object v2, v0, v1

    .line 135
    :cond_0
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_IMAGES_COLUMNS_IS_HDR:Z

    const/4 v0, 0x0

    if-eqz v0, :cond_1

    .line 136
    sget-object v0, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string v2, "is_hdr"

    aput-object v2, v0, v1

    .line 139
    :cond_1
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_MEDIA_COLUMNS_HW_VOICE_OFFSET:Z

    const/4 v0, 0x0

    if-eqz v0, :cond_2

    .line 140
    sget-object v0, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x10

    const-string v2, "IFNULL(hw_voice_offset,0)"

    aput-object v2, v0, v1

    .line 142
    :cond_2
    return-void
.end method


# virtual methods
.method public clearCachedPanoramaSupport()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalImage;->mPanoramaMetadata:Lcom/android/gallery3d/app/PanoramaMetadataSupport;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/PanoramaMetadataSupport;->clearCachedValues()V

    .line 427
    return-void
.end method

.method public delete()V
    .locals 6

    .prologue
    .line 431
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 432
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 433
    .local v0, baseUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 436
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/DataManager;->broadcastLocalDeletion()V

    .line 438
    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 485
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 486
    .local v0, baseUri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 3

    .prologue
    .line 496
    invoke-super {p0}, Lcom/android/gallery3d/data/LocalMediaItem;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 497
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    const/16 v1, 0x3e6

    iget v2, p0, Lcom/android/gallery3d/data/LocalImage;->rotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 498
    iget-boolean v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->isDrm:Z

    if-eqz v1, :cond_0

    .line 499
    invoke-static {v0, p0}, Lcom/android/gallery3d/data/MediaDetails;->extractDrmInfo(Lcom/android/gallery3d/data/MediaDetails;Lcom/android/gallery3d/data/LocalMediaItem;)V

    .line 501
    :cond_0
    const-string v1, "image/jpeg"

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/MediaDetails;->extractExifInfo(Lcom/android/gallery3d/data/MediaDetails;Ljava/lang/String;)V

    .line 506
    :cond_1
    return-object v0
.end method

.method public getFaceInfos()[Lcom/android/gallery3d/data/FaceInfo;
    .locals 1

    .prologue
    .line 607
    sget-boolean v0, Lcom/android/gallery3d/app/FaceRecognitionSettings;->FACE_RECOGNITION_ENABLED:Z

    if-nez v0, :cond_0

    .line 608
    const/4 v0, 0x0

    .line 611
    :goto_0
    return-object v0

    .line 610
    :cond_0
    monitor-enter p0

    .line 611
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalImage;->mFace:[Lcom/android/gallery3d/data/FaceInfo;

    monitor-exit p0

    goto :goto_0

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFaceInfosAsync()[Lcom/android/gallery3d/data/FaceInfo;
    .locals 3

    .prologue
    .line 618
    sget-boolean v1, Lcom/android/gallery3d/app/FaceRecognitionSettings;->FACE_RECOGNITION_ENABLED:Z

    if-nez v1, :cond_0

    .line 619
    const/4 v1, 0x0

    .line 637
    :goto_0
    return-object v1

    .line 621
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/data/LocalImage;->updataWidthAndHeight()V

    .line 622
    monitor-enter p0

    .line 623
    :try_start_0
    iget-boolean v1, p0, Lcom/android/gallery3d/data/LocalImage;->bNeedScanFace:Z

    if-nez v1, :cond_1

    .line 624
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mFace:[Lcom/android/gallery3d/data/FaceInfo;

    monitor-exit p0

    goto :goto_0

    .line 638
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 627
    :cond_1
    :try_start_1
    const-string v1, "image/jpeg"

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "image/png"

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 628
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/data/LocalImage;->bNeedScanFace:Z

    .line 629
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mFace:[Lcom/android/gallery3d/data/FaceInfo;

    monitor-exit p0

    goto :goto_0

    .line 632
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mFace:[Lcom/android/gallery3d/data/FaceInfo;

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/gallery3d/data/LocalImage;->bStartGetFaceInfosAsyc:Z

    if-nez v1, :cond_3

    .line 633
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 634
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/data/LocalImage;->bStartGetFaceInfosAsyc:Z

    .line 635
    invoke-static {v0, p0}, Lcom/android/gallery3d/data/FaceInfoProcess;->getFaceInfosAsync(Landroid/content/ContentResolver;Lcom/android/gallery3d/data/LocalImage;)V

    .line 637
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mFace:[Lcom/android/gallery3d/data/FaceInfo;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x2

    return v0
.end method

.method public getPanoramaSupport(Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalImage;->mPanoramaMetadata:Lcom/android/gallery3d/app/PanoramaMetadataSupport;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/app/PanoramaMetadataSupport;->getPanoramaSupport(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    .line 422
    return-void
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lcom/android/gallery3d/data/LocalImage;->rotation:I

    return v0
.end method

.method public getSubType()I
    .locals 3

    .prologue
    .line 642
    const/4 v0, 0x0

    .line 643
    .local v0, subType:I
    const-string v1, "image/mpo"

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 645
    const v1, 0x20003

    iget v2, p0, Lcom/android/gallery3d/data/LocalImage;->mMpoSubType:I

    if-ne v1, v2, :cond_0

    .line 646
    or-int/lit8 v0, v0, 0x2

    .line 649
    :cond_0
    return v0
.end method

.method public getSupportedOperations()I
    .locals 7

    .prologue
    .line 367
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getStitchingProgressManager()Lcom/android/gallery3d/app/StitchingProgressManager;

    move-result-object v2

    .line 368
    .local v2, progressManager:Lcom/android/gallery3d/app/StitchingProgressManager;
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/StitchingProgressManager;->getProgress(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 369
    const/4 v1, 0x0

    .line 416
    :cond_0
    :goto_0
    return v1

    .line 372
    :cond_1
    const v1, 0x1800401

    .line 373
    .local v1, operation:I
    iget-wide v3, p0, Lcom/android/gallery3d/data/LocalImage;->mVoiceOffset:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    const/high16 v3, 0x1000

    or-int/2addr v1, v3

    .line 375
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/gallery3d/common/BitmapUtils;->isFilterShowSupported(Ljava/lang/String;)Z

    move-result v0

    .line 376
    .local v0, canEditOrCrop:Z
    iget-boolean v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->isDrm:Z

    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    .line 379
    or-int/lit16 v1, v1, 0x208

    .line 383
    :cond_3
    iget-boolean v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->isDrm:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->canForward()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 384
    :cond_4
    or-int/lit8 v1, v1, 0x4

    .line 387
    :cond_5
    iget-boolean v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->isDrm:Z

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->hasCountConstraint()Z

    move-result v3

    if-nez v3, :cond_7

    .line 389
    :cond_6
    or-int/lit8 v1, v1, 0x20

    .line 393
    :cond_7
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->isDrm:Z

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->hasRight()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 394
    :cond_8
    or-int/lit8 v1, v1, 0x40

    .line 398
    :cond_9
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/gallery3d/common/BitmapUtils;->isRotationSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 399
    or-int/lit8 v1, v1, 0x2

    .line 402
    :cond_a
    iget-wide v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    iget-wide v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    invoke-static {v3, v4, v5, v6}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 403
    or-int/lit8 v1, v1, 0x10

    .line 407
    :cond_b
    const-string v3, "image/mpo"

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->getSubType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 409
    const-string v3, "LocalImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current type is mpo_mav, don\'t support full image, path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    and-int/lit8 v1, v1, -0x41

    .line 411
    and-int/lit8 v1, v1, -0x3

    .line 412
    and-int/lit8 v1, v1, -0x21

    .line 413
    const/high16 v3, 0x4000

    or-int/2addr v1, v3

    goto/16 :goto_0
.end method

.method public getVoiceOffset()J
    .locals 2

    .prologue
    .line 531
    iget-wide v0, p0, Lcom/android/gallery3d/data/LocalImage;->mVoiceOffset:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 516
    iget v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    return v0
.end method

.method public hasCountConstraint()Z
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/DrmUtils;->haveCountConstraints(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public hasRight()Z
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/DrmUtils;->haveRightsForAction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isVoiceImage()Z
    .locals 4

    .prologue
    .line 536
    iget-wide v0, p0, Lcom/android/gallery3d/data/LocalImage;->mVoiceOffset:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 7
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
    .line 293
    new-instance v0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateModifiedInSec:J

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;ILjava/lang/String;J)V

    return-object v0
.end method

.method public requestImage(ILcom/android/gallery3d/util/GalleryUtils$Params;)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 6
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
    .line 655
    new-instance v0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;-><init>(Lcom/android/gallery3d/data/LocalImage;ILjava/lang/String;Ljava/lang/String;Lcom/android/gallery3d/util/GalleryUtils$Params;)V

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
    .line 348
    new-instance v0, Lcom/android/gallery3d/data/LocalImage$LocalLargeImageRequest;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/LocalImage$LocalLargeImageRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public requestPersonImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 6
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
    .line 245
    new-instance v0, Lcom/android/gallery3d/data/LocalImage$FaceImageRequest;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    iget v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/data/LocalImage$FaceImageRequest;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;ILjava/lang/String;I)V

    return-object v0
.end method

.method public rotate(I)V
    .locals 10
    .parameter "degrees"

    .prologue
    .line 457
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 458
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 459
    .local v0, baseUri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 460
    .local v4, values:Landroid/content/ContentValues;
    iget v5, p0, Lcom/android/gallery3d/data/LocalImage;->rotation:I

    add-int/2addr v5, p1

    rem-int/lit16 v3, v5, 0x168

    .line 461
    .local v3, rotation:I
    if-gez v3, :cond_0

    add-int/lit16 v3, v3, 0x168

    .line 463
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    const-string v6, "image/jpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 465
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    iget-object v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 466
    .local v2, exif:Landroid/media/ExifInterface;
    const-string v5, "Orientation"

    invoke-static {v3}, Lcom/android/gallery3d/data/LocalImage;->getExifOrientation(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-virtual {v2}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    .end local v2           #exif:Landroid/media/ExifInterface;
    :goto_0
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    .line 475
    const-string v5, "_size"

    iget-wide v6, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 478
    :cond_1
    const-string v5, "orientation"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 479
    iget-object v5, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v0, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 481
    return-void

    .line 469
    :catch_0
    move-exception v1

    .line 470
    .local v1, e:Ljava/io/IOException;
    const-string v5, "LocalImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot set exif data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFaceInfos([Lcom/android/gallery3d/data/FaceInfo;)V
    .locals 3
    .parameter "nFace"

    .prologue
    .line 592
    monitor-enter p0

    .line 593
    :try_start_0
    const-string v1, "LocalImage"

    const-string v2, "FaceRecognition  setFaceInfos"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/data/LocalImage;->bNeedScanFace:Z

    .line 595
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/data/LocalImage;->bStartGetFaceInfosAsyc:Z

    .line 596
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 597
    array-length v1, p1

    new-array v1, v1, [Lcom/android/gallery3d/data/FaceInfo;

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mFace:[Lcom/android/gallery3d/data/FaceInfo;

    .line 598
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mFace:[Lcom/android/gallery3d/data/FaceInfo;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 598
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 602
    .end local v0           #i:I
    :cond_0
    monitor-exit p0

    .line 603
    return-void

    .line 602
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateAttached(IZ)V
    .locals 5
    .parameter "faceId"
    .parameter "attached"

    .prologue
    .line 580
    monitor-enter p0

    .line 581
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalImage;->mFace:[Lcom/android/gallery3d/data/FaceInfo;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalImage;->mFace:[Lcom/android/gallery3d/data/FaceInfo;

    array-length v4, v4

    if-gtz v4, :cond_1

    :cond_0
    monitor-exit p0

    .line 587
    :goto_0
    return-void

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalImage;->mFace:[Lcom/android/gallery3d/data/FaceInfo;

    .local v0, arr$:[Lcom/android/gallery3d/data/FaceInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 583
    .local v1, face:Lcom/android/gallery3d/data/FaceInfo;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/FaceInfo;->getFaceId()I

    move-result v4

    if-ne p1, v4, :cond_2

    .line 584
    invoke-virtual {v1, p2}, Lcom/android/gallery3d/data/FaceInfo;->updateAttached(Z)V

    .line 582
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 587
    .end local v1           #face:Lcom/android/gallery3d/data/FaceInfo;
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 588
    .end local v0           #arr$:[Lcom/android/gallery3d/data/FaceInfo;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected updateFromCursor(Landroid/database/Cursor;)Z
    .locals 8
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 213
    new-instance v0, Lcom/android/gallery3d/util/UpdateHelper;

    invoke-direct {v0}, Lcom/android/gallery3d/util/UpdateHelper;-><init>()V

    .line 214
    .local v0, uh:Lcom/android/gallery3d/util/UpdateHelper;
    iget v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    .line 215
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    .line 216
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    .line 217
    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    .line 218
    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    .line 219
    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    .line 221
    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateAddedInSec:J

    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateAddedInSec:J

    .line 223
    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateModifiedInSec:J

    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateModifiedInSec:J

    .line 225
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const/16 v4, 0x8

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 226
    iget v1, p0, Lcom/android/gallery3d/data/LocalImage;->rotation:I

    const/16 v4, 0x9

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalImage;->rotation:I

    .line 227
    iget v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->bucketId:I

    const/16 v4, 0xa

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->bucketId:I

    .line 228
    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    .line 229
    iget v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    const/16 v4, 0xc

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    .line 230
    iget v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    const/16 v4, 0xd

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    .line 232
    iget-boolean v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->is_hdr:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #const/16 v1, 0xe

    #invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    #move-result v1

    const/4 v1, 0x0

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->is_hdr:Z

    .line 234
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/gallery3d/util/DrmUtils;->isDrmFile(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->isDrm:Z

    .line 235
    iget v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->normalizedDate:I

    #const/16 v2, 0xf

    #invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    #move-result v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->normalizedDate:I

    .line 236
    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalImage;->mVoiceOffset:J

    #const/16 v3, 0x10

    #invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    #move-result-wide v3

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/data/LocalImage;->mVoiceOffset:J

    .line 238
    #const/16 v1, 0x11

    #invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    #move-result v1
 
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/data/LocalImage;->mMpoSubType:I

    .line 240
    invoke-virtual {v0}, Lcom/android/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v1

    return v1

    :cond_0
    move v1, v3

    .line 232
    goto :goto_0
.end method

.method public updatePerson(II)V
    .locals 5
    .parameter "faceId"
    .parameter "personId"

    .prologue
    .line 568
    monitor-enter p0

    .line 569
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalImage;->mFace:[Lcom/android/gallery3d/data/FaceInfo;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalImage;->mFace:[Lcom/android/gallery3d/data/FaceInfo;

    array-length v4, v4

    if-gtz v4, :cond_1

    :cond_0
    monitor-exit p0

    .line 575
    :goto_0
    return-void

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalImage;->mFace:[Lcom/android/gallery3d/data/FaceInfo;

    .local v0, arr$:[Lcom/android/gallery3d/data/FaceInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 571
    .local v1, face:Lcom/android/gallery3d/data/FaceInfo;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/FaceInfo;->getFaceId()I

    move-result v4

    if-ne p1, v4, :cond_2

    .line 572
    invoke-virtual {v1, p2}, Lcom/android/gallery3d/data/FaceInfo;->updatePersonId(I)V

    .line 570
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 575
    .end local v1           #face:Lcom/android/gallery3d/data/FaceInfo;
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 576
    .end local v0           #arr$:[Lcom/android/gallery3d/data/FaceInfo;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
