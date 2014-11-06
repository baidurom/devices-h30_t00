.class public Lcom/android/gallery3d/app/TrimVideo;
.super Landroid/app/Activity;
.source "TrimVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/android/gallery3d/app/ControllerOverlay$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/TrimVideo$ContentResolverQueryCallback;
    }
.end annotation


# static fields
.field public static final KEY_TRIM_END:Ljava/lang/String; = "trim_end"

.field public static final KEY_TRIM_START:Ljava/lang/String; = "trim_start"

.field public static final KEY_VIDEO_POSITION:Ljava/lang/String; = "video_pos"

.field private static final TIME_STAMP_NAME:Ljava/lang/String; = "\'TRIM\'_yyyyMMdd_HHmmss"

.field public static final TRIM_ACTION:Ljava/lang/String; = "com.android.camera.action.TRIM"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

.field private mDstFile:Ljava/io/File;

.field private final mHandler:Landroid/os/Handler;

.field private mHasPaused:Z

.field public mProgress:Landroid/app/ProgressDialog;

.field private final mProgressChecker:Ljava/lang/Runnable;

.field private mSaveDirectory:Ljava/io/File;

.field private mSaveFileName:Ljava/lang/String;

.field private mSrcFile:Ljava/io/File;

.field private mSrcVideoPath:Ljava/lang/String;

.field private mTrimEndTime:I

.field private mTrimStartTime:I

.field private mUri:Landroid/net/Uri;

.field private mVideoPosition:I

.field private mVideoView:Landroid/widget/VideoView;

