.class public interface abstract Lcom/android/hwcamera/CameraPreference$OnPreferenceChangedListener;
.super Ljava/lang/Object;
.source "CameraPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/CameraPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPreferenceChangedListener"
.end annotation


# virtual methods
.method public abstract onCameraPickerClicked(I)V
.end method

.method public abstract onOverriddenPreferencesClicked()V
.end method

.method public abstract onRestorePreferencesClicked()V
.end method

.method public abstract onSharedPreferenceChanged(Lcom/android/hwcamera/CameraPreference;)V
.end method

.method public abstract onSharedPreferencesChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/android/hwcamera/CameraPreference;",
            ">;)V"
        }
    .end annotation
.end method
