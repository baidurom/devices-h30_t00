.class Lcom/android/hwcamera/CameraActivity$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/CameraActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/hwcamera/CameraActivity$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/CameraActivity;

    .line 470
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 471
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 479
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/hwcamera/ActivityBase;->mPaused:Z

    if-eqz v1, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 484
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/CameraActivity;

    #setter for: Lcom/android/hwcamera/CameraActivity;->mLastRawOrientation:I
    invoke-static {v1, p1}, Lcom/android/hwcamera/CameraActivity;->access$202(Lcom/android/hwcamera/CameraActivity;I)I

    .line 485
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/CameraActivity;

    #getter for: Lcom/android/hwcamera/CameraActivity;->mOrientation:I
    invoke-static {v1}, Lcom/android/hwcamera/CameraActivity;->access$300(Lcom/android/hwcamera/CameraActivity;)I

    move-result v0

    .line 486
    .local v0, orientationHistory:I
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/CameraActivity;

    invoke-static {p1, v0}, Lcom/android/hwcamera/Util;->roundOrientation(II)I

    move-result v2

    #setter for: Lcom/android/hwcamera/CameraActivity;->mOrientation:I
    invoke-static {v1, v2}, Lcom/android/hwcamera/CameraActivity;->access$302(Lcom/android/hwcamera/CameraActivity;I)I

    .line 487
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, v1, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v1, p1}, Lcom/android/hwcamera/CameraModule;->onOrientationChanged(I)V

    .line 488
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/CameraActivity;

    #getter for: Lcom/android/hwcamera/CameraActivity;->mOrientation:I
    invoke-static {v1}, Lcom/android/hwcamera/CameraActivity;->access$300(Lcom/android/hwcamera/CameraActivity;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/CameraActivity;

    #getter for: Lcom/android/hwcamera/CameraActivity;->mRotateViews:Z
    invoke-static {v1}, Lcom/android/hwcamera/CameraActivity;->access$400(Lcom/android/hwcamera/CameraActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/CameraActivity;

    iget-object v2, p0, Lcom/android/hwcamera/CameraActivity$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/CameraActivity;

    #getter for: Lcom/android/hwcamera/CameraActivity;->mOrientation:I
    invoke-static {v2}, Lcom/android/hwcamera/CameraActivity;->access$300(Lcom/android/hwcamera/CameraActivity;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/CameraActivity;->setOrientationIndicator(IZ)V

    goto :goto_0
.end method
