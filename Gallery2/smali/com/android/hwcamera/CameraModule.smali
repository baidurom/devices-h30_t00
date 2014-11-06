.class public interface abstract Lcom/android/hwcamera/CameraModule;
.super Ljava/lang/Object;
.source "CameraModule.java"


# virtual methods
.method public abstract canGotoGallery()Z
.end method

.method public abstract collapseCameraControls()Z
.end method

.method public abstract dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract doSmileCapture(I)V
.end method

.method public abstract flashModeInLowBattery()V
.end method

.method public abstract getCameraId()I
.end method

.method public abstract hideMeteringGuide()V
.end method

.method public abstract hideOnsreenHint()V
.end method

.method public abstract hideZoomController()V
.end method

.method public abstract init(Lcom/android/hwcamera/CameraActivity;Landroid/view/View;Z)V
.end method

.method public abstract installIntentFilter()V
.end method

.method public abstract isInMeteringRect(Landroid/view/View;II)Z
.end method

.method public abstract isPanorama()Z
.end method

.method public abstract isRecording()Z
.end method

.method public abstract isZoomming()Z
.end method

.method public abstract needBackground()Z
.end method

.method public abstract needColorEffect()Z
.end method

.method public abstract needMenu()Z
.end method

.method public abstract needsBeautyProgress()Z
.end method

.method public abstract needsSwitcher()Z
.end method

.method public abstract needsThumbnail()Z
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onBluetoothButtonClick()V
.end method

.method public abstract onCaptureTextureCopied()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onFaceDetected([Lcom/android/hwcamera/facedetect/event/Face;)V
.end method

.method public abstract onFullScreenChanged(Z)V
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onLayoutChange(Landroid/view/View;IIII)V
.end method

.method public abstract onMenuKeyUp()V
.end method

.method public abstract onOrientationChanged(I)V
.end method

.method public abstract onPauseAfterSuper()V
.end method

.method public abstract onPauseBeforeSuper()V
.end method

.method public abstract onPhoneHangup()V
.end method

.method public abstract onPhoneHook()V
.end method

.method public abstract onPhoneRing()V
.end method

.method public abstract onPreviewTextureCopied()V
.end method

.method public abstract onResumeAfterSuper()V
.end method

.method public abstract onResumeBeforeSuper()V
.end method

.method public abstract onSceneDetected(I)V
.end method

.method public abstract onSdCardRemoved()V
.end method

.method public abstract onShowSwitcherPopup()V
.end method

.method public abstract onSingleTapUp(Landroid/view/View;II)V
.end method

.method public abstract onStop()V
.end method

.method public abstract onTargetDetected(Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;)V
.end method

.method public abstract onUserInteraction()V
.end method

.method public abstract setBeautyProgress(I)V
.end method

.method public abstract setTipsViewMargin(IIII)V
.end method

.method public abstract showOnscreenHint(I)V
.end method

.method public abstract showOnscreenHintDelay(I)V
.end method

.method public abstract showOnscreenHintImmediately(I)V
.end method

.method public abstract showOnscreenToast(I)V
.end method

.method public abstract updateCameraAppView()V
.end method

.method public abstract updateCameraFocusParameters(Z)V
.end method

.method public abstract updateColorEffect(Ljava/lang/String;)V
.end method

.method public abstract updateMeteringPos(Landroid/view/View;IIZ)V
.end method
