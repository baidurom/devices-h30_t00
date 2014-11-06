.class public interface abstract Lcom/android/hwcamera/autorama/MTKSaveRequest;
.super Ljava/lang/Object;
.source "MTKSaveRequest.java"


# virtual methods
.method public abstract MTKsaveRequest()V
.end method

.method public abstract addRequest()V
.end method

.method public abstract createThumbnail(I)Lcom/android/hwcamera/thumbnail/Thumbnail;
.end method

.method public abstract getDataSize()I
.end method

.method public abstract getFilePath()Ljava/lang/String;
.end method

.method public abstract getJpegRotation()I
.end method

.method public abstract getTempFilePath()Ljava/lang/String;
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract isIgnoreThumbnail()Z
.end method

.method public abstract notifyListener()V
.end method

.method public abstract prepareRequest()V
.end method

.method public abstract saveSync()V
.end method

.method public abstract setData([B)V
.end method

.method public abstract setIgnoreThumbnail(Z)V
.end method

.method public abstract setJpegRotation(I)V
.end method

.method public abstract setListener(Lcom/android/hwcamera/autorama/FileSaver$FileSaverListener;)V
.end method

.method public abstract setTempPath(Ljava/lang/String;)V
.end method

.method public abstract updateDataTaken(J)V
.end method

.method public abstract updateThumbnail(I)V
.end method
