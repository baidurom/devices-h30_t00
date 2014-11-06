.class public interface abstract Lcom/android/hwcamera/feature/shot/IFeatureShotMode;
.super Ljava/lang/Object;
.source "IFeatureShotMode.java"


# static fields
.field public static final DEAFAULT_SHOT_MODE:Ljava/lang/String; = "single"


# virtual methods
.method public abstract doAfterOnLastPicTaken()V
.end method

.method public abstract doAfterTakePicture()V
.end method

.method public abstract doBeforeOnLastPicTaken()V
.end method

.method public abstract doBeforeTakePicture()V
.end method

.method public abstract genJpegPictureCallback(Landroid/location/Location;ZLcom/android/hwcamera/PhotoModule;)Landroid/hardware/Camera$PictureCallback;
.end method

.method public abstract getPictureNum()I
.end method

.method public abstract interruptTakePicture()V
.end method

.method public abstract isNeedRestartPreview()Z
.end method

.method public abstract isProcessIng()Z
.end method

.method public abstract prepareShotMode(Landroid/hardware/Camera$Parameters;ZI)Z
.end method

.method public abstract setFeatureCamera(Lcom/android/hwcamera/feature/ICamera;)V
.end method

.method public abstract setMaxPictureNum(I)V
.end method

.method public abstract takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;)V
.end method

.method public abstract waitProcessDone(Z)V
.end method
