.class public Lcom/android/hwcamera/focuspolicy/FaceFocusPolicy;
.super Ljava/lang/Object;
.source "FaceFocusPolicy.java"

# interfaces
.implements Lcom/android/hwcamera/focuspolicy/IFaceFocusPolicy;


# instance fields
.field private mAutoFocusMoving:Z

.field private mFaceId:I

.field private mFaceRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/focuspolicy/FaceFocusPolicy;->mFaceRect:Landroid/graphics/RectF;

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/focuspolicy/FaceFocusPolicy;->mFaceId:I

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/focuspolicy/FaceFocusPolicy;->mAutoFocusMoving:Z

    return-void
.end method

.method private findFocusingFace(I[Lcom/android/hwcamera/facedetect/event/Face;)Lcom/android/hwcamera/facedetect/event/Face;
    .locals 6
    .parameter "faceId"
    .parameter "facesDatas"

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, biggestFaceArea:I
    const/4 v2, 0x0

    .line 98
    .local v2, currentFaceArea:I
    const/4 v1, 0x0

    .line 100
    .local v1, biggestFaceInfo:Lcom/android/hwcamera/facedetect/event/Face;
    const/4 v4, 0x0

    .line 101
    .local v4, index:I
    const/4 v3, 0x0

    .line 102
    .local v3, faceInfo:Lcom/android/hwcamera/facedetect/event/Face;
    const/4 v4, 0x0

    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_0

    .line 103
    aget-object v3, p2, v4

    .line 104
    iget v5, v3, Lcom/android/hwcamera/facedetect/event/Face;->id:I

    if-ne p1, v5, :cond_1

    move-object v1, v3

    .line 112
    .end local v1           #biggestFaceInfo:Lcom/android/hwcamera/facedetect/event/Face;
    :cond_0
    return-object v1

    .line 105
    .restart local v1       #biggestFaceInfo:Lcom/android/hwcamera/facedetect/event/Face;
    :cond_1
    invoke-virtual {v3}, Lcom/android/hwcamera/facedetect/event/Face;->getFaceArea()I

    move-result v2

    .line 106
    if-le v2, v0, :cond_2

    .line 107
    move v0, v2

    .line 108
    move-object v1, v3

    .line 102
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getFaceMeteringAreas(Lcom/android/hwcamera/FocusOverlayManager;)Ljava/util/List;
    .locals 2
    .parameter "focusManager"
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

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/focuspolicy/FaceFocusPolicy;->mFaceRect:Landroid/graphics/RectF;

    const/high16 v1, 0x3fc0

    invoke-virtual {p1, v0, v1}, Lcom/android/hwcamera/FocusOverlayManager;->rectToFocusArea(Landroid/graphics/RectF;F)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFocusAreas(Lcom/android/hwcamera/FocusOverlayManager;)Ljava/util/List;
    .locals 2
    .parameter "focusManager"
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

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/focuspolicy/FaceFocusPolicy;->mFaceRect:Landroid/graphics/RectF;

    const/high16 v1, 0x3f80

    invoke-virtual {p1, v0, v1}, Lcom/android/hwcamera/FocusOverlayManager;->rectToFocusArea(Landroid/graphics/RectF;F)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMeteringAreas(Lcom/android/hwcamera/FocusOverlayManager;)Ljava/util/List;
    .locals 1
    .parameter "focusManager"
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

    .prologue
    .line 35
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized onAutoFoucsMoving(Z)V
    .locals 1
    .parameter "moving"

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/hwcamera/focuspolicy/FaceFocusPolicy;->mAutoFocusMoving:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFaceDetected(Lcom/android/hwcamera/ui/indicator/FaceView;[Lcom/android/hwcamera/facedetect/event/Face;)V
    .locals 6
    .parameter "faceView"
    .parameter "facesDatas"

    .prologue
    const/4 v2, 0x1

    .line 64
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/android/hwcamera/Util;->isEmptyCollection([Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 66
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/android/hwcamera/focuspolicy/FaceFocusPolicy;->mFaceId:I

    invoke-direct {p0, v3, p2}, Lcom/android/hwcamera/focuspolicy/FaceFocusPolicy;->findFocusingFace(I[Lcom/android/hwcamera/facedetect/event/Face;)Lcom/android/hwcamera/facedetect/event/Face;

    move-result-object v0

    .line 68
    .local v0, focusFace:Lcom/android/hwcamera/facedetect/event/Face;
    if-eqz v0, :cond_2

    iget v3, p0, Lcom/android/hwcamera/focuspolicy/FaceFocusPolicy;->mFaceId:I

    iget v4, v0, Lcom/android/hwcamera/facedetect/event/Face;->id:I

    if-eq v3, v4, :cond_3

    :cond_2
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/hwcamera/focuspolicy/FaceFocusPolicy;->mFaceId:I

    .line 70
    :cond_3
    if-eqz v0, :cond_4

    move v3, v2

    :goto_1
    invoke-static {v3}, Lcom/android/hwcamera/Util;->Assert(Z)V

    .line 72
    invoke-static {}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->getInstance()Lcom/android/hwcamera/eventcenter/DefaultEventCenter;

    move-result-object v3

    new-instance v4, Lcom/android/hwcamera/focuspolicy/event/SmileCaptureEvent;

    invoke-virtual {v0}, Lcom/android/hwcamera/facedetect/event/Face;->getSmilePercent()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/android/hwcamera/focuspolicy/event/SmileCaptureEvent;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->publish(Lcom/android/hwcamera/eventcenter/Event;)V

    .line 74
    iget-boolean v3, p0, Lcom/android/hwcamera/focuspolicy/FaceFocusPolicy;->mAutoFocusMoving:Z

    if-eqz v3, :cond_5

    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/hwcamera/facedetect/event/Face;->setFocusStatus(I)V

    .line 76
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/android/hwcamera/facedetect/event/Face;->rect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 77
    .local v1, rectF:Landroid/graphics/RectF;
    invoke-virtual {p1, v1}, Lcom/android/hwcamera/ui/indicator/FaceView;->matrixRect(Landroid/graphics/RectF;)V

    .line 79
    iget-object v2, p0, Lcom/android/hwcamera/focuspolicy/FaceFocusPolicy;->mFaceRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2, v1}, Lcom/android/hwcamera/ui/indicator/FaceView;->isNeedAutoFocus(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/android/hwcamera/focuspolicy/FaceFocusPolicy;->mFaceRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 81
    invoke-static {}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->getInstance()Lcom/android/hwcamera/eventcenter/DefaultEventCenter;

    move-result-object v2

    new-instance v3, Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersEvent;

    invoke-direct {v3}, Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->publish(Lcom/android/hwcamera/eventcenter/Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    .end local v0           #focusFace:Lcom/android/hwcamera/facedetect/event/Face;
    .end local v1           #rectF:Landroid/graphics/RectF;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 70
    .restart local v0       #focusFace:Lcom/android/hwcamera/facedetect/event/Face;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 74
    :cond_5
    const/4 v2, 0x2

    goto :goto_2
.end method

.method public declared-synchronized reset()V
    .locals 3

    .prologue
    .line 52
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/android/hwcamera/focuspolicy/FaceFocusPolicy;->mFaceId:I

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/focuspolicy/FaceFocusPolicy;->mFaceRect:Landroid/graphics/RectF;

    .line 59
    invoke-static {}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->getInstance()Lcom/android/hwcamera/eventcenter/DefaultEventCenter;

    move-result-object v0

    new-instance v1, Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->publish(Lcom/android/hwcamera/eventcenter/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized touchFace(I)V
    .locals 1
    .parameter "touchedFaceId"

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/hwcamera/focuspolicy/FaceFocusPolicy;->mFaceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
