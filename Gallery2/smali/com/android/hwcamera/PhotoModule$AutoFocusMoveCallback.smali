.class final Lcom/android/hwcamera/PhotoModule$AutoFocusMoveCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusMoveCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1525
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule$AutoFocusMoveCallback;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/PhotoModule;Lcom/android/hwcamera/PhotoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1525
    invoke-direct {p0, p1}, Lcom/android/hwcamera/PhotoModule$AutoFocusMoveCallback;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 1
    .parameter "moving"
    .parameter "camera"

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$AutoFocusMoveCallback;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->isPanorama()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1532
    :cond_0
    :goto_0
    return-void

    .line 1531
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$AutoFocusMoveCallback;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mIsAutoFoucsMovingEnabled:Z
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$6600(Lcom/android/hwcamera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$AutoFocusMoveCallback;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$1600(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/FocusOverlayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/FocusOverlayManager;->onAutoFocusMoving(Z)V

    goto :goto_0
.end method
