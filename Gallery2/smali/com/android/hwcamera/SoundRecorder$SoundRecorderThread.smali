.class Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;
.super Ljava/lang/Thread;
.source "SoundRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/SoundRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundRecorderThread"
.end annotation


# instance fields
.field private SAMPLE_RATE_IN_HZ:I

.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mBufferSize:I

.field private mIsFirstTrigger:Z

.field private mIsRun:Z

.field private mPause:Z

.field final synthetic this$0:Lcom/android/hwcamera/SoundRecorder;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/SoundRecorder;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 72
    iput-object p1, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->this$0:Lcom/android/hwcamera/SoundRecorder;

    .line 73
    const-string v0, "SoundDetectThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 67
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->SAMPLE_RATE_IN_HZ:I

    .line 69
    iput-boolean v1, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->mIsRun:Z

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->mPause:Z

    .line 71
    iput-boolean v1, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->mIsFirstTrigger:Z

    .line 74
    return-void
.end method

.method private initAudioRecord()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 76
    iget-object v0, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Landroid/media/AudioRecord;

    iget v2, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->SAMPLE_RATE_IN_HZ:I

    const/4 v4, 0x2

    iget v5, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->mBufferSize:I

    move v3, v1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->mAudioRecord:Landroid/media/AudioRecord;

    .line 80
    :cond_0
    return-void
.end method

.method private releaseAudioRecord()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 85
    iget-object v0, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->mAudioRecord:Landroid/media/AudioRecord;

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method public cancle()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->mIsRun:Z

    .line 125
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->mPause:Z

    .line 129
    return-void
.end method

.method public restart()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->mPause:Z

    .line 133
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 91
    iput-boolean v3, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->mIsRun:Z

    .line 93
    iget v1, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->SAMPLE_RATE_IN_HZ:I

    const/4 v2, 0x2

    invoke-static {v1, v3, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->mBufferSize:I

    .line 96
    iget v1, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->mBufferSize:I

    new-array v0, v1, [S

    .line 97
    .local v0, buffer:[S
    :goto_0
    iget-boolean v1, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->mIsRun:Z

    if-eqz v1, :cond_4

    .line 98
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->mPause:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->mIsRun:Z

    if-eqz v1, :cond_3

    .line 99
    iget-object v1, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v1, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->initAudioRecord()V

    .line 101
    iget-object v1, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 102
    iput-boolean v3, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->mIsFirstTrigger:Z

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->mAudioRecord:Landroid/media/AudioRecord;

    iget v2, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->mBufferSize:I

    invoke-virtual {v1, v0, v4, v2}, Landroid/media/AudioRecord;->read([SII)I

    .line 106
    iget-boolean v1, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->mIsFirstTrigger:Z

    if-eqz v1, :cond_2

    .line 107
    iput-boolean v4, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->mIsFirstTrigger:Z

    goto :goto_1

    .line 110
    :cond_2
    iget-boolean v1, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->mPause:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->mIsRun:Z

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->this$0:Lcom/android/hwcamera/SoundRecorder;

    #calls: Lcom/android/hwcamera/SoundRecorder;->notifyAllListeners([S)V
    invoke-static {v1, v0}, Lcom/android/hwcamera/SoundRecorder;->access$000(Lcom/android/hwcamera/SoundRecorder;[S)V

    goto :goto_1

    .line 114
    :cond_3
    invoke-direct {p0}, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->releaseAudioRecord()V

    .line 116
    const-wide/16 v1, 0xc8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    goto :goto_0

    .line 120
    :cond_4
    const-string v1, "SoundRecorder"

    const-string v2, "record thread now quit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method
