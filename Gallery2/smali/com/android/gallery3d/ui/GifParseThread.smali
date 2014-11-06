.class public Lcom/android/gallery3d/ui/GifParseThread;
.super Ljava/lang/Thread;
.source "GifParseThread.java"


# static fields
.field private static final MIN_FRAME_INTERVAL:I = 0x21

.field private static final TAG:Ljava/lang/String; = "GifParseThread"

.field private static final WAIT_TO_ANIMATE:I = 0x1f4


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMediaItem:Lcom/android/gallery3d/data/MediaItem;

.field private mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field private mTileImageView:Lcom/android/gallery3d/ui/TileImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/ui/TileImageView;Lcom/android/gallery3d/ui/ScreenNail;)V
    .locals 0
    .parameter "context"
    .parameter "mediaItem"
    .parameter "tileImageView"
    .parameter "screenNail"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/gallery3d/ui/GifParseThread;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/android/gallery3d/ui/GifParseThread;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    .line 31
    iput-object p3, p0, Lcom/android/gallery3d/ui/GifParseThread;->mTileImageView:Lcom/android/gallery3d/ui/TileImageView;

    .line 32
    iput-object p4, p0, Lcom/android/gallery3d/ui/GifParseThread;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 33
    return-void
.end method

.method private streamToBytes(Ljava/io/InputStream;)[B
    .locals 5
    .parameter "is"

    .prologue
    const/16 v4, 0x1000

    .line 36
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 37
    .local v3, os:Ljava/io/ByteArrayOutputStream;
    new-array v0, v4, [B

    .line 40
    .local v0, buffer:[B
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, len:I
    if-ltz v2, :cond_0

    .line 41
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    .end local v2           #len:I
    :catch_0
    move-exception v1

    .line 44
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/GifParseThread;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/gallery3d/ui/AbstractGifScreenNail;

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/GifParseThread;->mTileImageView:Lcom/android/gallery3d/ui/TileImageView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 58
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/GifParseThread;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v2, Lcom/android/gallery3d/ui/AbstractGifScreenNail;

    .line 61
    .local v2, bsn:Lcom/android/gallery3d/ui/AbstractGifScreenNail;
    const-wide/16 v19, 0x1f4

    :try_start_0
    invoke-static/range {v19 .. v20}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    const/4 v11, 0x0

    .line 70
    .local v11, is:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 73
    .local v10, gifMovie:Landroid/graphics/Movie;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/GifParseThread;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/gallery3d/data/LocalMediaItem;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 74
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/ui/GifParseThread;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    check-cast v13, Lcom/android/gallery3d/data/LocalMediaItem;

    .line 75
    .local v13, item:Lcom/android/gallery3d/data/LocalMediaItem;
    new-instance v12, Ljava/io/FileInputStream;

    iget-object v0, v13, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .end local v11           #is:Ljava/io/InputStream;
    .local v12, is:Ljava/io/InputStream;
    move-object v11, v12

    .line 80
    .end local v12           #is:Ljava/io/InputStream;
    .end local v13           #item:Lcom/android/gallery3d/data/LocalMediaItem;
    .restart local v11       #is:Ljava/io/InputStream;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/gallery3d/ui/GifParseThread;->streamToBytes(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 81
    .local v3, byteArray:[B
    const/16 v19, 0x0

    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v3, v0, v1}, Landroid/graphics/Movie;->decodeByteArray([BII)Landroid/graphics/Movie;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v10

    .line 86
    if-eqz v11, :cond_3

    .line 88
    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 91
    :goto_2
    const/4 v11, 0x0

    .line 95
    :cond_3
    if-eqz v10, :cond_0

    .line 99
    invoke-virtual {v10}, Landroid/graphics/Movie;->duration()I

    move-result v14

    .line 100
    .local v14, movieDur:I
    if-lez v14, :cond_0

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 105
    .local v17, movieStart:J
    const/4 v9, 0x0

    .line 106
    .local v9, gifBmp:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .local v4, canvas:Landroid/graphics/Canvas;
    move-object v5, v4

    .line 108
    .end local v4           #canvas:Landroid/graphics/Canvas;
    .local v5, canvas:Landroid/graphics/Canvas;
    :goto_3
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v19

    if-nez v19, :cond_0

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 110
    .local v15, movieNow:J
    sub-long v19, v15, v17

    int-to-long v0, v14

    move-wide/from16 v21, v0

    rem-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v6, v0

    .line 112
    .local v6, currFrameTime:I
    invoke-virtual {v10, v6}, Landroid/graphics/Movie;->setTime(I)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 114
    invoke-virtual {v10}, Landroid/graphics/Movie;->width()I

    move-result v19

    invoke-virtual {v10}, Landroid/graphics/Movie;->height()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/android/gallery3d/ui/AbstractGifScreenNail;->dequeue(II)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 115
    if-eqz v9, :cond_6

    .line 116
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 117
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 118
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .restart local v4       #canvas:Landroid/graphics/Canvas;
    const/16 v19, 0x0

    const/16 v20, 0x0

    :try_start_4
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v4, v0, v1}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 119
    invoke-virtual {v2, v9}, Lcom/android/gallery3d/ui/AbstractGifScreenNail;->enqueue(Landroid/graphics/Bitmap;)Z

    .line 121
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/GifParseThread;->mTileImageView:Lcom/android/gallery3d/ui/TileImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/gallery3d/ui/TileImageView;->invalidate()V

    .line 124
    :goto_5
    const-wide/16 v19, 0x21

    invoke-static/range {v19 .. v20}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    move-object v5, v4

    .line 126
    .end local v4           #canvas:Landroid/graphics/Canvas;
    .restart local v5       #canvas:Landroid/graphics/Canvas;
    goto :goto_3

    .line 62
    .end local v3           #byteArray:[B
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .end local v6           #currFrameTime:I
    .end local v9           #gifBmp:Landroid/graphics/Bitmap;
    .end local v10           #gifMovie:Landroid/graphics/Movie;
    .end local v11           #is:Ljava/io/InputStream;
    .end local v14           #movieDur:I
    .end local v15           #movieNow:J
    .end local v17           #movieStart:J
    :catch_0
    move-exception v8

    .line 63
    .local v8, ex:Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 65
    .end local v8           #ex:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v7

    .line 66
    .local v7, e:Ljava/lang/Exception;
    goto/16 :goto_0

    .line 76
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v10       #gifMovie:Landroid/graphics/Movie;
    .restart local v11       #is:Ljava/io/InputStream;
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/GifParseThread;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/gallery3d/data/UriImage;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 77
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/ui/GifParseThread;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    check-cast v13, Lcom/android/gallery3d/data/UriImage;

    .line 78
    .local v13, item:Lcom/android/gallery3d/data/UriImage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/GifParseThread;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    invoke-virtual {v13}, Lcom/android/gallery3d/data/UriImage;->getContentUri()Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v11

    goto/16 :goto_1

    .line 82
    .end local v13           #item:Lcom/android/gallery3d/data/UriImage;
    :catch_2
    move-exception v7

    .line 83
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 86
    if-eqz v11, :cond_0

    .line 88
    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 91
    :goto_6
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 86
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v19

    if-eqz v11, :cond_5

    .line 88
    :try_start_8
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 91
    :goto_7
    const/4 v11, 0x0

    :cond_5
    throw v19

    .line 127
    .restart local v3       #byteArray:[B
    .restart local v5       #canvas:Landroid/graphics/Canvas;
    .restart local v9       #gifBmp:Landroid/graphics/Bitmap;
    .restart local v14       #movieDur:I
    .restart local v17       #movieStart:J
    :catch_3
    move-exception v8

    move-object v4, v5

    .line 128
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .restart local v4       #canvas:Landroid/graphics/Canvas;
    .restart local v8       #ex:Ljava/lang/InterruptedException;
    :goto_8
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 130
    .end local v4           #canvas:Landroid/graphics/Canvas;
    .end local v8           #ex:Ljava/lang/InterruptedException;
    .restart local v5       #canvas:Landroid/graphics/Canvas;
    :catch_4
    move-exception v7

    move-object v4, v5

    .line 131
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .restart local v4       #canvas:Landroid/graphics/Canvas;
    .restart local v7       #e:Ljava/lang/Exception;
    :goto_9
    goto/16 :goto_0

    .line 89
    .end local v4           #canvas:Landroid/graphics/Canvas;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v9           #gifBmp:Landroid/graphics/Bitmap;
    .end local v14           #movieDur:I
    .end local v17           #movieStart:J
    :catch_5
    move-exception v19

    goto/16 :goto_2

    .end local v3           #byteArray:[B
    .restart local v7       #e:Ljava/lang/Exception;
    :catch_6
    move-exception v19

    goto :goto_6

    .end local v7           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v20

    goto :goto_7

    .line 130
    .restart local v3       #byteArray:[B
    .restart local v4       #canvas:Landroid/graphics/Canvas;
    .restart local v6       #currFrameTime:I
    .restart local v9       #gifBmp:Landroid/graphics/Bitmap;
    .restart local v14       #movieDur:I
    .restart local v15       #movieNow:J
    .restart local v17       #movieStart:J
    :catch_8
    move-exception v7

    goto :goto_9

    .line 127
    :catch_9
    move-exception v8

    goto :goto_8

    .end local v4           #canvas:Landroid/graphics/Canvas;
    .restart local v5       #canvas:Landroid/graphics/Canvas;
    :cond_6
    move-object v4, v5

    .end local v5           #canvas:Landroid/graphics/Canvas;
    .restart local v4       #canvas:Landroid/graphics/Canvas;
    goto :goto_4

    .end local v4           #canvas:Landroid/graphics/Canvas;
    .restart local v5       #canvas:Landroid/graphics/Canvas;
    :cond_7
    move-object v4, v5

    .end local v5           #canvas:Landroid/graphics/Canvas;
    .restart local v4       #canvas:Landroid/graphics/Canvas;
    goto :goto_5
.end method
