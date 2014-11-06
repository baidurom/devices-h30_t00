.class public Lcom/android/hwcamera/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/CameraHolder$1;,
        Lcom/android/hwcamera/CameraHolder$MyHandler;,
        Lcom/android/hwcamera/CameraHolder$OpenReleaseState;
    }
.end annotation


# static fields
.field private static final DEBUG_OPEN_RELEASE:Z = true

.field private static final KEEP_CAMERA_TIMEOUT:I = 0xbb8

.field private static final RELEASE_CAMERA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraHolder"

.field private static mMockCamera:[Lcom/android/hwcamera/CameraManager$CameraProxy;

.field private static mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

.field private static sDateFormat:Ljava/text/SimpleDateFormat;

.field private static sHolder:Lcom/android/hwcamera/CameraHolder;

.field private static sOpenReleaseStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/hwcamera/CameraHolder$OpenReleaseState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackCameraId:I

.field private mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

.field private mCameraId:I

.field private mCameraOpened:Z

.field private mFrontCameraId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInfo:[Landroid/hardware/Camera$CameraInfo;

.field private mKeepBeforeTime:J

.field private final mNumberOfCameras:I

.field private mParameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/hwcamera/CameraHolder;->sOpenReleaseStates:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/hwcamera/CameraHolder;->sDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 158
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v4, p0, Lcom/android/hwcamera/CameraHolder;->mCameraId:I

    .line 59
    iput v4, p0, Lcom/android/hwcamera/CameraHolder;->mBackCameraId:I

    .line 60
    iput v4, p0, Lcom/android/hwcamera/CameraHolder;->mFrontCameraId:I

    .line 159
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "CameraHolder"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, ht:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 161
    new-instance v2, Lcom/android/hwcamera/CameraHolder$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/hwcamera/CameraHolder$MyHandler;-><init>(Lcom/android/hwcamera/CameraHolder;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mHandler:Landroid/os/Handler;

    .line 162
    sget-object v2, Lcom/android/hwcamera/CameraHolder;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    if-eqz v2, :cond_2

    .line 163
    sget-object v2, Lcom/android/hwcamera/CameraHolder;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    array-length v2, v2

    iput v2, p0, Lcom/android/hwcamera/CameraHolder;->mNumberOfCameras:I

    .line 164
    sget-object v2, Lcom/android/hwcamera/CameraHolder;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    iput-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 175
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/hwcamera/CameraHolder;->mNumberOfCameras:I

    if-ge v1, v2, :cond_4

    .line 176
    iget v2, p0, Lcom/android/hwcamera/CameraHolder;->mBackCameraId:I

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v2, :cond_3

    .line 177
    iput v1, p0, Lcom/android/hwcamera/CameraHolder;->mBackCameraId:I

    .line 175
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v1           #i:I
    :cond_2
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    iput v2, p0, Lcom/android/hwcamera/CameraHolder;->mNumberOfCameras:I

    .line 167
    iget v2, p0, Lcom/android/hwcamera/CameraHolder;->mNumberOfCameras:I

    new-array v2, v2, [Landroid/hardware/Camera$CameraInfo;

    iput-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 168
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget v2, p0, Lcom/android/hwcamera/CameraHolder;->mNumberOfCameras:I

    if-ge v1, v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v3, v2, v1

    .line 170
    iget-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 178
    :cond_3
    iget v2, p0, Lcom/android/hwcamera/CameraHolder;->mFrontCameraId:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 179
    iput v1, p0, Lcom/android/hwcamera/CameraHolder;->mFrontCameraId:I

    goto :goto_1

    .line 182
    :cond_4
    return-void
.end method

.method static synthetic access$100(Lcom/android/hwcamera/CameraHolder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/hwcamera/CameraHolder;->mCameraOpened:Z

    return v0
.end method

.method private static declared-synchronized collectState(ILcom/android/hwcamera/CameraManager$CameraProxy;)V
    .locals 8
    .parameter "id"
    .parameter "device"

    .prologue
    .line 79
    const-class v5, Lcom/android/hwcamera/CameraHolder;

    monitor-enter v5

    :try_start_0
    new-instance v2, Lcom/android/hwcamera/CameraHolder$OpenReleaseState;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/hwcamera/CameraHolder$OpenReleaseState;-><init>(Lcom/android/hwcamera/CameraHolder$1;)V

    .line 80
    .local v2, s:Lcom/android/hwcamera/CameraHolder$OpenReleaseState;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/hwcamera/CameraHolder$OpenReleaseState;->time:J

    .line 81
    iput p0, v2, Lcom/android/hwcamera/CameraHolder$OpenReleaseState;->id:I

    .line 82
    if-nez p1, :cond_0

    .line 83
    const-string v4, "(null)"

    iput-object v4, v2, Lcom/android/hwcamera/CameraHolder$OpenReleaseState;->device:Ljava/lang/String;

    .line 88
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 89
    .local v3, stack:[Ljava/lang/StackTraceElement;
    array-length v4, v3

    new-array v1, v4, [Ljava/lang/String;

    .line 90
    .local v1, lines:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 91
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    .end local v0           #i:I
    .end local v1           #lines:[Ljava/lang/String;
    .end local v3           #stack:[Ljava/lang/StackTraceElement;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/hwcamera/CameraHolder$OpenReleaseState;->device:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 79
    .end local v2           #s:Lcom/android/hwcamera/CameraHolder$OpenReleaseState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 93
    .restart local v0       #i:I
    .restart local v1       #lines:[Ljava/lang/String;
    .restart local v2       #s:Lcom/android/hwcamera/CameraHolder$OpenReleaseState;
    .restart local v3       #stack:[Ljava/lang/StackTraceElement;
    :cond_1
    :try_start_1
    iput-object v1, v2, Lcom/android/hwcamera/CameraHolder$OpenReleaseState;->stack:[Ljava/lang/String;

    .line 95
    sget-object v4, Lcom/android/hwcamera/CameraHolder;->sOpenReleaseStates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v6, 0xa

    if-le v4, v6, :cond_2

    .line 96
    sget-object v4, Lcom/android/hwcamera/CameraHolder;->sOpenReleaseStates:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 98
    :cond_2
    sget-object v4, Lcom/android/hwcamera/CameraHolder;->sOpenReleaseStates:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    monitor-exit v5

    return-void
.end method

.method private static declared-synchronized dumpStates()V
    .locals 9

    .prologue
    .line 102
    const-class v5, Lcom/android/hwcamera/CameraHolder;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/android/hwcamera/CameraHolder;->sOpenReleaseStates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 103
    sget-object v4, Lcom/android/hwcamera/CameraHolder;->sOpenReleaseStates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/CameraHolder$OpenReleaseState;

    .line 104
    .local v3, s:Lcom/android/hwcamera/CameraHolder$OpenReleaseState;
    sget-object v4, Lcom/android/hwcamera/CameraHolder;->sDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    iget-wide v7, v3, Lcom/android/hwcamera/CameraHolder$OpenReleaseState;->time:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, date:Ljava/lang/String;
    const-string v4, "CameraHolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "State "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v4, "CameraHolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCameraId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/hwcamera/CameraHolder$OpenReleaseState;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mCameraDevice = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/hwcamera/CameraHolder$OpenReleaseState;->device:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v4, "CameraHolder"

    const-string v6, "Stack:"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    iget-object v4, v3, Lcom/android/hwcamera/CameraHolder$OpenReleaseState;->stack:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 109
    const-string v4, "CameraHolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/hwcamera/CameraHolder$OpenReleaseState;->stack:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 102
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 112
    .end local v0           #date:Ljava/lang/String;
    .end local v2           #j:I
    .end local v3           #s:Lcom/android/hwcamera/CameraHolder$OpenReleaseState;
    :cond_1
    monitor-exit v5

    return-void

    .line 102
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized injectMockCamera([Landroid/hardware/Camera$CameraInfo;[Lcom/android/hwcamera/CameraManager$CameraProxy;)V
    .locals 2
    .parameter "info"
    .parameter "camera"

    .prologue
    .line 153
    const-class v1, Lcom/android/hwcamera/CameraHolder;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/android/hwcamera/CameraHolder;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 154
    sput-object p1, Lcom/android/hwcamera/CameraHolder;->mMockCamera:[Lcom/android/hwcamera/CameraManager$CameraProxy;

    .line 155
    new-instance v0, Lcom/android/hwcamera/CameraHolder;

    invoke-direct {v0}, Lcom/android/hwcamera/CameraHolder;-><init>()V

    sput-object v0, Lcom/android/hwcamera/CameraHolder;->sHolder:Lcom/android/hwcamera/CameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit v1

    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized instance()Lcom/android/hwcamera/CameraHolder;
    .locals 2

    .prologue
    .line 123
    const-class v1, Lcom/android/hwcamera/CameraHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/hwcamera/CameraHolder;->sHolder:Lcom/android/hwcamera/CameraHolder;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/android/hwcamera/CameraHolder;

    invoke-direct {v0}, Lcom/android/hwcamera/CameraHolder;-><init>()V

    sput-object v0, Lcom/android/hwcamera/CameraHolder;->sHolder:Lcom/android/hwcamera/CameraHolder;

    .line 126
    :cond_0
    sget-object v0, Lcom/android/hwcamera/CameraHolder;->sHolder:Lcom/android/hwcamera/CameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBackCameraId()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/android/hwcamera/CameraHolder;->mBackCameraId:I

    return v0
.end method

.method public getCameraInfo()[Landroid/hardware/Camera$CameraInfo;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/hwcamera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method public declared-synchronized getCameraParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 307
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/hwcamera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public getFrontCameraId()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/android/hwcamera/CameraHolder;->mFrontCameraId:I

    return v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/android/hwcamera/CameraHolder;->mNumberOfCameras:I

    return v0
.end method

.method public keep()V
    .locals 1

    .prologue
    .line 284
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/CameraHolder;->keep(I)V

    .line 285
    return-void
.end method

.method public declared-synchronized keep(I)V
    .locals 4
    .parameter "time"

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/hwcamera/CameraHolder;->mKeepBeforeTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    monitor-exit p0

    return-void

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open(I)Lcom/android/hwcamera/CameraManager$CameraProxy;
    .locals 5
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/hwcamera/CameraHardwareException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 194
    monitor-enter p0

    const-wide/16 v2, 0x400

    :try_start_0
    const-string v4, "CameraHolder.open"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-static {p1, v2}, Lcom/android/hwcamera/CameraHolder;->collectState(ILcom/android/hwcamera/CameraManager$CameraProxy;)V

    .line 197
    iget-boolean v2, p0, Lcom/android/hwcamera/CameraHolder;->mCameraOpened:Z

    if-eqz v2, :cond_0

    .line 198
    const-string v2, "CameraHolder"

    const-string v3, "double open"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->dumpStates()V

    .line 202
    :cond_0
    iget-boolean v2, p0, Lcom/android/hwcamera/CameraHolder;->mCameraOpened:Z

    if-nez v2, :cond_2

    :goto_0
    invoke-static {v1}, Lcom/android/hwcamera/Util;->Assert(Z)V

    .line 203
    iget-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraId:I

    if-eq v1, p1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->release()V

    .line 205
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    .line 206
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraId:I

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_5

    .line 210
    :try_start_1
    const-string v1, "CameraHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-object v1, Lcom/android/hwcamera/CameraHolder;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    if-nez v1, :cond_3

    .line 212
    invoke-static {}, Lcom/android/hwcamera/CameraManager;->instance()Lcom/android/hwcamera/CameraManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/CameraManager;->cameraOpen(I)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    .line 218
    :goto_1
    iput p1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 223
    :try_start_2
    iget-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 233
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraOpened:Z

    .line 234
    iget-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 235
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/hwcamera/CameraHolder;->mKeepBeforeTime:J

    .line 236
    const-wide/16 v1, 0x400

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 237
    iget-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 202
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 214
    :cond_3
    :try_start_3
    sget-object v1, Lcom/android/hwcamera/CameraHolder;->mMockCamera:[Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-nez v1, :cond_4

    .line 215
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v1, "CameraHolder"

    const-string v2, "fail to connect Camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    new-instance v1, Lcom/android/hwcamera/CameraHardwareException;

    invoke-direct {v1, v0}, Lcom/android/hwcamera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 194
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 216
    :cond_4
    :try_start_5
    sget-object v1, Lcom/android/hwcamera/CameraHolder;->mMockCamera:[Lcom/android/hwcamera/CameraManager$CameraProxy;

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 226
    :cond_5
    :try_start_6
    iget-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->reconnect()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 231
    :try_start_7
    iget-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_2

    .line 227
    :catch_1
    move-exception v0

    .line 228
    .local v0, e:Ljava/io/IOException;
    const-string v1, "CameraHolder"

    const-string v2, "reconnect failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v1, Lcom/android/hwcamera/CameraHardwareException;

    invoke-direct {v1, v0}, Lcom/android/hwcamera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public declared-synchronized release()V
    .locals 6

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/android/hwcamera/CameraHolder;->mCameraId:I

    iget-object v3, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-static {v2, v3}, Lcom/android/hwcamera/CameraHolder;->collectState(ILcom/android/hwcamera/CameraManager$CameraProxy;)V

    .line 262
    iget-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 281
    :goto_0
    monitor-exit p0

    return-void

    .line 264
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 265
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/hwcamera/CameraHolder;->mKeepBeforeTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 266
    iget-boolean v2, p0, Lcom/android/hwcamera/CameraHolder;->mCameraOpened:Z

    if-eqz v2, :cond_1

    .line 267
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/hwcamera/CameraHolder;->mCameraOpened:Z

    .line 268
    iget-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraManager$CameraProxy;->stopPreview()V

    .line 270
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/android/hwcamera/CameraHolder;->mKeepBeforeTime:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 259
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 274
    .restart local v0       #now:J
    :cond_2
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/android/hwcamera/CameraHolder;->mCameraOpened:Z

    .line 275
    iget-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraManager$CameraProxy;->release()V

    .line 276
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    .line 279
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 280
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/hwcamera/CameraHolder;->mCameraId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized tryOpen(I)Lcom/android/hwcamera/CameraManager$CameraProxy;
    .locals 4
    .parameter "cameraId"

    .prologue
    const/4 v1, 0x0

    .line 246
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/hwcamera/CameraHolder;->mCameraOpened:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/hwcamera/CameraHolder;->open(I)Lcom/android/hwcamera/CameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 253
    :cond_0
    monitor-exit p0

    return-object v1

    .line 247
    :catch_0
    move-exception v0

    .line 250
    .local v0, e:Lcom/android/hwcamera/CameraHardwareException;
    :try_start_1
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    .end local v0           #e:Lcom/android/hwcamera/CameraHardwareException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
