.class public final Lcom/android/hwcamera/autorama/FileSaver;
.super Ljava/lang/Thread;
.source "FileSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/autorama/FileSaver$1;,
        Lcom/android/hwcamera/autorama/FileSaver$PanoOperator;,
        Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;,
        Lcom/android/hwcamera/autorama/FileSaver$ImageFileNamer;,
        Lcom/android/hwcamera/autorama/FileSaver$FileSaverListener;
    }
.end annotation


# static fields
.field private static final QUEUE_LIMIT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "FileSaver"

.field private static final TEMP_SUFFIX:Ljava/lang/String; = ".tmp"


# instance fields
.field private mContext:Lcom/android/hwcamera/CameraActivity;

.field private mFileNamer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/hwcamera/autorama/FileSaver$ImageFileNamer;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoModule:Lcom/android/hwcamera/PhotoModule;

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/hwcamera/autorama/MTKSaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueLimit:I

.field private mResolver:Landroid/content/ContentResolver;

.field private mSaverListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/autorama/FileSaver$FileSaverListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStoped:Z


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/CameraActivity;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/autorama/FileSaver;->mSaverListener:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/autorama/FileSaver;->mQueue:Ljava/util/ArrayList;

    .line 46
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/hwcamera/autorama/FileSaver;->mQueueLimit:I

    .line 85
    iput-object p1, p0, Lcom/android/hwcamera/autorama/FileSaver;->mContext:Lcom/android/hwcamera/CameraActivity;

    .line 86
    iget-object v0, p0, Lcom/android/hwcamera/autorama/FileSaver;->mContext:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/autorama/FileSaver;->mResolver:Landroid/content/ContentResolver;

    .line 87
    invoke-virtual {p0}, Lcom/android/hwcamera/autorama/FileSaver;->start()V

    .line 88
    return-void
.end method

