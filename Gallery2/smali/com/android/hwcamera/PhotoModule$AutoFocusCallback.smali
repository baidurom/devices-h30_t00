.class final Lcom/android/hwcamera/PhotoModule$AutoFocusCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1495
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/PhotoModule;Lcom/android/hwcamera/PhotoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1495
    invoke-direct {p0, p1}, Lcom/android/hwcamera/PhotoModule$AutoFocusCallback;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 5
    .parameter "focused"
    .parameter "camera"

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mPaused:Z
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$4300(Lcom/android/hwcamera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1510
    :goto_0
    return-void

    .line 1502
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mFocusStartTime:J
    invoke-static {v3}, Lcom/android/hwcamera/PhotoModule;->access$6300(Lcom/android/hwcamera/PhotoModule;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/hwcamera/PhotoModule;->mAutoFocusTime:J

    .line 1503
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoFocusTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/hwcamera/PhotoModule;

    iget-wide v2, v2, Lcom/android/hwcamera/PhotoModule;->mAutoFocusTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mCameraState:I
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$6400(Lcom/android/hwcamera/PhotoModule;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1506
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/hwcamera/PhotoModule;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PhotoModule;->setCameraState(I)V

    .line 1509
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$1600(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/FocusOverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$6500(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/ShutterButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/ShutterButton;->isPressed()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/hwcamera/FocusOverlayManager;->onAutoFocus(ZZ)V

    goto :goto_0
.end method
