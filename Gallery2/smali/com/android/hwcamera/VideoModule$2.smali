.class Lcom/android/hwcamera/VideoModule$2;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Lcom/android/hwcamera/CameraScreenNail$OnFrameDrawnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/VideoModule;->initializeSurfaceView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 666
    iput-object p1, p0, Lcom/android/hwcamera/VideoModule$2;->this$0:Lcom/android/hwcamera/VideoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameDrawn(Lcom/android/hwcamera/CameraScreenNail;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$2;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$2100(Lcom/android/hwcamera/VideoModule;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 670
    return-void
.end method