.method static synthetic access$100(Lcom/android/hwcamera/autorama/FileSaver;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/hwcamera/autorama/FileSaver;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/autorama/FileSaver;)Lcom/android/hwcamera/CameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/hwcamera/autorama/FileSaver;->mContext:Lcom/android/hwcamera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/hwcamera/autorama/FileSaver;)Lcom/android/hwcamera/PhotoModule;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/hwcamera/autorama/FileSaver;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/hwcamera/autorama/FileSaver;Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/PhotoModule;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/hwcamera/autorama/FileSaver;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/hwcamera/autorama/FileSaver;IJ)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/hwcamera/autorama/FileSaver;->createName(IJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/hwcamera/autorama/FileSaver;Lcom/android/hwcamera/autorama/MTKSaveRequest;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/hwcamera/autorama/FileSaver;->addMTKSaveRequest(Lcom/android/hwcamera/autorama/MTKSaveRequest;)V

    return-void
.end method

.method private addMTKSaveRequest(Lcom/android/hwcamera/autorama/MTKSaveRequest;)V
    .locals 4
    .parameter "request"

    .prologue
    .line 198
    monitor-enter p0

    .line 199
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/autorama/FileSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/autorama/FileSaver;->mQueueLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    .line 201
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 204
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "FileSaver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addMTKSaveRequest("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 209
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 207
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/android/hwcamera/autorama/FileSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 209
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 210
    return-void
.end method

.method private createName(IJ)Ljava/lang/String;
    .locals 7
    .parameter "fileType"
    .parameter "dateTaken"

    .prologue
    .line 519
    iget-object v2, p0, Lcom/android/hwcamera/autorama/FileSaver;->mFileNamer:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 520
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/hwcamera/autorama/FileSaver;->mFileNamer:Ljava/util/HashMap;

    .line 521
    new-instance v1, Lcom/android/hwcamera/autorama/FileSaver$ImageFileNamer;

    iget-object v2, p0, Lcom/android/hwcamera/autorama/FileSaver;->mContext:Lcom/android/hwcamera/CameraActivity;

    const v3, 0x7f0d00b8

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/hwcamera/autorama/FileSaver$ImageFileNamer;-><init>(Ljava/lang/String;)V

    .line 523
    .local v1, photo:Lcom/android/hwcamera/autorama/FileSaver$ImageFileNamer;
    iget-object v2, p0, Lcom/android/hwcamera/autorama/FileSaver;->mFileNamer:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    iget-object v2, p0, Lcom/android/hwcamera/autorama/FileSaver;->mFileNamer:Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    iget-object v2, p0, Lcom/android/hwcamera/autorama/FileSaver;->mFileNamer:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/android/hwcamera/autorama/FileSaver$ImageFileNamer;

    iget-object v5, p0, Lcom/android/hwcamera/autorama/FileSaver;->mContext:Lcom/android/hwcamera/CameraActivity;

    const v6, 0x7f0d00b9

    invoke-virtual {v5, v6}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/hwcamera/autorama/FileSaver$ImageFileNamer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .end local v1           #photo:Lcom/android/hwcamera/autorama/FileSaver$ImageFileNamer;
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/autorama/FileSaver;->mFileNamer:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/autorama/FileSaver$ImageFileNamer;

    invoke-virtual {v2, p2, p3}, Lcom/android/hwcamera/autorama/FileSaver$ImageFileNamer;->generateName(J)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, name:Ljava/lang/String;
    const-string v2, "FileSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createName("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    return-object v0
.end method

.method public static getExifOrientation(Landroid/media/ExifInterface;)I
    .locals 4
    .parameter "exif"

    .prologue
    const/4 v3, -0x1

    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, degree:I
    if-eqz p0, :cond_0

    .line 390
    const-string v2, "Orientation"

    invoke-virtual {p0, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 392
    .local v1, orientation:I
    if-eq v1, v3, :cond_0

    .line 394
    packed-switch v1, :pswitch_data_0

    .line 410
    .end local v1           #orientation:I
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 396
    .restart local v1       #orientation:I
    :pswitch_1
    const/16 v0, 0x5a

    .line 397
    goto :goto_0

    .line 399
    :pswitch_2
    const/16 v0, 0xb4

    .line 400
    goto :goto_0

    .line 402
    :pswitch_3
    const/16 v0, 0x10e

    .line 403
    goto :goto_0

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public addListener(Lcom/android/hwcamera/autorama/FileSaver$FileSaverListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/hwcamera/autorama/FileSaver;->mSaverListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/hwcamera/autorama/FileSaver;->mSaverListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 190
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/hwcamera/autorama/FileSaver;->waitDone()V

    .line 148
    monitor-enter p0

    .line 149
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/hwcamera/autorama/FileSaver;->mStoped:Z

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 151
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :try_start_1
    invoke-virtual {p0}, Lcom/android/hwcamera/autorama/FileSaver;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    :goto_0
    return-void

    .line 151
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 154
    :catch_0
    move-exception v0

    .line 156
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v1, "FileSaver"

    const-string v2, "finish()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public finishAfterSaved()V
    .locals 1

    .prologue
    .line 162
    monitor-enter p0

    .line 163
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/hwcamera/autorama/FileSaver;->mStoped:Z

    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 165
    monitor-exit p0

    .line 166
    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWaitingCount()I
    .locals 2

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, count:I
    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/autorama/FileSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 182
    monitor-exit p0

    .line 183
    return v0

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWaitingDataSize()J
    .locals 6

    .prologue
    .line 169
    const-wide/16 v2, 0x0

    .line 170
    .local v2, totalToWrite:J
    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v4, p0, Lcom/android/hwcamera/autorama/FileSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/autorama/MTKSaveRequest;

    .line 172
    .local v1, r:Lcom/android/hwcamera/autorama/MTKSaveRequest;
    invoke-interface {v1}, Lcom/android/hwcamera/autorama/MTKSaveRequest;->getDataSize()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 174
    .end local v1           #r:Lcom/android/hwcamera/autorama/MTKSaveRequest;
    :cond_0
    monitor-exit p0

    .line 175
    return-wide v2

    .line 174
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public preparePhotoRequest(II)Lcom/android/hwcamera/autorama/MTKSaveRequest;
    .locals 2
    .parameter "type"
    .parameter "pictureType"

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, request:Lcom/android/hwcamera/autorama/MTKSaveRequest;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 216
    new-instance v0, Lcom/android/hwcamera/autorama/FileSaver$PanoOperator;

    .end local v0           #request:Lcom/android/hwcamera/autorama/MTKSaveRequest;
    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/hwcamera/autorama/FileSaver$PanoOperator;-><init>(Lcom/android/hwcamera/autorama/FileSaver;ILcom/android/hwcamera/autorama/FileSaver$1;)V

    .line 219
    .restart local v0       #request:Lcom/android/hwcamera/autorama/MTKSaveRequest;
    :cond_0
    if-eqz v0, :cond_1

    .line 220
    invoke-interface {v0}, Lcom/android/hwcamera/autorama/MTKSaveRequest;->prepareRequest()V

    .line 223
    :cond_1
    return-object v0
.end method

.method public removeListener(Lcom/android/hwcamera/autorama/FileSaver$FileSaverListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/hwcamera/autorama/FileSaver;->mSaverListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 94
    :goto_0
    const-string v4, "FileSaver"

    const-string v5, "enter FileSaver run"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v4, p0, Lcom/android/hwcamera/autorama/FileSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 102
    iget-boolean v4, p0, Lcom/android/hwcamera/autorama/FileSaver;->mStoped:Z

    if-eqz v4, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    return-void

    .line 105
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "FileSaver"

    const-string v5, "save thread is interrupted."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 112
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v4, p0, Lcom/android/hwcamera/autorama/FileSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/autorama/MTKSaveRequest;

    .line 113
    .local v3, r:Lcom/android/hwcamera/autorama/MTKSaveRequest;
    const-string v4, "FileSaver"

    const-string v5, "getrequest on run thread stp2"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    invoke-interface {v3}, Lcom/android/hwcamera/autorama/MTKSaveRequest;->MTKsaveRequest()V

    .line 116
    monitor-enter p0

    .line 117
    :try_start_4
    iget-object v4, p0, Lcom/android/hwcamera/autorama/FileSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 119
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 120
    invoke-interface {v3}, Lcom/android/hwcamera/autorama/MTKSaveRequest;->notifyListener()V

    .line 121
    iget-object v4, p0, Lcom/android/hwcamera/autorama/FileSaver;->mSaverListener:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/autorama/FileSaver$FileSaverListener;

    .line 122
    .local v2, listener:Lcom/android/hwcamera/autorama/FileSaver$FileSaverListener;
    invoke-interface {v2, v3}, Lcom/android/hwcamera/autorama/FileSaver$FileSaverListener;->onFileSaved(Lcom/android/hwcamera/autorama/MTKSaveRequest;)V

    goto :goto_2

    .line 119
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/android/hwcamera/autorama/FileSaver$FileSaverListener;
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .line 124
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    const-string v4, "FileSaver"

    const-string v5, "call FileSaver run"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v4, p0, Lcom/android/hwcamera/autorama/FileSaver;->mContext:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraActivity;->getThumbnailButtonWidth()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/hwcamera/autorama/MTKSaveRequest;->updateThumbnail(I)V

    goto :goto_0
.end method

.method public waitDone()V
    .locals 3

    .prologue
    .line 133
    monitor-enter p0

    .line 134
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/autorama/FileSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 136
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 139
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "FileSaver"

    const-string v2, "waitDone()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 142
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    return-void
.end method
