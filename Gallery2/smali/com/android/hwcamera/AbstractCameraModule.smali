.class public abstract Lcom/android/hwcamera/AbstractCameraModule;
.super Ljava/lang/Object;
.source "AbstractCameraModule.java"

# interfaces
.implements Lcom/android/hwcamera/CameraModule;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCameraId()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public hideMeteringGuide()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public hideOnsreenHint()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public hideZoomController()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public isInMeteringRect(Landroid/view/View;II)Z
    .locals 1
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public isPanorama()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomming()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public onBluetoothButtonClick()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIII)V
    .locals 0
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 10
    return-void
.end method

.method public onMenuKeyUp()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public onPhoneHangup()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onPhoneHook()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public onPhoneRing()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onSceneDetected(I)V
    .locals 0
    .parameter "scene"

    .prologue
    .line 96
    return-void
.end method

.method public onSdCardRemoved()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public setTipsViewMargin(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 40
    return-void
.end method

.method public showOnscreenHint(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 15
    return-void
.end method

.method public showOnscreenHintDelay(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 25
    return-void
.end method

.method public showOnscreenHintImmediately(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 20
    return-void
.end method

.method public showOnscreenToast(I)V
    .locals 0
    .parameter "message"

    .prologue
    .line 35
    return-void
.end method

.method public updateMeteringPos(Landroid/view/View;IIZ)V
    .locals 0
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "updatePara"

    .prologue
    .line 106
    return-void
.end method
