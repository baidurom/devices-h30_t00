.class public Lcom/android/hwcamera/focuspolicy/event/SmileCaptureListener;
.super Ljava/lang/Object;
.source "SmileCaptureListener.java"

# interfaces
.implements Lcom/android/hwcamera/eventcenter/EventListener;


# static fields
.field private static smileCaptureListener:Lcom/android/hwcamera/focuspolicy/event/SmileCaptureListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/android/hwcamera/focuspolicy/event/SmileCaptureListener;->smileCaptureListener:Lcom/android/hwcamera/focuspolicy/event/SmileCaptureListener;

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
    const-class v1, Lcom/android/hwcamera/focuspolicy/event/SmileCaptureListener;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/hwcamera/focuspolicy/event/SmileCaptureListener;->smileCaptureListener:Lcom/android/hwcamera/focuspolicy/event/SmileCaptureListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/hwcamera/focuspolicy/event/SmileCaptureListener;

    invoke-direct {v0}, Lcom/android/hwcamera/focuspolicy/event/SmileCaptureListener;-><init>()V

    sput-object v0, Lcom/android/hwcamera/focuspolicy/event/SmileCaptureListener;->smileCaptureListener:Lcom/android/hwcamera/focuspolicy/event/SmileCaptureListener;

    .line 14
    :cond_0
    sget-object v0, Lcom/android/hwcamera/focuspolicy/event/SmileCaptureListener;->smileCaptureListener:Lcom/android/hwcamera/focuspolicy/event/SmileCaptureListener;
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
    .locals 1
    .parameter "e"
    .parameter "cameraActivity"

    .prologue
    .line 22
    if-eqz p2, :cond_0

    check-cast p1, Lcom/android/hwcamera/focuspolicy/event/SmileCaptureEvent;

    .end local p1
    invoke-virtual {p1}, Lcom/android/hwcamera/focuspolicy/event/SmileCaptureEvent;->getSmileScore()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/hwcamera/CameraActivity;->doSmileCapture(I)V

    .line 23
    :cond_0
    return-void
.end method
