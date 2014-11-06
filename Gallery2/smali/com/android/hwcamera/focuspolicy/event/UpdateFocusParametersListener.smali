.class public Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersListener;
.super Ljava/lang/Object;
.source "UpdateFocusParametersListener.java"

# interfaces
.implements Lcom/android/hwcamera/eventcenter/EventListener;


# static fields
.field private static updateFocusParametersListener:Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersListener;->updateFocusParametersListener:Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/hwcamera/eventcenter/EventListener;
    .locals 2

    .prologue
    .line 12
    const-class v1, Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersListener;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersListener;->updateFocusParametersListener:Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersListener;

    invoke-direct {v0}, Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersListener;-><init>()V

    sput-object v0, Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersListener;->updateFocusParametersListener:Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersListener;

    .line 13
    :cond_0
    sget-object v0, Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersListener;->updateFocusParametersListener:Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 12
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
    .line 21
    if-eqz p2, :cond_0

    check-cast p1, Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersEvent;

    .end local p1
    invoke-virtual {p1}, Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersEvent;->isForceUpdate()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/hwcamera/CameraActivity;->updateCameraFocusParameters(Z)V

    .line 22
    :cond_0
    return-void
.end method
