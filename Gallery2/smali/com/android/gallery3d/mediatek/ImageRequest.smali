.class public Lcom/android/gallery3d/mediatek/ImageRequest;
.super Ljava/lang/Object;
.source "ImageRequest.java"

# interfaces
.implements Lcom/android/gallery3d/mediatek/IMediaRequest;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageRequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Lcom/android/gallery3d/util/GalleryUtils$DataBundle;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "jc"
    .parameter "params"
    .parameter "dataBundle"
    .parameter "originThumb"
    .parameter "largeFrame"

    .prologue
    .line 193
    iget-boolean v1, p2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inOriginalFrame:Z

    if-nez v1, :cond_0

    iget-boolean v1, p2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inFirstFrame:Z

    if-nez v1, :cond_0

    iget-boolean v1, p2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inSecondFrame:Z

    if-eqz v1, :cond_7

    .line 196
    :cond_0
    if-eqz p4, :cond_1

    .line 197
    iget v1, p2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inType:I

    const/16 v2, 0x3c0

    invoke-static {p4, v1, v2}, Lcom/android/gallery3d/mediatek/DecodeHelper;->postScaleDown(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 202
    :cond_1
    iget-boolean v1, p2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inOriginalFrame:Z

    if-eqz v1, :cond_2

    .line 203
    iput-object p4, p3, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    .line 206
    :cond_2
    iget-boolean v1, p2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inFirstFrame:Z

    if-nez v1, :cond_3

    iget-boolean v1, p2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inSecondFrame:Z

    if-eqz v1, :cond_4

    .line 207
    :cond_3
    if-eqz p4, :cond_4

    .line 209
    new-instance v0, Lcom/android/gallery3d/util/GalleryUtils$Params;

    invoke-direct {v0}, Lcom/android/gallery3d/util/GalleryUtils$Params;-><init>()V

    .line 210
    .local v0, special:Lcom/android/gallery3d/util/GalleryUtils$Params;
    iget-boolean v1, p2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inFirstFrame:Z

    iput-boolean v1, v0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inFirstFrame:Z

    .line 211
    iget-boolean v1, p2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inSecondFrame:Z

    iput-boolean v1, v0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inSecondFrame:Z

    .line 221
    .end local v0           #special:Lcom/android/gallery3d/util/GalleryUtils$Params;
    :cond_4
    iget-object v1, p3, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 222
    iget-object v1, p3, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    iget v2, p2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inType:I

    iget v3, p2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inOriginalTargetSize:I

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/mediatek/DecodeHelper;->postScaleDown(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p3, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    .line 226
    :cond_5
    iget-object v1, p3, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 227
    iget-object v1, p3, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    iget v2, p2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inType:I

    iget v3, p2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inOriginalTargetSize:I

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/mediatek/DecodeHelper;->postScaleDown(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p3, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    .line 231
    :cond_6
    iget-object v1, p3, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    .line 232
    iget-object v1, p3, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    iget v2, p2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inType:I

    iget v3, p2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inOriginalTargetSize:I

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/mediatek/DecodeHelper;->postScaleDown(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p3, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    .line 238
    :cond_7
    iget-boolean v1, p2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inFirstFullFrame:Z

    if-nez v1, :cond_8

    iget-boolean v1, p2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inSecondFullFrame:Z

    if-eqz v1, :cond_9

    .line 239
    :cond_8
    if-eqz p5, :cond_9

    .line 240
    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 241
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->recycle()V

    .line 256
    :cond_9
    :goto_0
    return-void

    .line 244
    :cond_a
    new-instance v0, Lcom/android/gallery3d/util/GalleryUtils$Params;

    invoke-direct {v0}, Lcom/android/gallery3d/util/GalleryUtils$Params;-><init>()V

    .line 245
    .restart local v0       #special:Lcom/android/gallery3d/util/GalleryUtils$Params;
    iget-boolean v1, p2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inFirstFullFrame:Z

    iput-boolean v1, v0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inFirstFullFrame:Z

    .line 246
    iget-boolean v1, p2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inSecondFullFrame:Z

    iput-boolean v1, v0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inSecondFullFrame:Z

    goto :goto_0
.end method


# virtual methods
.method public request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;
    .locals 14
    .parameter "jc"
    .parameter "params"
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 129
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 130
    :cond_0
    const-string v2, "ImageRequest"

    const-string v3, "request:got null params or cr or uri!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v5, 0x0

    .line 186
    :goto_0
    return-object v5

    .line 133
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    .line 135
    :cond_2
    const-string v2, "ImageRequest"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/util/GalleryUtils$Params;->info(Ljava/lang/String;)V

    .line 137
    new-instance v5, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;

    invoke-direct {v5}, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;-><init>()V

    .line 138
    .local v5, dataBundle:Lcom/android/gallery3d/util/GalleryUtils$DataBundle;
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 139
    .local v11, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 141
    const/4 v6, 0x0

    .line 142
    .local v6, originThumb:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 144
    .local v7, largeFrame:Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 145
    .local v12, pfd:Landroid/os/ParcelFileDescriptor;
    const/4 v10, 0x0

    .line 147
    .local v10, fd:Ljava/io/FileDescriptor;
    :try_start_0
    const-string v2, "r"

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    .line 148
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    .line 150
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inOriginalFrame:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inFirstFrame:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inSecondFrame:Z

    if-eqz v2, :cond_4

    .line 156
    :cond_3
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inOriginalTargetSize:I

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inType:I

    invoke-static {p1, v10, v11, v2, v3}, Lcom/android/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 160
    :cond_4
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inOriginalFullFrame:Z

    if-eqz v2, :cond_5

    .line 161
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v10, v3}, Lcom/android/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v8

    .line 163
    .local v8, bitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    if-eqz v8, :cond_5

    .line 164
    new-instance v13, Lcom/android/gallery3d/mediatek/RegionDecoder;

    invoke-direct {v13}, Lcom/android/gallery3d/mediatek/RegionDecoder;-><init>()V

    .line 165
    .local v13, regionDecoder:Lcom/android/gallery3d/mediatek/RegionDecoder;
    iput-object v8, v13, Lcom/android/gallery3d/mediatek/RegionDecoder;->regionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 166
    iput-object v13, v5, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->originalFullFrame:Lcom/android/gallery3d/mediatek/RegionDecoder;

    .line 170
    .end local v8           #bitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    .end local v13           #regionDecoder:Lcom/android/gallery3d/mediatek/RegionDecoder;
    :cond_5
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inFirstFullFrame:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inSecondFullFrame:Z

    if-eqz v2, :cond_7

    .line 171
    :cond_6
    const/4 v2, 0x0

    invoke-static {p1, v2, v10}, Lcom/android/gallery3d/mediatek/DecodeHelper;->decodeLargeBitmap(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 178
    :cond_7
    invoke-static {v12}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    .line 182
    invoke-direct/range {v2 .. v7}, Lcom/android/gallery3d/mediatek/ImageRequest;->request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Lcom/android/gallery3d/util/GalleryUtils$DataBundle;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 184
    const-string v2, "ImageRequest"

    invoke-virtual {v5, v2}, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :catch_0
    move-exception v9

    .line 175
    .local v9, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    const/4 v5, 0x0

    .line 178
    .end local v5           #dataBundle:Lcom/android/gallery3d/util/GalleryUtils$DataBundle;
    invoke-static {v12}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto/16 :goto_0

    .end local v9           #ex:Ljava/lang/Exception;
    .restart local v5       #dataBundle:Lcom/android/gallery3d/util/GalleryUtils$DataBundle;
    :catchall_0
    move-exception v2

    invoke-static {v12}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v2
.end method

.method public request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Ljava/lang/String;)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;
    .locals 9
    .parameter "jc"
    .parameter "params"
    .parameter "filePath"

    .prologue
    const/4 v0, 0x0

    .line 28
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 29
    :cond_0
    const-string v1, "ImageRequest"

    const-string v2, "request:got null params or filePath!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v0

    .line 72
    :goto_0
    return-object v3

    .line 32
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v3, v0

    goto :goto_0

    .line 34
    :cond_2
    const-string v1, "ImageRequest"

    invoke-virtual {p2, v1}, Lcom/android/gallery3d/util/GalleryUtils$Params;->info(Ljava/lang/String;)V

    .line 36
    new-instance v3, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;

    invoke-direct {v3}, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;-><init>()V

    .line 37
    .local v3, dataBundle:Lcom/android/gallery3d/util/GalleryUtils$DataBundle;
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 38
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 40
    const/4 v4, 0x0

    .line 41
    .local v4, originThumb:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 43
    .local v5, largeFrame:Landroid/graphics/Bitmap;
    iget-boolean v1, p2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inOriginalFrame:Z

    if-nez v1, :cond_3

    iget-boolean v1, p2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inFirstFrame:Z

    if-nez v1, :cond_3

    iget-boolean v1, p2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inSecondFrame:Z

    if-eqz v1, :cond_4

    .line 49
    :cond_3
    iget v1, p2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inOriginalTargetSize:I

    iget v2, p2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inType:I

    invoke-static {p1, p3, v7, v1, v2}, Lcom/android/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 54
    :cond_4
    iget-boolean v1, p2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inOriginalFullFrame:Z

    if-eqz v1, :cond_5

    .line 55
    const/4 v1, 0x0

    invoke-static {p1, p3, v1}, Lcom/android/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v6

    .line 57
    .local v6, bitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    if-eqz v6, :cond_5

    .line 58
    new-instance v8, Lcom/android/gallery3d/mediatek/RegionDecoder;

    invoke-direct {v8}, Lcom/android/gallery3d/mediatek/RegionDecoder;-><init>()V

    .line 59
    .local v8, regionDecoder:Lcom/android/gallery3d/mediatek/RegionDecoder;
    iput-object v6, v8, Lcom/android/gallery3d/mediatek/RegionDecoder;->regionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 60
    iput-object v8, v3, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->originalFullFrame:Lcom/android/gallery3d/mediatek/RegionDecoder;

    .line 64
    .end local v6           #bitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    .end local v8           #regionDecoder:Lcom/android/gallery3d/mediatek/RegionDecoder;
    :cond_5
    iget-boolean v1, p2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inFirstFullFrame:Z

    if-nez v1, :cond_6

    iget-boolean v1, p2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inSecondFullFrame:Z

    if-eqz v1, :cond_7

    .line 65
    :cond_6
    invoke-static {p1, v0, p3}, Lcom/android/gallery3d/mediatek/DecodeHelper;->decodeLargeBitmap(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_7
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 68
    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/mediatek/ImageRequest;->request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Lcom/android/gallery3d/util/GalleryUtils$DataBundle;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 70
    const-string v0, "ImageRequest"

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;[BII)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;
    .locals 17
    .parameter "jc"
    .parameter "params"
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 77
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 78
    :cond_0
    const-string v4, "ImageRequest"

    const-string v5, "request:got null params or data!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v12, 0x0

    .line 124
    :goto_0
    return-object v12

    .line 81
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v12, 0x0

    goto :goto_0

    .line 83
    :cond_2
    const-string v4, "ImageRequest"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/util/GalleryUtils$Params;->info(Ljava/lang/String;)V

    .line 85
    new-instance v12, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;

    invoke-direct {v12}, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;-><init>()V

    .line 86
    .local v12, dataBundle:Lcom/android/gallery3d/util/GalleryUtils$DataBundle;
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 87
    .local v8, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 89
    const/4 v13, 0x0

    .line 90
    .local v13, originThumb:Landroid/graphics/Bitmap;
    const/4 v14, 0x0

    .line 92
    .local v14, largeFrame:Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inOriginalFrame:Z

    if-nez v4, :cond_3

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inFirstFrame:Z

    if-nez v4, :cond_3

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inSecondFrame:Z

    if-eqz v4, :cond_4

    .line 98
    :cond_3
    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inOriginalTargetSize:I

    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inType:I

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v4 .. v10}, Lcom/android/gallery3d/mediatek/DecodeHelper;->decodeThumbnail(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 103
    :cond_4
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inOriginalFullFrame:Z

    if-eqz v4, :cond_5

    .line 104
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v15

    .line 107
    .local v15, bitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    if-eqz v15, :cond_5

    .line 108
    new-instance v16, Lcom/android/gallery3d/mediatek/RegionDecoder;

    invoke-direct/range {v16 .. v16}, Lcom/android/gallery3d/mediatek/RegionDecoder;-><init>()V

    .line 109
    .local v16, regionDecoder:Lcom/android/gallery3d/mediatek/RegionDecoder;
    move-object/from16 v0, v16

    iput-object v15, v0, Lcom/android/gallery3d/mediatek/RegionDecoder;->regionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 110
    move-object/from16 v0, v16

    iput-object v0, v12, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->originalFullFrame:Lcom/android/gallery3d/mediatek/RegionDecoder;

    .line 114
    .end local v15           #bitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    .end local v16           #regionDecoder:Lcom/android/gallery3d/mediatek/RegionDecoder;
    :cond_5
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inFirstFullFrame:Z

    if-nez v4, :cond_6

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inSecondFullFrame:Z

    if-eqz v4, :cond_7

    .line 115
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/gallery3d/mediatek/DecodeHelper;->decodeLargeBitmap(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;[BII)Landroid/graphics/Bitmap;

    move-result-object v14

    :cond_7
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    .line 120
    invoke-direct/range {v9 .. v14}, Lcom/android/gallery3d/mediatek/ImageRequest;->request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Lcom/android/gallery3d/util/GalleryUtils$DataBundle;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 122
    const-string v4, "ImageRequest"

    invoke-virtual {v12, v4}, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->info(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setMavListener(Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 258
    return-void
.end method
