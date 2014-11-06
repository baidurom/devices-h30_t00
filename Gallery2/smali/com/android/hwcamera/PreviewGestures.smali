.class public Lcom/android/hwcamera/PreviewGestures;
.super Ljava/lang/Object;
.source "PreviewGestures.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CAM_gestures"


# instance fields
.field private mActivity:Lcom/android/hwcamera/CameraActivity;

.field private mCurrentEvent:Landroid/view/MotionEvent;

.field private mEnabled:Z

.field private mLocation:[I

.field private mReceivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mScale:Landroid/view/ScaleGestureDetector;

.field private mZoom:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/CameraActivity;Lcom/android/hwcamera/CameraModule;)V
    .locals 1
    .parameter "ctx"
    .parameter "module"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/hwcamera/PreviewGestures;->mActivity:Lcom/android/hwcamera/CameraActivity;

    .line 48
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/hwcamera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/PreviewGestures;->mEnabled:Z

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/hwcamera/PreviewGestures;->mLocation:[I

    .line 51
    return-void
.end method

.method private checkReceivers(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "m"

    .prologue
    .line 118
    iget-object v2, p0, Lcom/android/hwcamera/PreviewGestures;->mReceivers:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 119
    iget-object v2, p0, Lcom/android/hwcamera/PreviewGestures;->mReceivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 120
    .local v1, receiver:Landroid/view/View;
    invoke-direct {p0, p1, v1}, Lcom/android/hwcamera/PreviewGestures;->isInside(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    const/4 v2, 0x1

    .line 125
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #receiver:Landroid/view/View;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isInside(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 5
    .parameter "evt"
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 129
    iget-object v2, p0, Lcom/android/hwcamera/PreviewGestures;->mLocation:[I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 130
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/hwcamera/PreviewGestures;->mLocation:[I

    aget v3, v3, v1

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/hwcamera/PreviewGestures;->mLocation:[I

    aget v3, v3, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/hwcamera/PreviewGestures;->mLocation:[I

    aget v3, v3, v0

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/hwcamera/PreviewGestures;->mLocation:[I

    aget v3, v3, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private makeCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 2
    .parameter "m"

    .prologue
    .line 73
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 74
    .local v0, c:Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 75
    return-object v0
.end method


# virtual methods
.method public addTouchReceiver(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/hwcamera/PreviewGestures;->mReceivers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/PreviewGestures;->mReceivers:Ljava/util/List;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PreviewGestures;->mReceivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public cancelScale(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/hwcamera/PreviewGestures;->makeCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 112
    .local v0, e:Landroid/view/MotionEvent;
    iget-object v1, p0, Lcom/android/hwcamera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, v0}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 113
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 114
    return-void
.end method

.method public clearTouchReceivers()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/hwcamera/PreviewGestures;->mReceivers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/hwcamera/PreviewGestures;->mReceivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    :cond_0
    return-void
.end method

.method public dispatchTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "m"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/hwcamera/PreviewGestures;->mCurrentEvent:Landroid/view/MotionEvent;

    .line 93
    iget-boolean v2, p0, Lcom/android/hwcamera/PreviewGestures;->mEnabled:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/hwcamera/PreviewGestures;->checkReceivers(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/PreviewGestures;->cancelScale(Landroid/view/MotionEvent;)V

    .line 97
    iget-object v2, p0, Lcom/android/hwcamera/PreviewGestures;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2, p1}, Lcom/android/hwcamera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 106
    :goto_0
    return v1

    .line 101
    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 102
    .local v0, e:Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/android/hwcamera/PreviewGestures;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2, v0}, Lcom/android/hwcamera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 103
    .local v1, ret:Z
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 104
    iget-object v2, p0, Lcom/android/hwcamera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/hwcamera/PreviewGestures;->mZoom:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 138
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PreviewGestures;->mZoom:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter "detector"

    .prologue
    const/4 v0, 0x0

    .line 143
    iget-object v1, p0, Lcom/android/hwcamera/PreviewGestures;->mZoom:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    if-nez v1, :cond_0

    .line 145
    :goto_0
    return v0

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/PreviewGestures;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/CameraActivity;->setSwipingEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/hwcamera/PreviewGestures;->mZoom:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/hwcamera/PreviewGestures;->mZoom:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PreviewGestures;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/PreviewGestures;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->setSwipingEnabled(Z)V

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PreviewGestures;->mZoom:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/hwcamera/PreviewGestures;->mEnabled:Z

    .line 61
    iget-boolean v1, p0, Lcom/android/hwcamera/PreviewGestures;->mEnabled:Z

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/android/hwcamera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/PreviewGestures;->mCurrentEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/android/hwcamera/PreviewGestures;->mCurrentEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v1}, Lcom/android/hwcamera/PreviewGestures;->makeCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 65
    .local v0, e:Landroid/view/MotionEvent;
    iget-object v1, p0, Lcom/android/hwcamera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, v0}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 66
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 70
    .end local v0           #e:Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method public setOnScaleGestureListener(Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/hwcamera/PreviewGestures;->mZoom:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 157
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 57
    return-void
.end method

.method public setRenderOverlay(Lcom/android/hwcamera/ui/RenderOverlay;)V
    .locals 0
    .parameter "overlay"

    .prologue
    .line 54
    return-void
.end method
