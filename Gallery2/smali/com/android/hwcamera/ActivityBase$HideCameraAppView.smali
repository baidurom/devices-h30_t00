.class Lcom/android/hwcamera/ActivityBase$HideCameraAppView;
.super Ljava/lang/Object;
.source "ActivityBase.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HideCameraAppView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/ActivityBase;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/ActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/hwcamera/ActivityBase$HideCameraAppView;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/ActivityBase;Lcom/android/hwcamera/ActivityBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 622
    invoke-direct {p0, p1}, Lcom/android/hwcamera/ActivityBase$HideCameraAppView;-><init>(Lcom/android/hwcamera/ActivityBase;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$HideCameraAppView;->this$0:Lcom/android/hwcamera/ActivityBase;

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraAppView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 628
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 632
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 636
    return-void
.end method
