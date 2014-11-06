.class public interface abstract Lcom/android/hwcamera/focuspolicy/IFocusPolicy;
.super Ljava/lang/Object;
.source "IFocusPolicy.java"


# virtual methods
.method public abstract getFaceMeteringAreas(Lcom/android/hwcamera/FocusOverlayManager;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/hwcamera/FocusOverlayManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFocusAreas(Lcom/android/hwcamera/FocusOverlayManager;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/hwcamera/FocusOverlayManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMeteringAreas(Lcom/android/hwcamera/FocusOverlayManager;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/hwcamera/FocusOverlayManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onAutoFoucsMoving(Z)V
.end method

.method public abstract reset()V
.end method