.field private saveFolderName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mHandler:Landroid/os/Handler;

    .line 68
    iput v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    .line 69
    iput v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    .line 70
    iput v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    .line 74
    iput-boolean v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mHasPaused:Z

    .line 76
    iput-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mSrcVideoPath:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveFileName:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mSrcFile:Ljava/io/File;

    .line 80
    iput-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mDstFile:Ljava/io/File;

    .line 81
    iput-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveDirectory:Ljava/io/File;

    .line 83
    iput-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->saveFolderName:Ljava/lang/String;

    .line 163
    new-instance v0, Lcom/android/gallery3d/app/TrimVideo$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/TrimVideo$2;-><init>(Lcom/android/gallery3d/app/TrimVideo;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mProgressChecker:Ljava/lang/Runnable;

    .line 230
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/TrimVideo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->trimVideo()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/TrimVideo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/TrimVideo;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mProgressChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/TrimVideo;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/TrimVideo;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mSrcFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/TrimVideo;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mDstFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/TrimVideo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/TrimVideo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/TrimVideo;Ljava/io/File;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/TrimVideo;->insertContent(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/TrimVideo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->saveFolderName:Ljava/lang/String;

    return-object v0
.end method

.method private getSaveDirectory()Ljava/io/File;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 252
    new-array v0, v1, [Ljava/io/File;

    .line 253
    .local v0, dir:[Ljava/io/File;
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_data"

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/gallery3d/app/TrimVideo$3;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/app/TrimVideo$3;-><init>(Lcom/android/gallery3d/app/TrimVideo;[Ljava/io/File;)V

    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/app/TrimVideo;->querySource([Ljava/lang/String;Lcom/android/gallery3d/app/TrimVideo$ContentResolverQueryCallback;)V

    .line 261
    aget-object v1, v0, v3

    return-object v1
.end method

.method private insertContent(Ljava/io/File;)Landroid/net/Uri;
    .locals 9
    .parameter "file"

    .prologue
    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 356
    .local v0, nowInMs:J
    const-wide/16 v6, 0x3e8

    div-long v2, v0, v6

    .line 357
    .local v2, nowInSec:J
    new-instance v5, Landroid/content/ContentValues;

    const/16 v6, 0xc

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 358
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "title"

    iget-object v7, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v6, "_display_name"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v6, "mime_type"

    const-string v7, "video/mp4"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v6, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 362
    const-string v6, "date_modified"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 363
    const-string v6, "date_added"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 364
    const-string v6, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v6, "_size"

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 367
    const/4 v6, 0x4

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "datetaken"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "latitude"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "longitude"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "resolution"

    aput-object v7, v4, v6

    .line 375
    .local v4, projection:[Ljava/lang/String;
    new-instance v6, Lcom/android/gallery3d/app/TrimVideo$5;

    invoke-direct {v6, p0, v5}, Lcom/android/gallery3d/app/TrimVideo$5;-><init>(Lcom/android/gallery3d/app/TrimVideo;Landroid/content/ContentValues;)V

    invoke-direct {p0, v4, v6}, Lcom/android/gallery3d/app/TrimVideo;->querySource([Ljava/lang/String;Lcom/android/gallery3d/app/TrimVideo$ContentResolverQueryCallback;)V

    .line 395
    invoke-virtual {p0}, Lcom/android/gallery3d/app/TrimVideo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    return-object v6
.end method

.method private pauseVideo()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 225
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/TrimControllerOverlay;->showPaused()V

    .line 226
    return-void
.end method

.method private playVideo()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 219
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/TrimControllerOverlay;->showPlaying()V

    .line 220
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->setProgress()I

    .line 221
    return-void
.end method

.method private querySource([Ljava/lang/String;Lcom/android/gallery3d/app/TrimVideo$ContentResolverQueryCallback;)V
    .locals 7
    .parameter "projection"
    .parameter "callback"

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/gallery3d/app/TrimVideo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 236
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 238
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 239
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    invoke-interface {p2, v6}, Lcom/android/gallery3d/app/TrimVideo$ContentResolverQueryCallback;->onCursorResult(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_0
    if-eqz v6, :cond_1

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_1
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v1

    .line 245
    if-eqz v6, :cond_1

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private setProgress()I
    .locals 5

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    .line 194
    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    iget v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    if-ge v1, v2, :cond_0

    .line 195
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    iget v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 196
    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    iput v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    .line 200
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    iget v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    if-lt v1, v2, :cond_2

    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    if-lez v1, :cond_2

    .line 201
    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    iget v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    if-le v1, v2, :cond_1

    .line 202
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    iget v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 203
    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    iput v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/TrimControllerOverlay;->showEnded()V

    .line 206
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->pause()V

    .line 209
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 210
    .local v0, duration:I
    if-lez v0, :cond_3

    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    if-nez v1, :cond_3

    .line 211
    iput v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    .line 213
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

    iget v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    iget v3, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    iget v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/gallery3d/app/TrimControllerOverlay;->setTimes(IIII)V

    .line 214
    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    return v1
.end method

.method private showProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 342
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    .line 343
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    const v1, 0x7f0d038a

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/TrimVideo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    const v1, 0x7f0d038b

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/TrimVideo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 347
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 348
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 349
    return-void
.end method

.method private trimVideo()V
    .locals 5

    .prologue
    const/16 v3, 0x64

    .line 265
    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    iget v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    sub-int v0, v1, v2

    .line 268
    .local v0, delta:I
    if-ge v0, v3, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/android/gallery3d/app/TrimVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d038d

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/TrimVideo;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 337
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/android/gallery3d/app/TrimVideo;->onBackPressed()V

    goto :goto_0

    .line 281
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->getSaveDirectory()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveDirectory:Ljava/io/File;

    .line 282
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveDirectory:Ljava/io/File;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_3

    .line 283
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "download"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveDirectory:Ljava/io/File;

    .line 285
    const v1, 0x7f0d0380

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/TrimVideo;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->saveFolderName:Ljava/lang/String;

    .line 295
    :goto_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "\'TRIM\'_yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveFileName:Ljava/lang/String;

    .line 298
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mDstFile:Ljava/io/File;

    .line 299
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mSrcVideoPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mSrcFile:Ljava/io/File;

    .line 301
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->showProgressDialog()V

    .line 303
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/gallery3d/app/TrimVideo$4;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/TrimVideo$4;-><init>(Lcom/android/gallery3d/app/TrimVideo;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 288
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    sget v2, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-ne v1, v2, :cond_4

    .line 289
    const v1, 0x7f0d037f

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/TrimVideo;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->saveFolderName:Ljava/lang/String;

    goto :goto_1

    .line 291
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->saveFolderName:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/TrimControllerOverlay;->showEnded()V

    .line 442
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/gallery3d/app/TrimVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/app/TrimVideo;->mContext:Landroid/content/Context;

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/TrimVideo;->requestWindowFeature(I)Z

    .line 91
    const/16 v5, 0x9

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/TrimVideo;->requestWindowFeature(I)Z

    .line 93
    invoke-virtual {p0}, Lcom/android/gallery3d/app/TrimVideo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 94
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x2

    .line 95
    .local v1, displayOptions:I
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 96
    const/16 v1, 0x10

    .line 97
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 98
    const v5, 0x7f04007f

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 100
    const v5, 0x7f100211

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/TrimVideo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 101
    .local v3, mSaveVideoTextView:Landroid/widget/TextView;
    new-instance v5, Lcom/android/gallery3d/app/TrimVideo$1;

    invoke-direct {v5, p0}, Lcom/android/gallery3d/app/TrimVideo$1;-><init>(Lcom/android/gallery3d/app/TrimVideo;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/gallery3d/app/TrimVideo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 109
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/app/TrimVideo;->mUri:Landroid/net/Uri;

    .line 110
    const-string v5, "media-item-path"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/app/TrimVideo;->mSrcVideoPath:Ljava/lang/String;

    .line 111
    const v5, 0x7f040080

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/TrimVideo;->setContentView(I)V

    .line 112
    const v5, 0x7f100212

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/TrimVideo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 114
    .local v4, rootView:Landroid/view/View;
    const v5, 0x7f100130

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/VideoView;

    iput-object v5, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    .line 116
    new-instance v5, Lcom/android/gallery3d/app/TrimControllerOverlay;

    iget-object v6, p0, Lcom/android/gallery3d/app/TrimVideo;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/gallery3d/app/TrimControllerOverlay;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/gallery3d/app/TrimVideo;->mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

    .line 117
    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #rootView:Landroid/view/View;
    iget-object v5, p0, Lcom/android/gallery3d/app/TrimVideo;->mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/TrimControllerOverlay;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 118
    iget-object v5, p0, Lcom/android/gallery3d/app/TrimVideo;->mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

    invoke-virtual {v5, p0}, Lcom/android/gallery3d/app/TrimControllerOverlay;->setListener(Lcom/android/gallery3d/app/ControllerOverlay$Listener;)V

    .line 119
    iget-object v5, p0, Lcom/android/gallery3d/app/TrimVideo;->mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/app/TrimControllerOverlay;->setCanReplay(Z)V

    .line 121
    iget-object v5, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v5, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 122
    iget-object v5, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v5, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 123
    iget-object v5, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    iget-object v6, p0, Lcom/android/gallery3d/app/TrimVideo;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 125
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->playVideo()V

    .line 126
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 161
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 446
    const/4 v0, 0x0

    return v0
.end method

.method public onHidden()V
    .locals 0

    .prologue
    .line 431
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mHasPaused:Z

    .line 142
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    .line 144
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 146
    return-void
.end method

.method public onPlayPause()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->pauseVideo()V

    .line 405
    :goto_0
    return-void

    .line 403
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->playVideo()V

    goto :goto_0
.end method

.method public onReplay()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 436
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->playVideo()V

    .line 437
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 182
    const-string v0, "trim_start"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    .line 183
    const-string v0, "trim_end"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    .line 184
    const-string v0, "video_pos"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    .line 185
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 131
    iget-boolean v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mHasPaused:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 133
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mHasPaused:Z

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 173
    const-string v0, "trim_start"

    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    const-string v0, "trim_end"

    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    const-string v0, "video_pos"

    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 176
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 177
    return-void
.end method

.method public onSeekEnd(III)V
    .locals 1
    .parameter "time"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 420
    iput p2, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    .line 421
    iput p3, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    .line 422
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->setProgress()I

    .line 423
    return-void
.end method

.method public onSeekMove(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 415
    return-void
.end method

.method public onSeekStart()V
    .locals 0

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->pauseVideo()V

    .line 410
    return-void
.end method

.method public onShown()V
    .locals 0

    .prologue
    .line 427
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    .line 154
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 155
    return-void
.end method

.method public onStop(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 452
    return-void
.end method
