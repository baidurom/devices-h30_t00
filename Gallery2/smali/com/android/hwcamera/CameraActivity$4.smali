.class Lcom/android/hwcamera/CameraActivity$4;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/CameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/hwcamera/CameraActivity$4;->this$0:Lcom/android/hwcamera/CameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity$4;->this$0:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity$4;->this$0:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getCameraScreenNail()Lcom/android/hwcamera/CameraScreenNail;

    move-result-object v1

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    #setter for: Lcom/android/hwcamera/CameraActivity;->mCameraSwitchAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lcom/android/hwcamera/CameraActivity;->access$602(Lcom/android/hwcamera/CameraActivity;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 577
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity$4;->this$0:Lcom/android/hwcamera/CameraActivity;

    #getter for: Lcom/android/hwcamera/CameraActivity;->mCameraSwitchAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/hwcamera/CameraActivity;->access$600(Lcom/android/hwcamera/CameraActivity;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 578
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity$4;->this$0:Lcom/android/hwcamera/CameraActivity;

    #getter for: Lcom/android/hwcamera/CameraActivity;->mCameraSwitchAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/hwcamera/CameraActivity;->access$600(Lcom/android/hwcamera/CameraActivity;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 579
    return-void

    .line 574
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
