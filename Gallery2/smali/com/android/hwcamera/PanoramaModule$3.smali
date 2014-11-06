.class Lcom/android/hwcamera/PanoramaModule$3;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/android/hwcamera/MosaicFrameProcessor$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/PanoramaModule;->startCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/PanoramaModule;)V
    .locals 0
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/hwcamera/PanoramaModule$3;->this$0:Lcom/android/hwcamera/PanoramaModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(ZFFFF)V
    .locals 7
    .parameter "isFinished"
    .parameter "panningRateX"
    .parameter "panningRateY"
    .parameter "progressX"
    .parameter "progressY"

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x4320

    .line 538
    iget-object v4, p0, Lcom/android/hwcamera/PanoramaModule$3;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mHorizontalViewAngle:F
    invoke-static {v4}, Lcom/android/hwcamera/PanoramaModule;->access$1400(Lcom/android/hwcamera/PanoramaModule;)F

    move-result v4

    mul-float v0, p4, v4

    .line 539
    .local v0, accumulatedHorizontalAngle:F
    iget-object v4, p0, Lcom/android/hwcamera/PanoramaModule$3;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mVerticalViewAngle:F
    invoke-static {v4}, Lcom/android/hwcamera/PanoramaModule;->access$1500(Lcom/android/hwcamera/PanoramaModule;)F

    move-result v4

    mul-float v1, p5, v4

    .line 540
    .local v1, accumulatedVerticalAngle:F
    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-gez v4, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 544
    :cond_0
    iget-object v4, p0, Lcom/android/hwcamera/PanoramaModule$3;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #calls: Lcom/android/hwcamera/PanoramaModule;->stopCapture(ZZ)V
    invoke-static {v4, v6, v6}, Lcom/android/hwcamera/PanoramaModule;->access$1600(Lcom/android/hwcamera/PanoramaModule;ZZ)V

    .line 552
    :goto_0
    return-void

    .line 547
    :cond_1
    iget-object v4, p0, Lcom/android/hwcamera/PanoramaModule$3;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mHorizontalViewAngle:F
    invoke-static {v4}, Lcom/android/hwcamera/PanoramaModule;->access$1400(Lcom/android/hwcamera/PanoramaModule;)F

    move-result v4

    mul-float v2, p2, v4

    .line 548
    .local v2, panningRateXInDegree:F
    iget-object v4, p0, Lcom/android/hwcamera/PanoramaModule$3;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mVerticalViewAngle:F
    invoke-static {v4}, Lcom/android/hwcamera/PanoramaModule;->access$1500(Lcom/android/hwcamera/PanoramaModule;)F

    move-result v4

    mul-float v3, p3, v4

    .line 549
    .local v3, panningRateYInDegree:F
    iget-object v4, p0, Lcom/android/hwcamera/PanoramaModule$3;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #calls: Lcom/android/hwcamera/PanoramaModule;->updateProgress(FFFF)V
    invoke-static {v4, v2, v3, v0, v1}, Lcom/android/hwcamera/PanoramaModule;->access$1700(Lcom/android/hwcamera/PanoramaModule;FFFF)V

    goto :goto_0
.end method
