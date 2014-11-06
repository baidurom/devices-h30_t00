.class public Lcom/android/hwcamera/focuspolicy/TargetTrackFocusPolicy;
.super Ljava/lang/Object;
.source "TargetTrackFocusPolicy.java"

# interfaces
.implements Lcom/android/hwcamera/focuspolicy/ITargetTrackFocusPolicy;


# instance fields
.field private mAutoFocusMoving:Z

.field private mKeepExceptionTargetCount:I

.field private mPreviewTargetInfo:Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;

.field private mTargetRect:Landroid/graphics/RectF;

.field private mTargetView:Lcom/android/hwcamera/ui/TargetView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/focuspolicy/TargetTrackFocusPolicy;->mTargetRect:Landroid/graphics/RectF;

    .line 20
    iput-boolean v1, p0, Lcom/android/hwcamera/focuspolicy/TargetTrackFocusPolicy;->mAutoFocusMoving:Z

    .line 21
    iput-object v2, p0, Lcom/android/hwcamera/focuspolicy/TargetTrackFocusPolicy;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    .line 22
    iput v1, p0, Lcom/android/hwcamera/focuspolicy/TargetTrackFocusPolicy;->mKeepExceptionTargetCount:I

    .line 23
    iput-object v2, p0, Lcom/android/hwcamera/focuspolicy/TargetTrackFocusPolicy;->mPreviewTargetInfo:Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;

    return-void
.end method


# virtual methods
.method public getFaceMeteringAreas(Lcom/android/hwcamera/FocusOverlayManager;)Ljava/util/List;
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
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getFocusAreas(Lcom/android/hwcamera/FocusOverlayManager;)Ljava/util/List;
    .locals 3
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
    .line 26
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/focuspolicy/TargetTrackFocusPolicy;->mTargetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/hwcamera/focuspolicy/TargetTrackFocusPolicy;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    const/high16 v2, 0x3f80

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/hwcamera/FocusOverlayManager;->rectToFocusArea(Landroid/graphics/RectF;Lcom/android/hwcamera/ui/TargetView;F)Ljava/util/List;
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
    .locals 3
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
    .line 31
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/focuspolicy/TargetTrackFocusPolicy;->mTargetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/hwcamera/focuspolicy/TargetTrackFocusPolicy;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    const/high16 v2, 0x3fc0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/hwcamera/FocusOverlayManager;->rectToFocusArea(Landroid/graphics/RectF;Lcom/android/hwcamera/ui/TargetView;F)Ljava/util/List;
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

.method public declared-synchronized onAutoFoucsMoving(Z)V
    .locals 1
    .parameter "moving"

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/hwcamera/focuspolicy/TargetTrackFocusPolicy;->mAutoFocusMoving:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onTargetDetected(Lcom/android/hwcamera/ui/TargetView;Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;)Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;
    .locals 4
    .parameter "targetView"
    .parameter "fouceTargetData"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x5

    .line 50
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;->getTargetRect()Landroid/graphics/Rect;

    move-result-object v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/hwcamera/focuspolicy/TargetTrackFocusPolicy;->mKeepExceptionTargetCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v3, :cond_1

    .line 75
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 54
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;->getTargetRect()Landroid/graphics/Rect;

    move-result-object v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/hwcamera/focuspolicy/TargetTrackFocusPolicy;->mKeepExceptionTargetCount:I

    if-ge v2, v3, :cond_2

    .line 55
    iget v2, p0, Lcom/android/hwcamera/focuspolicy/TargetTrackFocusPolicy;->mKeepExceptionTargetCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/hwcamera/focuspolicy/TargetTrackFocusPolicy;->mKeepExceptionTargetCount:I

    .line 56
    iget-object v2, p0, Lcom/android/hwcamera/focuspolicy/TargetTrackFocusPolicy;->mPreviewTargetInfo:Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;

    if-eqz v2, :cond_0

    .line 60
    :cond_2
    invoke-virtual {p2}, Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;->getTargetRect()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 61
    iput-object p2, p0, Lcom/android/hwcamera/focuspolicy/TargetTrackFocusPolicy;->mPreviewTargetInfo:Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/hwcamera/focuspolicy/TargetTrackFocusPolicy;->mKeepExceptionTargetCount:I

    .line 65
    :cond_3
    iput-object p1, p0, Lcom/android/hwcamera/focuspolicy/TargetTrackFocusPolicy;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    .line 66
    iget-boolean v1, p0, Lcom/android/hwcamera/focuspolicy/TargetTrackFocusPolicy;->mAutoFocusMoving:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p2, v1}, Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;->setFocusStatus(I)V

    .line 68
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/hwcamera/focuspolicy/TargetTrackFocusPolicy;->mPreviewTargetInfo:Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;

    invoke-virtual {v1}, Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;->getTargetRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/hwcamera/ui/TargetView;->transformToScreenCoordinate(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 71
    .local v0, rectF:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/hwcamera/focuspolicy/TargetTrackFocusPolicy;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v0}, Lcom/android/hwcamera/ui/TargetView;->isNeedAutoFocus(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 72
    iget-object v1, p0, Lcom/android/hwcamera/focuspolicy/TargetTrackFocusPolicy;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 73
    invoke-static {}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->getInstance()Lcom/android/hwcamera/eventcenter/DefaultEventCenter;

    move-result-object v1

    new-instance v2, Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersEvent;

    invoke-direct {v2}, Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->publish(Lcom/android/hwcamera/eventcenter/Event;)V

    .line 75
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/focuspolicy/TargetTrackFocusPolicy;->mPreviewTargetInfo:Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    .end local v0           #rectF:Landroid/graphics/RectF;
    :cond_5
    const/4 v1, 0x2

    goto :goto_1

    .line 50
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized reset()V
    .locals 3

    .prologue
    .line 41
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/hwcamera/focuspolicy/TargetTrackFocusPolicy;->mAutoFocusMoving:Z

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/focuspolicy/TargetTrackFocusPolicy;->mTargetRect:Landroid/graphics/RectF;

    .line 44
    invoke-static {}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->getInstance()Lcom/android/hwcamera/eventcenter/DefaultEventCenter;

    move-result-object v0

    new-instance v1, Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->publish(Lcom/android/hwcamera/eventcenter/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
