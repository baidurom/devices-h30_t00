.class public Lcom/android/hwcamera/SoundShutter;
.super Ljava/lang/Object;
.source "SoundShutter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/SoundShutter$1;,
        Lcom/android/hwcamera/SoundShutter$AudioRecordStateListener;,
        Lcom/android/hwcamera/SoundShutter$SoundLoudListener;,
        Lcom/android/hwcamera/SoundShutter$OnSoundShutterListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAudioRecordStateListener:Lcom/android/hwcamera/SoundShutter$AudioRecordStateListener;

.field private mIstarted:Z

.field private mRecordTestFinished:Z

.field private mShutterListener:Lcom/android/hwcamera/SoundShutter$SoundLoudListener;

.field private mSoundRecorder:Lcom/android/hwcamera/SoundRecorder;

.field private mSoundShutterLister:Lcom/android/hwcamera/SoundShutter$OnSoundShutterListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "SoundShutter"

    iput-object v0, p0, Lcom/android/hwcamera/SoundShutter;->TAG:Ljava/lang/String;

    .line 12
    iput-boolean v1, p0, Lcom/android/hwcamera/SoundShutter;->mIstarted:Z

    .line 14
    new-instance v0, Lcom/android/hwcamera/SoundShutter$SoundLoudListener;

    invoke-direct {v0, p0, v2}, Lcom/android/hwcamera/SoundShutter$SoundLoudListener;-><init>(Lcom/android/hwcamera/SoundShutter;Lcom/android/hwcamera/SoundShutter$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/SoundShutter;->mShutterListener:Lcom/android/hwcamera/SoundShutter$SoundLoudListener;

    .line 15
    new-instance v0, Lcom/android/hwcamera/SoundShutter$AudioRecordStateListener;

    invoke-direct {v0, p0, v2}, Lcom/android/hwcamera/SoundShutter$AudioRecordStateListener;-><init>(Lcom/android/hwcamera/SoundShutter;Lcom/android/hwcamera/SoundShutter$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/SoundShutter;->mAudioRecordStateListener:Lcom/android/hwcamera/SoundShutter$AudioRecordStateListener;

    .line 17
    iput-boolean v1, p0, Lcom/android/hwcamera/SoundShutter;->mRecordTestFinished:Z

    .line 139
    return-void
.end method

.method static synthetic access$200(Lcom/android/hwcamera/SoundShutter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/android/hwcamera/SoundShutter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/SoundShutter;)Lcom/android/hwcamera/SoundShutter$OnSoundShutterListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/android/hwcamera/SoundShutter;->mSoundShutterLister:Lcom/android/hwcamera/SoundShutter$OnSoundShutterListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/hwcamera/SoundShutter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    iput-boolean p1, p0, Lcom/android/hwcamera/SoundShutter;->mRecordTestFinished:Z

    return p1
.end method


# virtual methods
.method public addRecordStateListener()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/hwcamera/SoundShutter;->mSoundRecorder:Lcom/android/hwcamera/SoundRecorder;

    iget-object v1, p0, Lcom/android/hwcamera/SoundShutter;->mAudioRecordStateListener:Lcom/android/hwcamera/SoundShutter$AudioRecordStateListener;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/SoundRecorder;->addListener(Lcom/android/hwcamera/SoundListener;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/SoundShutter;->mRecordTestFinished:Z

    .line 26
    return-void
.end method

.method public isRecordTestFinished()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/android/hwcamera/SoundShutter;->mRecordTestFinished:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/hwcamera/SoundShutter;->mIstarted:Z

    return v0
.end method

.method public pauseShutter()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/hwcamera/SoundShutter;->mSoundRecorder:Lcom/android/hwcamera/SoundRecorder;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/hwcamera/SoundShutter;->mSoundRecorder:Lcom/android/hwcamera/SoundRecorder;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundRecorder;->pause()V

    .line 70
    :cond_0
    return-void
.end method

.method public resumeShutter()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/hwcamera/SoundShutter;->mSoundRecorder:Lcom/android/hwcamera/SoundRecorder;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/hwcamera/SoundShutter;->mSoundRecorder:Lcom/android/hwcamera/SoundRecorder;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundRecorder;->restart()V

    .line 76
    :cond_0
    return-void
.end method

.method public setOnVirtualButtonListener(Lcom/android/hwcamera/SoundShutter$OnSoundShutterListener;)V
    .locals 0
    .parameter "onSoundShutterButtonListener"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/hwcamera/SoundShutter;->mSoundShutterLister:Lcom/android/hwcamera/SoundShutter$OnSoundShutterListener;

    .line 31
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/hwcamera/SoundShutter;->mIstarted:Z

    if-eqz v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/SoundShutter;->mIstarted:Z

    .line 44
    new-instance v0, Lcom/android/hwcamera/SoundRecorder;

    invoke-direct {v0}, Lcom/android/hwcamera/SoundRecorder;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/SoundShutter;->mSoundRecorder:Lcom/android/hwcamera/SoundRecorder;

    .line 45
    iget-object v0, p0, Lcom/android/hwcamera/SoundShutter;->mSoundRecorder:Lcom/android/hwcamera/SoundRecorder;

    iget-object v1, p0, Lcom/android/hwcamera/SoundShutter;->mShutterListener:Lcom/android/hwcamera/SoundShutter$SoundLoudListener;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/SoundRecorder;->addListener(Lcom/android/hwcamera/SoundListener;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/hwcamera/SoundShutter;->addRecordStateListener()V

    .line 47
    iget-object v0, p0, Lcom/android/hwcamera/SoundShutter;->mSoundRecorder:Lcom/android/hwcamera/SoundRecorder;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundRecorder;->start()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/hwcamera/SoundShutter;->mSoundRecorder:Lcom/android/hwcamera/SoundRecorder;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/hwcamera/SoundShutter;->mSoundRecorder:Lcom/android/hwcamera/SoundRecorder;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundRecorder;->removeAllListener()V

    .line 53
    iget-object v0, p0, Lcom/android/hwcamera/SoundShutter;->mSoundRecorder:Lcom/android/hwcamera/SoundRecorder;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundRecorder;->cancle()V

    .line 55
    iget-object v0, p0, Lcom/android/hwcamera/SoundShutter;->mSoundRecorder:Lcom/android/hwcamera/SoundRecorder;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundRecorder;->joinThread()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/SoundShutter;->mSoundRecorder:Lcom/android/hwcamera/SoundRecorder;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/SoundShutter;->mIstarted:Z

    .line 60
    :cond_0
    return-void
.end method
