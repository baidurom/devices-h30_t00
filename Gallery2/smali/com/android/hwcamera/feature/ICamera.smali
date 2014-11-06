.class public interface abstract Lcom/android/hwcamera/feature/ICamera;
.super Ljava/lang/Object;
.source "ICamera.java"


# virtual methods
.method public abstract addCallbackBuffer([B)V
.end method

.method public abstract autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
.end method

.method public abstract cancelAutoFocus()V
.end method

.method public abstract cancelTakePicture()V
.end method

.method public abstract clearShootMode()V
.end method

.method public abstract enableShutterSound(Z)V
.end method

.method public abstract enableVideoRecordStereo(ZILandroid/media/AudioManager;)V
.end method

.method public abstract getAndroidCamera()Landroid/hardware/Camera;
.end method

.method public abstract getFeatureShotMode()Lcom/android/hwcamera/feature/shot/IFeatureShotMode;
.end method

.method public abstract getIsoKey()Ljava/lang/String;
.end method

.method public abstract getParameters()Landroid/hardware/Camera$Parameters;
.end method

.method public abstract getSupportedIsoValues()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedShootingModes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initHwExtCameraHanlderThread()V
.end method

.method public abstract isAndroidCamera()Z
.end method

.method public abstract isSupportBackgroundImageProcess()Z
.end method

.method public abstract isSupportSmile()Z
.end method

.method public abstract isSupportTargetTrack()Z
.end method

.method public abstract lock()V
.end method

.method public abstract reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
.end method

.method public abstract setBurstShotInterval(I)V
.end method

.method public abstract setBurstTotalCaptures(I)V
.end method

.method public abstract setDisplayOrientation(I)V
.end method

.method public abstract setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
.end method

.method public abstract setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
.end method

.method public abstract setFaceOrientation(I)V
.end method

.method public abstract setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
.end method

.method public abstract setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
.end method

.method public abstract setParameters(Landroid/hardware/Camera$Parameters;)V
.end method

.method public abstract setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
.end method

.method public abstract setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
.end method

.method public abstract setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setShootMode(Ljava/lang/String;)V
.end method

.method public abstract setSmileDetection(Z)V
.end method

.method public abstract setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
.end method

.method public abstract startFaceDetection()V
.end method

.method public abstract startMTKPanorama(ILandroid/hardware/Camera$AUTORAMACallback;Landroid/hardware/Camera$AUTORAMAMVCallback;)V
.end method

.method public abstract startMav(ILandroid/hardware/Camera$MAVCallback;)V
.end method

.method public abstract startPreview()V
.end method

.method public abstract startSmoothZoom(I)V
.end method

.method public abstract startTargetTracking(Landroid/hardware/Camera$Parameters;)V
.end method

.method public abstract stopFaceDetection()V
.end method

.method public abstract stopMTKPanorama(I)V
.end method

.method public abstract stopMTKPanoramaCallback()V
.end method

.method public abstract stopMav(I)V
.end method

.method public abstract stopMavCallback()V
.end method

.method public abstract stopPreview()V
.end method

.method public abstract stopTargetTracking(Landroid/hardware/Camera$Parameters;)V
.end method

.method public abstract takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
.end method

.method public abstract unlock()V
.end method

.method public abstract updateShootMode(Ljava/lang/String;Landroid/hardware/Camera$Parameters;ZI)Z
.end method
