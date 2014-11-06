.class final Lcom/android/hwcamera/VideoModule$AutoFocusCallback;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoModule;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/hwcamera/VideoModule$AutoFocusCallback;->this$0:Lcom/android/hwcamera/VideoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/VideoModule;Lcom/android/hwcamera/VideoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoModule$AutoFocusCallback;-><init>(Lcom/android/hwcamera/VideoModule;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2
    .parameter "focused"
    .parameter "camera"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$AutoFocusCallback;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mPaused:Z
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$1100(Lcom/android/hwcamera/VideoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$AutoFocusCallback;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$1200(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/FocusOverlayManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/hwcamera/FocusOverlayManager;->onAutoFocus(ZZ)V

    goto :goto_0
.end method
