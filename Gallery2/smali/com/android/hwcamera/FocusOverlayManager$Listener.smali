.class public interface abstract Lcom/android/hwcamera/FocusOverlayManager$Listener;
.super Ljava/lang/Object;
.source "FocusOverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/FocusOverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract autoFocus()V
.end method

.method public abstract cancelAutoFocus()V
.end method

.method public abstract capture()Z
.end method

.method public abstract isInMeterShootMode()Z
.end method

.method public abstract setFocusParameters()V
.end method

.method public abstract setMeteringParameters()V
.end method

.method public abstract startFaceDetection()V
.end method

.method public abstract stopFaceDetection()V
.end method
