.class public Lcom/android/hwcamera/ZoomController;
.super Ljava/lang/Object;
.source "ZoomController.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;
    }
.end annotation


# static fields
.field private static final HIDE_DELAY:I = 0xfa0


# instance fields
.field private mActivity:Lcom/android/hwcamera/CameraActivity;

.field private mFromClick:Z

.field private mFromScale:Z

.field private mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

.field private mZoomListener:Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;

.field private mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

.field private mZoomValue:I


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;Lcom/android/hwcamera/ui/ZoomRenderer;Lcom/android/hwcamera/ui/ZoomBar;Lcom/android/hwcamera/CameraActivity;)V
    .locals 1
    .parameter "listener"
    .parameter "renderer"
    .parameter "bar"
    .parameter "activity"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomValue:I

    .line 21
    iput-boolean v0, p0, Lcom/android/hwcamera/ZoomController;->mFromClick:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/hwcamera/ZoomController;->mFromScale:Z

    .line 46
    iput-object p1, p0, Lcom/android/hwcamera/ZoomController;->mZoomListener:Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;

    .line 47
    iput-object p2, p0, Lcom/android/hwcamera/ZoomController;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    .line 48
    iput-object p3, p0, Lcom/android/hwcamera/ZoomController;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    .line 49
    iput-object p4, p0, Lcom/android/hwcamera/ZoomController;->mActivity:Lcom/android/hwcamera/CameraActivity;

    .line 50
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/ui/ZoomBar;->setEventListener(Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method private setZoomParameter(I)V
    .locals 1
    .parameter "zoom"

    .prologue
    .line 171
    iget v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomValue:I

    if-eq v0, p1, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomListener:Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomListener:Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;->onZoomValueChanged(I)V

    .line 175
    :cond_0
    iput p1, p0, Lcom/android/hwcamera/ZoomController;->mZoomValue:I

    .line 177
    :cond_1
    return-void
.end method


# virtual methods
.method public getHideDelayTime()I
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0xfa0

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/ZoomBar;->hide()V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/ZoomRenderer;->hide()V

    .line 64
    :cond_1
    return-void
.end method

.method public hideAndNotResponseZoombar()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/ZoomBar;->setEventListener(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/hwcamera/ZoomController;->hide()V

    .line 69
    return-void
.end method

.method public isZooming()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/ZoomRenderer;->isScaling()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/ZoomBar;->isZooming()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/ZoomController;->mFromClick:Z

    .line 128
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/ui/ZoomBar;->onClick(Landroid/view/View;)I

    .line 129
    return-void
.end method

.method public onOritationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/ui/ZoomRenderer;->onOritationChanged(I)V

    .line 186
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "i"
    .parameter "fromUser"

    .prologue
    const/4 v2, 0x0

    .line 134
    iget-boolean v1, p0, Lcom/android/hwcamera/ZoomController;->mFromScale:Z

    if-eqz v1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/ZoomController;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    if-nez p3, :cond_1

    iget-boolean v1, p0, Lcom/android/hwcamera/ZoomController;->mFromClick:Z

    if-eqz v1, :cond_6

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, p1, p2, v1}, Lcom/android/hwcamera/ui/ZoomBar;->onProgressChanged(Landroid/widget/SeekBar;IZ)I

    move-result v0

    .line 138
    .local v0, zoom:I
    invoke-direct {p0, v0}, Lcom/android/hwcamera/ZoomController;->setZoomParameter(I)V

    .line 139
    if-nez p3, :cond_2

    iget-boolean v1, p0, Lcom/android/hwcamera/ZoomController;->mFromClick:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/hwcamera/ZoomController;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/ZoomBar;->isSmoothZooming()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/ZoomController;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/ui/ZoomRenderer;->onScale(I)V

    .line 142
    :cond_3
    iget-boolean v1, p0, Lcom/android/hwcamera/ZoomController;->mFromClick:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/hwcamera/ZoomController;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/ZoomBar;->isSmoothZooming()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 143
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/ZoomController;->mZoomListener:Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;

    if-eqz v1, :cond_5

    .line 144
    iget-object v1, p0, Lcom/android/hwcamera/ZoomController;->mZoomListener:Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;

    invoke-interface {v1}, Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;->onZoomEnd()V

    .line 147
    :cond_5
    iput-boolean v2, p0, Lcom/android/hwcamera/ZoomController;->mFromClick:Z

    goto :goto_0

    .end local v0           #zoom:I
    :cond_6
    move v1, v2

    .line 137
    goto :goto_1
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .parameter "scaleGestureDetector"

    .prologue
    const/4 v2, 0x1

    .line 75
    iget-object v1, p0, Lcom/android/hwcamera/ZoomController;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getCameraId()I

    move-result v1

    invoke-static {v1}, Lcom/android/hwcamera/Util;->isFrontCamera(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    :goto_0
    return v2

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/ZoomController;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/ui/ZoomRenderer;->onScaleGesture(Landroid/view/ScaleGestureDetector;)I

    move-result v0

    .line 80
    .local v0, zoom:I
    invoke-direct {p0, v0}, Lcom/android/hwcamera/ZoomController;->setZoomParameter(I)V

    .line 82
    iget-object v1, p0, Lcom/android/hwcamera/ZoomController;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    invoke-virtual {v1, p0}, Lcom/android/hwcamera/ui/ZoomBar;->setEventListener(Ljava/lang/Object;)V

    .line 84
    iget-object v1, p0, Lcom/android/hwcamera/ZoomController;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/ZoomBar;->show()V

    .line 85
    iget-object v1, p0, Lcom/android/hwcamera/ZoomController;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/ui/ZoomBar;->setZoom(I)V

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter "scaleGestureDetector"

    .prologue
    const/4 v1, 0x1

    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isFrontCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return v1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/ZoomRenderer;->onScaleBegin()Z

    .line 99
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/ui/ZoomBar;->setEventListener(Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/ZoomBar;->show()V

    .line 102
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomListener:Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomListener:Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;

    invoke-interface {v0}, Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;->onZoomStart()V

    .line 105
    :cond_1
    iput-boolean v1, p0, Lcom/android/hwcamera/ZoomController;->mFromScale:Z

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .parameter "scaleGestureDetector"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isFrontCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/ZoomRenderer;->onScaleEnd()V

    .line 118
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/ZoomBar;->fade()V

    .line 119
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomListener:Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomListener:Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;

    invoke-interface {v0}, Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;->onZoomEnd()V

    .line 122
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/ZoomController;->mFromScale:Z

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/ui/ZoomBar;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 153
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/ZoomRenderer;->show()V

    .line 154
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomListener:Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomListener:Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;

    invoke-interface {v0}, Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;->onZoomStart()V

    .line 157
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/ui/ZoomBar;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 162
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/ZoomRenderer;->hideDelay()V

    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomListener:Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomListener:Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;

    invoke-interface {v0}, Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;->onZoomEnd()V

    .line 168
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "viewID"
    .parameter "motionEvent"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    invoke-virtual {v0, p1, p2}, Lcom/android/hwcamera/ui/ZoomBar;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/ZoomBar;->reload()V

    .line 31
    iget-object v0, p0, Lcom/android/hwcamera/ZoomController;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/ui/ZoomBar;->setEventListener(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/hwcamera/ZoomController;->hide()V

    .line 33
    return-void
.end method

.method public setZoomChangeListener(Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/hwcamera/ZoomController;->mZoomListener:Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;

    .line 55
    return-void
.end method
