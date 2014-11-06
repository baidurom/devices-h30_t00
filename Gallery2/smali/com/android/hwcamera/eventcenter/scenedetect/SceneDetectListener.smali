.class public Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectListener;
.super Ljava/lang/Object;
.source "SceneDetectListener.java"

# interfaces
.implements Lcom/android/hwcamera/eventcenter/EventListener;


# static fields
.field private static detectListener:Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectListener;->detectListener:Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/hwcamera/eventcenter/EventListener;
    .locals 2

    .prologue
    .line 13
    const-class v1, Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectListener;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectListener;->detectListener:Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectListener;

    invoke-direct {v0}, Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectListener;-><init>()V

    sput-object v0, Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectListener;->detectListener:Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectListener;

    .line 14
    :cond_0
    sget-object v0, Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectListener;->detectListener:Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 13
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public handle(Lcom/android/hwcamera/eventcenter/Event;Lcom/android/hwcamera/CameraActivity;)V
    .locals 2
    .parameter "e"
    .parameter "cameraActivity"

    .prologue
    .line 22
    move-object v0, p1

    check-cast v0, Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectEvent;

    .line 23
    .local v0, event:Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectEvent;
    if-eqz p2, :cond_0

    .line 24
    new-instance v1, Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectListener$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectListener$1;-><init>(Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectListener;Lcom/android/hwcamera/CameraActivity;Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectEvent;)V

    invoke-virtual {p2, v1}, Lcom/android/hwcamera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 31
    :cond_0
    return-void
.end method
