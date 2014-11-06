.class public Lcom/android/hwcamera/CameraErrorCallback;
.super Ljava/lang/Object;
.source "CameraErrorCallback.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraErrorCallback"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 3
    .parameter "error"
    .parameter "camera"

    .prologue
    .line 31
    const-string v0, "CameraErrorCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got camera error callback. error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->getInstance()Lcom/android/hwcamera/eventcenter/DefaultEventCenter;

    move-result-object v0

    new-instance v1, Lcom/android/hwcamera/eventcenter/cameraerror/CameraErrorEvent;

    invoke-direct {v1, p1}, Lcom/android/hwcamera/eventcenter/cameraerror/CameraErrorEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->publish(Lcom/android/hwcamera/eventcenter/Event;)V

    .line 38
    return-void
.end method
