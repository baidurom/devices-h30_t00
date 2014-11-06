.class public Lcom/android/hwcamera/focuspolicy/NormalFocusPolicy;
.super Ljava/lang/Object;
.source "NormalFocusPolicy.java"

# interfaces
.implements Lcom/android/hwcamera/focuspolicy/INormalFocusPolicy;


# instance fields
.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isEmptyArea()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/hwcamera/focuspolicy/NormalFocusPolicy;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/focuspolicy/NormalFocusPolicy;->mMeteringArea:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

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
    .line 51
    const/4 v0, 0x0

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
    .line 23
    iget-object v0, p0, Lcom/android/hwcamera/focuspolicy/NormalFocusPolicy;->mFocusArea:Ljava/util/List;

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
    .line 28
    iget-object v0, p0, Lcom/android/hwcamera/focuspolicy/NormalFocusPolicy;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method public onAutoFoucsMoving(Z)V
    .locals 2
    .parameter "moving"

    .prologue
    .line 33
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/focuspolicy/NormalFocusPolicy;->isEmptyArea()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/android/hwcamera/focuspolicy/NormalFocusPolicy;->reset()V

    .line 35
    invoke-static {}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->getInstance()Lcom/android/hwcamera/eventcenter/DefaultEventCenter;

    move-result-object v0

    new-instance v1, Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersEvent;

    invoke-direct {v1}, Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->publish(Lcom/android/hwcamera/eventcenter/Event;)V

    .line 37
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/android/hwcamera/focuspolicy/NormalFocusPolicy;->mFocusArea:Ljava/util/List;

    .line 46
    iput-object v0, p0, Lcom/android/hwcamera/focuspolicy/NormalFocusPolicy;->mMeteringArea:Ljava/util/List;

    .line 47
    return-void
.end method

.method public setFoucs2MeteringArea(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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
    .line 17
    .local p1, mFocusArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    .local p2, mMeteringArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    iput-object p1, p0, Lcom/android/hwcamera/focuspolicy/NormalFocusPolicy;->mFocusArea:Ljava/util/List;

    .line 18
    iput-object p2, p0, Lcom/android/hwcamera/focuspolicy/NormalFocusPolicy;->mMeteringArea:Ljava/util/List;

    .line 19
    return-void
.end method
