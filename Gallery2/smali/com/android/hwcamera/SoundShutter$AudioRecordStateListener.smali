.class Lcom/android/hwcamera/SoundShutter$AudioRecordStateListener;
.super Ljava/lang/Object;
.source "SoundShutter.java"

# interfaces
.implements Lcom/android/hwcamera/SoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/SoundShutter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioRecordStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/SoundShutter;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/SoundShutter;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/hwcamera/SoundShutter$AudioRecordStateListener;->this$0:Lcom/android/hwcamera/SoundShutter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/SoundShutter;Lcom/android/hwcamera/SoundShutter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/hwcamera/SoundShutter$AudioRecordStateListener;-><init>(Lcom/android/hwcamera/SoundShutter;)V

    return-void
.end method

.method private isRecordfailed([S)Z
    .locals 6
    .parameter "buffer"

    .prologue
    const/4 v3, 0x1

    .line 154
    const-wide/16 v1, 0x0

    .line 155
    .local v1, resultVal:J
    array-length v4, p1

    if-nez v4, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v3

    .line 158
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_2

    .line 159
    aget-short v4, p1, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 160
    add-int/lit8 v0, v0, 0x1

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 162
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-eqz v4, :cond_0

    .line 165
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public notify([SLjava/util/Iterator;)V
    .locals 2
    .parameter "buffer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([S",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/hwcamera/SoundListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/hwcamera/SoundListener;>;"
    invoke-direct {p0, p1}, Lcom/android/hwcamera/SoundShutter$AudioRecordStateListener;->isRecordfailed([S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/hwcamera/SoundShutter$AudioRecordStateListener;->this$0:Lcom/android/hwcamera/SoundShutter;

    #getter for: Lcom/android/hwcamera/SoundShutter;->mSoundShutterLister:Lcom/android/hwcamera/SoundShutter$OnSoundShutterListener;
    invoke-static {v0}, Lcom/android/hwcamera/SoundShutter;->access$300(Lcom/android/hwcamera/SoundShutter;)Lcom/android/hwcamera/SoundShutter$OnSoundShutterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/hwcamera/SoundShutter$OnSoundShutterListener;->onRecordFailed()V

    .line 148
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 149
    iget-object v0, p0, Lcom/android/hwcamera/SoundShutter$AudioRecordStateListener;->this$0:Lcom/android/hwcamera/SoundShutter;

    const/4 v1, 0x1

    #setter for: Lcom/android/hwcamera/SoundShutter;->mRecordTestFinished:Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/SoundShutter;->access$402(Lcom/android/hwcamera/SoundShutter;Z)Z

    .line 150
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/SoundShutter$AudioRecordStateListener;->this$0:Lcom/android/hwcamera/SoundShutter;

    #getter for: Lcom/android/hwcamera/SoundShutter;->mSoundShutterLister:Lcom/android/hwcamera/SoundShutter$OnSoundShutterListener;
    invoke-static {v0}, Lcom/android/hwcamera/SoundShutter;->access$300(Lcom/android/hwcamera/SoundShutter;)Lcom/android/hwcamera/SoundShutter$OnSoundShutterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/hwcamera/SoundShutter$OnSoundShutterListener;->onRecordSucess()V

    goto :goto_0
.end method
