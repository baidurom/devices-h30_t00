.class public Lcom/android/hwcamera/focuspolicy/FocusPolicyService;
.super Ljava/lang/Object;
.source "FocusPolicyService.java"


# instance fields
.field private mCurrentFocusPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

.field private mFaceFocusPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

.field private mNormalFocusPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

.field private mTargetTrackingPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/android/hwcamera/focuspolicy/NormalFocusPolicy;

    invoke-direct {v0}, Lcom/android/hwcamera/focuspolicy/NormalFocusPolicy;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->mNormalFocusPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

    .line 18
    new-instance v0, Lcom/android/hwcamera/focuspolicy/FaceFocusPolicy;

    invoke-direct {v0}, Lcom/android/hwcamera/focuspolicy/FaceFocusPolicy;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->mFaceFocusPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

    .line 19
    new-instance v0, Lcom/android/hwcamera/focuspolicy/TargetTrackFocusPolicy;

    invoke-direct {v0}, Lcom/android/hwcamera/focuspolicy/TargetTrackFocusPolicy;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->mTargetTrackingPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

    .line 20
    iget-object v0, p0, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->mNormalFocusPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

    iput-object v0, p0, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->mCurrentFocusPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

    return-void
.end method

.method private switchToOtherFocusPolicy(Lcom/android/hwcamera/focuspolicy/IFocusPolicy;)V
    .locals 1
    .parameter "focusPolicy"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->mCurrentFocusPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

    if-ne v0, p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->mCurrentFocusPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->mCurrentFocusPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

    invoke-interface {v0}, Lcom/android/hwcamera/focuspolicy/IFocusPolicy;->reset()V

    .line 82
    :cond_1
    iput-object p1, p0, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->mCurrentFocusPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

    goto :goto_0
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
    .line 39
    iget-object v0, p0, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->mCurrentFocusPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/focuspolicy/IFocusPolicy;->getFaceMeteringAreas(Lcom/android/hwcamera/FocusOverlayManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFocusAreas(Lcom/android/hwcamera/FocusOverlayManager;)Ljava/util/List;
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
    .line 31
    iget-object v0, p0, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->mCurrentFocusPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/focuspolicy/IFocusPolicy;->getFocusAreas(Lcom/android/hwcamera/FocusOverlayManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMeteringAreas(Lcom/android/hwcamera/FocusOverlayManager;)Ljava/util/List;
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
    iget-object v0, p0, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->mCurrentFocusPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/focuspolicy/IFocusPolicy;->getMeteringAreas(Lcom/android/hwcamera/FocusOverlayManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onAutoFoucsMoving(Z)V
    .locals 1
    .parameter "moving"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->mCurrentFocusPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/focuspolicy/IFocusPolicy;->onAutoFoucsMoving(Z)V

    .line 44
    return-void
.end method

.method public onFaceDetected(Lcom/android/hwcamera/ui/indicator/FaceView;[Lcom/android/hwcamera/facedetect/event/Face;)V
    .locals 1
    .parameter "faceView"
    .parameter "facesDatas"

    .prologue
    .line 68
    invoke-static {p2}, Lcom/android/hwcamera/Util;->isEmptyCollection([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->mNormalFocusPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->switchToOtherFocusPolicy(Lcom/android/hwcamera/focuspolicy/IFocusPolicy;)V

    .line 77
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->mFaceFocusPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->switchToOtherFocusPolicy(Lcom/android/hwcamera/focuspolicy/IFocusPolicy;)V

    .line 74
    iget-object v0, p0, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->mCurrentFocusPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

    instance-of v0, v0, Lcom/android/hwcamera/focuspolicy/IFaceFocusPolicy;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->Assert(Z)V

    .line 76
    iget-object v0, p0, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->mCurrentFocusPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

    check-cast v0, Lcom/android/hwcamera/focuspolicy/IFaceFocusPolicy;

    invoke-interface {v0, p1, p2}, Lcom/android/hwcamera/focuspolicy/IFaceFocusPolicy;->onFaceDetected(Lcom/android/hwcamera/ui/indicator/FaceView;[Lcom/android/hwcamera/facedetect/event/Face;)V

    goto :goto_0
.end method

.method public onTargetDetected(Lcom/android/hwcamera/ui/TargetView;Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;)Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;
    .locals 2
    .parameter "targetView"
    .parameter "fouceTargetData"

    .prologue
    .line 57
    iget-object v1, p0, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->mTargetTrackingPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

    invoke-direct {p0, v1}, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->switchToOtherFocusPolicy(Lcom/android/hwcamera/focuspolicy/IFocusPolicy;)V

    .line 58
    iget-object v1, p0, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->mCurrentFocusPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

    instance-of v1, v1, Lcom/android/hwcamera/focuspolicy/ITargetTrackFocusPolicy;

    invoke-static {v1}, Lcom/android/hwcamera/Util;->Assert(Z)V

    .line 60
    iget-object v1, p0, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->mCurrentFocusPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

    check-cast v1, Lcom/android/hwcamera/focuspolicy/ITargetTrackFocusPolicy;

    invoke-interface {v1, p1, p2}, Lcom/android/hwcamera/focuspolicy/ITargetTrackFocusPolicy;->onTargetDetected(Lcom/android/hwcamera/ui/TargetView;Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;)Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;

    move-result-object v0

    .line 62
    .local v0, targetinfo:Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;
    if-nez v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->mNormalFocusPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

    invoke-direct {p0, v1}, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->switchToOtherFocusPolicy(Lcom/android/hwcamera/focuspolicy/IFocusPolicy;)V

    .line 65
    :cond_0
    return-object v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->mCurrentFocusPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

    invoke-interface {v0}, Lcom/android/hwcamera/focuspolicy/IFocusPolicy;->reset()V

    .line 54
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public setFoucs2MeteringArea(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, mFocusArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    .local p2, mMeteringArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    iget-object v0, p0, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->mNormalFocusPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->switchToOtherFocusPolicy(Lcom/android/hwcamera/focuspolicy/IFocusPolicy;)V

    .line 25
    iget-object v0, p0, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->mCurrentFocusPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

    instance-of v0, v0, Lcom/android/hwcamera/focuspolicy/INormalFocusPolicy;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->Assert(Z)V

    .line 27
    iget-object v0, p0, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->mCurrentFocusPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

    check-cast v0, Lcom/android/hwcamera/focuspolicy/INormalFocusPolicy;

    invoke-interface {v0, p1, p2}, Lcom/android/hwcamera/focuspolicy/INormalFocusPolicy;->setFoucs2MeteringArea(Ljava/util/List;Ljava/util/List;)V

    .line 28
    return-void
.end method

.method public touchFace(I)V
    .locals 1
    .parameter "touchedFaceId"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->mCurrentFocusPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

    instance-of v0, v0, Lcom/android/hwcamera/focuspolicy/IFaceFocusPolicy;

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->mCurrentFocusPolicy:Lcom/android/hwcamera/focuspolicy/IFocusPolicy;

    check-cast v0, Lcom/android/hwcamera/focuspolicy/IFaceFocusPolicy;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/focuspolicy/IFaceFocusPolicy;->touchFace(I)V

    goto :goto_0
.end method
