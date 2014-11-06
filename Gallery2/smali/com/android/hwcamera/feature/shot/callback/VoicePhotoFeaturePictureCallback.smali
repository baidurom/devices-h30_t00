.class public Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;
.super Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;
.source "VoicePhotoFeaturePictureCallback.java"

# interfaces
.implements Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;
    }
.end annotation


# static fields
.field private static final AUDIO_FORMATS:Ljava/lang/String; = ".amr"

.field private static final HIDE_REVIEW_MSG:I = 0x6

.field private static final MSG_CLEAR_VISUALIZERVIEW:I = 0x2

.field private static final MSG_UPDATE_VISUALIZERVIEW:I = 0x1

.field private static final RECORDING_STOP_MSG:I = 0x3

.field private static final RECORDING_TIMER_MSG:I = 0x4

.field private static final SHOW_REVIEW_MSG:I = 0x5

.field private static final TAG:Ljava/lang/String; = "VoicePhotoFeaturePictureCallback"


# instance fields
.field private mHandler:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;

.field private mIsRecording:Z

.field private mJpegData:[B

.field private mJpegPath:Ljava/lang/String;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mPictureTitle:Ljava/lang/String;

.field private mRecordingLimitTime:J

.field private mRecordingStartTime:J

.field private mRecordingTime:I

.field private mVisualizerView:Lcom/android/hwcamera/ui/VisualizerView;

.field private mVisualizerViewLayout:Landroid/view/View;

.field private mVoiceButton:Landroid/view/View;

.field private mVoiceButtonLayout:Landroid/view/View;

.field private mVoiceFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/location/Location;ZLcom/android/hwcamera/PhotoModule;)V
    .locals 2
    .parameter "loc"
    .parameter "isHDR"
    .parameter "photoModule"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;-><init>(Landroid/location/Location;ZLcom/android/hwcamera/PhotoModule;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mIsRecording:Z

    .line 51
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mRecordingLimitTime:J

    .line 52
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mRecordingTime:I

    .line 128
    new-instance v0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;

    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/hwcamera/PhotoModule;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;-><init>(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mHandler:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;)Lcom/android/hwcamera/ui/VisualizerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mVisualizerView:Lcom/android/hwcamera/ui/VisualizerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->genCounter(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;)Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mHandler:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mJpegData:[B

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mJpegData:[B

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;)Landroid/media/MediaRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mIsRecording:Z

    return v0
.end method

.method private copyVoice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .parameter "jpegPath"
    .parameter "voicePath"

    .prologue
    .line 349
    invoke-static/range {p1 .. p1}, Lcom/android/hwcamera/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 350
    const-string v14, "VoicePhotoFeaturePictureCallback"

    const-string v15, "cannot copy voice file because of the jpeg path is null"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    const/4 v5, 0x0

    .line 355
    .local v5, is:Ljava/io/BufferedInputStream;
    const/4 v7, 0x0

    .line 356
    .local v7, os:Ljava/io/BufferedOutputStream;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    .local v11, voiceFile:Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 360
    .end local v5           #is:Ljava/io/BufferedInputStream;
    .local v6, is:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v14, Ljava/io/FileOutputStream;

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-direct {v14, v0, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v8, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 362
    .end local v7           #os:Ljava/io/BufferedOutputStream;
    .local v8, os:Ljava/io/BufferedOutputStream;
    const/high16 v14, 0x10

    :try_start_2
    new-array v2, v14, [B

    .line 363
    .local v2, buffer:[B
    const/4 v9, -0x1

    .line 365
    .local v9, readCount:I
    :goto_1
    invoke-virtual {v6, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v9

    const/4 v14, -0x1

    if-eq v9, v14, :cond_2

    .line 366
    const/4 v14, 0x0

    invoke-virtual {v8, v2, v14, v9}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 377
    .end local v2           #buffer:[B
    .end local v9           #readCount:I
    :catch_0
    move-exception v4

    move-object v7, v8

    .end local v8           #os:Ljava/io/BufferedOutputStream;
    .restart local v7       #os:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .line 378
    .end local v6           #is:Ljava/io/BufferedInputStream;
    .local v4, ex:Ljava/io/IOException;
    .restart local v5       #is:Ljava/io/BufferedInputStream;
    :goto_2
    :try_start_3
    const-string v14, "VoicePhotoFeaturePictureCallback"

    const-string v15, "Failed to copyVoice"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 382
    invoke-static {v5}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 383
    invoke-static {v7}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 386
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v14

    if-nez v14, :cond_0

    .line 387
    const-string v14, "VoicePhotoFeaturePictureCallback"

    const-string v15, "Fail delete soundFile"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 370
    .end local v4           #ex:Ljava/io/IOException;
    .end local v5           #is:Ljava/io/BufferedInputStream;
    .end local v7           #os:Ljava/io/BufferedOutputStream;
    .restart local v2       #buffer:[B
    .restart local v6       #is:Ljava/io/BufferedInputStream;
    .restart local v8       #os:Ljava/io/BufferedOutputStream;
    .restart local v9       #readCount:I
    :cond_2
    :try_start_4
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 371
    .local v12, voiceFileLen:J
    invoke-static {v12, v13}, Lcom/android/gallery3d/common/Utils;->getHWVoiceTAG(J)Ljava/lang/String;

    move-result-object v10

    .line 372
    .local v10, tag:Ljava/lang/String;
    const-string v14, "ISO-8859-1"

    invoke-virtual {v10, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 373
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    .line 376
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v13}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->updateVoiceImage(Ljava/lang/String;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 382
    invoke-static {v6}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 383
    invoke-static {v8}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 386
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v14

    if-nez v14, :cond_4

    .line 387
    const-string v14, "VoicePhotoFeaturePictureCallback"

    const-string v15, "Fail delete soundFile"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .end local v8           #os:Ljava/io/BufferedOutputStream;
    .restart local v7       #os:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #is:Ljava/io/BufferedInputStream;
    .restart local v5       #is:Ljava/io/BufferedInputStream;
    goto/16 :goto_0

    .line 379
    .end local v2           #buffer:[B
    .end local v9           #readCount:I
    .end local v10           #tag:Ljava/lang/String;
    .end local v12           #voiceFileLen:J
    :catch_1
    move-exception v3

    .line 380
    .local v3, e:Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v14, "VoicePhotoFeaturePictureCallback"

    const-string v15, "Fail copyVoice"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 382
    invoke-static {v5}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 383
    invoke-static {v7}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 386
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v14

    if-nez v14, :cond_0

    .line 387
    const-string v14, "VoicePhotoFeaturePictureCallback"

    const-string v15, "Fail delete soundFile"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 382
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    :goto_4
    invoke-static {v5}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 383
    invoke-static {v7}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 386
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v15

    if-nez v15, :cond_3

    .line 387
    const-string v15, "VoicePhotoFeaturePictureCallback"

    const-string v16, "Fail delete soundFile"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    throw v14

    .line 382
    .end local v5           #is:Ljava/io/BufferedInputStream;
    .restart local v6       #is:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v14

    move-object v5, v6

    .end local v6           #is:Ljava/io/BufferedInputStream;
    .restart local v5       #is:Ljava/io/BufferedInputStream;
    goto :goto_4

    .end local v5           #is:Ljava/io/BufferedInputStream;
    .end local v7           #os:Ljava/io/BufferedOutputStream;
    .restart local v6       #is:Ljava/io/BufferedInputStream;
    .restart local v8       #os:Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v14

    move-object v7, v8

    .end local v8           #os:Ljava/io/BufferedOutputStream;
    .restart local v7       #os:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #is:Ljava/io/BufferedInputStream;
    .restart local v5       #is:Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 379
    .end local v5           #is:Ljava/io/BufferedInputStream;
    .restart local v6       #is:Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v3

    move-object v5, v6

    .end local v6           #is:Ljava/io/BufferedInputStream;
    .restart local v5       #is:Ljava/io/BufferedInputStream;
    goto :goto_3

    .end local v5           #is:Ljava/io/BufferedInputStream;
    .end local v7           #os:Ljava/io/BufferedOutputStream;
    .restart local v6       #is:Ljava/io/BufferedInputStream;
    .restart local v8       #os:Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v3

    move-object v7, v8

    .end local v8           #os:Ljava/io/BufferedOutputStream;
    .restart local v7       #os:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #is:Ljava/io/BufferedInputStream;
    .restart local v5       #is:Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 377
    :catch_4
    move-exception v4

    goto/16 :goto_2

    .end local v5           #is:Ljava/io/BufferedInputStream;
    .restart local v6       #is:Ljava/io/BufferedInputStream;
    :catch_5
    move-exception v4

    move-object v5, v6

    .end local v6           #is:Ljava/io/BufferedInputStream;
    .restart local v5       #is:Ljava/io/BufferedInputStream;
    goto/16 :goto_2

    .end local v5           #is:Ljava/io/BufferedInputStream;
    .end local v7           #os:Ljava/io/BufferedOutputStream;
    .restart local v2       #buffer:[B
    .restart local v6       #is:Ljava/io/BufferedInputStream;
    .restart local v8       #os:Ljava/io/BufferedOutputStream;
    .restart local v9       #readCount:I
    .restart local v10       #tag:Ljava/lang/String;
    .restart local v12       #voiceFileLen:J
    :cond_4
    move-object v7, v8

    .end local v8           #os:Ljava/io/BufferedOutputStream;
    .restart local v7       #os:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #is:Ljava/io/BufferedInputStream;
    .restart local v5       #is:Ljava/io/BufferedInputStream;
    goto/16 :goto_0
.end method

.method private genCounter(I)Ljava/lang/String;
    .locals 2
    .parameter "timer"

    .prologue
    .line 123
    int-to-long v0, p1

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hideUIForRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 279
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mVisualizerView:Lcom/android/hwcamera/ui/VisualizerView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/VisualizerView;->setText(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mVoiceButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mVisualizerViewLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->hideUIForRecording()V

    .line 284
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mHandler:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;->sendEmptyMessage(I)Z

    .line 285
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 2

    .prologue
    .line 288
    const-string v0, "VoicePhotoFeaturePictureCallback"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 292
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 295
    :cond_0
    return-void
.end method

.method private startVisualizerAnimation()V
    .locals 1

    .prologue
    .line 231
    new-instance v0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$2;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$2;-><init>(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;)V

    invoke-virtual {v0}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$2;->start()V

    .line 274
    return-void
.end method

.method private updateVoiceImage(Ljava/lang/String;J)V
    .locals 8
    .parameter "jpegPath"
    .parameter "offset"

    .prologue
    .line 393
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 394
    .local v0, jpegFile:Ljava/io/File;
    const-string v2, "_data = ?"

    .line 396
    .local v2, whereClause:Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 397
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "_size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 398
    const-string v3, "date_modified"

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 399
    sget-boolean v3, Lcom/android/gallery3d/common/ApiHelper;->HAS_MEDIA_COLUMNS_HW_VOICE_OFFSET:Z

    if-eqz v3, :cond_0

    .line 400
    const-string v3, "hw_voice_offset"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 403
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v3}, Lcom/android/hwcamera/PhotoModule;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 406
    return-void
.end method


# virtual methods
.method public initializeRecorder()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 186
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v3}, Lcom/android/hwcamera/PhotoModule;->getRecordingDirectory()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, directory:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/hwcamera/Util;->checkDirectory(Ljava/lang/String;)Z

    move-result v2

    .line 188
    .local v2, ret:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot write directory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/hwcamera/Util;->Assert(ZLjava/lang/String;)V

    .line 189
    new-instance v3, Landroid/media/MediaRecorder;

    invoke-direct {v3}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 191
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 192
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 193
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 196
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v4, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mRecordingTime:I

    mul-int/lit16 v4, v4, 0x3e8

    add-int/lit16 v4, v4, 0x190

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".amr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mVoiceFilePath:Ljava/lang/String;

    .line 201
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mVoiceFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 203
    :try_start_0
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 210
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 211
    return-void

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, e:Ljava/io/IOException;
    const-string v3, "VoicePhotoFeaturePictureCallback"

    const-string v4, "prepare failed for "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    invoke-direct {p0}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->releaseMediaRecorder()V

    .line 207
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isProcessIng()Z
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->isRecording()Z

    move-result v0

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mIsRecording:Z

    return v0
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 299
    const-string v0, "VoicePhotoFeaturePictureCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder error. what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->onStopRecording()V

    .line 301
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 310
    const-string v0, "VoicePhotoFeaturePictureCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder onInfo. what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->onStopRecording()V

    .line 312
    return-void
.end method

.method public onLastPictureTaken()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PhotoModule;->onLastPictureTaken(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->recordingVoiceForPic()V

    .line 145
    return-void
.end method

.method public onStopRecording()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 316
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->isRecording()Z

    move-result v3

    if-nez v3, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mHandler:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;->removeMessages(I)V

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mRecordingStartTime:J

    sub-long v0, v3, v5

    .line 319
    .local v0, dual:J
    iget-wide v3, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mRecordingLimitTime:J

    cmp-long v3, v0, v3

    if-gez v3, :cond_2

    .line 320
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v3}, Lcom/android/hwcamera/PhotoModule;->isPaused()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 321
    iget-wide v3, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mRecordingLimitTime:J

    sub-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 328
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mIsRecording:Z

    .line 329
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mHandler:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;->removeMessages(I)V

    .line 330
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 331
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 332
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V

    .line 334
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mJpegPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mVoiceFilePath:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->copyVoice(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .end local v0           #dual:J
    :goto_1
    invoke-direct {p0}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->releaseMediaRecorder()V

    .line 341
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/PhotoModule;->setSwipingEnabled(Z)V

    .line 342
    iput-object v9, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 343
    iput-boolean v10, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mIsRecording:Z

    .line 344
    invoke-direct {p0}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->hideUIForRecording()V

    .line 345
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v3}, Lcom/android/hwcamera/PhotoModule;->isPaused()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v3}, Lcom/android/hwcamera/PhotoModule;->restartPreview()V

    goto :goto_0

    .line 324
    .restart local v0       #dual:J
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mHandler:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;

    const/4 v4, 0x3

    iget-wide v5, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mRecordingLimitTime:J

    sub-long/2addr v5, v0

    const-wide/16 v7, 0x64

    add-long/2addr v5, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 335
    .end local v0           #dual:J
    :catch_0
    move-exception v2

    .line 336
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public prepareUIForRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mHandler:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;->sendEmptyMessage(I)Z

    .line 216
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->prepareUIForRecording()V

    .line 218
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mVisualizerView:Lcom/android/hwcamera/ui/VisualizerView;

    iget v1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mRecordingTime:I

    invoke-direct {p0, v1}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->genCounter(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/VisualizerView;->setText(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mVoiceButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mVisualizerViewLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mVoiceButton:Landroid/view/View;

    new-instance v1, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$1;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$1;-><init>(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    return-void
.end method

.method public recordingVoiceForPic()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 148
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    const v2, 0x7f100035

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PhotoModule;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mVoiceButton:Landroid/view/View;

    .line 149
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    const v2, 0x7f100034

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PhotoModule;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mVoiceButtonLayout:Landroid/view/View;

    .line 150
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    const v2, 0x7f100037

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PhotoModule;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/ui/VisualizerView;

    iput-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mVisualizerView:Lcom/android/hwcamera/ui/VisualizerView;

    .line 151
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    const v2, 0x7f100036

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PhotoModule;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mVisualizerViewLayout:Landroid/view/View;

    .line 153
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->initializeRecorder()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->prepareUIForRecording()V

    .line 159
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v1, v4}, Lcom/android/hwcamera/PhotoModule;->setSwipingEnabled(Z)V

    .line 163
    :try_start_1
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mIsRecording:Z

    .line 180
    invoke-direct {p0}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->startVisualizerAnimation()V

    .line 181
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mHandler:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;

    const/4 v2, 0x4

    iget v3, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mRecordingTime:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mRecordingStartTime:J

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 164
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "VoicePhotoFeaturePictureCallback"

    const-string v2, "Could not start media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    invoke-direct {p0}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->releaseMediaRecorder()V

    .line 167
    invoke-direct {p0}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->hideUIForRecording()V

    .line 169
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/hwcamera/PhotoModule;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    const v2, 0x7f0d01a1

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PhotoModule;->showOnscreenToast(I)V

    .line 173
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/hwcamera/PhotoModule;->restartPreview()V

    goto :goto_0
.end method

.method public storeImage([BIIZZ)V
    .locals 8
    .parameter "jpegData"
    .parameter "postWidth"
    .parameter "postHeight"
    .parameter "isHdr"
    .parameter "updateThumbnail"
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "EI_EXPOSE_REP2"
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {}, Lcom/android/hwcamera/storage/Storage;->getDirectory()Ljava/lang/String;

    move-result-object v7

    .line 135
    .local v7, directory:Ljava/lang/String;
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mJpegData:[B

    .line 136
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    if-nez p4, :cond_0

    iget-boolean v1, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mIsHDR:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    iget-object v5, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mLocation:Landroid/location/Location;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/hwcamera/PhotoModule;->storeImage([BIIZLandroid/location/Location;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mPictureTitle:Ljava/lang/String;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mPictureTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mJpegPath:Ljava/lang/String;

    .line 138
    const-string v0, "VoicePhotoFeaturePictureCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "picture name :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mPictureTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 136
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public waitProcessDone(Z)V
    .locals 0
    .parameter "isPressBackMenu"

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->onStopRecording()V

    .line 416
    return-void
.end method
