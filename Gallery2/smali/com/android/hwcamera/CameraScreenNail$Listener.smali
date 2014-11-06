.class public interface abstract Lcom/android/hwcamera/CameraScreenNail$Listener;
.super Ljava/lang/Object;
.source "CameraScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/CameraScreenNail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract draw(Lcom/android/hwcamera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;IIII)V
.end method

.method public abstract onCaptureTextureCopied()V
.end method

.method public abstract onPreviewTextureCopied()V
.end method

.method public abstract requestRender()V
.end method
