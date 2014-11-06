.class public Lcom/android/hwcamera/storage/StoragePathChangedListener;
.super Ljava/lang/Object;
.source "StoragePathChangedListener.java"

# interfaces
.implements Lcom/android/hwcamera/eventcenter/EventListener;


# static fields
.field private static instance:Lcom/android/hwcamera/storage/StoragePathChangedListener;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/android/hwcamera/storage/StoragePathChangedListener;->instance:Lcom/android/hwcamera/storage/StoragePathChangedListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/storage/StoragePathChangedListener;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/hwcamera/eventcenter/EventListener;
    .locals 2

    .prologue
    .line 16
    const-class v1, Lcom/android/hwcamera/storage/StoragePathChangedListener;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/hwcamera/storage/StoragePathChangedListener;->instance:Lcom/android/hwcamera/storage/StoragePathChangedListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/hwcamera/storage/StoragePathChangedListener;

    invoke-direct {v0}, Lcom/android/hwcamera/storage/StoragePathChangedListener;-><init>()V

    sput-object v0, Lcom/android/hwcamera/storage/StoragePathChangedListener;->instance:Lcom/android/hwcamera/storage/StoragePathChangedListener;

    .line 17
    :cond_0
    sget-object v0, Lcom/android/hwcamera/storage/StoragePathChangedListener;->instance:Lcom/android/hwcamera/storage/StoragePathChangedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public handle(Lcom/android/hwcamera/eventcenter/Event;Lcom/android/hwcamera/CameraActivity;)V
    .locals 4
    .parameter "event"
    .parameter "cameraActivity"

    .prologue
    .line 26
    instance-of v1, p1, Lcom/android/hwcamera/storage/StoragePathChangedEvent;

    invoke-static {v1}, Lcom/android/hwcamera/Util;->Assert(Z)V

    move-object v0, p1

    .line 27
    check-cast v0, Lcom/android/hwcamera/storage/StoragePathChangedEvent;

    .line 28
    .local v0, storagePathChangedEvent:Lcom/android/hwcamera/storage/StoragePathChangedEvent;
    iget-object v1, p0, Lcom/android/hwcamera/storage/StoragePathChangedListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storagePathChangedEvent value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/hwcamera/storage/StoragePathChangedEvent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/android/hwcamera/storage/StoragePathChangedEvent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/hwcamera/CameraActivity;->onStorageStateChanged(Ljava/lang/String;)V

    .line 30
    :cond_0
    return-void
.end method
