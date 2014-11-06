.class public interface abstract Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;
.super Ljava/lang/Object;
.source "FeaturePictureCallback.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# virtual methods
.method public abstract isProcessIng()Z
.end method

.method public abstract onBestPhotoReport(I)V
.end method

.method public abstract onFakePictureTaken()V
.end method

.method public abstract onLastPictureTaken()V
.end method

.method public abstract onQuickThumbnail([B)V
.end method

.method public abstract onSmartSenceReport(B)V
.end method

.method public abstract storeImage([BIIZZ)V
.end method

.method public abstract waitProcessDone(Z)V
.end method
