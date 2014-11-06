.class Lcom/android/hwcamera/CameraActivity$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/android/hwcamera/OnShutterButtonListener;


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
    .line 369
    iput-object p1, p0, Lcom/android/hwcamera/CameraActivity$1;->this$0:Lcom/android/hwcamera/CameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutterButtonClick()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity$1;->this$0:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    instance-of v0, v0, Lcom/android/hwcamera/PhotoModule;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity$1;->this$0:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity$1;->this$0:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    check-cast v0, Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->canRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity$1;->this$0:Lcom/android/hwcamera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->onSwitchChanged(Z)Z

    .line 380
    :cond_0
    return-void
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 381
    return-void
.end method

.method public onShutterButtonLongClick(Z)Z
    .locals 1
    .parameter "pressed"

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method
