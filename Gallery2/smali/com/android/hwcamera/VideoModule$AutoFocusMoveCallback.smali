.class final Lcom/android/hwcamera/VideoModule$AutoFocusMoveCallback;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusMoveCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoModule;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/hwcamera/VideoModule$AutoFocusMoveCallback;->this$0:Lcom/android/hwcamera/VideoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/VideoModule;Lcom/android/hwcamera/VideoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoModule$AutoFocusMoveCallback;-><init>(Lcom/android/hwcamera/VideoModule;)V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 1
    .parameter "moving"
    .parameter "camera"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$AutoFocusMoveCallback;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mPaused:Z
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$1100(Lcom/android/hwcamera/VideoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$AutoFocusMoveCallback;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mIsAutoFoucsMovingEnabled:Z
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$1300(Lcom/android/hwcamera/VideoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$AutoFocusMoveCallback;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$1200(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/FocusOverlayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/FocusOverlayManager;->onAutoFocusMoving(Z)V

    goto :goto_0
.end method
